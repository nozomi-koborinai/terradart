import '../catalog_entry_builder.dart' show paramIdentifier;
import '../references/reference_targets.dart' show principalTypes;
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
    this.keyed = false,
    this.wrapped = true,
    this.attribute,
    this.reason,
  });

  const SlotShape.manual(String reason)
    : this(kind: MigrateSlotKind.manual, reason: reason);

  final MigrateSlotKind kind;
  final String? dartType;
  final String? helper;
  final Map<String, String>? variants;
  final bool repeated;
  final bool keyed;
  final bool wrapped;
  final String? attribute;
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
  'List<Map<String, dynamic>>',
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
/// - `RefTo<C>` / `TfArg<List<RefTo<C>>>` → a reference to `C`, `repeated`
///   for the list; [withAttribute] adds the attribute from the encoding.
/// - `TfArg<T>` or `Sensitive<T>` → scalar / passthrough on `T`.
/// - `List<TfArg<T>>` → the same, `repeated`.
/// - `Helper` / `List<Helper>` / `Map<String, Helper>` → helper (the class
///   must exist in [ctx]), `repeated` / `keyed` for the collections.
/// - `Sealed` → sealed with its block-key variants, or manual when a variant
///   has no `blockKey` (a curator hint is needed to describe it).
/// - an enum (itself a `TfArg<String>`) → enum, wrapped.
/// - a bare primitive / plain collection → unwrapped scalar (the
///   hand-written helpers' occasional `Map<String, String>? labels`).
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
  if (principalTypes.containsKey(type.name) &&
      type.args.isEmpty &&
      !type.nullable) {
    return repeated
        ? SlotShape.manual('bare list of principals `${type.render()}`')
        : SlotShape(kind: MigrateSlotKind.principal, dartType: type.name);
  }
  if (_referenceTarget(type) case final target?) {
    return repeated
        ? SlotShape.manual('bare list of references `${type.render()}`')
        : SlotShape(kind: MigrateSlotKind.reference, dartType: target);
  }
  if ((type.name == 'TfArg' || type.name == 'Sensitive') &&
      type.args.length == 1) {
    final payload = type.args.single.nonNullable;
    if (payload.name == 'List' && payload.args.length == 1) {
      final element = payload.args.single;
      if (principalTypes.containsKey(element.name) && element.args.isEmpty) {
        return repeated
            ? SlotShape.manual('list of principal lists `${type.render()}`')
            : SlotShape(
                kind: MigrateSlotKind.principal,
                dartType: element.name,
                repeated: true,
              );
      }
      final target = _referenceTarget(element);
      if (target != null) {
        return repeated
            ? SlotShape.manual('list of reference lists `${type.render()}`')
            : SlotShape(
                kind: MigrateSlotKind.reference,
                dartType: target,
                repeated: true,
              );
      }
    }
    return _payload(payload, repeated: repeated);
  }
  if (type.name == 'List' && type.args.length == 1) {
    if (repeated) {
      return SlotShape.manual('nested list type `${type.render()}`');
    }
    return _classify(type.args.single.nonNullable, ctx, repeated: true);
  }
  if (type.name == 'Map' &&
      type.args.length == 2 &&
      type.args.first.render() == 'String') {
    final value = type.args.last.nonNullable;
    if (value.args.isEmpty && ctx.helpers.helpers.containsKey(value.name)) {
      if (repeated) {
        return SlotShape.manual('list of helper maps `${type.render()}`');
      }
      return SlotShape(
        kind: MigrateSlotKind.helper,
        helper: value.name,
        keyed: true,
        wrapped: false,
      );
    }
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
    // An enum is a `TfArg<String>` itself, so it takes an expression the
    // way a wrapped scalar does.
    if (ctx.enumNames.contains(name)) {
      return SlotShape(
        kind: MigrateSlotKind.enumValue,
        dartType: name,
        repeated: repeated,
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

/// `C` of a non-nullable `RefTo<C>`.
String? _referenceTarget(DartTypeShape type) =>
    type.name == 'RefTo' &&
        !type.nullable &&
        type.args.length == 1 &&
        type.args.single.args.isEmpty
    ? type.args.single.name
    : null;

/// The attribute `x.encodeAs('<attribute>')` names in an argMap or
/// `encode()` entry.
String? encodedAttribute(String entry) =>
    RegExp(r"\.encodeAs\('([a-z0-9_]+)'\)").firstMatch(entry)?.group(1);

/// A [MigrateSlotKind.reference] [shape] with the attribute its [entry]
/// encodes; manual when the entry names none.
SlotShape withAttribute(SlotShape shape, String entry) {
  if (shape.kind != MigrateSlotKind.reference) return shape;
  final attribute = encodedAttribute(entry);
  if (attribute == null) {
    return const SlotShape.manual(
      'reference slot does not encode through encodeAs',
    );
  }
  return SlotShape(
    kind: MigrateSlotKind.reference,
    dartType: shape.dartType,
    repeated: shape.repeated,
    attribute: attribute,
  );
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
    case MigrateSlotKind.reference:
      return SlotShape.manual('spread-merged reference `${shape.dartType}`');
    case MigrateSlotKind.principal:
      return const SlotShape.manual('spread-merged principal');
    case MigrateSlotKind.manual:
      return shape;
  }
}

/// The shape of a `Map<String, Helper>` field or slot whose encoding is not
/// the keyed map [isKeyedHelperEncoding] recognises: the helpers land on the
/// wire some other way (a list with the key moved into a block field), which
/// no manifest slot describes.
SlotShape unkeyedMapShape(String typeSource) =>
    SlotShape.manual('`$typeSource` is not encoded as a keyed map of helpers');

/// The parts of a [CustomSlot] the manifest needs, read from its verbatim
/// `paramDeclaration` / `argMapEntry` snippets.
final class CustomSlotShape {
  const CustomSlotShape({
    required this.dartName,
    required this.typeSource,
    required this.required,
    required this.dynamicKey,
    this.spread = false,
    this.tfKey,
    this.keyedEncoding = false,
    this.argMapEntry = '',
  });

  final String dartName;

  /// Declared parameter type, e.g. `List<CloudRunV2ServiceTraffic>?`.
  final String typeSource;
  final bool required;

  /// True when the argMap entry uses `<slot>.blockKey:` (a sealed choice).
  final bool dynamicKey;

  /// True when the argMap entry is `...<slot>.argMap,` (or, for a nullable
  /// at-most-one slot, `...?<slot>?.argMap,`): a sealed choice whose
  /// variant writes one or more keys straight into the resource's arguments
  /// (`secret_data_wo` + `secret_data_wo_version`).
  final bool spread;

  /// The value lands in the enclosing block's arguments rather than under
  /// a key of its own.
  bool get merged => dynamicKey || spread;

  /// The static `'tf_key'` the argMap entry writes, when it has one.
  final String? tfKey;

  /// Whether the argMap entry encodes a keyed helper map
  /// ([isKeyedHelperEncoding]).
  final bool keyedEncoding;

  /// The argMap entry verbatim.
  final String argMapEntry;
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
  final name = RegExp.escape(dartName);
  final spread = RegExp(
    r'^\s*\.\.\.(?:' + name + r'|\?' + name + r'\?)\.argMap\s*,?\s*$',
  ).hasMatch(entry);
  final tfKey = RegExp(r"'([a-z0-9_]+)'\s*:").firstMatch(entry)?.group(1);
  return CustomSlotShape(
    dartName: dartName,
    typeSource: typeSource,
    required: required,
    dynamicKey: dynamicKey,
    spread: spread,
    tfKey: tfKey,
    keyedEncoding: isKeyedHelperEncoding(entry),
    argMapEntry: entry,
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
  final shape = resolveEnumPayload(
    classifyDartType(parsed.typeSource, ctx),
    ctx,
  );
  if (shape.isManual) return shape;
  if (parsed.dynamicKey && shape.kind != MigrateSlotKind.sealed) {
    return const SlotShape.manual(
      'argMap uses a dynamic blockKey but the type is not a sealed class',
    );
  }
  if (parsed.spread && shape.kind != MigrateSlotKind.sealed) {
    return const SlotShape.manual(
      'argMap spreads the slot but the type is not a sealed class',
    );
  }
  if (!parsed.merged && parsed.tfKey == null) {
    return const SlotShape.manual('argMap entry has no static key');
  }
  if (shape.keyed && !parsed.keyedEncoding) {
    return unkeyedMapShape(parsed.typeSource);
  }
  return withAttribute(shape, parsed.argMapEntry);
}
