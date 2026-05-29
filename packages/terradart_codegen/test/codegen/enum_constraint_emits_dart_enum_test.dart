import 'package:terradart_codegen/src/codegen/enum_emitter.dart';
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:test/test.dart';

void main() {
  group('emitEnumDeclaration', () {
    test('emits a complete TerraformEnum with raw values and terraformValue',
        () {
      final name = enumName(
        resourceType: 'google_pubsub_topic',
        fieldPath: 'schema_settings.encoding',
        members: const ['ENCODING_UNSPECIFIED', 'JSON', 'BINARY'],
      );
      final src = emitEnumDeclaration(name);
      expect(src, equals('''
/// Pubsub Topic enum for `encoding`.
enum PubsubTopicEncoding implements TerraformEnum {
  encodingUnspecified('ENCODING_UNSPECIFIED'),
  json('JSON'),
  binary('BINARY');

  const PubsubTopicEncoding(this.terraformValue);
  @override
  final String terraformValue;
}
'''));
    });

    test('a single-member enum is still emitted with its raw value', () {
      final name = enumName(
        resourceType: 'google_x',
        fieldPath: 'mode',
        members: const ['ALL'],
      );
      final src = emitEnumDeclaration(name);
      expect(src, contains("all('ALL');"));
      expect(src, contains('enum XMode implements TerraformEnum {'));
      expect(src, contains('final String terraformValue;'));
    });
  });

  group('writeEnumDartType', () {
    test('returns the enum class name', () {
      final name = enumName(
        resourceType: 'google_pubsub_topic',
        fieldPath: 'schema_settings.encoding',
        members: const ['JSON', 'BINARY'],
      );
      expect(writeEnumDartType(name), 'PubsubTopicEncoding');
    });
  });
}
