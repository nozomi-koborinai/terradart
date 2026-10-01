import 'package:terradart_codegen/src/codegen/nested_types/nested_type_collector.dart';
import 'package:terradart_codegen/src/codegen/nested_types/nested_type_emitter.dart';
import 'package:terradart_codegen/src/codegen/provider_enums.dart';
import 'package:terradart_codegen/src/ir/attribute.dart';
import 'package:terradart_codegen/src/ir/constraints.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

Map<String, dynamic> _credential({bool sensitive = true}) => {
  'nesting_mode': 'single',
  'block': {
    'attributes': {
      'user': {'type': 'string', 'required': true},
      'password': {'type': 'string', 'optional': true, 'sensitive': sensitive},
      'password_wo': {
        'type': 'string',
        'optional': true,
        'sensitive': true,
        'write_only': true,
      },
    },
  },
};

void main() {
  test('a sensitive input takes Sensitive<T>; enums stay bare', () {
    expect(argTypeFor('String', sensitive: true), 'Sensitive<String>');
    expect(argTypeFor('String'), 'TfArg<String>');
    expect(argTypeFor('XMode', sensitive: true), 'XMode');
  });

  test('a write-only input is sensitive too', () {
    Attribute attr({required bool sensitive}) => Attribute(
      name: 'password_wo',
      type: const StringType(),
      constraints: Constraints(
        optional: true,
        sensitive: sensitive,
        writeOnly: true,
      ),
    );
    expect(takesSensitive(attr(sensitive: true)), isTrue);
    expect(takesSensitive(attr(sensitive: false)), isFalse);
  });

  test('a nested sensitive field renders Sensitive<T>', () {
    final specs = collectNestedTypes(
      resourceBlock: {
        'block_types': {'credential': _credential()},
      },
      resourcePrefix: 'XThing',
      customSlotKeys: const {},
      excludedPaths: const {},
    );
    final attrs = {for (final a in specs.single.attrs) a.tfName: a};
    expect(attrs['password']!.sensitive, isTrue);
    expect(attrs['password_wo']!.sensitive, isTrue);
    expect(attrs['user']!.sensitive, isFalse);

    final source = renderNestedTypes(
      specs,
      resourceTerraformType: 'x_thing',
    );
    expect(source, contains('final Sensitive<String>? password;'));
    expect(source, contains('final Sensitive<String>? passwordWo;'));
    expect(source, contains('final TfArg<String> user;'));
  });

  test('a shared shape is sensitive wherever one occurrence is', () {
    final specs = collectNestedTypes(
      resourceBlock: {
        'block_types': {
          'primary': {
            'nesting_mode': 'single',
            'block': {
              'block_types': {'credential': _credential()},
            },
          },
          'replica': {
            'nesting_mode': 'single',
            'block': {
              'block_types': {'credential': _credential(sensitive: false)},
            },
          },
        },
      },
      resourcePrefix: 'XThing',
      customSlotKeys: const {},
      excludedPaths: const {},
    );
    final credentials = [
      for (final s in specs) s.children.single,
    ];
    expect(
      credentials.map((c) => c.className).toSet(),
      hasLength(1),
      reason: 'sensitivity does not split a shared type',
    );
    for (final c in credentials) {
      expect(
        c.attrs.firstWhere((a) => a.tfName == 'password').sensitive,
        isTrue,
      );
    }
  });
}
