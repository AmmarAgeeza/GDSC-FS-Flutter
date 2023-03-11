import 'package:flutter/material.dart';

import 'flutter_basics_session/flutter_basics_session.dart';
import 'flutter_scrollable_session/flutter_scrollable_session.dart';

void main() {
  runApp(const RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterScrollableSession(),
    );
  }
}
