class DdxError extends Error{
  DdxError({this.type, this.message, this.title, this.detail});
  final String? type;
  final String? message;
  final String? title;
  final String? detail;

  @override
  String toString() {
    return "[DdxError]\ntype: $type\nmessage: $message\ntitle: $title\ndetail: detail";
  }
}
