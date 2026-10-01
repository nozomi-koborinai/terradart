import 'package:terradart_hcl/terradart_hcl.dart';
import 'package:terradart_migrate/src/emit/blocker.dart';
import 'package:terradart_migrate/src/emit/variable_type.dart';
import 'package:test/test.dart';

VariableType _of(String hcl, {Object? defaultValue}) =>
    variableTypeOf(parseHclExpression(hcl), defaultValue: defaultValue);

void main() {
  test('a constraint Dart names becomes the handle type alone', () {
    const cases = {
      'string': 'String',
      'number': 'num',
      'bool': 'bool',
      'list(string)': 'List<String>',
      'list(any)': 'List<Object?>',
      'map(number)': 'Map<String, num>',
      'map(list(bool))': 'Map<String, List<bool>>',
      '"list(string)"': 'List<String>',
    };
    cases.forEach((hcl, dart) {
      final t = _of(hcl);
      expect((t.dartType, t.tfType), (dart, null), reason: hcl);
    });
  });

  test('what Dart cannot name is spelled out with type:', () {
    const cases = {
      'any': ('Object?', '.any'),
      'set(string)': ('List<String>', '.set(.string)'),
      'list(set(string))': ('Object?', '.list(.set(.string))'),
      'tuple([string, number])': ('Object?', '.tuple([.string, .number])'),
      'object({ name = string, port = optional(number, 8080) })': (
        'Object?',
        ".object({'name': .string, 'port': .optional(.number, 8080)})",
      ),
      'object({ tags = optional(list(string), []) })': (
        'Object?',
        ".object({'tags': .optional(.list(.string), <Object?>[])})",
      ),
    };
    cases.forEach((hcl, expected) {
      final t = _of(hcl);
      expect((t.dartType, t.tfType), expected, reason: hcl);
    });
  });

  test('a default the Dart type cannot hold keeps the constraint typed', () {
    final t = _of('string', defaultValue: 5);
    expect((t.dartType, t.tfType), ('Object?', '.string'));
  });

  test('no type is an untyped handle', () {
    expect(variableTypeOf(null), same(VariableType.untyped));
  });

  test('an unreadable constraint is a blocker', () {
    for (final hcl in ['frob', '"list(string"', 'optional(string)']) {
      expect(() => _of(hcl), throwsA(isA<MigrateBlocker>()), reason: hcl);
    }
  });
}
