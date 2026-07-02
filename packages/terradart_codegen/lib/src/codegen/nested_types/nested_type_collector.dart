import '../enum_value_parser.dart';
import '../naming.dart';

/// One attribute surfaced on a derived nested-type helper class.
///
/// [dartType] is the *inner* type only (e.g. `'String'`, an enum class
/// name, `'Map<String, String>'`) — the emitter (Task 3) wraps it in
/// `TfArg<...>` (or `List<TfArg<...>>`-shaped when [repeated]) and applies
/// nullability from [required].
final class NestedAttrSpec {
  final String tfName;
  final String dartName;
  final String dartType;
  final bool required;
  final List<String>? enumValues;

  /// Whether the underlying schema type is a `list`/`set` of [dartType]
  /// rather than a bare scalar. Currently only ever `true` for a
  /// list-of-enum-string attribute (`["list", "string"]` with a
  /// `Possible values: [...]` description) — every other repeated shape
  /// (a plain list of strings, a list of objects, ...) has no clean
  /// per-element [dartType] to repeat, so it stays `false` and falls back
  /// to an opaque [dartType] instead (see `_scalarDartType`).
  final bool repeated;

  const NestedAttrSpec({
    required this.tfName,
    required this.dartName,
    required this.dartType,
    required this.required,
    this.enumValues,
    this.repeated = false,
  });
}

/// One `block_types` entry, collected recursively from the provider-schema
/// JSON down to (but not through) customSlot- or exclude-covered subtrees.
final class NestedBlockSpec {
  final String tfName;
  final List<String> path;
  final String className;
  final bool repeated;
  final bool required;
  final List<NestedAttrSpec> attrs;
  final List<NestedBlockSpec> children;
  final List<String> excludedChildTfNames;

  const NestedBlockSpec({
    required this.tfName,
    required this.path,
    required this.className,
    required this.repeated,
    required this.required,
    required this.attrs,
    required this.children,
    required this.excludedChildTfNames,
  });
}

/// Recursively collects [NestedBlockSpec]s from [resourceBlock]'s
/// `block_types`, for the `deriveNestedTypes` codegen gate.
///
/// Pure: consumes the already-decoded provider-schema JSON block map, does
/// no I/O, and never mutates its inputs. [resourcePrefix] (e.g.
/// `'AppEngineDomainMapping'` for `google_app_engine_domain_mapping`) is
/// derived by the caller — see `naming.dart`'s `snakeToPascal`.
///
/// Filtering, applied uniformly at every recursion depth:
/// - A block whose bare Terraform name is in [customSlotKeys] is skipped
///   entirely — no trace anywhere in the result. The hand-written
///   customSlot already owns that whole subtree (mirrors
///   `check_override_enum_gaps.dart`'s `_customSlotCoversBlock`; checking
///   the bare name at every depth reproduces its "any ancestor" semantics
///   for free, because a skipped node's children are never visited).
/// - A block named `timeouts` is skipped entirely — Terraform's SDK-level
///   meta-argument, not a user-facing input (same rule as
///   `constructor_params.dart`'s `skipNestedBlock`).
/// - A block whose dotted path from the resource root (e.g.
///   `'basic.conditions'`) is in [excludedPaths] is recorded by its bare
///   name in its parent's [NestedBlockSpec.excludedChildTfNames] and not
///   descended into; the wrapper emitter renders it as a passthrough
///   `TfArg<Map<String, dynamic>>?` instead of a derived class. A
///   root-level exclusion has no parent spec to record into, so it is
///   simply absent from the returned list (root-level slot selection is
///   already the constructor's `paramOrder`'s job, not this collector's).
List<NestedBlockSpec> collectNestedTypes({
  required Map<String, dynamic> resourceBlock,
  required String resourcePrefix,
  required Set<String> customSlotKeys,
  required Set<String> excludedPaths,
}) {
  final scan = _scanChildren(
    resourceBlock,
    path: const [],
    resourcePrefix: resourcePrefix,
    customSlotKeys: customSlotKeys,
    excludedPaths: excludedPaths,
  );
  return scan.children;
}

typedef _ChildScan = ({
  List<NestedBlockSpec> children,
  List<String> excludedChildTfNames,
});

