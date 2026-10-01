import 'dart:convert';

import 'package:terradart_time/terradart_time.dart';

/// Minimal example: a 60-second `time_sleep`, synthesized to Terraform JSON.
///
/// In a real stack, put the sleep in the `dependsOn` of the resources that
/// must wait.
final class WaitStack extends Stack {
  WaitStack() : super(providers: const [TimeProvider()]) {
    add(
      TimeSleep(
        'wait',
        createDuration: TfArg.duration(const Duration(seconds: 60)),
      ),
    );
  }
}

void main() {
  final result = WaitStack().synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}
