import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

void main() {
  group('synth provider coverage', () {
    test('throws when a resource prefix has no matching provider', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      stack.add(FakeResource(localName: 'x', name: TfArg.literal('x')));
      expect(
        () => stack.synth(),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            allOf(contains('"fake"'), contains('fake_thing.x')),
          ),
        ),
      );
    });

    test('passes when every prefix has a provider', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'fake',
            source: 'example/fake',
            versionConstraint: '~> 1.0',
          ),
        ],
      );
      stack.add(FakeResource(localName: 'x', name: TfArg.literal('x')));
      expect(stack.synth().tfJson, isA<Map<String, dynamic>>());
    });

    test('throws when Resource.provider has no matching StackProvider', () {
      final stack = TestStack(
        providers: const [
          FakeStackProvider(
            providerName: 'google',
            source: 'hashicorp/google',
            versionConstraint: '~> 7.0',
          ),
        ],
      );
      stack.add(
        FakePubsubTopic.withMeta(
          localName: 'orders',
          argMap: const {'name': TfArgLiteral<String>('orders-prod')},
          provider: 'google-beta',
        ),
      );
      expect(
        () => stack.synth(),
        throwsA(
          isA<StateError>().having(
            (e) => e.message,
            'message',
            allOf(
              contains('"google-beta"'),
              contains('google_pubsub_topic.orders'),
            ),
          ),
        ),
      );
    });
  });
}
