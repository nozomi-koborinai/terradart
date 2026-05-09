import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test('subscription IAM member emits subscription + role + member', () {
    final topic = GooglePubsubTopic(
      localName: 'orders',
      name: TfArg.literal('orders'),
    );
    final sub = GooglePubsubSubscription(
      localName: 'orders_worker',
      name: TfArg.literal('orders-worker'),
      topic: TfArg.ref(topic.id),
    );
    final iam = GooglePubsubSubscriptionIamMember(
      localName: 'orders_consumer',
      subscription: TfArg.ref(sub.nameRef),
      role: TfArg.literal('roles/pubsub.subscriber'),
      member: TfArg.literal(
        'serviceAccount:consumer@p.iam.gserviceaccount.com',
      ),
    );
    expect(
      iam.argMap.keys.toList(),
      equals(<String>['subscription', 'role', 'member']),
    );
    expect(
      iam.argMap['subscription']!.toTfJson(),
      equals(r'${google_pubsub_subscription.orders_worker.name}'),
    );
    expect(iam.terraformType, equals('google_pubsub_subscription_iam_member'));
  });
}
