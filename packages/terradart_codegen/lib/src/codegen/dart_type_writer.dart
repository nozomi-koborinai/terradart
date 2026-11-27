import '../ir/type_def.dart';

String writeDartType(TypeDef t) => switch (t) {
  StringType() => 'String',
  NumberType() => 'num',
  IntType() => 'int',
  BoolType() => 'bool',
  DynamicType() => 'Object?',
  ListType(:final element) => 'List<${writeDartType(element)}>',
  SetType(:final element) => 'List<${writeDartType(element)}>',
  MapType(:final value) => 'Map<String, ${writeDartType(value)}>',
  ObjectType() => 'Map<String, Object?>',
  TupleType() => 'List<Object?>',
};
