import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

/// Behavior tests for the `source` | `content` sealed payload on
/// `google_storage_bucket_object`, including the part only a synth pass
/// can show: `content` is provider-Sensitive, so a literal must fail
/// fast (a SensitiveLiteral synth issue) instead of silently landing in state.
void main() {
  group('StorageBucketObjectBody', () {
    test('FromSource encodes under source only', () {
      final body = const StorageBucketObjectBodySource(
        TfArg.literal('./config.json'),
      );
      expect(body.blockKey, equals('source'));
      expect(body.encode(), equals({'source': './config.json'}));
    });

    test('FromContent encodes under content only', () {
      final body = StorageBucketObjectBodyContent(
        TfArg.variable('seed_content'),
      );
      expect(body.blockKey, equals('content'));
      expect(body.encode(), equals({'content': r'${var.seed_content}'}));
    });

    test('resource argMap carries exactly the chosen payload key', () {
      final object = GoogleStorageBucketObject(
        'conf',
        bucket: .literal('assets'),
        name: const TfArg.literal('config.json'),
        body: const StorageBucketObjectBodySource(
          TfArg.literal('./config.json'),
        ),
      );
      expect(object.argMap.containsKey('source'), isTrue);
      expect(object.argMap.containsKey('content'), isFalse);
    });
  });

  group('content sensitivity at synth time', () {
    test('sensitiveFields pins content and the CMEK key', () {
      final object = GoogleStorageBucketObject(
        'conf',
        bucket: .literal('assets'),
        name: const TfArg.literal('config.json'),
        body: const StorageBucketObjectBodySource(
          TfArg.literal('./config.json'),
        ),
      );
      expect(
        object.sensitiveFields,
        containsAll(<String>{'content', 'customer_encryption.encryption_key'}),
      );
    });

    test('a literal content fails synth with a SensitiveLiteral issue', () {
      final stack = TestStack(providers: [const GoogleProvider(project: 'p')]);
      stack.add(
        GoogleStorageBucketObject(
          'seed',
          bucket: .literal('assets'),
          name: const TfArg.literal('seed.json'),
          body: const StorageBucketObjectBodyContent(TfArg.literal('{"k":1}')),
        ),
      );
      expect(
        () => stack.synth(),
        throwsA(
          isA<SynthException>().having(
            (e) => e.issues.single,
            'issue',
            isA<SensitiveLiteral>().having((i) => i.field, 'field', 'content'),
          ),
        ),
      );
    });

    test('a variable content synths to a var reference', () {
      final stack = TestStack(providers: [const GoogleProvider(project: 'p')]);
      final seedContent = stack.variable<String>(
        'seed_content',
        sensitive: true,
      );
      stack.add(
        GoogleStorageBucketObject(
          'seed',
          bucket: .literal('assets'),
          name: const TfArg.literal('seed.json'),
          body: StorageBucketObjectBodyContent(seedContent),
        ),
      );
      final tfJson = stack.synth().tfJson;
      final resource =
          ((tfJson['resource'] as Map)['google_storage_bucket_object']
                  as Map)['seed']
              as Map;
      expect(resource['content'], equals(r'${var.seed_content}'));
    });
  });
}
