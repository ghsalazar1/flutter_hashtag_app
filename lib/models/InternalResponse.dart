class InternalResponse<T> {

  final int InternalStatus;
  final String Message;
  final T Data;
  final Exception DataException;

  InternalResponse(this.Message, this.InternalStatus, this.Data, this.DataException);
}