import 'package:terradart_codegen/src/codegen/enum_emitter.dart';
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:test/test.dart';

void main() {
  group('emitEnumDeclaration (spec §9.2 #3)', () {
    test('emits Dart enum with camelCase members preserving order', () {
      final name = enumName(
        resourceType: 'google_pubsub_topic',
        fieldPath: 'schema_settings.encoding',
        members: const ['ENCODING_UNSPECIFIED', 'JSON', 'BINARY'],
      );
      final src = emitEnumDeclaration(name);
      expect(src, equals('''
/// Pubsub Topic enum for `encoding`.
enum PubsubTopicEncoding { encodingUnspecified, json, binary }
'''));
    });

    test('a single-member enum is still emitted', () {
      final name = enumName(
        resourceType: 'google_x',
        fieldPath: 'mode',
        members: const ['ALL'],
      );
      final src = emitEnumDeclaration(name);
      expect(src, contains('enum XMode { all }'));
    });
  });

  group('uses-the-enum field rendering', () {
    test('writeEnumDartType returns the enum class name', () {
      final name = enumName(
        resourceType: 'google_pubsub_topic',
        fieldPath: 'schema_settings.encoding',
        members: const ['JSON', 'BINARY'],
      );
      expect(writeEnumDartType(name), 'PubsubTopicEncoding');
    });
  });
}
