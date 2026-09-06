import '../catalog_entry_builder.dart' show paramIdentifier;
import '../wrapper_overrides/wrapper_override.dart';
import 'dart_type_shape.dart';
import 'helper_class_extractor.dart';
import 'migrate_manifest_data.dart';

/// What a Dart parameter / field type means for the migrator.
final class SlotShape {
  const SlotShape({
    required this.kind,
    this.dartType,
    this.helper,
    this.variants,
    this.repeated = false,
    this.wrapped = true,
    this.reason,
  });

  const SlotShape.manual(String reason)
      : this(kind: MigrateSlotKind.manual, reason: reason);

  final MigrateSlotKind kind;
  final String? dartType;
  final String? helper;
  final Map<String, String>? variants;
  final bool repeated;
  final bool wrapped;
  final String? reason;

  bool get isManual => kind == MigrateSlotKind.manual;
}

/// The symbols a type name can resolve against: the helper classes and
/// sealed roots extracted from the same source, plus the enum names.
final class ShapeContext {
  const ShapeContext({required this.helpers, required this.enumNames});

  final HelperExtraction helpers;
  final Set<String> enumNames;
}

const _passthroughTypes = {
  'Map<String, dynamic>',
  'List<Map<String, dynamic>>'
};
const _plainLeafTypes = {
  'String',
  'int',
  'num',
  'double',
  'bool',
  'Object',
  'dynamic',
};
const _plainContainerTypes = {'List', 'Set', 'Map'};

/// True for a type built only from Dart primitives and `List` / `Set` /
/// `Map` of them — the payload shapes `TfArg<T>` carries and the bare
/// (unwrapped) scalar fields hand-written helpers occasionally declare
/// (`Map<String, String>? labels`, `List<String>? scopes`).
bool _isPlainValueType(DartTypeShape type) {
  if (type.args.isEmpty) return _plainLeafTypes.contains(type.name);
  return _plainContainerTypes.contains(type.name) &&
      type.args.every(_isPlainValueType);
}

/// Classifies [typeSource] (a constructor-parameter or field type) into the
/// slot shape the manifest records.
///
/// - `TfArg<T>` → scalar / enum / passthrough on `T`.
/// - `List<TfArg<T>>` → the same, `repeated`.
/// - `Helper` / `List<Helper>` → helper (the class must exist in [ctx]).
/// - `Sealed` → sealed with its block-key variants, or manual when a variant
///   has no `blockKey` (a curator hint is needed to describe it).
/// - a bare enum / primitive / plain collection → unwrapped scalar or enum
///   (the hand-written helpers' occasional `Map<String, String>? labels`).
/// - anything else → manual with the reason.
SlotShape classifyDartType(String typeSource, ShapeContext ctx) {
  final DartTypeShape type;
  try {
    type = parseDartType(typeSource).nonNullable;
  } on FormatException catch (e) {
    return SlotShape.manual('unparseable type `$typeSource`: ${e.message}');
  }
  return _classify(type, ctx, repeated: false);
}

SlotShape _classify(
  DartTypeShape type,
  ShapeContext ctx, {
  required bool repeated,
}) {
  if (type.name == 'TfArg' && type.args.length == 1) {
    return _payload(type.args.single.nonNullable, repeated: repeated);
  }
  if (type.name == 'List' && type.args.length == 1) {
    if (repeated) {
      return SlotShape.manual('nested list type `${type.render()}`');
    }
    return _classify(type.args.single.nonNullable, ctx, repeated: true);
  }
  if (type.args.isEmpty) {
    final name = type.name;
    if (ctx.helpers.helpers.containsKey(name)) {
      return SlotShape(
        kind: MigrateSlotKind.helper,
        helper: name,
        repeated: repeated,
        wrapped: false,
      );
    }
    if (ctx.helpers.sealedClasses.contains(name)) {
      final variants = ctx.helpers.variantsOf(name);
      if (variants == null) {
        return SlotShape.manual(
          'sealed class `$name` has a variant without a blockKey',
        );
      }
      return SlotShape(
        kind: MigrateSlotKind.sealed,
        variants: variants,
        repeated: repeated,
        wrapped: false,
      );
    }
    if (ctx.enumNames.contains(name)) {
      return SlotShape(
        kind: MigrateSlotKind.enumValue,
        dartType: name,
        repeated: repeated,
        wrapped: false,
      );
    }
  }
  if (_isPlainValueType(type)) {
    return SlotShape(
      kind: MigrateSlotKind.scalar,
      dartType: type.render(),
      repeated: repeated,
      wrapped: false,
    );
  }
  return SlotShape.manual('unknown type `${type.render()}`');
}

SlotShape _payload(DartTypeShape payload, {required bool repeated}) {
  final rendered = payload.render();
  if (_passthroughTypes.contains(rendered)) {
    return SlotShape(
      kind: MigrateSlotKind.passthrough,
      dartType: rendered,
      repeated: repeated,
    );
  }
  return SlotShape(
    kind: MigrateSlotKind.scalar,
    dartType: rendered,
    repeated: repeated,
  );
}

