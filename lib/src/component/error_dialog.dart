import 'package:gazua_error_handler/src/error_message_handler/gazua_message.dart';
import 'package:flutter/material.dart';

import '../error_message_handler/gazua_message_handler.dart';
import '../constant/constant.dart';

class GzErrorDialog extends StatelessWidget {
  const GzErrorDialog(
      {Key? key,
      required this.context,
      required this.errorMessage,
      this.errorTitleTextWidget,
      this.errorDetailTextWidget,
      this.buttonText})
      : super(key: key);

  final BuildContext context;
  final GzErrorMessage errorMessage;
  final String? buttonText;
  final Text? errorTitleTextWidget;
  final Text? errorDetailTextWidget;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: errorTitleTextWidget ?? Text('${errorMessage.title} '),
      content: errorDetailTextWidget ??
          Text(
            '${errorMessage.detail} ',
            // style: ,
          ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                GzErrorMessageHandler.flushErrorMessage();
                Navigator.of(context).pop(); // Dismiss alert dialog
              },
              child: Text(buttonText ?? "Confirm"),
            ),
          ],
        ),
      ],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
