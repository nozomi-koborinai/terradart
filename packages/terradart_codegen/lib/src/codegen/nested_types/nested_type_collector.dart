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
  final List<ExcludedNestedBlock> excludedChildren;

  const NestedBlockSpec({
    required this.tfName,
    required this.path,
    required this.className,
    required this.repeated,
    required this.required,
    required this.attrs,
    required this.children,
    required this.excludedChildren,
  });
}

/// One block-type child whose dotted path was in `excludedPaths` — recorded
/// by name, plus the same schema-derived cardinality [_buildSpec] computes
/// for a fully-derived child, so the emitter can render an accurately
/// shaped opaque passthrough (`TfArg<Map<String, dynamic>>` vs
/// `TfArg<List<Map<String, dynamic>>>`, nullable vs not) instead of always
/// forcing the conservative single-optional shape regardless of what the
/// schema actually declares (e.g. `google_os_config_os_policy_assignment`'s
/// excluded `os_policies.resource_groups.resources` is `nesting_mode: list`
/// with `min_items: 1` — a required, repeated block, not a scalar one).
final class ExcludedNestedBlock {
  final String tfName;
  final bool repeated;
  final bool required;

  const ExcludedNestedBlock({
    required this.tfName,
    required this.repeated,
    required this.required,
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
///   `'basic.conditions'`) is in [excludedPaths] is recorded (by name, with
///   its cardinality — see [ExcludedNestedBlock]) in its parent's
///   [NestedBlockSpec.excludedChildren] and not descended into; the wrapper
///   emitter renders it as an opaque passthrough instead of a derived class.
///   A root-level exclusion has no parent spec to record into, so it is
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
  List<ExcludedNestedBlock> excludedChildren,
});

/// Scans one block's nested children: SDKv2 `block_types` plus
/// plugin-framework `nested_type` object attributes (Cloudflare v5, etc.).
///
/// `nested_type` attributes are synthesized into the same child-body shape
/// `_buildSpec` already understands (`nesting_mode` / `min_items` / `block`)
/// so one collector serves both schema dialects. Computed-only objects
/// (no input role, e.g. Cloudflare `meta`) are skipped — the same filter
/// `skipNestedBlock` applies after IR normalization.
_ChildScan _scanChildren(
  Map<String, dynamic> block, {
  required List<String> path,
  required String resourcePrefix,
  required Set<String> customSlotKeys,
  required Set<String> excludedPaths,
}) {
  final children = <NestedBlockSpec>[];
  final excludedChildren = <ExcludedNestedBlock>[];

  void consider({
    required String tfName,
    required Map<String, dynamic> childBody,
  }) {
    if (customSlotKeys.contains(tfName) || tfName == 'timeouts') return;

    final childPath = [...path, tfName];
    if (excludedPaths.contains(childPath.join('.'))) {
      final cardinality = _blockCardinality(childBody, tfName: tfName);
      excludedChildren.add(ExcludedNestedBlock(
        tfName: tfName,
        repeated: cardinality.repeated,
        required: cardinality.required,
      ));
      return;
    }

    children.add(_buildSpec(
      tfName,
      childBody,
      path: childPath,
      resourcePrefix: resourcePrefix,
      customSlotKeys: customSlotKeys,
      excludedPaths: excludedPaths,
    ));
  }

  final blockTypes = _optionalMap(block['block_types'], context: 'block_types');
  for (final entry in blockTypes.entries) {
    consider(
      tfName: entry.key,
      childBody: _requireMap(entry.value, context: 'block_types.${entry.key}'),
    );
  }

  final attributes = _optionalMap(block['attributes'], context: 'attributes');
  for (final entry in attributes.entries) {
    final attrBody =
        _requireMap(entry.value, context: 'attributes.${entry.key}');
    final nestedTypeRaw = attrBody['nested_type'];
    if (nestedTypeRaw == null) continue;
    if (_isComputedOnly(attrBody)) continue;
    final nestedType = _requireMap(nestedTypeRaw,
        context: 'attributes.${entry.key}.nested_type');
    consider(
      tfName: entry.key,
      childBody: _nestedTypeAsBlockBody(attrBody, nestedType),
    );
  }

  return (children: children, excludedChildren: excludedChildren);
}

/// True when a schema attribute/block has no input role (computed, and
/// neither optional nor required). Mirrors [Constraints.computedOnly].
bool _isComputedOnly(Map<String, dynamic> body) {
  final computed = body['computed'] == true;
  final optional = body['optional'] == true;
  final required = body['required'] == true;
  return computed && !optional && !required;
}

/// Lifts a plugin-framework `nested_type` attribute into the
/// `block_types`-shaped map [_buildSpec] / [_blockCardinality] consume.
Map<String, dynamic> _nestedTypeAsBlockBody(
  Map<String, dynamic> attrBody,
  Map<String, dynamic> nestedType,
) {
  final required = attrBody['required'] == true;
  return {
    'nesting_mode': nestedType['nesting_mode'],
    if (required) 'min_items': 1,
    'block': {
      'attributes': nestedType['attributes'] ?? const <String, dynamic>{},
      'block_types': nestedType['block_types'] ?? const <String, dynamic>{},
    },
  };
}

const _knownNestingModes = {'single', 'list', 'set', 'map', 'group'};

/// Computes [NestedBlockSpec.repeated] / [NestedBlockSpec.required] from a
/// nested block's raw `nesting_mode` / `max_items` / `min_items` — shared by
/// [_buildSpec] (a fully-derived child) and [_scanChildren]'s excluded-child
/// branch ([ExcludedNestedBlock]), so both paths agree on what the schema
/// actually declares instead of the excluded path silently assuming scalar.
({bool repeated, bool required}) _blockCardinality(
  Map<String, dynamic> nestedBlockBody, {
  required String tfName,
}) {
  final nestingMode = nestedBlockBody['nesting_mode'];
  if (nestingMode is! String || !_knownNestingModes.contains(nestingMode)) {
    throw FormatException(
      'Unknown nesting_mode: $nestingMode for nested block $tfName',
    );
  }
  final maxItems = (nestedBlockBody['max_items'] as num?)?.toInt();
  final minItems = (nestedBlockBody['min_items'] as num?)?.toInt();
  return (
    repeated: (nestingMode == 'list' || nestingMode == 'set') && maxItems != 1,
    required: (minItems ?? 0) >= 1,
  );
}

NestedBlockSpec _buildSpec(
  String tfName,
  Map<String, dynamic> nestedBlockBody, {
  required List<String> path,
  required String resourcePrefix,
  required Set<String> customSlotKeys,
  required Set<String> excludedPaths,
}) {
  final cardinality = _blockCardinality(nestedBlockBody, tfName: tfName);
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
    repeated: cardinality.repeated,
    required: cardinality.required,
    attrs: _collectAttrs(block, className: className),
    children: scan.children,
    excludedChildren: scan.excludedChildren,
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
    // Object attributes belong to [_scanChildren], not the leaf-attr list.
    if (body.containsKey('nested_type')) continue;

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
