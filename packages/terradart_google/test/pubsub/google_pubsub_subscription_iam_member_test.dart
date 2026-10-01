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
      topic: topic.ref,
    );
    final iam = GooglePubsubSubscriptionIamMember(
      localName: 'orders_consumer',
      subscription: sub.ref,
      role: TfArg.literal('roles/pubsub.subscriber'),
      member: TfArg.literal(
        'serviceAccount:consumer@p.iam.gserviceaccount.com',
      ),
    );
    expect(
      iam.argMap.keys.toList(),
      equals(<String>['subscription', 'role', 'member', 'project']),
    );
    expect(
      iam.argMap['subscription']!.toTfJson(),
      equals(r'${google_pubsub_subscription.orders_worker.name}'),
    );
    expect(
      iam.argMap['project']!.toTfJson(),
      equals(r'${google_pubsub_subscription.orders_worker.project}'),
    );
    expect(iam.terraformType, equals('google_pubsub_subscription_iam_member'));
  });
}
