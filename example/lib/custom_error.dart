import 'package:dooadex_error_handler/dooadex_error_handler.dart';

class CustomError implements DdxError {
  CustomError(this.message);

  @override
  String message;

  @override
  String title = "Custom Error Title";

  @override
  String? detail = "Custom Error Message";

  @override
  // TODO: implement stackTrace
  StackTrace? get stackTrace => throw UnimplementedError();

  @override
  // TODO: implement type
  String? get type => throw UnimplementedError();
}
