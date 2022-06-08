import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/pos/data/models/pos.dart';
import 'package:yansol/src/features/pos/data/repositories/pos_repository.dart';

class GetPosConfig extends UseCase<Pos, NoParams> {
  GetPosConfig({
    required this.posRepository,
  });

  final PosRepository posRepository;
  @override
  Future<Pos?> call(NoParams params) async {
    final records = await posRepository.records;
    return records.first;
  }
}
