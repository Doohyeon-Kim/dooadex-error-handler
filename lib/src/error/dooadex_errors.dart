import 'dooadex_error.dart';
import 'dooadex_error_factory.dart';

class DooadexErrors implements DooadexError {
  DooadexErrors({this.type, this.message, this.title, this.detail});

  @override
  final String? type;
  @override
  final String? message;
  @override
  final String? title;
  @override
  final String? detail;

  @override
  String toString() {
    return "$type\n$message\n$title\n$detail";
  }

  @override
  // TODO: implement stackTrace
  StackTrace? get stackTrace => throw UnimplementedError();

  factory DooadexErrors.userInputError({String? type, String? message, String? title, String? detail}) = UserInputError;

  factory DooadexErrors.invalidFormat({String? type, String? message, String? title, String? detail}) = InvalidFormat;

  factory DooadexErrors.badRequest({String? type, String? message, String? title, String? detail}) = BadRequest;

  factory DooadexErrors.unauthorized({String? type, String? message, String? title, String? detail}) = Unauthorized;

  factory DooadexErrors.forbidden({String? type, String? message, String? title, String? detail}) = Forbidden;

  factory DooadexErrors.notFound({String? type, String? message, String? title, String? detail}) = NotFound;

  factory DooadexErrors.conflict({String? type, String? message, String? title, String? detail}) = Conflict;

  factory DooadexErrors.requestTimeout({String? type, String? message, String? title, String? detail}) = RequestTimeout;

  factory DooadexErrors.internalServerError({String? type, String? message, String? title, String? detail}) = InternalServerError;

  factory DooadexErrors.serviceUnavailable({String? type, String? message, String? title, String? detail}) = ServiceUnavailable;

  factory DooadexErrors.unknownError({String? type, String? message, String? title, String? detail}) = UnknownError;

  factory DooadexErrors.unstableNetwork({String? type, String? message, String? title, String? detail}) = UnstableNetwork;
}
