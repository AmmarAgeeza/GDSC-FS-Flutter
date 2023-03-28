import 'package:flutter/material.dart';

import 'flutter_advanced_session/flutter_advanced_session.dart';

void main() {
  runApp(const RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterAdvancedWidgets(),
    );
  }
}
