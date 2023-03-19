import 'package:flutter/material.dart';

import 'flutter_interactive_widgets/flutter_interactive_widgets.dart';

void main() {
  runApp(const RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterInteractiveWidgets(),
    );
  }
}
