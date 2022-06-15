import 'package:flutter/material.dart';

import '../component/error_dialog.dart';
import '../constant/constant.dart';
import '../error/dooadex_error.dart';
import 'error_message.dart';

class ErrorMessageHandler {
  static ErrorMessage? _errorMessage;

  ErrorMessageHandler._();

  static bool checkErrorMessageExist() => _errorMessage != null ? true : false;

  static setErrorMessage({required DooadexError dooadexError}) {
    _errorMessage = ErrorMessage(title: dooadexError.title!, detail: dooadexError.detail!);
  }

  static ErrorMessage getErrorMessage() {
    if (checkErrorMessageExist()) {
      return _errorMessage!;
    } else {
      return ErrorMessage(title: '', detail: '');
    }
  }

  static showError({required BuildContext context, required WidgetType widgetType}) {
    switch (widgetType) {
      case WidgetType.dialog:
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext dialogContext) {
            return ErrorDialog(
                context: context,
                errorMessage: _errorMessage ?? ErrorMessage(title: "Unknown Error", detail: "Unknown Error Occurred. Please try again later."));
          },
        );
        return;

      default:
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext dialogContext) {
            return ErrorDialog(
                context: context,
                errorMessage: _errorMessage ?? ErrorMessage(title: "Unknown Error", detail: "Unknown Error Occurred. Please try again later."));
          },
        );
        return;
    }
  }

  static void flushErrorMessage() {
    _errorMessage = null;
  }
}
