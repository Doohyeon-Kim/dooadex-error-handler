import 'package:gazua_error_handler/src/error/gazua_error.dart';

import '../error/gazua_errors.dart';
import '../error_message_handler/gazua_message_handler.dart';
import 'gazua_exception.dart';

class UserInputErrorException extends GzException {
  @override
  UserInputErrorException({GzError? gzError}) : super(GzErrors.userInputError()) {
    gzError ??= GzErrors.userInputError();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class InvalidFormatException extends GzException {
  @override
  InvalidFormatException({GzError? gzError}) : super(GzErrors.invalidFormat()) {
    gzError ??= GzErrors.invalidFormat();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class BadRequestException extends GzException {
  @override
  BadRequestException({GzError? gzError}) : super(GzErrors.badRequest()) {
    gzError ??= GzErrors.badRequest();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class UnauthorizedException extends GzException {
  @override
  UnauthorizedException({GzError? gzError}) : super(GzErrors.unauthorized()) {
    gzError ??= GzErrors.unauthorized();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class ForbiddenException extends GzException {
  @override
  ForbiddenException({GzError? gzError}) : super(GzErrors.forbidden()) {
    gzError ??= GzErrors.forbidden();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class NotFoundException extends GzException {
  @override
  NotFoundException({GzError? gzError}) : super(GzErrors.notFound()) {
    gzError ??= GzErrors.notFound();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class ConflictException extends GzException {
  @override
  ConflictException({GzError? gzError}) : super(GzErrors.conflict()) {
    gzError ??= GzErrors.conflict();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class RequestTimeoutException extends GzException {
  @override
  RequestTimeoutException({GzError? gzError}) : super(GzErrors.requestTimeout()) {
    gzError ??= GzErrors.requestTimeout();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class InternalServerErrorException extends GzException {
  @override
  InternalServerErrorException({GzError? gzError}) : super(GzErrors.internalServerError()) {
    gzError ??= GzErrors.internalServerError();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class ServiceUnavailableException extends GzException {
  @override
  ServiceUnavailableException({GzError? gzError}) : super(GzErrors.serviceUnavailable()) {
    gzError ??= GzErrors.serviceUnavailable();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class UnknownErrorException extends GzException {
  @override
  UnknownErrorException({GzError? gzError}) : super(GzErrors.unknownError()) {
    gzError ??= GzErrors.unknownError();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}

class UnstableNetworkException extends GzException {
  @override
  UnstableNetworkException({GzError? gzError}) : super(GzErrors.unstableNetwork()) {
    gzError ??= GzErrors.unstableNetwork();
    printExceptionLog(this);
    printErrorLog();
    GzErrorMessageHandler.setErrorMessage(gzError: gzError);
  }
}
