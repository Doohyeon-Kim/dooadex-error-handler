// ignore: depend_on_referenced_packages
import 'package:dooadex_logger/dooadex_logger.dart';

import '../error/dooadex_error.dart';
import 'dooadex_exception_factory.dart';

class DdxException implements Exception {
  DdxException(this.dooadexError);

  DdxError dooadexError;

  @override
  String toString() {
    return "${"${dooadexError.runtimeType}Exception"}: ${dooadexError.message ?? ""}";
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
