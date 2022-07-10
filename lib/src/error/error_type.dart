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
  String badRequest = DdxHttpStatus.reason.badRequest;
  String unauthorized = DdxHttpStatus.reason.unauthorized;
  String forbidden = DdxHttpStatus.reason.forbidden;
  String notFound = DdxHttpStatus.reason.notFound;
  String requestTimeout = DdxHttpStatus.reason.requestTimeout;
  String conflict = DdxHttpStatus.reason.conflict;
  String internalServerError = DdxHttpStatus.reason.internalServerError;
  String serviceUnavailable = DdxHttpStatus.reason.serviceUnavailable;
}


