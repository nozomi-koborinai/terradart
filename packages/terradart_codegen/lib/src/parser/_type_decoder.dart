import '../ir/type_def.dart';

/// Decodes the schema-json `type` field into a [TypeDef].
///
/// The wire format is:
/// - "string" | "number" | "bool" | "dynamic"
/// - ["list", T] | ["set", T] | ["map", T]
/// - ["object", {name: T, ...}]
/// - ["tuple", [T1, T2, ...]]
TypeDef decodeSchemaJsonType(Object? raw) {
  if (raw is String) {
    return switch (raw) {
      'string' => const StringType(),
      'number' => const NumberType(),
      'bool' => const BoolType(),
      'dynamic' => const DynamicType(),
      _ => throw FormatException('Unknown primitive type: $raw'),
    };
  }
  if (raw is List && raw.isNotEmpty) {
    final ctor = raw[0];
    if (ctor is! String) {
      throw FormatException('Type constructor not a string: $raw');
    }
    switch (ctor) {
      case 'list':
        return ListType(decodeSchemaJsonType(raw[1]));
      case 'set':
        return SetType(decodeSchemaJsonType(raw[1]));
      case 'map':
        return MapType(decodeSchemaJsonType(raw[1]));
      case 'object':
        final attrs = (raw[1] as Map).cast<String, Object?>();
        return ObjectType({
          for (final e in attrs.entries) e.key: decodeSchemaJsonType(e.value),
        });
      case 'tuple':
        final elems = (raw[1] as List).cast<Object?>();
        return TupleType([for (final e in elems) decodeSchemaJsonType(e)]);
      default:
        throw FormatException('Unknown type constructor: $ctor');
    }
  }
  throw FormatException('Cannot decode type: $raw');
}
