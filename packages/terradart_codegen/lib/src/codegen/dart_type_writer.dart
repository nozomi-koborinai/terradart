import '../ir/type_def.dart';

/// Renders a [TypeDef] as Dart source.
///
/// `SetType` is downgraded to `List<E>` here. Set semantics are conveyed
/// to the user via doc comments on the abstract field, not the Dart type.
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
