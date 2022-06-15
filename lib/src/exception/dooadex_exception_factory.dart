import '../../dooadex_error_handler.dart';

class ConflictException extends DooadexException {
  @override
  ConflictException() : super(DooadexErrors.conflict()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.conflict());
  }
}
