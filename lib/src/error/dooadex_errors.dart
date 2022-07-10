import 'dooadex_error.dart';
import 'dooadex_error_factory.dart';

class DdxErrors implements DdxError {
  DdxErrors({this.type, this.message, this.title, this.detail});

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

  factory DdxErrors.userInputError({String? type, String? message, String? title, String? detail}) = UserInputError;

  factory DdxErrors.invalidFormat({String? type, String? message, String? title, String? detail}) = InvalidFormat;

  factory DdxErrors.badRequest({String? type, String? message, String? title, String? detail}) = BadRequest;

  factory DdxErrors.unauthorized({String? type, String? message, String? title, String? detail}) = Unauthorized;

  factory DdxErrors.forbidden({String? type, String? message, String? title, String? detail}) = Forbidden;

  factory DdxErrors.notFound({String? type, String? message, String? title, String? detail}) = NotFound;

  factory DdxErrors.conflict({String? type, String? message, String? title, String? detail}) = Conflict;

  factory DdxErrors.requestTimeout({String? type, String? message, String? title, String? detail}) = RequestTimeout;

  factory DdxErrors.internalServerError({String? type, String? message, String? title, String? detail}) = InternalServerError;

  factory DdxErrors.serviceUnavailable({String? type, String? message, String? title, String? detail}) = ServiceUnavailable;

  factory DdxErrors.unknownError({String? type, String? message, String? title, String? detail}) = UnknownError;

  factory DdxErrors.unstableNetwork({String? type, String? message, String? title, String? detail}) = UnstableNetwork;
}