/// Scans one block's `block_types` map, returning the child specs that
/// survive filtering plus the bare names of children dropped because their
/// dotted path is in `excludedPaths`.
_ChildScan _scanChildren(
  Map<String, dynamic> block, {
  required List<String> path,
  required String resourcePrefix,
  required Set<String> customSlotKeys,
  required Set<String> excludedPaths,
}) {
  final blockTypes = _optionalMap(block['block_types'], context: 'block_types');
  final children = <NestedBlockSpec>[];
  final excludedChildTfNames = <String>[];
  for (final entry in blockTypes.entries) {
    final tfName = entry.key;
    if (customSlotKeys.contains(tfName) || tfName == 'timeouts') continue;

    final childPath = [...path, tfName];
    if (excludedPaths.contains(childPath.join('.'))) {
      excludedChildTfNames.add(tfName);
      continue;
    }

    children.add(_buildSpec(
      tfName,
      _requireMap(entry.value, context: 'block_types.$tfName'),
      path: childPath,
      resourcePrefix: resourcePrefix,
      customSlotKeys: customSlotKeys,
      excludedPaths: excludedPaths,
    ));
  }
  return (children: children, excludedChildTfNames: excludedChildTfNames);
}

const _knownNestingModes = {'single', 'list', 'set', 'map', 'group'};

NestedBlockSpec _buildSpec(
  String tfName,
  Map<String, dynamic> nestedBlockBody, {
  required List<String> path,
  required String resourcePrefix,
  required Set<String> customSlotKeys,
  required Set<String> excludedPaths,
}) {
  final nestingMode = nestedBlockBody['nesting_mode'];
  if (nestingMode is! String || !_knownNestingModes.contains(nestingMode)) {
    throw FormatException(
      'Unknown nesting_mode: $nestingMode for nested block $tfName',
    );
  }
  final maxItems = (nestedBlockBody['max_items'] as num?)?.toInt();
  final minItems = (nestedBlockBody['min_items'] as num?)?.toInt();
  final className = resourcePrefix + path.map(snakeToPascal).join();

  final block = _optionalMap(
    nestedBlockBody['block'],
    context: '$tfName.block',
  );
  final scan = _scanChildren(
    block,
    path: path,
    resourcePrefix: resourcePrefix,
    customSlotKeys: customSlotKeys,
    excludedPaths: excludedPaths,
  );

  return NestedBlockSpec(
    tfName: tfName,
    path: path,
    className: className,
    repeated: (nestingMode == 'list' || nestingMode == 'set') && maxItems != 1,
    required: (minItems ?? 0) >= 1,
    attrs: _collectAttrs(block, className: className),
    children: scan.children,
    excludedChildTfNames: scan.excludedChildTfNames,
  );
}

List<NestedAttrSpec> _collectAttrs(
  Map<String, dynamic> block, {
  required String className,
}) {
  final attributes = _optionalMap(block['attributes'], context: 'attributes');
  final out = <NestedAttrSpec>[];
  for (final entry in attributes.entries) {
    final tfName = entry.key;
    final body = _requireMap(entry.value, context: 'attributes.$tfName');

    final isComputed = body['computed'] == true;
    final isOptional = body['optional'] == true;
    final isRequired = body['required'] == true;
    final computedOnly = isComputed && !isOptional && !isRequired;
    if (computedOnly) continue;

    final enumValues =
        parseEnumValuesFromDescription(body['description'] as String?);
    final typeInfo = _attrTypeInfo(
      rawType: body['type'],
      enumValues: enumValues,
      className: className,
      tfName: tfName,
    );

    out.add(NestedAttrSpec(
      tfName: tfName,
      dartName: snakeToCamel(tfName),
      dartType: typeInfo.dartType,
      required: isRequired,
      enumValues: typeInfo.enumValues,
      repeated: typeInfo.repeated,
    ));
  }
  return out;
}

typedef _AttrTypeInfo = ({
  String dartType,
  bool repeated,
  List<String>? enumValues,
});

