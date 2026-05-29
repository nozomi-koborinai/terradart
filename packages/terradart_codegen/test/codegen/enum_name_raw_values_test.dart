import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:test/test.dart';

void main() {
  group('EnumName.rawValues', () {
    test('enumName carries raw SCREAMING values parallel to dartMembers', () {
      final n = enumName(
        resourceType: 'google_pubsub_schema',
        fieldPath: 'type',
        members: const ['TYPE_UNSPECIFIED', 'PROTOCOL_BUFFER', 'AVRO'],
      );
      expect(n.dartName, 'PubsubSchemaType');
      expect(n.dartMembers, ['typeUnspecified', 'protocolBuffer', 'avro']);
      expect(n.rawValues, ['TYPE_UNSPECIFIED', 'PROTOCOL_BUFFER', 'AVRO']);
    });
  });
}
