import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:test/test.dart';

void main() {
  group('Naming', () {
    test('snakeToCamel', () {
      expect(snakeToCamel('message_retention_duration'),
          'messageRetentionDuration');
      expect(snakeToCamel('id'), 'id');
      expect(snakeToCamel('kms_key_name'), 'kmsKeyName');
    });

    test('snakeToPascal', () {
      expect(snakeToPascal('google_pubsub_topic'), 'GooglePubsubTopic');
      expect(snakeToPascal('schema_settings'), 'SchemaSettings');
    });

    test('terraformAbstractClassName prefixes \$', () {
      expect(terraformAbstractClassName('google_pubsub_topic'),
          r'$GooglePubsubTopic');
    });

    test('nestedAbstractClassName prefixes \$ and PascalCases', () {
      expect(nestedAbstractClassName('schema_settings'), r'$SchemaSettings');
    });

    test('enumName builds Pascal name and screaming-snake to camel members',
        () {
      final e = enumName(
        resourceType: 'google_pubsub_topic',
        fieldPath: 'schema_settings.encoding',
        members: const ['ENCODING_UNSPECIFIED', 'JSON', 'BINARY'],
      );
      expect(e.dartName, 'PubsubTopicEncoding');
      expect(e.dartMembers, ['encodingUnspecified', 'json', 'binary']);
    });

    test('resourceFileName converts to snake-case .dart name', () {
      expect(
          resourceFileName('google_pubsub_topic'), 'google_pubsub_topic.dart');
    });
  });
}
