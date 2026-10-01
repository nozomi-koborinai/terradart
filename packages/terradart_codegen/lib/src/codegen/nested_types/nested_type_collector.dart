import 'dart:convert';

import '../enum_value_parser.dart';
import '../exactly_one_types.dart';
import '../naming.dart';
import '../references/reference_targets.dart';
import 'nested_type_names.dart';

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
  /// `Possible values: [...]` description) — every other list shape stays
  /// `false` and is carried whole by [dartType] instead: `List<String>`
  /// for a plain list of strings, an opaque `List<Object?>` for a list of
  /// objects (see `_scalarDartType`).
  final bool repeated;

  /// The resource this input names, when it is typed `RefTo<...>`; its
  /// [dartType] stays the schema's.
  final ResolvedReference? reference;

  const NestedAttrSpec({
    required this.tfName,
    required this.dartName,
    required this.dartType,
    required this.required,
    this.enumValues,
    this.repeated = false,
    this.reference,
  });
}

/// One `block_types` entry, collected recursively from the provider-schema
/// JSON down to (but not through) customSlot- or exclude-covered subtrees.
final class NestedBlockSpec {
  final String tfName;
  final List<String> path;
  final String className;
  final bool repeated;

  /// Whether the block is a map of [className] values keyed by an arbitrary
  /// string (`nesting_mode: map`) rather than one value or a list. Never
  /// combined with [repeated].
  final bool keyed;
  final bool required;
  final List<NestedAttrSpec> attrs;
  final List<NestedBlockSpec> children;
  final List<ExcludedNestedBlock> excludedChildren;

  /// Whether other blocks in the same resource share this spec's
  /// [className] (see `collectNestedTypes`'s `shareIdenticalShapes`).
  final bool shared;

  /// Sets of this block's inputs (bare Terraform names) the provider
  /// requires exactly one of; the emitter seals each one it can.
  final List<List<String>> exactlyOne;

  /// Sets of this block's inputs the provider accepts at most one of (none
  /// is valid); the emitter seals each one it can into a nullable field.
  final List<List<String>> atMostOne;

  /// Human concept names for this block's sealed groups (the override's
  /// `sealedNames` entries that sit in this block), keyed by the members'
  /// bare names as `sealedGroupKeyOf([], members)` joins them.
  final Map<String, String> sealedNames;

  /// The type each sealed group of this block takes, keyed by the group's
  /// concept (its [sealedNames] entry, else [deriveSealedConcept]) — named
  /// by [conciseTypeNames] with the classes. A group whose name clashes
  /// when the emitter lays it out, or that seals the whole block, has none.
  final Map<String, String> sealedTypeNames;

