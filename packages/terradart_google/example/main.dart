import 'dart:convert' as convert;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';

/// Minimal example: a single Pub/Sub topic, synthesized to Terraform JSON.
class HelloStack extends Stack {
  HelloStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1')
          ],
        ) {
    add(GooglePubsubTopic(localName: 'hello', name: TfArg.literal('hello')));
  }

  @override
  Future<void> synth({required String outDir}) async {
    final result = StackSynth.synth(this);
    print(const convert.JsonEncoder.withIndent('  ').convert(result.tfJson));
  }
}

void main() async {
  await HelloStack(projectId: 'YOUR-PROJECT-ID').synth(outDir: '.');
}
