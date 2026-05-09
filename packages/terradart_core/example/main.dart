import 'dart:convert' as convert;

import 'package:terradart_core/terradart_core.dart';

/// Minimal example: empty Stack synth.
class EmptyStack extends Stack {
  EmptyStack() : super(providers: const []);

  @override
  Future<void> synth({required String outDir}) async =>
      throw UnimplementedError('use StackSynth.synth(...) directly');
}

void main() {
  final result = StackSynth.synth(EmptyStack());
  print(const convert.JsonEncoder.withIndent('  ').convert(result.tfJson));
}
