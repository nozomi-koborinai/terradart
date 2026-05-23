import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';

/// Minimal example: empty Stack synth.
final class EmptyStack extends Stack {
  EmptyStack() : super(providers: const []);

  @override
  Future<void> synth({required String outDir}) async =>
      throw UnimplementedError('use StackSynth.synth(...) directly');
}

void main() {
  final result = StackSynth.synth(EmptyStack());
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}