  const NestedBlockSpec({
    required this.tfName,
    required this.path,
    required this.className,
    required this.repeated,
    required this.required,
    required this.attrs,
    required this.children,
    required this.excludedChildren,
    this.keyed = false,
    this.shared = false,
    this.exactlyOne = const [],
    this.atMostOne = const [],
    this.sealedNames = const {},
    this.sealedTypeNames = const {},
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
  final bool keyed;
  final bool required;

  const ExcludedNestedBlock({
    required this.tfName,
    required this.repeated,
    required this.required,
    this.keyed = false,
  });
}

/// Resolves one leaf attribute's enum value set, or null for a free-form
/// value. [path] runs from the resource root to the attribute itself.
typedef EnumValuesResolver =
    List<String>? Function(List<String> path, String? description);

/// The resource a leaf input at [path] references, or null for a plain
/// string.
typedef ReferenceResolver = ResolvedReference? Function(List<String> path);

ResolvedReference? _noReferences(List<String> path) => null;

/// The default [EnumValuesResolver]: the description dialects every lane
/// reads.
List<String>? descriptionEnumValues(List<String> path, String? description) =>
    parseEnumValuesFromDescription(description);

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
///   `check_google_enum_gaps.dart`'s `_customSlotCoversBlock`; checking
///   the bare name at every depth reproduces its "any ancestor" semantics
///   for free, because a skipped node's children are never visited).
///   Only keys naming a top-level schema field count: a virtual slot
///   (a sealed `metric` over `metric_name` / `metric_query` / ...) owns no
///   block, so a nested `metric` block elsewhere keeps its helper.
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
///
/// Blocks with the same Terraform name whose class bodies are structurally
/// identical (same attributes, same child fields, recursively) share one
/// helper class and its enums; with [shareIdenticalShapes], blocks of any
/// name do. The shared class keeps the path of its shallowest occurrence,
/// ties broken by comparing paths segment by segment.
///
/// Each class is named by [conciseTypeNames]: [resourcePrefix] plus the
/// shortest trailing part of its path no other type of the resource takes
/// — never a top-level input's name ([topLevelTypeNames]), and a name in
/// [reserved] (a root sealed variant's, see [rootSealedTypeNames]) only
/// when nothing shorter is left.
///
/// [enumValues] decides each leaf attribute's enum value set from its
/// dotted path and description; the default reads the description with
/// [parseEnumValuesFromDescription] (`provider_enums.dart` supplies the
/// `--provider-enums` resolver).
///
/// [exactlyOneGroups] maps a block's dotted path to the member sets the
/// provider requires exactly one of ([NestedBlockSpec.exactlyOne]), and
/// [atMostOneGroups] to the sets it accepts at most one of
/// ([NestedBlockSpec.atMostOne]). [sealedNames] is the override's
/// `sealedNames` axis; each block keeps the entries whose members it holds
/// ([NestedBlockSpec.sealedNames]).
///
/// [references] types a string input as a reference, unless it is an enum;
/// a sealed variant holding it takes the reference too.
///
/// [typeOverrides] maps a leaf input's dotted path to the Dart type its
/// field takes instead (a hand-written enum in the override's prelude) —
/// the override's `dartTypeOverrides` entries whose key has a dot.
///
/// [laneInputs] maps every stem of the lane to its input names ([joinStem]).
List<NestedBlockSpec> collectNestedTypes({
  required Map<String, dynamic> resourceBlock,
  required String resourcePrefix,
  required Set<String> customSlotKeys,
  required Set<String> excludedPaths,
  bool shareIdenticalShapes = false,
  EnumValuesResolver enumValues = descriptionEnumValues,
  Map<String, List<List<String>>> exactlyOneGroups = const {},
  Map<String, List<List<String>>> atMostOneGroups = const {},
  Map<String, String>? sealedNames,
  ReferenceResolver references = _noReferences,
  Map<String, String> typeOverrides = const {},
  Set<String> reserved = const {},
  Map<String, Set<String>> laneInputs = const {},
}) {
  final rootKeys = {
    ..._optionalMap(resourceBlock['attributes'], context: 'attributes').keys,
    ..._optionalMap(resourceBlock['block_types'], context: 'block_types').keys,
  };
  final scan = _scanChildren(
    resourceBlock,
    path: const [],
    resourcePrefix: resourcePrefix,
    customSlotKeys: customSlotKeys.intersection(rootKeys),
    excludedPaths: excludedPaths,
    enumValues: enumValues,
    exactlyOneGroups: exactlyOneGroups,
    atMostOneGroups: atMostOneGroups,
    sealedNames: _sealedNamesByBlock(sealedNames),
    references: references,
    typeOverrides: typeOverrides,
  );
  final specs = _shareIdenticalShapes(
    scan.children,
    acrossNames: shareIdenticalShapes,
  );
  final attributes = _optionalMap(
    resourceBlock['attributes'],
    context: 'attributes',
  );
  final topLevel = topLevelTypeNames(resourcePrefix, laneInputs: laneInputs, [
    ...attributes.keys,
    ..._optionalMap(resourceBlock['block_types'], context: 'block_types').keys,
  ]);
  return _renameConcisely(specs, resourcePrefix, laneInputs, reserved, {
    for (final MapEntry(:key, :value) in attributes.entries)
      if (value is! Map || !value.containsKey('nested_type')) topLevel[key]!,
  });
}

/// [specs] with every class and enum named by [conciseTypeNames]. Enum
/// inputs of the same name and value set share one enum, named after its
/// shallowest occurrence.
List<NestedBlockSpec> _renameConcisely(
  List<NestedBlockSpec> specs,
  String stem,
  Map<String, Set<String>> laneInputs,
  Set<String> reserved,
  Set<String> owned,
) {
  final classes = <String, NestedBlockSpec>{};
  final enums = <String, List<String>>{};
  String enumKey(NestedAttrSpec a) => '${a.tfName}#${jsonEncode(a.enumValues)}';
  void visit(NestedBlockSpec s) {
    if (classes.containsKey(s.className)) return;
    classes[s.className] = s;
    for (final a in s.attrs) {
      if (a.enumValues == null) continue;
      final path = [...s.path, a.tfName];
      final current = enums[enumKey(a)];
      if (current == null || _comparePaths(path, current) < 0) {
        enums[enumKey(a)] = path;
      }
    }
    s.children.forEach(visit);
  }

  specs.forEach(visit);
  final classKeys = classes.keys.toList();
  final enumKeys = enums.keys.toList();
  final taken = {
    for (final c in classes.values) c.path.join('.'),
    for (final p in enums.values) p.join('.'),
  };
  final groups = <(String, String)>[];
  final groupPaths = <List<String>>[];
  for (final k in classKeys) {
    final c = classes[k]!;
    final inputs =
        c.attrs.length + c.children.length + c.excludedChildren.length;
    for (final g in [...c.exactlyOne, ...c.atMostOne]) {
      if (!c.keyed && g.length == inputs) continue;
      final concept =
          c.sealedNames[sealedGroupKeyOf(const [], g)] ??
          deriveSealedConcept(g);
      if (concept == null) continue;
      final path = [...c.path, concept];
      if (!taken.add(path.join('.'))) continue;
      groups.add((k, concept));
      groupPaths.add(path);
    }
  }
  final names = conciseTypeNames(
    stem,
    [
      for (final k in classKeys) classes[k]!.path,
      for (final k in enumKeys) enums[k]!,
      ...groupPaths,
    ],
    owned: owned,
    reserved: reserved,
    laneInputs: laneInputs,
    stemless: {
      for (var i = 0; i < groupPaths.length; i++)
        classKeys.length + enumKeys.length + i,
    },
  );
  final classNames = {
    for (var i = 0; i < classKeys.length; i++) classKeys[i]: names[i],
  };
  final enumNames = {
    for (var i = 0; i < enumKeys.length; i++)
      enumKeys[i]: names[classKeys.length + i],
  };
  final sealedTypeNames = <String, Map<String, String>>{};
  for (final (i, (k, concept)) in groups.indexed) {
    (sealedTypeNames[k] ??= {})[concept] =
        names[classKeys.length + enumKeys.length + i];
  }

  NestedBlockSpec rebuild(NestedBlockSpec s) {
    return NestedBlockSpec(
      tfName: s.tfName,
      path: s.path,
      className: classNames[s.className]!,
      repeated: s.repeated,
      keyed: s.keyed,
      required: s.required,
      attrs: [
        for (final a in s.attrs)
          a.enumValues == null
              ? a
              : NestedAttrSpec(
                  tfName: a.tfName,
                  dartName: a.dartName,
                  dartType: enumNames[enumKey(a)]!,
                  required: a.required,
                  enumValues: a.enumValues,
                  repeated: a.repeated,
                  reference: a.reference,
                ),
      ],
      children: [for (final c in s.children) rebuild(c)],
      excludedChildren: s.excludedChildren,
      shared: s.shared,
      exactlyOne: s.exactlyOne,
      atMostOne: s.atMostOne,
      sealedNames: s.sealedNames,
      sealedTypeNames: sealedTypeNames[s.className] ?? const {},
    );
  }

  return [for (final s in specs) rebuild(s)];
}

List<NestedBlockSpec> _shareIdenticalShapes(
  List<NestedBlockSpec> roots, {
  required bool acrossNames,
}) {
  final shapeIds = <String, int>{};
  final shapeOf = Map<NestedBlockSpec, int>.identity();
  final canonical = <int, NestedBlockSpec>{};
  final occurrences = <int, int>{};
  final names = <int, Map<String, String>>{};

  int visit(NestedBlockSpec spec) {
    final attrKeys = [
      for (final a in spec.attrs)
        [
          a.tfName,
          a.enumValues == null
              ? a.dartType
              : 'enum:${jsonEncode(a.enumValues)}',
          a.required,
          a.repeated,
          if (a.reference case final r?) 'ref:${r.target}:${r.attribute}',
        ].join('|'),
    ]..sort();
    final childKeys = [
      for (final c in spec.children)
        [c.tfName, c.repeated, c.keyed, c.required, visit(c)].join('|'),
      for (final e in spec.excludedChildren)
        [e.tfName, e.repeated, e.keyed, e.required, 'excluded'].join('|'),
    ]..sort();
    final key =
        '${acrossNames ? '' : spec.tfName}#'
        '${attrKeys.join(';')}#${childKeys.join(';')}'
        '#${jsonEncode(spec.exactlyOne)}#${jsonEncode(spec.atMostOne)}';
    final id = shapeIds.putIfAbsent(key, () => shapeIds.length);
    shapeOf[spec] = id;
    occurrences[id] = (occurrences[id] ?? 0) + 1;
    (names[id] ??= {}).addAll(spec.sealedNames);
    final current = canonical[id];
    if (current == null || _comparePaths(spec.path, current.path) < 0) {
      canonical[id] = spec;
    }
    return id;
  }

  for (final root in roots) {
    visit(root);
  }

  NestedBlockSpec rebuild(NestedBlockSpec spec) {
    final id = shapeOf[spec]!;
    final shape = canonical[id]!;
    return NestedBlockSpec(
      tfName: spec.tfName,
      path: shape.path,
      className: shape.className,
      repeated: spec.repeated,
      keyed: spec.keyed,
      required: spec.required,
      attrs: shape.attrs,
      children: [for (final c in spec.children) rebuild(c)],
      excludedChildren: spec.excludedChildren,
      shared: occurrences[id]! > 1,
      exactlyOne: shape.exactlyOne,
      atMostOne: shape.atMostOne,
      sealedNames: names[id]!,
    );
  }

  return [for (final root in roots) rebuild(root)];
}

int _comparePaths(List<String> a, List<String> b) {
  if (a.length != b.length) return a.length.compareTo(b.length);
  for (var i = 0; i < a.length; i++) {
    final c = a[i].compareTo(b[i]);
    if (c != 0) return c;
  }
  return 0;
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
  required EnumValuesResolver enumValues,
  required Map<String, List<List<String>>> exactlyOneGroups,
  required Map<String, List<List<String>>> atMostOneGroups,
  required Map<String, Map<String, String>> sealedNames,
  required ReferenceResolver references,
  required Map<String, String> typeOverrides,
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
      excludedChildren.add(
        ExcludedNestedBlock(
          tfName: tfName,
          repeated: cardinality.repeated,
          keyed: cardinality.keyed,
          required: cardinality.required,
        ),
      );
      return;
    }

    children.add(
      _buildSpec(
        tfName,
        childBody,
        path: childPath,
        resourcePrefix: resourcePrefix,
        customSlotKeys: customSlotKeys,
        excludedPaths: excludedPaths,
        enumValues: enumValues,
        exactlyOneGroups: exactlyOneGroups,
        atMostOneGroups: atMostOneGroups,
        sealedNames: sealedNames,
        references: references,
        typeOverrides: typeOverrides,
      ),
    );
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
    final attrBody = _requireMap(
      entry.value,
      context: 'attributes.${entry.key}',
    );
    final nestedTypeRaw = attrBody['nested_type'];
    if (nestedTypeRaw == null) continue;
    if (_isComputedOnly(attrBody)) continue;
    final nestedType = _requireMap(
      nestedTypeRaw,
      context: 'attributes.${entry.key}.nested_type',
    );
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

/// Computes [NestedBlockSpec.repeated] / [NestedBlockSpec.keyed] /
/// [NestedBlockSpec.required] from a
/// nested block's raw `nesting_mode` / `max_items` / `min_items` — shared by
/// [_buildSpec] (a fully-derived child) and [_scanChildren]'s excluded-child
/// branch ([ExcludedNestedBlock]), so both paths agree on what the schema
/// actually declares instead of the excluded path silently assuming scalar.
({bool repeated, bool keyed, bool required}) _blockCardinality(
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
    keyed: nestingMode == 'map',
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
  required EnumValuesResolver enumValues,
  required Map<String, List<List<String>>> exactlyOneGroups,
  required Map<String, List<List<String>>> atMostOneGroups,
  required Map<String, Map<String, String>> sealedNames,
  required ReferenceResolver references,
  required Map<String, String> typeOverrides,
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
    enumValues: enumValues,
    exactlyOneGroups: exactlyOneGroups,
    atMostOneGroups: atMostOneGroups,
    sealedNames: sealedNames,
    references: references,
    typeOverrides: typeOverrides,
  );
  final exactlyOne = exactlyOneGroups[path.join('.')] ?? const [];
  final atMostOne = atMostOneGroups[path.join('.')] ?? const [];

  return NestedBlockSpec(
    tfName: tfName,
    path: path,
    className: className,
    repeated: cardinality.repeated,
    keyed: cardinality.keyed,
    required: cardinality.required,
    attrs: _collectAttrs(
      block,
      path: path,
      className: className,
      enumValues: enumValues,
      references: references,
      typeOverrides: typeOverrides,
    ),
    children: scan.children,
    excludedChildren: scan.excludedChildren,
    exactlyOne: exactlyOne,
    atMostOne: atMostOne,
    sealedNames: sealedNames[path.join('.')] ?? const {},
  );
}

/// The `sealedNames` axis grouped by the dotted path of the block whose
/// members each entry lists, re-keyed by the members' bare names. An entry
/// whose members sit in different blocks matches no group; `wrap` reports
/// it as unused.
Map<String, Map<String, String>> _sealedNamesByBlock(
  Map<String, String>? names,
) {
  final out = <String, Map<String, String>>{};
  for (final MapEntry(:key, :value) in (names ?? const {}).entries) {
    final paths = [for (final m in sealedGroupKey(key)) m.split('.')];
    final block = paths.first.sublist(0, paths.first.length - 1).join('.');
    if (paths.any((p) => p.sublist(0, p.length - 1).join('.') != block)) {
      continue;
    }
    (out[block] ??= {})[sealedGroupKeyOf(const [], [
          for (final p in paths) p.last,
        ])] =
        value;
  }
  return out;
}

List<NestedAttrSpec> _collectAttrs(
  Map<String, dynamic> block, {
  required List<String> path,
  required String className,
  required EnumValuesResolver enumValues,
  required ReferenceResolver references,
  required Map<String, String> typeOverrides,
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

    final override = typeOverrides[[...path, tfName].join('.')];
    final typeInfo = override != null
        ? (
            dartType: override,
            repeated:
                body['type'] is List &&
                const {'list', 'set'}.contains((body['type'] as List).first),
            enumValues: null,
          )
        : _attrTypeInfo(
            rawType: body['type'],
            enumValues: enumValues([
              ...path,
              tfName,
            ], body['description'] as String?),
            className: className,
            tfName: tfName,
          );

    out.add(
      NestedAttrSpec(
        tfName: tfName,
        dartName: snakeToCamel(tfName),
        dartType: typeInfo.dartType,
        required: isRequired,
        enumValues: typeInfo.enumValues,
        repeated: typeInfo.repeated,
        reference: typeInfo.enumValues == null && override == null
            ? references([...path, tfName])
            : null,
      ),
    );
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
    enumValues: null,
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
/// `"number"`->`num`, `"dynamic"`->`Object?`), as do a map-of-scalar
/// (`["map", "string"]`->`Map<String, String>`) and a list or set of
/// scalars (`["set", "string"]`->`List<String>`, as `writeDartType` types
/// the same shape at the top level). Everything else — a list or set of a
/// non-scalar, a bare object type, a tuple, or a map of a non-scalar — has
/// no single clean representation in [NestedAttrSpec] (no derived
/// nested-class-inside-a-list shape here), so it conservatively falls back
/// to a `Map<String, dynamic>` / `List<Object?>`-style dartType. Genuinely
/// unrecognized shapes throw,
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
        final elementType = rawType.length > 1 ? rawType[1] : null;
        return switch (elementType) {
          'string' => 'List<String>',
          'bool' => 'List<bool>',
          'number' => 'List<num>',
          _ => 'List<Object?>',
        };
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
