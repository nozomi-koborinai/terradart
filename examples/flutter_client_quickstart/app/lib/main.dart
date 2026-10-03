import 'package:flutter/material.dart';

import 'generated/flutter_client_stack.app.dart';

/// Values compiled in by `--dart-define-from-file`. Construction does not
/// read them; each getter does, and throws [StateError] when its define is
/// missing.
const outputs = FlutterClientStackOutputs.fromDartDefine();

void main() {
  runApp(const FlutterClientApp());
}

class FlutterClientApp extends StatelessWidget {
  const FlutterClientApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TerraDart outputs',
      home: Scaffold(
        appBar: AppBar(title: const Text('TerraDart outputs')),
        body: const Padding(padding: EdgeInsets.all(24), child: _Outputs()),
      ),
    );
  }
}

class _Outputs extends StatelessWidget {
  const _Outputs();

  @override
  Widget build(BuildContext context) {
    final text = _text();
    return Text(text);
  }

  String _text() {
    try {
      final urls = outputs.apiUrls.map((url) => '  $url').join('\n');
      return 'API\n${outputs.apiUrl}\n\n'
          'API URLs\n$urls\n\n'
          'Uploads bucket\n${outputs.uploadsBucket}';
    } on StateError catch (e) {
      return e.message;
    }
  }
}
