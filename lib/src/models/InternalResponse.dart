class InternalResponse<T> {

  final int internalStatus;
  final String message;
  final T data;
  final Exception dataException;

  InternalResponse(this.message, this.internalStatus, this.data, this.dataException);
}