// ignore: depend_on_referenced_packages
import 'package:gazua_logger/gazua_logger.dart';

import '../error/gazua_error.dart';
import '../error_message_handler/gazua_message_handler.dart';
import 'gazua_exception_factory.dart';

class GzException implements Exception {
  GzException(this.gzError){
   printErrorLog();
   printExceptionLog(this);
   GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }

  GzError gzError;

  @override
  String toString() {
    return "${"${gzError.runtimeType}Exception"}: ${gzError.message ?? ""}";
  }

  void printErrorLog(){
     GzLogger.error(gzError);
  }

  void printExceptionLog(Exception gzException) {
    GzLogger.exception(errorMethodCount: 10, gzException);
  }

  factory GzException.userInputError({GzError? gzError}) = UserInputErrorException;

  factory GzException.invalidFormat({GzError? gzError}) = InvalidFormatException;

  factory GzException.badRequest({GzError? gzError}) = BadRequestException;

  factory GzException.unauthorized({GzError? gzError}) = UnauthorizedException;

  factory GzException.forbidden({GzError? gzError}) = ForbiddenException;

  factory GzException.notFound({GzError? gzError}) = NotFoundException;

  factory GzException.conflict({GzError? gzError}) = ConflictException;

  factory GzException.requestTimeout({GzError? gzError}) = RequestTimeoutException;

  factory GzException.internalServerError({GzError? gzError}) = InternalServerErrorException;

  factory GzException.serviceUnavailable({GzError? gzError}) = ServiceUnavailableException;

  factory GzException.unknownError({GzError? gzError}) = UnknownErrorException;

  factory GzException.unstableNetwork({GzError? gzError}) = UnstableNetworkException;

}
