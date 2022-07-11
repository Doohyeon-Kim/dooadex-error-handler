import 'package:dooadex_error_handler/dooadex_error_handler.dart';
import 'package:dooadex_logger/dooadex_logger.dart';
import 'package:dooadex_palette/dooadex_palette.dart';
import 'package:flutter/material.dart';

import 'custom_error.dart';
import 'custom_exception.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dooadex Package Test App',
      theme: ThemeData(
        primarySwatch: MaterialColor(DdxColor.primaryMaterialColor.colorHex, DdxColor.primaryMaterialColor.swatch),
      ),
      home: const MyHomePage(title: 'Dooadex Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                DdxException.conflict();
                DdxErrorMessageHandler.showError(context: context, widgetType: WidgetType.dialog);
              },
              child: const Text("Dooadex Exception"),
            ),
            ElevatedButton(
              onPressed: () {
                try {
                  occurError();
                } on DdxException catch (error) {
                  error.printError();
                  DdxErrorMessageHandler.showError(context: context, widgetType: WidgetType.dialog);
                }
              },
              child: const Text("Dooadex Exception with whole error message."),
            ),
            ElevatedButton(
              onPressed: () {
                CustomException(CustomError("Custom Error"));
                DdxErrorMessageHandler.showError(context: context, widgetType: WidgetType.dialog);
              },
              child: const Text("Custom Exception"),
            ),
          ],
        ),
      ),
    );
  }
}

DdxError occurError() {
  throw DdxException.conflict();
}
