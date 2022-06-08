import 'dart:async';

import 'package:yansol/src/features/users/data/models/user.dart';

import '../../../../api/odoo_repository.dart';
import '../../../../api/odoo_environment.dart';
import '../../../../api/odoo_exception.dart';
import '../../../../api/odoo_session.dart';

/// User repository interacts with local cache and remote Odoo instance
/// to provide access to User's data.
class UserRepository extends OdooRepository<User> {
  /// Instantiates [UserRepository] with given [OdooClient].
  /// Odoo ORM model name [modelName]. E.g. 'res.partner'
  /// Holds [OdooEnvironment]list of all repositories
  /// We need only one record of our user
  UserRepository(OdooEnvironment odoo,
      {String modelName = 'res.users', int remoteRecordsCount = 1})
      : super(odoo, modelName, remoteRecordsCount) {
    // track if session is destroyed.
    // Any ORM call may fail due to expired session.
    // We need to kill user in that case.
    env.orpc.sessionStream.listen(sessionChanged);
  }

  void logOutUser() {
    clearCaches();
    env.orpc.destroySession().then((value) => clearRecords());
  }

  void sessionChanged(OdooSession sessionId) {
    if (sessionId.id == '') {
      logOutUser();
    }
  }

  @override
  User createRecordFromJson(Map<String, dynamic> json) {
    return User.fromJson(json);
  }

  @override
  Future<List<User>> get records async {
    env.logger
        .e('In UserRepository Records isAuthenticated:  $isAuthenticated');
    if (!isAuthenticated) {
      latestRecords = [];
      return latestRecords;
    }
    var cachedUsers = await super.records;
    env.logger.w(
        'In UserRepository records CatchedUsers is Empty:  ${cachedUsers.isEmpty}');
    // if (cachedUsers.isEmpty) {
    //   cachedUsers.add(User.publicUser());
    //   latestRecords = cachedUsers;
    // }
    return cachedUsers;
  }

  // Need to override searchRead because we are computing image url
  // and constructing domain based on latest used id found in session.
  @override
  Future<List<dynamic>> searchRead() async {
    // var publicUserJson = User.publicUser().toJson();
    if (!isAuthenticated) {
      return [];
    }
    try {
      final userId = env.orpc.sessionId!.userId;
      var res = await env.orpc.callKw({
        'model': modelName,
        'method': 'search_read',
        'args': [],
        'kwargs': {
          'context': {'bin_size': true},
          'domain': [],
          'fields': User.oFields,
          'limit': limit,
        },
      });
      var avatarUrl = '';
      if (res.length == 1) {
        final imageField = env.orpc.sessionId!.serverVersion >= 13
            ? 'image_128'
            : 'image_small';
        var unique = res[0]['__last_update'] as String;
        unique = unique.replaceAll(RegExp(r'[^0-9]'), '');
        avatarUrl = '${env.orpc.baseURL}/web/image?model=$modelName&field=$imageField&id=$userId&unique=$unique';
        res[0]['image_small'] = avatarUrl;
      } 
      // else {
      //   res.add(publicUserJson);
      // }
      return res;
    } on OdooSessionExpiredException {
      return [];
    } on Exception {
      return [];
    }
  }
}
