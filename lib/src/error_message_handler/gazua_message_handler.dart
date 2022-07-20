import 'package:flutter/material.dart';

import '../component/error_dialog.dart';
import '../constant/constant.dart';
import '../error/gazua_error.dart';
import 'gazua_message.dart';

class GzErrorMessageHandler {
  static GzErrorMessage? _errorMessage;

  GzErrorMessageHandler._();

  static bool checkErrorMessageExist() => _errorMessage != null ? true : false;

  static setErrorMessage({required GzError gzError}) {
    _errorMessage = GzErrorMessage(title: gzError.title!, detail: gzError.detail!);
  }

  static GzErrorMessage getErrorMessage() {
    if (checkErrorMessageExist()) {
      return _errorMessage!;
    } else {
      return GzErrorMessage(title: '', detail: '');
    }
  }

  static showError({required BuildContext context, required WidgetType widgetType, Widget? customErrorDialog}) {
    switch (widgetType) {
      case WidgetType.dialog:
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext dialogContext) {
            return customErrorDialog ??
                GzErrorDialog(
                  context: context,
                  errorMessage: _errorMessage ??
                      GzErrorMessage(
                          title: "Unknown Error", detail: "Unknown Error Occurred. Please try again later."),
                );
          },
        );
        return;

      default:
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext dialogContext) {
            return GzErrorDialog(
                context: context,
                errorMessage: _errorMessage ??
                    GzErrorMessage(title: "Unknown Error", detail: "Unknown Error Occurred. Please try again later."));
          },
        );
        return;
    }
  }

  static void flushErrorMessage() {
    _errorMessage = null;
  }
}
