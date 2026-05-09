import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

void main() {
  group('TypeDef sealed hierarchy', () {
    test('PrimitiveType.string identity', () {
      expect(const StringType(), equals(const StringType()));
    });

    test('ListType wraps element type', () {
      const t = ListType(StringType());
      expect(t.element, isA<StringType>());
    });

    test('MapType uses value-typed element (Terraform map<string>=>string)',
        () {
      const t = MapType(StringType());
      expect(t.value, isA<StringType>());
    });

    test('SetType is preserved in IR but downgrades happen at emit time', () {
      const t = SetType(StringType());
      expect(t, isA<TypeDef>());
      expect(t.element, isA<StringType>());
    });

    test('ObjectType holds named attribute types', () {
      const t = ObjectType({'name': StringType(), 'count': IntType()});
      expect(t.attrs.keys, containsAll(['name', 'count']));
    });

    test('switch expression covers all variants exhaustively', () {
      String describe(TypeDef t) => switch (t) {
            StringType() => 'string',
            NumberType() => 'number',
            IntType() => 'int',
            BoolType() => 'bool',
            DynamicType() => 'dynamic',
            ListType() => 'list',
            SetType() => 'set',
            MapType() => 'map',
            ObjectType() => 'object',
            TupleType() => 'tuple',
          };
      expect(describe(const StringType()), 'string');
      expect(describe(const ListType(IntType())), 'list');
    });
  });
}
