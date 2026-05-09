import 'package:terradart_codegen/src/codegen/dart_type_writer.dart';
import 'package:terradart_codegen/src/ir/type_def.dart';
import 'package:test/test.dart';

void main() {
  group('writeDartType', () {
    test('primitive types', () {
      expect(writeDartType(const StringType()), 'String');
      expect(writeDartType(const IntType()), 'int');
      expect(writeDartType(const NumberType()), 'num');
      expect(writeDartType(const BoolType()), 'bool');
      expect(writeDartType(const DynamicType()), 'Object?');
    });

    test('list and set both become List<E>', () {
      expect(writeDartType(const ListType(StringType())), 'List<String>');
      expect(writeDartType(const SetType(StringType())), 'List<String>');
    });

    test('map<string,T> is rendered as Map<String, T>', () {
      expect(writeDartType(const MapType(StringType())), 'Map<String, String>');
      expect(writeDartType(const MapType(IntType())), 'Map<String, int>');
    });
  });
}
