// ignore: depend_on_referenced_packages
import 'package:dooadex_constants/dooadex_constants.dart';
import 'error_type.dart';
import 'dooadex_errors.dart';

class UserInputError extends DooadexErrors {
  UserInputError({String? type, String? message, String? title, String? detail})
      : super(type: type ?? ErrorType.client.userInputError, message: message ?? "", title: title ?? "", detail: detail ?? "");
}

class InvalidFormat extends DooadexErrors {
  InvalidFormat({String? type, String? message, String? title, String? detail})
      : super(type: type ?? ErrorType.client.invalidFormat, message: message ?? "", title: title ?? "", detail: detail ?? "");
}

class BadRequest extends DooadexErrors {
  BadRequest({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.http.badRequest,
            message: message ??
                "The request could not be understood by the server due to malformed syntax. The client should not repeat the request without modifications.",
            title: title ?? HttpStatus.reason.badRequest,
            detail: detail ?? "");
}

class Unauthorized extends DooadexErrors {
  Unauthorized({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.http.unauthorized,
            message: message ??
                "The request requires user authentication. The response MUST include a WWW-Authenticate header field containing a challenge applicable to the requested resource.",
            title: title ?? HttpStatus.reason.unauthorized,
            detail: detail ?? "");
}

class Forbidden extends DooadexErrors {
  Forbidden({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.http.forbidden,
            message: message ??
                "The server understood the request, but is refusing to fulfill it. Authorization will not help and the request should not be repeated. Error code response for missing or invalid authentication token.",
            title: title ?? HttpStatus.reason.forbidden,
            detail: detail ?? "");
}

class NotFound extends DooadexErrors {
  NotFound({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.http.notFound,
            message: message ??
                "The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent. Used when the requested resource is not found, whether it doesn't exist or if there was a 401 or 403 that, for security reasons, the service wants to mask.",
            title: title ?? HttpStatus.reason.notFound,
            detail: detail ?? "");
}

class Conflict extends DooadexErrors {
  Conflict({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.http.conflict,
            message: message ??
                "The request could not be completed due to a conflict with the current state of the resource. Whenever a resource conflict would be caused by fulfilling the request.",
            title: title ?? HttpStatus.reason.conflict,
            detail: detail ?? "");
}

class RequestTimeout extends DooadexErrors {
  RequestTimeout({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.http.requestTimeout,
            message: message ?? "The client did not produce a request within the time that the server was prepared to wait.",
            title: title ?? HttpStatus.reason.requestTimeout,
            detail: detail ?? "");
}

class InternalServerError extends DooadexErrors {
  InternalServerError({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.http.internalServerError,
            message: message ?? "",
            title: title ?? HttpStatus.reason.internalServerError,
            detail: detail ?? "");
}

class ServiceUnavailable extends DooadexErrors {
  ServiceUnavailable({String? type, String? message, String? title, String? detail})
      : super(
            type: type ?? ErrorType.http.serviceUnavailable,
            message: message ?? "",
            title: title ?? HttpStatus.reason.serviceUnavailable,
            detail: detail ?? "");
}

class UnknownError extends DooadexErrors {
  UnknownError({String? type, String? message, String? title, String? detail})
      : super(type: type ?? ErrorType.unknownError, message: message ?? "", title: title ?? "Unknown Error", detail: detail ?? "");
}

class UnstableNetwork extends DooadexErrors {
  UnstableNetwork({String? type, String? message, String? title, String? detail})
      : super(type: type ?? ErrorType.unstableNetwork, message: message ?? "", title: title ?? "Unstable Network", detail: detail ?? "");
}
