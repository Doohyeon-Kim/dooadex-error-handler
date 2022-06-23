import '../error/dooadex_errors.dart';
import '../error_message_handler/error_message_handler.dart';
import 'dooadex_exception.dart';

class UserInputErrorException extends DooadexException {
  @override
  UserInputErrorException() : super(DooadexErrors.userInputError()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.userInputError());
  }
}

class InvalidFormatException extends DooadexException {
  @override
  InvalidFormatException() : super(DooadexErrors.invalidFormat()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.invalidFormat());
  }
}

class BadRequestException extends DooadexException {
  @override
  BadRequestException() : super(DooadexErrors.badRequest()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.badRequest());
  }
}

class UnauthorizedException extends DooadexException {
  @override
  UnauthorizedException() : super(DooadexErrors.unauthorized()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.unauthorized());
  }
}

class ForbiddenException extends DooadexException {
  @override
  ForbiddenException() : super(DooadexErrors.forbidden()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.forbidden());
  }
}

class NotFoundException extends DooadexException {
  @override
  NotFoundException() : super(DooadexErrors.notFound()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.notFound());
  }
}

class ConflictException extends DooadexException {
  @override
  ConflictException() : super(DooadexErrors.conflict()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.conflict());
  }
}

class RequestTimeoutException extends DooadexException {
  @override
  RequestTimeoutException() : super(DooadexErrors.requestTimeout()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.requestTimeout());
  }
}

class InternalServerErrorException extends DooadexException {
  @override
  InternalServerErrorException() : super(DooadexErrors.internalServerError()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.internalServerError());
  }
}class ServiceUnavailableException extends DooadexException {
  @override
  ServiceUnavailableException() : super(DooadexErrors.serviceUnavailable()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.serviceUnavailable());
  }
}class UnknownErrorException extends DooadexException {
  @override
  UnknownErrorException() : super(DooadexErrors.unknownError()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.unknownError());
  }
}class UnstableNetworkException extends DooadexException {
  @override
  UnstableNetworkException() : super(DooadexErrors.unstableNetwork()) {
    logger(this);
    ErrorMessageHandler.setErrorMessage(dooadexError: DooadexErrors.unstableNetwork());
  }
}