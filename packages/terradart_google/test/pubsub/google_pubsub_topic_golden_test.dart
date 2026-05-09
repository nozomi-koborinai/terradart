import 'dart:convert';
import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

void main() {
  test('GooglePubsubTopic synth matches golden', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')])
      ..add(
        GooglePubsubTopic(
          localName: 'orders',
          name: TfArg.literal('orders-prod'),
          messageRetentionDuration: TfArg.literal(
            const Duration(days: 7).toTfDurationString(),
          ),
          lifecycle: const LifecycleOptions(preventDestroy: true),
        ),
      );

    final actual = StackSynth.synth(stack).tfJson;
    final expected =
        jsonDecode(
              await File('test/golden/pubsub_topic.tf.json').readAsString(),
            )
            as Map<String, dynamic>;
    expect(actual, equals(expected));
  });
}
