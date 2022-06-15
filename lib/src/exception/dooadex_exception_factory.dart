
import '../error/dooadex_errors.dart';
import '../error_message_handler/error_message_handler.dart';
import 'dooadex_exception.dart';

class ConflictException extends DooadexException {
  @override
  ConflictException() : super(DooadexErrors.conflict()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.conflict());
  }
}
