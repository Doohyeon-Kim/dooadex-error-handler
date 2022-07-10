import 'package:flutter/material.dart';

import '../component/error_dialog.dart';
import '../constant/constant.dart';
import '../error/dooadex_error.dart';
import 'error_message.dart';

class DdxErrorMessageHandler {
  static DdxErrorMessage? _errorMessage;

  DdxErrorMessageHandler._();

  static bool checkErrorMessageExist() => _errorMessage != null ? true : false;

  static setErrorMessage({required DdxError dooadexError}) {
    _errorMessage = DdxErrorMessage(title: dooadexError.title!, detail: dooadexError.detail!);
  }

  static DdxErrorMessage getErrorMessage() {
    if (checkErrorMessageExist()) {
      return _errorMessage!;
    } else {
      return DdxErrorMessage(title: '', detail: '');
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
                DdxErrorDialog(
                  context: context,
                  errorMessage: _errorMessage ??
                      DdxErrorMessage(
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
            return DdxErrorDialog(
                context: context,
                errorMessage: _errorMessage ??
                    DdxErrorMessage(title: "Unknown Error", detail: "Unknown Error Occurred. Please try again later."));
          },
        );
        return;
    }
  }

  static void flushErrorMessage() {
    _errorMessage = null;
  }
}
