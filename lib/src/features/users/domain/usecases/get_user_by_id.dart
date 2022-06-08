import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/users/data/models/user.dart';
import 'package:yansol/src/features/users/data/repositories/user_repository.dart';

class GetUSerById extends UseCase<User, int> {
  GetUSerById({required this.userRepository});
  final UserRepository userRepository;
  @override
  Future<User?> call(int params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
