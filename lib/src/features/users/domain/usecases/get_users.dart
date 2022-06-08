import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/users/data/models/user.dart';
import 'package:yansol/src/features/users/data/repositories/user_repository.dart';

class GetUsers extends UseCase<List<User>, NoParams> {
  GetUsers({required this.userRepository});
  final UserRepository userRepository;
  @override
  Future<List<User>?> call(NoParams params) async {
    return await userRepository.records;
  }
}
