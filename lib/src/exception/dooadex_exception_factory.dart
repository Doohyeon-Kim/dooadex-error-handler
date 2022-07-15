import 'package:dooadex_error_handler/src/error/dooadex_error.dart';

import '../error/dooadex_errors.dart';
import '../error_message_handler/error_message_handler.dart';
import 'dooadex_exception.dart';

class UserInputErrorException extends DdxException {
  @override
  UserInputErrorException({DdxError? ddxError}) : super(DdxErrors.userInputError()) {
    ddxError ??= DdxErrors.userInputError();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class InvalidFormatException extends DdxException {
  @override
  InvalidFormatException({DdxError? ddxError}) : super(DdxErrors.invalidFormat()) {
    ddxError ??= DdxErrors.invalidFormat();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class BadRequestException extends DdxException {
  @override
  BadRequestException({DdxError? ddxError}) : super(DdxErrors.badRequest()) {
    ddxError ??= DdxErrors.badRequest();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class UnauthorizedException extends DdxException {
  @override
  UnauthorizedException({DdxError? ddxError}) : super(DdxErrors.unauthorized()) {
    ddxError ??= DdxErrors.unauthorized();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class ForbiddenException extends DdxException {
  @override
  ForbiddenException({DdxError? ddxError}) : super(DdxErrors.forbidden()) {
    ddxError ??= DdxErrors.forbidden();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class NotFoundException extends DdxException {
  @override
  NotFoundException({DdxError? ddxError}) : super(DdxErrors.notFound()) {
    ddxError ??= DdxErrors.notFound();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class ConflictException extends DdxException {
  @override
  ConflictException({DdxError? ddxError}) : super(DdxErrors.conflict()) {
    ddxError ??= DdxErrors.conflict();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class RequestTimeoutException extends DdxException {
  @override
  RequestTimeoutException({DdxError? ddxError}) : super(DdxErrors.requestTimeout()) {
    ddxError ??= DdxErrors.requestTimeout();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class InternalServerErrorException extends DdxException {
  @override
  InternalServerErrorException({DdxError? ddxError}) : super(DdxErrors.internalServerError()) {
    ddxError ??= DdxErrors.internalServerError();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class ServiceUnavailableException extends DdxException {
  @override
  ServiceUnavailableException({DdxError? ddxError}) : super(DdxErrors.serviceUnavailable()) {
    ddxError ??= DdxErrors.serviceUnavailable();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class UnknownErrorException extends DdxException {
  @override
  UnknownErrorException({DdxError? ddxError}) : super(DdxErrors.unknownError()) {
    ddxError ??= DdxErrors.unknownError();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}

class UnstableNetworkException extends DdxException {
  @override
  UnstableNetworkException({DdxError? ddxError}) : super(DdxErrors.unstableNetwork()) {
    ddxError ??= DdxErrors.unstableNetwork();
    printExceptionLog(this);
    printErrorLog();
    DdxErrorMessageHandler.setErrorMessage(ddxError: ddxError);
  }
}
