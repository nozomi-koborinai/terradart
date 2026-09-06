import 'package:terradart_codegen/src/codegen/migrate/dart_type_shape.dart';
import 'package:test/test.dart';

void main() {
  group('parseDartType', () {
    test('parses a bare name', () {
      final t = parseDartType('String');
      expect(t.name, 'String');
      expect(t.args, isEmpty);
      expect(t.nullable, isFalse);
    });

    test('parses nested generics and nullability', () {
      final t = parseDartType('TfArg<Map<String, List<int>>>?');
      expect(t.name, 'TfArg');
      expect(t.nullable, isTrue);
      expect(t.args, hasLength(1));
      final map = t.args.single;
      expect(map.name, 'Map');
      expect(map.args.map((a) => a.name), ['String', 'List']);
      expect(map.args[1].args.single.name, 'int');
    });

    test('render() canonicalises whitespace', () {
      expect(
        parseDartType(' Map< String ,Object? > ').render(),
        'Map<String, Object?>',
      );
    });

    test('nonNullable strips only the outer ?', () {
      final t = parseDartType('List<String?>?').nonNullable;
      expect(t.render(), 'List<String?>');
    });

    test('rejects trailing input and unterminated arguments', () {
      expect(() => parseDartType('Foo bar'), throwsFormatException);
      expect(() => parseDartType('List<String'), throwsFormatException);
      expect(() => parseDartType(''), throwsFormatException);
    });
  });
}
