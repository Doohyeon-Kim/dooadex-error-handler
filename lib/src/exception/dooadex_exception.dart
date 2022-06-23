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
    DooadexLogger.exception(errorMethodCount: 10, dooadexException);
  }

  factory DooadexException.userInputError() = UserInputErrorException;

  factory DooadexException.invalidFormat() = InvalidFormatException;

  factory DooadexException.badRequest() = BadRequestException;

  factory DooadexException.unauthorized() = UnauthorizedException;

  factory DooadexException.forbidden() = ForbiddenException;

  factory DooadexException.notFound() = NotFoundException;

  factory DooadexException.conflict() = ConflictException;

  factory DooadexException.requestTimeout() = RequestTimeoutException;

  factory DooadexException.internalServerError() = InternalServerErrorException;

  factory DooadexException.serviceUnavailable() = ServiceUnavailableException;

  factory DooadexException.unknownError() = UnknownErrorException;

  factory DooadexException.unstableNetwork() = UnstableNetworkException;

}