/// Adds the enum-vs-scalar distinction that [_payload] cannot make without
/// knowing the enum names: a `TfArg<E>` whose `E` is an emitted enum.
SlotShape resolveEnumPayload(SlotShape shape, ShapeContext ctx) {
  if (shape.kind == MigrateSlotKind.scalar &&
      shape.dartType != null &&
      ctx.enumNames.contains(shape.dartType)) {
    return SlotShape(
      kind: MigrateSlotKind.enumValue,
      dartType: shape.dartType,
      repeated: shape.repeated,
      wrapped: shape.wrapped,
    );
  }
  return shape;
}

/// Restricts a spread-merged field (`...x.encode()` / `...x!`) to the
/// shapes whose keys can surface in the parent block: a helper, a sealed
/// choice, or a raw map (recorded as an unwrapped passthrough so a migrator
/// can route unclaimed keys into it). Anything else — a scalar spread makes
/// no sense — is manual.
SlotShape mergedShape(SlotShape shape) {
  switch (shape.kind) {
    case MigrateSlotKind.helper:
    case MigrateSlotKind.sealed:
    case MigrateSlotKind.passthrough:
      return shape;
    case MigrateSlotKind.scalar:
      final t = shape.dartType;
      if (!shape.repeated && t != null && t.startsWith('Map<String,')) {
        return SlotShape(
          kind: MigrateSlotKind.passthrough,
          dartType: t,
          wrapped: shape.wrapped,
        );
      }
      return SlotShape.manual('spread-merged scalar `${shape.dartType}`');
    case MigrateSlotKind.enumValue:
      return SlotShape.manual('spread-merged enum `${shape.dartType}`');
    case MigrateSlotKind.manual:
      return shape;
  }
}

/// The parts of a [CustomSlot] the manifest needs, read from its verbatim
/// `paramDeclaration` / `argMapEntry` snippets.
final class CustomSlotShape {
  const CustomSlotShape({
    required this.dartName,
    required this.typeSource,
    required this.required,
    required this.dynamicKey,
    this.tfKey,
  });

  final String dartName;

  /// Declared parameter type, e.g. `List<CloudRunV2ServiceTraffic>?`.
  final String typeSource;
  final bool required;

  /// True when the argMap entry uses `<slot>.blockKey:` (a sealed choice).
  final bool dynamicKey;

  /// The static `'tf_key'` the argMap entry writes, when it has one.
  final String? tfKey;
}

/// Parses a custom slot's constructor declaration and argMap entry.
CustomSlotShape parseCustomSlot(CustomSlot slot) {
  var decl = slot.paramDeclaration.trim();
  decl = decl.replaceAll(RegExp(r'@\w+\([^)]*\)\s*', dotAll: true), '').trim();
  // `Type name = const Type()` — drop the default value.
  final eq = decl.indexOf('=');
  if (eq >= 0) decl = decl.substring(0, eq).trim();
  final required = decl.startsWith('required ');
  if (required) decl = decl.substring('required '.length).trim();
  final dartName = paramIdentifier(decl);
  final typeSource = decl.substring(0, decl.length - dartName.length).trim();
  final entry = slot.argMapEntry;
  final dynamicKey = RegExp(r'\b\w+\.blockKey\s*:').hasMatch(entry);
  final tfKey = RegExp(r"'([a-z0-9_]+)'\s*:").firstMatch(entry)?.group(1);
  return CustomSlotShape(
    dartName: dartName,
    typeSource: typeSource,
    required: required,
    dynamicKey: dynamicKey,
    tfKey: tfKey,
  );
}

/// Shape of one custom slot as the manifest will record it: the curator's
/// `migrate:` hint when present, else the derived shape.
SlotShape customSlotShape(
  CustomSlot slot,
  CustomSlotShape parsed,
  ShapeContext ctx,
) {
  final hint = slot.migrate;
  if (hint != null) {
    return SlotShape.manual(hint.reason);
  }
  return deriveCustomSlotShape(parsed, ctx);
}

/// The shape a custom slot derives to from its declaration and argMap
/// entry alone (ignoring any `migrate:` hint) — what the lint compares a
/// hint against.
SlotShape deriveCustomSlotShape(CustomSlotShape parsed, ShapeContext ctx) {
  final shape =
      resolveEnumPayload(classifyDartType(parsed.typeSource, ctx), ctx);
  if (shape.isManual) return shape;
  if (parsed.dynamicKey && shape.kind != MigrateSlotKind.sealed) {
    return const SlotShape.manual(
      'argMap uses a dynamic blockKey but the type is not a sealed class',
    );
  }
  if (!parsed.dynamicKey && parsed.tfKey == null) {
    return const SlotShape.manual('argMap entry has no static key');
  }
  return shape;
}
