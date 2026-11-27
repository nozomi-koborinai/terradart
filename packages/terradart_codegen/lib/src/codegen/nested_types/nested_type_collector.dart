import 'dart:convert';

import '../enum_value_parser.dart';
import '../exactly_one_placement.dart';
import '../exactly_one_types.dart';
import '../naming.dart';
import '../references/reference_targets.dart';
import 'nested_type_names.dart';

final class NestedAttrSpec {
  final String tfName;
  final String dartName;
  final String dartType;
  final bool required;
  final List<String>? enumValues;

  final bool repeated;

  final ResolvedReference? reference;

  final bool sensitive;

  const NestedAttrSpec({
    required this.tfName,
    required this.dartName,
    required this.dartType,
    required this.required,
    this.enumValues,
    this.repeated = false,
    this.reference,
    this.sensitive = false,
  });
}

final class NestedBlockSpec {
  final String tfName;
  final List<String> path;
  final String className;
  final bool repeated;

  final bool keyed;
  final bool required;
  final List<NestedAttrSpec> attrs;
  final List<NestedBlockSpec> children;
  final List<ExcludedNestedBlock> excludedChildren;

  final bool shared;

  final List<List<String>> exactlyOne;

  final List<List<String>> atMostOne;

  final Map<String, String> sealedNames;

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
  }) : assert(!(repeated && keyed));
}

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
  }) : assert(!(repeated && keyed));
}

typedef EnumValuesResolver =
    List<String>? Function(List<String> path, String? description);

typedef ReferenceResolver = ResolvedReference? Function(List<String> path);

ResolvedReference? _noReferences(List<String> path) => null;

List<String>? descriptionEnumValues(List<String> path, String? description) =>
    parseEnumValuesFromDescription(description);

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
  Map<String, String>? typeNames,
}) {
  final named = typeNames ?? const <String, String>{};
  final rootKeys = {
    ..._optionalMap(resourceBlock['attributes'], context: 'attributes').keys,
    ..._optionalMap(resourceBlock['block_types'], context: 'block_types').keys,
  };
  final scan = _scanChildren(
    _withoutRootSlotBlocks(
      resourceBlock,
      customSlotKeys.intersection(rootKeys),
    ),
    path: const [],
    resourcePrefix: resourcePrefix,
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
  final topLevel =
      topLevelTypeNames(resourcePrefix, laneInputs: laneInputs, named: named, [
        ...attributes.keys,
        ..._optionalMap(
          resourceBlock['block_types'],
          context: 'block_types',
        ).keys,
      ]);
  final owned = <String>{};
  final topReserved = <String>{};
  for (final MapEntry(:key, :value) in attributes.entries) {
    if (value is Map && value.containsKey('nested_type')) continue;
    if (value is Map && _isComputedOnly(value.cast<String, dynamic>())) {
      topReserved.add(topLevel[key]!);
    } else {
      owned.add(topLevel[key]!);
    }
  }
  return _renameConcisely(
    specs,
    resourcePrefix,
    laneInputs,
    {...reserved, ...topReserved},
    named,
    owned,
  );
}

Map<String, String> nestedTypeNamesByPath(List<NestedBlockSpec> specs) {
  final out = <String, String>{};
  void visit(NestedBlockSpec s) {
    out[s.path.join('.')] = s.className;
    for (final a in s.attrs) {
      if (a.enumValues != null) {
        out[[...s.path, a.tfName].join('.')] = a.dartType;
      }
    }
    s.children.forEach(visit);
  }

  specs.forEach(visit);
  return out;
}

List<NestedBlockSpec> _renameConcisely(
  List<NestedBlockSpec> specs,
  String stem,
  Map<String, Set<String>> laneInputs,
  Set<String> reserved,
  Map<String, String> named,
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
    for (final placement in placeGroups(
      blockGroups(c.exactlyOne, c.atMostOne),
    )) {
      if (placement case SinglePlacement(
        :final group,
      ) when !c.keyed && group.members.length == inputs) {
        continue;
      }
      for (final t in preferredSealedTypes(
        placement,
        (members) => c.sealedNames[sealedGroupKeyOf(const [], members)],
      )) {
        final path = [...c.path, t.concept];
        if (!taken.add(path.join('.'))) continue;
        groups.add((k, t.concept));
        groupPaths.add(path);
      }
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
    named: named,
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
                  sensitive: a.sensitive,
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
  final sensitive = <int, Set<String>>{};

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
    (sensitive[id] ??= {}).addAll([
      for (final a in spec.attrs)
        if (a.sensitive) a.tfName,
    ]);
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
      attrs: [
        for (final a in shape.attrs)
          a.sensitive || !sensitive[id]!.contains(a.tfName)
              ? a
              : NestedAttrSpec(
                  tfName: a.tfName,
                  dartName: a.dartName,
                  dartType: a.dartType,
                  required: a.required,
                  enumValues: a.enumValues,
                  repeated: a.repeated,
                  reference: a.reference,
                  sensitive: true,
                ),
      ],
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

Map<String, dynamic> _withoutRootSlotBlocks(
  Map<String, dynamic> block,
  Set<String> slotKeys,
) {
  if (slotKeys.isEmpty) return block;
  final blockTypes = _optionalMap(block['block_types'], context: 'block_types');
  final attributes = _optionalMap(block['attributes'], context: 'attributes');
  return {
    ...block,
    'block_types': {
      for (final e in blockTypes.entries)
        if (!slotKeys.contains(e.key)) e.key: e.value,
    },
    'attributes': {
      for (final e in attributes.entries)
        if (!slotKeys.contains(e.key) ||
            e.value is! Map ||
            !(e.value as Map).containsKey('nested_type'))
          e.key: e.value,
    },
  };
}

_ChildScan _scanChildren(
  Map<String, dynamic> block, {
  required List<String> path,
  required String resourcePrefix,
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
    if (tfName == 'timeouts') return;

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

bool _isComputedOnly(Map<String, dynamic> body) {
  final computed = body['computed'] == true;
  final optional = body['optional'] == true;
  final required = body['required'] == true;
  return computed && !optional && !required;
}

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
        sensitive: body['sensitive'] == true,
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

Map<String, dynamic> _requireMap(Object? value, {required String context}) {
  if (value is Map) return value.cast<String, dynamic>();
  throw FormatException('Expected a JSON object at $context, got: $value');
}

Map<String, dynamic> _optionalMap(Object? value, {required String context}) {
  if (value == null) return const {};
  return _requireMap(value, context: context);
}
