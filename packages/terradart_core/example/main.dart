import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';

/// Minimal example: empty Stack synth.
final class EmptyStack extends Stack {
  EmptyStack() : super(providers: const []);
}

void main() {
  final result = EmptyStack().synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}
