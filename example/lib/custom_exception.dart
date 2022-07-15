
import 'package:dooadex_error_handler/dooadex_error_handler.dart';
import 'package:dooadex_logger/dooadex_logger.dart';

class CustomException implements DdxException {
  CustomException(this.ddxError) {
    printExceptionLog(this);
  }

  @override
  DdxError ddxError;

  @override
  String toString() {
    return "Custom Exception: ${ddxError.message}";
  }

  @override
  void printExceptionLog(Exception dooadexException) {
    DdxLogger.exception(dooadexException);
  }

  @override
  String printErrorLog(){
    return "[${ddxError.runtimeType}Exception]}\n${ddxError.toString()}";
  }
}