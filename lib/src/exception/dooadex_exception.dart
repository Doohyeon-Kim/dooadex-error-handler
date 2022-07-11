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

  void printError(){
     DdxLogger.error(ddxError);
  }

  void logger(Exception dooadexException) {
    DdxLogger.exception(errorMethodCount: 10, dooadexException);
  }

  factory DdxException.userInputError() = UserInputErrorException;

  factory DdxException.invalidFormat() = InvalidFormatException;

  factory DdxException.badRequest() = BadRequestException;

  factory DdxException.unauthorized() = UnauthorizedException;

  factory DdxException.forbidden() = ForbiddenException;

  factory DdxException.notFound() = NotFoundException;

  factory DdxException.conflict() = ConflictException;

  factory DdxException.requestTimeout() = RequestTimeoutException;

  factory DdxException.internalServerError() = InternalServerErrorException;

  factory DdxException.serviceUnavailable() = ServiceUnavailableException;

  factory DdxException.unknownError() = UnknownErrorException;

  factory DdxException.unstableNetwork() = UnstableNetworkException;

}
