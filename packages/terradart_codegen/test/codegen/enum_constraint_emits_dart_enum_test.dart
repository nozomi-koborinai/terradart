import 'package:terradart_codegen/src/codegen/enum_emitter.dart';
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:test/test.dart';

void main() {
  group('emitEnumDeclaration', () {
    test('emits a complete extension-type enum with its raw values', () {
      final name = enumName(
        resourceType: 'google_pubsub_topic',
        fieldPath: 'schema_settings.encoding',
        members: const ['ENCODING_UNSPECIFIED', 'JSON', 'BINARY'],
      );
      final src = emitEnumDeclaration(name);
      expect(
        src,
        equals('''
/// Pubsub Topic enum for `encoding`.
extension type const PubsubTopicEncoding._(TfArg<String> _) implements TfArg<String> {
  PubsubTopicEncoding.variable(String name) : this._(TfArg.variable(name));
  PubsubTopicEncoding.expression(String template) : this._(TfArg.expression(template));
  const PubsubTopicEncoding.arg(TfArg<String> arg) : this._(arg);

  static const encodingUnspecified = PubsubTopicEncoding._(TfArgLiteral('ENCODING_UNSPECIFIED'));
  static const json = PubsubTopicEncoding._(TfArgLiteral('JSON'));
  static const binary = PubsubTopicEncoding._(TfArgLiteral('BINARY'));

  static const List<PubsubTopicEncoding> values = [encodingUnspecified, json, binary];
}
'''),
      );
    });

    test('a single-member enum is still emitted with its raw value', () {
      final name = enumName(
        resourceType: 'google_x',
        fieldPath: 'mode',
        members: const ['ALL'],
      );
      final src = emitEnumDeclaration(name);
      expect(src, contains("static const all = XMode._(TfArgLiteral('ALL'));"));
      expect(
        src,
        contains(
          'extension type const XMode._(TfArg<String> _) '
          'implements TfArg<String> {',
        ),
      );
      expect(src, contains('static const List<XMode> values = [all];'));
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
