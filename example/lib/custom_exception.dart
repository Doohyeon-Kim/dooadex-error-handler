
import 'package:gazua_error_handler/gazua_error_handler.dart';
import 'package:gazua_logger/gazua_logger.dart';

class CustomException implements GzException {
  CustomException(this.gzError) {
    printExceptionLog(this);
  }

  @override
  GzError gzError;

  @override
  String toString() {
    return "Custom Exception: ${gzError.message}";
  }

  @override
  void printExceptionLog(Exception gzException) {
    GzLogger.exception(gzException);
  }

  @override
  String printErrorLog(){
    return "[${gzError.runtimeType}Exception]}\n${gzError.toString()}";
  }
}