// ignore: depend_on_referenced_packages
import 'package:dooadex_logger/dooadex_logger.dart';

import '../error/dooadex_error.dart';
import 'dooadex_exception_factory.dart';

class DdxException implements Exception {
  DdxException(this.ddxError);

  DdxError ddxError;

  @override
  String toString() {
    return "${"${ddxError.runtimeType}Exception"}: ${ddxError.message ?? ""}";
  }

  void printErrorLog(){
     DdxLogger.error(ddxError);
  }

  void printExceptionLog(Exception dooadexException) {
    DdxLogger.exception(errorMethodCount: 10, dooadexException);
  }

  factory DdxException.userInputError({DdxError? ddxError}) = UserInputErrorException;

  factory DdxException.invalidFormat({DdxError? ddxError}) = InvalidFormatException;

  factory DdxException.badRequest({DdxError? ddxError}) = BadRequestException;

  factory DdxException.unauthorized({DdxError? ddxError}) = UnauthorizedException;

  factory DdxException.forbidden({DdxError? ddxError}) = ForbiddenException;

  factory DdxException.notFound({DdxError? ddxError}) = NotFoundException;

  factory DdxException.conflict({DdxError? ddxError}) = ConflictException;

  factory DdxException.requestTimeout({DdxError? ddxError}) = RequestTimeoutException;

  factory DdxException.internalServerError({DdxError? ddxError}) = InternalServerErrorException;

  factory DdxException.serviceUnavailable({DdxError? ddxError}) = ServiceUnavailableException;

  factory DdxException.unknownError({DdxError? ddxError}) = UnknownErrorException;

  factory DdxException.unstableNetwork({DdxError? ddxError}) = UnstableNetworkException;

}
