/// Provider-neutral type system used by the IR.
///
/// `SetType` is preserved here but Stage 1 emit downgrades it to `List<T>`
/// because schemantic's `listSchema(...)` does not model `uniqueItems`.
/// Set semantics are surfaced via doc comments on the abstract field.
sealed class TypeDef {
  const TypeDef();
}

final class StringType extends TypeDef {
  const StringType();
}

final class NumberType extends TypeDef {
  const NumberType();
}

final class IntType extends TypeDef {
  const IntType();
}

final class BoolType extends TypeDef {
  const BoolType();
}

final class DynamicType extends TypeDef {
  const DynamicType();
}

final class ListType extends TypeDef {
  final TypeDef element;
  const ListType(this.element);
}

final class SetType extends TypeDef {
  final TypeDef element;
  const SetType(this.element);
}

final class MapType extends TypeDef {
  final TypeDef value;
  const MapType(this.value);
}

final class ObjectType extends TypeDef {
  final Map<String, TypeDef> attrs;
  const ObjectType(this.attrs);
}

final class TupleType extends TypeDef {
  final List<TypeDef> elements;
  const TupleType(this.elements);
}
