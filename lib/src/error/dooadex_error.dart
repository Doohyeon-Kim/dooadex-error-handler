class DdxError implements Error{
  DdxError({this.type, this.message, this.title, this.detail});
  final String? type;
  final String? message;
  final String? title;
  final String? detail;

  @override
  // TODO: implement stackTrace
  StackTrace? get stackTrace => throw UnimplementedError();
}
