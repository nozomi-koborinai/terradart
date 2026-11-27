import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

Matcher throwsSynthIssue<T extends SynthIssue>([Object? text]) => throwsA(
  isA<SynthException>().having(
    (e) => e.issues,
    'issues',
    contains(
      isA<T>().having((i) => i.toString(), 'toString', text ?? anything),
    ),
  ),
);
