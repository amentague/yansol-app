class OdooException implements Exception {
  /// Exception message coming from Odoo server.
  String message;
  OdooException(this.message);

  @override
  String toString() => 'OdooException: $message';
}

/// Exception for session expired error.
class OdooSessionExpiredException extends OdooException {
  OdooSessionExpiredException(String message) : super(message);

  @override
  String toString() => 'OdooSessionExpiredException: $message';
}