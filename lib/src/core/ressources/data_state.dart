abstract class DataState<T> {
  const DataState({this.data, this.error});
  final T? data;
  final String? error;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess({required T data}) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed({required String error}) : super(error: error);
}
