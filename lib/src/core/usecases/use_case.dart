
import 'dart:async';

import 'package:equatable/equatable.dart';

abstract class UseCase<R, P> {
  Future<R?> call(P params);
}

// This will be used by the code calling the use case whenever the use case
// doesn't accept any parameters.
class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
