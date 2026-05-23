// ignore_for_file: invalid_use_of_protected_member
// Tests verify the codegen-emitted sensitiveFields getter value; reading a
// @protected getter from test scope is the intended cross-boundary pattern
// for wrapper integration tests.
import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  test('topic IAM member emits topic + role + member', () {
    final topic = GooglePubsubTopic(
      localName: 'orders',
      name: TfArg.literal('orders'),
    );
    final iam = GooglePubsubTopicIamMember(
      localName: 'orders_publisher',
      topic: TfArg.ref(topic.nameRef),
      role: TfArg.literal('roles/pubsub.publisher'),
      member: TfArg.literal(
        'serviceAccount:publisher@p.iam.gserviceaccount.com',
      ),
    );
    expect(
      iam.argMap.keys.toList(),
      equals(<String>['topic', 'role', 'member']),
    );
    expect(
      iam.argMap['topic']!.toTfJson(),
      equals(r'${google_pubsub_topic.orders.name}'),
    );
    expect(iam.argMap['role']!.toTfJson(), equals('roles/pubsub.publisher'));
    expect(
      iam.argMap['member']!.toTfJson(),
      equals('serviceAccount:publisher@p.iam.gserviceaccount.com'),
    );
    expect(iam.terraformType, equals('google_pubsub_topic_iam_member'));
    expect(iam.sensitiveFields, isEmpty);
  });

  test('etag ref interpolation', () {
    final topic = GooglePubsubTopic(
      localName: 'orders',
      name: TfArg.literal('orders'),
    );
    final iam = GooglePubsubTopicIamMember(
      localName: 'binding',
      topic: TfArg.ref(topic.nameRef),
      role: TfArg.literal('roles/pubsub.publisher'),
      member: TfArg.literal('serviceAccount:x'),
    );
    expect(
      iam.etag.interpolation,
      equals(r'${google_pubsub_topic_iam_member.binding.etag}'),
    );
  });
}