/// Decides an attribute's [NestedAttrSpec] shape, gating enum detection on
/// the RAW schema type rather than on `enumValues` alone.
///
/// A description matching `parseEnumValuesFromDescription` only produces an
/// enum-typed [NestedAttrSpec] when the underlying type is one this
/// collector can actually represent as an enum:
/// - a bare `"string"` -> a scalar enum (`repeated: false`).
/// - `["list", "string"]` / `["set", "string"]` -> a *repeated* enum
///   (`repeated: true`) — e.g. `patch_config.windows_update.classifications`
///   (`google_os_config_patch_deployment`) and
///   `basic.conditions.device_policy.allowed_device_management_levels` /
///   `allowed_encryption_statuses` (`google_access_context_manager_access_level`),
///   3 of the 56 NESTED_THIN sites.
///
/// Any other shape — including a plain `["list", "string"]` with NO enum
/// description, or an enum-shaped description on some other type entirely —
/// ignores `enumValues` and falls back to [_scalarDartType]'s conservative
/// mapping. This keeps `dartType`/`enumValues`/`repeated` mutually
/// consistent: a scalar `dartType` never means "actually a list", and
/// `enumValues` is only ever non-null when `dartType` really does name an
/// enum class.
_AttrTypeInfo _attrTypeInfo({
  required Object? rawType,
  required List<String>? enumValues,
  required String className,
  required String tfName,
}) {
  if (enumValues != null) {
    if (rawType == 'string') {
      return (
        dartType: '$className${snakeToPascal(tfName)}',
        repeated: false,
        enumValues: enumValues,
      );
    }
    if (_isListOrSetOfString(rawType)) {
      return (
        dartType: '$className${snakeToPascal(tfName)}',
        repeated: true,
        enumValues: enumValues,
      );
    }
  }
  return (
    dartType: _scalarDartType(rawType),
    repeated: false,
    enumValues: null
  );
}

bool _isListOrSetOfString(Object? rawType) =>
    rawType is List &&
    rawType.length == 2 &&
    (rawType[0] == 'list' || rawType[0] == 'set') &&
    rawType[1] == 'string';

/// Maps a raw schema-json attribute `type` to a dartType string, for shapes
/// [_attrTypeInfo] didn't already resolve as an enum.
///
/// Scalars map cleanly (`"string"`->`String`, `"bool"`->`bool`,
/// `"number"`->`num`, `"dynamic"`->`Object?`), as does a map-of-scalar
/// (`["map", "string"]`->`Map<String, String>`). Everything else — a list
/// or set of *anything* (including a plain list of primitives), a bare
/// object type, a tuple, or a map of a non-scalar — has no single clean
/// representation in [NestedAttrSpec] (no derived nested-class-inside-a-list
/// shape here), so it conservatively falls back to a `Map<String, dynamic>`
/// / `List<Object?>`-style dartType. Genuinely unrecognized shapes throw,
/// matching `_type_decoder.dart`'s fail-fast convention for malformed
/// schema input.
String _scalarDartType(Object? rawType) {
  if (rawType is String) {
    return switch (rawType) {
      'string' => 'String',
      'bool' => 'bool',
      'number' => 'num',
      'dynamic' => 'Object?',
      _ => throw FormatException('Unknown primitive attribute type: $rawType'),
    };
  }
  if (rawType is List && rawType.isNotEmpty) {
    final ctor = rawType.first;
    switch (ctor) {
      case 'map':
        final valueType = rawType.length > 1 ? rawType[1] : null;
        if (valueType is String) {
          return switch (valueType) {
            'string' => 'Map<String, String>',
            'bool' => 'Map<String, bool>',
            'number' => 'Map<String, num>',
            _ => 'Map<String, dynamic>',
          };
        }
        return 'Map<String, dynamic>';
      case 'list':
      case 'set':
        return 'List<Object?>';
      case 'object':
        return 'Map<String, dynamic>';
      case 'tuple':
        return 'List<Object?>';
      default:
        throw FormatException('Unknown attribute type constructor: $ctor');
    }
  }
  throw FormatException('Cannot map attribute type: $rawType');
}

/// Casts a required JSON-object value, failing loudly (not with a bare
/// `TypeError`) when the schema doesn't shape up as expected.
Map<String, dynamic> _requireMap(Object? value, {required String context}) {
  if (value is Map) return value.cast<String, dynamic>();
  throw FormatException('Expected a JSON object at $context, got: $value');
}

/// Like [_requireMap], but `null` (the key absent entirely) is a valid
/// "nothing here" case that resolves to an empty map — schema-json omits
/// `attributes`/`block_types` entirely on blocks that have none.
Map<String, dynamic> _optionalMap(Object? value, {required String context}) {
  if (value == null) return const {};
  return _requireMap(value, context: context);
}
