import 'package:dooadex_error_handler/src/error_message_handler/error_message.dart';
import 'package:flutter/material.dart';

import '../error_message_handler/error_message_handler.dart';
import '../constant/constant.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key, required this.context, required this.errorMessage}) : super(key: key);

  final BuildContext context;
  final ErrorMessage errorMessage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${errorMessage.title} '),
      content: Text(
        '${errorMessage.detail} ',
        // style: ,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                ErrorMessageHandler.flushErrorMessage();
                Navigator.of(context).pop(); // Dismiss alert dialog
              },
              child: const Text("확인"),
            ),
          ],
        ),
      ],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
