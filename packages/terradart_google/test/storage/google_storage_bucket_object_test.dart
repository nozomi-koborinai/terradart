import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

/// Behavior tests for the `source` | `content` sealed payload on
/// `google_storage_bucket_object`, including the part only a synth pass
/// can show: `content` is provider-Sensitive, so a literal must fail
/// fast (SensitiveLiteralError) instead of silently landing in state.
void main() {
  group('StorageBucketObjectBucketObjectContent', () {
    test('FromSource encodes under source only', () {
      final body = StorageBucketObjectBucketObjectFromSource(
        source: TfArg.literal('./config.json'),
      );
      expect(body.blockKey, equals('source'));
      expect(body.encode(), equals({'source': './config.json'}));
    });

    test('FromContent encodes under content only', () {
      final body = StorageBucketObjectBucketObjectFromContent(
        content: TfArg.variable('seed_content'),
      );
      expect(body.blockKey, equals('content'));
      expect(body.encode(), equals({'content': r'${var.seed_content}'}));
    });

    test('resource argMap carries exactly the chosen payload key', () {
      final object = GoogleStorageBucketObject(
        localName: 'conf',
        bucket: TfArg.literal('assets'),
        name: TfArg.literal('config.json'),
        body: StorageBucketObjectBucketObjectFromSource(
          source: TfArg.literal('./config.json'),
        ),
      );
      expect(object.argMap.containsKey('source'), isTrue);
      expect(object.argMap.containsKey('content'), isFalse);
    });
  });

  group('content sensitivity at synth time', () {
    test('sensitiveFields pins content and the CMEK key', () {
      final object = GoogleStorageBucketObject(
        localName: 'conf',
        bucket: TfArg.literal('assets'),
        name: TfArg.literal('config.json'),
        body: StorageBucketObjectBucketObjectFromSource(
          source: TfArg.literal('./config.json'),
        ),
      );
      expect(
        object.sensitiveFields,
        containsAll(<String>{
          'content',
          'customer_encryption.encryption_key',
        }),
      );
    });

    test('a literal content fails synth with SensitiveLiteralError', () {
      final stack = TestStack(providers: [const GoogleProvider(project: 'p')]);
      stack.add(
        GoogleStorageBucketObject(
          localName: 'seed',
          bucket: TfArg.literal('assets'),
          name: TfArg.literal('seed.json'),
          body: StorageBucketObjectBucketObjectFromContent(
            content: TfArg.literal('{"k":1}'),
          ),
        ),
      );
      expect(() => stack.synth(), throwsA(isA<SensitiveLiteralError>()));
    });

    test('a variable content synths to a var reference', () {
      final stack = TestStack(providers: [const GoogleProvider(project: 'p')]);
      stack.addVariable(
        'seed_content',
        const TfVariable(type: 'string', sensitive: true),
      );
      stack.add(
        GoogleStorageBucketObject(
          localName: 'seed',
          bucket: TfArg.literal('assets'),
          name: TfArg.literal('seed.json'),
          body: StorageBucketObjectBucketObjectFromContent(
            content: TfArg.variable('seed_content'),
          ),
        ),
      );
      final tfJson = stack.synth().tfJson;
      final resource = ((tfJson['resource']
          as Map)['google_storage_bucket_object'] as Map)['seed'] as Map;
      expect(resource['content'], equals(r'${var.seed_content}'));
    });
  });
}
