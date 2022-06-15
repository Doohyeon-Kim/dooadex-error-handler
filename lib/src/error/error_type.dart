// ignore: depend_on_referenced_packages
import 'package:dooadex_constants/dooadex_constants.dart';

class ErrorType {
  // ignore: library_private_types_in_public_api
  static _ClientError client = _ClientError();

  // ignore: library_private_types_in_public_api
  static _ServerError server = _ServerError();

  // ignore: library_private_types_in_public_api
  static _HttpError http = _HttpError();

  static String unknownError = 'Unknown Error';
  static String unstableNetwork = "Unstable Network";
}

class _ClientError {
  String invalidFormat = "Invalid Format";
  String userInputError = "User Input Error";
}

class _ServerError {}

class _HttpError {
  String badRequest = HttpStatus.reason.badRequest;
  String unauthorized = HttpStatus.reason.unauthorized;
  String forbidden = HttpStatus.reason.forbidden;
  String notFound = HttpStatus.reason.notFound;
  String requestTimeout = HttpStatus.reason.requestTimeout;
  String conflict = HttpStatus.reason.conflict;
  String internalServerError = HttpStatus.reason.internalServerError;
  String serviceUnavailable = HttpStatus.reason.serviceUnavailable;
}


