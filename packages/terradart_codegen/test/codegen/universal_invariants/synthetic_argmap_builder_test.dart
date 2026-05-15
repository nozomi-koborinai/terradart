import 'package:terradart_codegen/src/codegen/universal_invariants/synthetic_argmap_builder.dart';
import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

void main() {
  group('SyntheticArgMapBuilder', () {
    const builder = SyntheticArgMapBuilder();

    test('depth-1 path produces a flat TfArg<String> entry', () {
      final argMap = builder.buildForPath('secret_data', 'plaintext-value');
      expect(argMap, hasLength(1));
      expect(argMap['secret_data'], isA<TfArg<String>>());
      expect((argMap['secret_data']! as TfArgLiteral<String>).value,
          equals('plaintext-value'));
    });

    test('depth-2 path wraps the leaf in `TfArg.literal([{leaf: value}])`', () {
      final argMap = builder.buildForPath(
        'customer_encryption.encryption_key',
        'plaintext-value',
      );
      expect(argMap, hasLength(1));
      final outer = argMap['customer_encryption'];
      expect(outer, isA<TfArgLiteral<List<dynamic>>>());
      final encoded = (outer! as TfArgLiteral<List<dynamic>>).value;
      expect(
          encoded,
          equals([
            {'encryption_key': 'plaintext-value'},
          ]));
    });

    test('depth-4 path produces nested [{...}] structure', () {
      final argMap = builder.buildForPath(
        'boot_disk.initialize_params.source_image_encryption_key.raw_key',
        'plaintext',
      );
      final outer = argMap['boot_disk'];
      expect(outer, isA<TfArgLiteral<List<dynamic>>>());
      expect(
          (outer! as TfArgLiteral<List<dynamic>>).value,
          equals([
            {
              'initialize_params': [
                {
                  'source_image_encryption_key': [
                    {'raw_key': 'plaintext'},
                  ],
                },
              ],
            },
          ]));
    });
  });
}
