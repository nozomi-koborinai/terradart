import 'dart:convert';
import 'dart:io';

import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

void main() {
  test('Push subscription synth matches golden (1.3 narrative)', () async {
    final stack = TestStack(providers: const [GoogleProvider(project: 'demo')]);
    final orders = stack.add(
      GooglePubsubTopic('orders', name: TfArg.literal('orders-prod')),
    );
    stack.add(
      GooglePubsubSubscription(
        'orders_push',
        name: TfArg.literal('orders-push'),
        topic: orders.ref,
        delivery: const .pushConfig(
          PubsubSubscriptionPushConfig(
            pushEndpoint: TfArgLiteral<String>('https://app.example.com/push'),
            attributes: TfArgLiteral<Map<String, String>>({
              'x-goog-version': 'v1',
            }),
          ),
        ),
      ),
    );

    final actual = stack.synth().tfJson;
    final expected =
        jsonDecode(
              await File(
                'test/golden/pubsub_subscription_push.tf.json',
              ).readAsString(),
            )
            as Map<String, dynamic>;
    expect(actual, equals(expected));
  });
}
