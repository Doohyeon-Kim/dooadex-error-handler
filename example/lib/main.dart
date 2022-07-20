
import 'package:gazua_error_handler/gazua_error_handler.dart';
import 'package:flutter/material.dart';
import 'package:twostrings_palette/twostrings_palette.dart';

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
      title: 'Two Strings Package Test App',
      theme: ThemeData(
        primarySwatch: MaterialColor(TwoStringsColor.primaryMaterialColor.colorHex, TwoStringsColor.primaryMaterialColor.swatch),
      ),
      home: const MyHomePage(title: 'Two Strings Home Page'),
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
                try {
                  GzError gzError = GzErrors.conflict();
                  throw GzException(gzError);
                } on GzException {
                  GzErrorMessageHandler.showError(context: context, widgetType: WidgetType.dialog);
                }
              },
              child: const Text("Gazua Exception"),
            ),
            ElevatedButton(
              onPressed: () {
                try {
                  GzError gzError = CustomError("Custom Error");
                  throw CustomException(gzError);
                } on CustomException {
                  GzErrorMessageHandler.showError(context: context, widgetType: WidgetType.dialog);
                }
              },
              child: const Text("Custom Exception"),
            ),
          ],
        ),
      ),
    );
  }
}
