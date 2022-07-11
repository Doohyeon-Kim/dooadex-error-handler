import '../error/dooadex_errors.dart';
import '../error_message_handler/error_message_handler.dart';
import 'dooadex_exception.dart';

class UserInputErrorException extends DdxException {
  @override
  UserInputErrorException() : super(DdxErrors.userInputError()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.userInputError());
  }
}

class InvalidFormatException extends DdxException {
  @override
  InvalidFormatException() : super(DdxErrors.invalidFormat()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.invalidFormat());
  }
}

class BadRequestException extends DdxException {
  @override
  BadRequestException() : super(DdxErrors.badRequest()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.badRequest());
  }
}

class UnauthorizedException extends DdxException {
  @override
  UnauthorizedException() : super(DdxErrors.unauthorized()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.unauthorized());
  }
}

class ForbiddenException extends DdxException {
  @override
  ForbiddenException() : super(DdxErrors.forbidden()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.forbidden());
  }
}

class NotFoundException extends DdxException {
  @override
  NotFoundException() : super(DdxErrors.notFound()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.notFound());
  }
}

class ConflictException extends DdxException {
  @override
  ConflictException() : super(DdxErrors.conflict()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.conflict());
  }
}

class RequestTimeoutException extends DdxException {
  @override
  RequestTimeoutException() : super(DdxErrors.requestTimeout()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.requestTimeout());
  }
}

class InternalServerErrorException extends DdxException {
  @override
  InternalServerErrorException() : super(DdxErrors.internalServerError()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.internalServerError());
  }
}class ServiceUnavailableException extends DdxException {
  @override
  ServiceUnavailableException() : super(DdxErrors.serviceUnavailable()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.serviceUnavailable());
  }
}class UnknownErrorException extends DdxException {
  @override
  UnknownErrorException() : super(DdxErrors.unknownError()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.unknownError());
  }
}class UnstableNetworkException extends DdxException {
  @override
  UnstableNetworkException() : super(DdxErrors.unstableNetwork()) {
    logger(this);
    DdxErrorMessageHandler.setErrorMessage(ddxError: DdxErrors.unstableNetwork());
  }
}