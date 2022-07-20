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
  String badRequest = "Bad Request";
  String unauthorized = "Unauthorized";
  String forbidden = "Forbidden";
  String notFound = "Not Found";
  String requestTimeout = "Request Timeout";
  String conflict = "Conflict";
  String internalServerError = "Internal Server Error";
  String serviceUnavailable = "Service Unavailable";
}
