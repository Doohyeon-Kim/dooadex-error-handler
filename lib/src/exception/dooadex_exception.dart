// ignore: depend_on_referenced_packages
import 'package:dooadex_logger/dooadex_logger.dart';

import '../error/dooadex_error.dart';
import 'dooadex_exception_factory.dart';

class DooadexException implements Exception {
  DooadexException(this.dooadexError);

  DooadexError dooadexError;

  @override
  String toString() {
    return "${"${dooadexError.runtimeType}Exception"}: ${dooadexError.message ?? ""}";
  }

  void logger(Exception dooadexException) {
    DooadexLogger.exception(methodCount: 10, dooadexException);
  }

  factory DooadexException.conflict() = ConflictException;
}
