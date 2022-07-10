
import 'package:dooadex_error_handler/dooadex_error_handler.dart';
import 'package:dooadex_logger/dooadex_logger.dart';

class CustomException implements DdxException {
  CustomException(this.dooadexError) {
    logger(this);
  }

  @override
  DdxError dooadexError;

  @override
  String toString() {
    return "Custom Exception: ${dooadexError.message}";
  }

  @override
  void logger(Exception dooadexException) {
    DdxLogger.exception(dooadexException);
  }
}