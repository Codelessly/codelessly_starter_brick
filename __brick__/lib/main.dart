import 'package:codelessly_sdk/codelessly_sdk.dart';
import 'package:flutter/material.dart';

void main() async {
  Codelessly.instance.initialize(
    config: CodelesslyConfig(
      authToken: "{{authToken}}",
      {{#useSlugs}}slug: "{{slug}}",{{/useSlugs}}
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CodelesslyWidget({{^useSlugs}}\n        layoutID: "{{layoutID}}",\n      {{/useSlugs}}),
    );
  }
}
