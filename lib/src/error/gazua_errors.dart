import 'gazua_error.dart';
import 'gazua_error_factory.dart';

class GzErrors implements GzError {
  GzErrors({this.type, this.message, this.title, this.detail});

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

  factory GzErrors.userInputError({String? type, String? message, String? title, String? detail}) = UserInputError;

  factory GzErrors.invalidFormat({String? type, String? message, String? title, String? detail}) = InvalidFormat;

  factory GzErrors.badRequest({String? type, String? message, String? title, String? detail}) = BadRequest;

  factory GzErrors.unauthorized({String? type, String? message, String? title, String? detail}) = Unauthorized;

  factory GzErrors.forbidden({String? type, String? message, String? title, String? detail}) = Forbidden;

  factory GzErrors.notFound({String? type, String? message, String? title, String? detail}) = NotFound;

  factory GzErrors.conflict({String? type, String? message, String? title, String? detail}) = Conflict;

  factory GzErrors.requestTimeout({String? type, String? message, String? title, String? detail}) = RequestTimeout;

  factory GzErrors.internalServerError({String? type, String? message, String? title, String? detail}) = InternalServerError;

  factory GzErrors.serviceUnavailable({String? type, String? message, String? title, String? detail}) = ServiceUnavailable;

  factory GzErrors.unknownError({String? type, String? message, String? title, String? detail}) = UnknownError;

  factory GzErrors.unstableNetwork({String? type, String? message, String? title, String? detail}) = UnstableNetwork;
}
