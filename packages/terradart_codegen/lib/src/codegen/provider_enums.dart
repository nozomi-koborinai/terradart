import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/provider_schema_ir.dart';
import '../ir/resource_def.dart';
import '../ir/type_def.dart';
import '../parser/discovery_enums.dart';
import '../parser/mm_yaml_parser.dart';
import 'enum_value_parser.dart';
import 'exactly_one_placement.dart';
import 'exactly_one_types.dart';
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'nested_types/nested_type_names.dart';
import 'wrapper_overrides/wrapper_override.dart';
import 'wrapper_overrides/yaml_loader.dart';

String providerHintsDir(String sourceDir, WrapperOverrideKind kind) =>
    switch (kind) {
      WrapperOverrideKind.resource => p.join(sourceDir, 'hints'),
      WrapperOverrideKind.dataSource => p.join(sourceDir, 'hints', 'data'),
    };

bool hasDataSourceHints(String sourceDir) {
  final dir = Directory(
    providerHintsDir(sourceDir, WrapperOverrideKind.dataSource),
  );
  return dir.existsSync() &&
      dir.listSync().any((f) => f is File && f.path.endsWith('.yaml'));
}

final class KindHints {
  const KindHints({
    this.enums = const {},
    this.exactlyOne = const {},
    this.atMostOne = const {},
  });

  static const KindHints empty = KindHints();

  final Map<String, Map<String, List<String>>> enums;
  final Map<String, List<List<String>>> exactlyOne;
  final Map<String, List<List<String>>> atMostOne;

  bool get hasGroups => exactlyOne.isNotEmpty || atMostOne.isNotEmpty;

  KindHints _withGroups(
    Map<String, List<List<String>>> exactlyOne,
    Map<String, List<List<String>>> atMostOne,
  ) => KindHints(enums: enums, exactlyOne: exactlyOne, atMostOne: atMostOne);
}

typedef NestedHints = ({
  EnumValuesResolver enumValues,
  Map<String, List<List<String>>> exactlyOneGroups,
  Map<String, List<List<String>>> atMostOneGroups,
  Set<String> reserved,
});

extension ProviderSchemaIRByKind on ProviderSchemaIR {
  Map<String, ResourceDef> of(WrapperOverrideKind kind) => switch (kind) {
    WrapperOverrideKind.resource => resources,
    WrapperOverrideKind.dataSource => dataSources,
  };
}

typedef DroppedGroup = ({
  WrapperOverrideKind kind,
  String type,
  List<String> members,
  List<String> missing,
});

final class ProviderEnums {
  const ProviderEnums._({
    required this.enabled,
    required this._tables,
    this.caseInsensitive = false,
    this.availableValuesDialect = false,
    required this.hasGroupSource,
    this._discovery,
    this._mm = const {},
  });

  static const ProviderEnums off = ProviderEnums._(
    enabled: false,
    tables: (resources: KindHints.empty, dataSources: KindHints.empty),
    hasGroupSource: false,
  );

  const ProviderEnums.on({
    KindHints resources = KindHints.empty,
    KindHints dataSources = KindHints.empty,
    this.caseInsensitive = true,
    this.availableValuesDialect = true,
  }) : enabled = true,
       _tables = (resources: resources, dataSources: dataSources),
       hasGroupSource = true,
       _discovery = null,
       _mm = const {};

  // hashicorp/google's "Available values:" prose has no validator behind it,
  // and Magic Modules validators are case-sensitive.
  factory ProviderEnums.fromMm(
    Map<String, MmResourceOverrides> mm,
  ) => ProviderEnums.on(
    resources: KindHints(
      enums: {
        for (final MapEntry(:key, :value) in mm.entries)
          key: value.enumValuesByPath,
      },
      exactlyOne: {
        for (final MapEntry(:key, :value) in mm.entries)
          if (value.exactlyOneOfPaths.isNotEmpty) key: value.exactlyOneOfPaths,
      },
      atMostOne: {
        for (final MapEntry(:key, :value) in mm.entries)
          if (value.atMostOneOfPaths.isNotEmpty) key: value.atMostOneOfPaths,
      },
    ),
    caseInsensitive: false,
    availableValuesDialect: false,
  );

  factory ProviderEnums.mmGroups(Map<String, MmResourceOverrides> mm) =>
      ProviderEnums.fromMm(mm);

  factory ProviderEnums.load(
    String sourceDir, {
    required String providerVersion,
  }) {
    KindHints read(WrapperOverrideKind kind) {
      final dir = Directory(providerHintsDir(sourceDir, kind));
      if (!dir.existsSync()) return KindHints.empty;
      final enums = <String, Map<String, List<String>>>{};
      final exactlyOne = <String, List<List<String>>>{};
      final atMostOne = <String, List<List<String>>>{};
      final files =
          dir
              .listSync()
              .whereType<File>()
              .where((f) => f.path.endsWith('.yaml'))
              .toList()
            ..sort((a, b) => a.path.compareTo(b.path));
      for (final file in files) {
        final src = file.readAsStringSync();
        final doc = loadYaml(src);
        final version = doc is YamlMap ? doc['provider_version'] : null;
        if (version?.toString() != providerVersion) {
          throw FormatException(
            '${file.path}: provider_version "$version" does not match the '
            'fixture\'s provider_version.txt "$providerVersion"; re-extract '
            'the hints (see hints/README.md).',
          );
        }
        final type = p.basenameWithoutExtension(file.path);
        enums[type] = {
          for (final e
              in const MmYamlParser().parseString(src).fieldOverrides.entries)
            if (e.value.enumValues != null) e.key: e.value.enumValues!,
        };
        for (final (key, sink) in [
          ('exactly_one_of_groups', exactlyOne),
          ('at_most_one_of_groups', atMostOne),
        ]) {
          final raw = (doc as YamlMap)[key];
          if (raw == null) continue;
          if (raw is! YamlList || raw.any((g) => g is! YamlList)) {
            throw FormatException('${file.path}: $key must be a list of lists');
          }
          sink[type] = [
            for (final g in raw) [for (final m in g as YamlList) m.toString()],
          ];
        }
      }
      return KindHints(
        enums: enums,
        exactlyOne: exactlyOne,
        atMostOne: atMostOne,
      );
    }

    return ProviderEnums.on(
      resources: read(WrapperOverrideKind.resource),
      dataSources: read(WrapperOverrideKind.dataSource),
    );
  }

  final bool enabled;
  final bool caseInsensitive;
  final bool availableValuesDialect;
  final ByKind<KindHints> _tables;
  final DiscoveryEnums? _discovery;
  final Map<String, MmResourceOverrides> _mm;

  ProviderEnums withDiscovery(
    DiscoveryEnums discovery,
    Map<String, MmResourceOverrides> mm,
  ) => ProviderEnums._(
    enabled: enabled,
    tables: _tables,
    caseInsensitive: caseInsensitive,
    availableValuesDialect: availableValuesDialect,
    hasGroupSource: hasGroupSource,
    discovery: discovery,
    mm: mm,
  );

  final bool hasGroupSource;

  ProviderEnums _withTables(
    KindHints Function(WrapperOverrideKind kind, KindHints table) table,
  ) => ProviderEnums._(
    enabled: enabled,
    tables: byKind((k) => table(k, _tables.of(k))),
    caseInsensitive: caseInsensitive,
    availableValuesDialect: availableValuesDialect,
    hasGroupSource: hasGroupSource,
    discovery: _discovery,
    mm: _mm,
  );

  // Magic Modules YAML is shared between GA and beta, so GA lanes see
  // min_version: beta members and occasional wrong-depth upstream paths.
  ProviderEnums withinSchema(
    ProviderSchemaIR ir, {
    void Function(DroppedGroup group)? dropped,
  }) => _withTables((kind, table) {
    final defs = ir.of(kind);
    Map<String, List<List<String>>> keep(Map<String, List<List<String>>> all) {
      final out = <String, List<List<String>>>{};
      for (final MapEntry(key: type, value: groups) in all.entries) {
        final def = defs[type];
        if (def == null) {
          out[type] = groups;
          continue;
        }
        final kept = <List<String>>[];
        for (final g in groups) {
          final inputs = [
            for (final m in g)
              if (_hasInput(def.root, m.split('.'))) m,
          ];
          if (inputs.length >= 2) {
            kept.add(inputs);
          } else {
            dropped?.call((
              kind: kind,
              type: type,
              members: g,
              missing: [
                for (final m in g)
                  if (!inputs.contains(m)) m,
              ],
            ));
          }
        }
        if (kept.isNotEmpty) out[type] = kept;
      }
      return out;
    }

    return table._withGroups(keep(table.exactlyOne), keep(table.atMostOne));
  });

  ProviderEnums withOverrideGroups(
    LoadedOverrides overrides,
    ProviderSchemaIR ir, {
    required void Function(String error) error,
  }) => _withTables((kind, table) {
    final defs = ir.of(kind);
    final exactly = {
      for (final MapEntry(:key, :value) in table.exactlyOne.entries)
        key: [...value],
    };
    final atMost = {
      for (final MapEntry(:key, :value) in table.atMostOne.entries)
        key: [...value],
    };
    void add(
      String type,
      List<String>? entries,
      Map<String, List<List<String>>> into,
    ) {
      final def = defs[type];
      for (final entry in entries ?? const <String>[]) {
        final members = sealedGroupKey(entry).toList()..sort();
        final label = '${kind.label(type)} [${members.join(', ')}]';
        final missing = [
          for (final m in members)
            if (def == null || !_hasInput(def.root, m.split('.'))) m,
        ];
        if (missing.isNotEmpty) {
          error('$label: ${missing.join(', ')} names no input');
          continue;
        }
        final key = sealedGroupKeyOf(const [], members);
        final atMostIndex =
            atMost[type]?.indexWhere(
              (g) => sealedGroupKeyOf(const [], g) == key,
            ) ??
            -1;
        if (identical(into, exactly) && atMostIndex >= 0) {
          atMost[type]!.removeAt(atMostIndex);
          if (atMost[type]!.isEmpty) atMost.remove(type);
          (into[type] ??= []).add(members);
          continue;
        }
        final declared = [
          ...?table.exactlyOne[type],
          ...?table.atMostOne[type],
        ].any((g) => sealedGroupKeyOf(const [], g) == key);
        if (declared) {
          error('$label: the group source declares it; remove the entry');
          continue;
        }
        (into[type] ??= []).add(members);
      }
    }

    for (final MapEntry(key: type, value: o) in overrides.of(kind).entries) {
      add(type, o.exactlyOneOf, exactly);
      add(type, o.atMostOneOf, atMost);
    }
    return table._withGroups(exactly, atMost);
  });

  static bool _hasInput(BlockDef block, List<String> path) {
    final [head, ...rest] = path;
    if (rest.isEmpty) {
      return block.attributes.any(
            (a) => a.name == head && !a.constraints.computedOnly,
          ) ||
          block.nestedBlocks.any(
            (b) => b.name == head && !b.constraints.computedOnly,
          );
    }
    for (final b in block.nestedBlocks) {
      if (b.name == head && !b.constraints.computedOnly) {
        return _hasInput(b.block, rest);
      }
    }
    return false;
  }

  static Map<String, List<List<String>>> _byBlock(List<List<String>>? groups) {
    final out = <String, List<List<String>>>{};
    for (final g in groups ?? const <List<String>>[]) {
      final parent = g.first.contains('.')
          ? g.first.substring(0, g.first.lastIndexOf('.'))
          : '';
      (out[parent] ??= []).add([for (final m in g) m.split('.').last]);
    }
    return out;
  }

  ({List<List<String>> exactlyOne, List<List<String>> atMostOne}) rootGroups(
    String terraformType,
    WrapperOverride override,
  ) {
    if (!override.deriveExactlyOne) {
      return (exactlyOne: const [], atMostOne: const []);
    }
    final table = _tables.of(override.kind);
    return (
      exactlyOne: _byBlock(table.exactlyOne[terraformType])[''] ?? const [],
      atMostOne: _byBlock(table.atMostOne[terraformType])[''] ?? const [],
    );
  }

  NestedHints nestedHints(String terraformType, WrapperOverride override) {
    final table = _tables.of(override.kind);
    final derived = _resolver(override.kind, terraformType);
    final own = override.enumValues;
    final EnumValuesResolver enumValues = own == null
        ? derived
        : (path, description) =>
              own[path.join('.')] ?? derived(path, description);
    if (!override.deriveExactlyOne) {
      return (
        enumValues: enumValues,
        exactlyOneGroups: const {},
        atMostOneGroups: const {},
        reserved: const {},
      );
    }
    final root = rootGroups(terraformType, override);
    return (
      enumValues: enumValues,
      exactlyOneGroups: _byBlock(table.exactlyOne[terraformType])..remove(''),
      atMostOneGroups: _byBlock(table.atMostOne[terraformType])..remove(''),
      reserved: rootSealedTypeNames(
        override.kind.typeStem(terraformType),
        blockGroups(root.exactlyOne, root.atMostOne),
        sealedNames: override.sealedNames,
      ),
    );
  }

  EnumValuesResolver _resolver(WrapperOverrideKind kind, String terraformType) {
    if (!enabled) return descriptionEnumValues;
    final typeHints =
        _tables.of(kind).enums[terraformType] ?? const <String, List<String>>{};
    final discovery = _discovery;
    return (path, description) {
      if (typeHints[path.join('.')] case final values?) return values;
      final described =
          parseEnumValuesFromDescription(description) ??
          (availableValuesDialect ? parseAvailableValues(description) : null);
      final declared = discovery == null
          ? null
          : discoveryInputValues(
              discovery,
              _mm,
              kind,
              terraformType,
              path.join('.'),
            );
      return declared ?? described;
    };
  }

  ProviderSchemaIR enrich(ProviderSchemaIR ir) {
    if (!enabled) return ir;
    Map<String, ResourceDef> enriched(WrapperOverrideKind kind) => {
      for (final e in ir.of(kind).entries)
        e.key: _enrich(e.value, _resolver(kind, e.key)),
    };
    return ProviderSchemaIR(
      providerName: ir.providerName,
      providerSource: ir.providerSource,
      providerVersion: ir.providerVersion,
      resources: enriched(WrapperOverrideKind.resource),
      dataSources: enriched(WrapperOverrideKind.dataSource),
    );
  }

  ProviderSchemaIR withOverrideEnums(
    LoadedOverrides overrides,
    ProviderSchemaIR ir, {
    required void Function(String error) error,
  }) {
    Map<String, ResourceDef> replaced(WrapperOverrideKind kind) {
      final defs = {...ir.of(kind)};
      for (final MapEntry(key: type, value: o) in overrides.of(kind).entries) {
        final own = o.enumValues;
        if (own == null) continue;
        final def = defs[type];
        final resolve = _resolver(kind, type);
        final top = <String, List<String>>{};
        for (final MapEntry(key: path, value: values) in own.entries) {
          final label = '${kind.label(type)} enumValues $path';
          final segments = path.split('.');
          final attr = def == null ? null : _attributeAt(def.root, segments);
          if (attr == null || !_isStringish(attr.type)) {
            error('$label: names no string attribute');
            continue;
          }
          final derived = segments.length == 1
              ? attr.constraints.enumValues
              : resolve(segments, attr.description);
          if (derived != null && derived.toSet().containsAll(values)) {
            error(
              '$label: the derivation already gives every one of these '
              'values; remove the entry',
            );
            continue;
          }
          if (segments.length == 1) top[path] = values;
        }
        if (def == null || top.isEmpty) continue;
        defs[type] = ResourceDef(
          terraformType: def.terraformType,
          description: def.description,
          deprecationMessage: def.deprecationMessage,
          root: BlockDef(
            attributes: [
              for (final a in def.root.attributes)
                if (top[a.name] case final values?)
                  Attribute(
                    name: a.name,
                    type: a.type,
                    description: a.description,
                    defaultValue: a.defaultValue,
                    constraints: a.constraints.copyWith(enumValues: values),
                  )
                else
                  a,
            ],
            nestedBlocks: def.root.nestedBlocks,
            description: def.root.description,
          ),
        );
      }
      return defs;
    }

    return ProviderSchemaIR(
      providerName: ir.providerName,
      providerSource: ir.providerSource,
      providerVersion: ir.providerVersion,
      resources: replaced(WrapperOverrideKind.resource),
      dataSources: replaced(WrapperOverrideKind.dataSource),
    );
  }

  static Attribute? _attributeAt(BlockDef block, List<String> path) {
    final [head, ...rest] = path;
    if (rest.isEmpty) {
      return block.attributes.where((a) => a.name == head).firstOrNull;
    }
    for (final b in block.nestedBlocks) {
      if (b.name == head) return _attributeAt(b.block, rest);
    }
    return null;
  }

  LoadedOverrides typeDerivedEnums(
    LoadedOverrides overrides,
    ProviderSchemaIR ir, {
    Map<String, Set<String>> laneInputs = const {},
  }) {
    if (!enabled) return overrides;
    Map<String, WrapperOverride> typed(WrapperOverrideKind kind) => {
      for (final MapEntry(key: type, value: o) in overrides.of(kind).entries)
        type: _typeDerivedEnums(o, ir.of(kind)[type], laneInputs),
    };
    return LoadedOverrides(
      resources: typed(WrapperOverrideKind.resource),
      dataSources: typed(WrapperOverrideKind.dataSource),
    );
  }

  WrapperOverride _typeDerivedEnums(
    WrapperOverride o,
    ResourceDef? def,
    Map<String, Set<String>> laneInputs,
  ) {
    if (def == null) return o;
    final explicit = o.dartTypeOverrides ?? const <String, String>{};
    final slots = o.customSlots ?? const <String, CustomSlot>{};
    final enums = topLevelEnums(def, o, laneInputs: laneInputs);
    final derived = <String, String>{
      for (final attr in def.root.attributes)
        if (enums[attr.name] case final en?)
          if (_isStringish(attr.type) &&
              !explicit.containsKey(attr.name) &&
              !slots.containsKey(attr.name))
            attr.name: _enumSlotType(attr, en.dartName),
    };
    if (derived.isEmpty) return o;
    return o.withDartTypeOverrides({...derived, ...explicit});
  }
}

List<String>? discoveryInputValues(
  DiscoveryEnums discovery,
  Map<String, MmResourceOverrides> mm,
  WrapperOverrideKind kind,
  String type,
  String path,
) {
  final dataSource = kind == WrapperOverrideKind.dataSource;
  final yaml = dataSource ? (mm['data_$type'] ?? mm[type]) : mm[type];
  final found = discovery.lookup(
    type,
    path,
    dataSource: dataSource,
    restPath: yaml?.restPathsByPath[path],
  );
  if (found == null) return null;
  final values = [
    for (final v in found.values)
      if (!isDiscoverySentinel(v)) v,
  ];
  return values.isEmpty ? null : values;
}

Map<String, EnumName> topLevelEnums(
  ResourceDef def,
  WrapperOverride override, {
  Map<String, Set<String>> laneInputs = const {},
}) {
  if (!override.deriveEnums) return const {};
  final names = topLevelTypeNames(
    override.kind.typeStem(def.terraformType),
    [
      ...def.root.attributes.map((a) => a.name),
      ...def.root.nestedBlocks.map((b) => b.name),
    ],
    laneInputs: laneInputs,
    named: override.typeNames ?? const {},
  );
  final explicit = override.dartTypeOverrides ?? const <String, String>{};
  final slots = override.customSlots ?? const <String, CustomSlot>{};
  return {
    for (final attr in def.root.attributes)
      if (attr.constraints.enumValues case final values?)
        if (values.isNotEmpty &&
            _takesDerivedEnum(
              explicit[attr.name],
              names[attr.name]!,
              override.prelude,
            ) &&
            !slots.containsKey(attr.name))
          attr.name: enumName(
            resourceType: def.terraformType,
            fieldPath: attr.name,
            members: values,
            dartName: names[attr.name],
          ),
  };
}

bool _takesDerivedEnum(String? explicit, String derived, String? prelude) {
  if (prelude != null &&
      RegExp(
        '\\b(?:enum|class|extension type(?: const)?) '
        '${RegExp.escape(derived)}\\b',
      ).hasMatch(prelude)) {
    return false;
  }
  return explicit == null ||
      explicit == derived ||
      explicit == 'List<$derived>';
}

void checkTypeNames(
  ResourceDef def,
  WrapperOverride override,
  List<NestedBlockSpec> nested, {
  Map<String, Set<String>> laneInputs = const {},
}) {
  final names = override.typeNames;
  if (names == null) return;
  final taken = {
    for (final MapEntry(:key, :value) in topLevelEnums(
      def,
      override,
      laneInputs: laneInputs,
    ).entries)
      key: value.dartName,
    ...nestedTypeNamesByPath(nested),
  };
  final stale = [
    for (final MapEntry(:key, :value) in names.entries)
      if (taken[key] != value) key,
  ];
  if (stale.isNotEmpty) {
    throw StateError(
      '${override.kind.label(def.terraformType)}: typeNames '
      '${stale.join(', ')} names no derived enum or helper',
    );
  }
}

ResourceDef _enrich(ResourceDef def, EnumValuesResolver resolve) {
  final attrs = [for (final a in def.root.attributes) _enrichAttr(a, resolve)];
  return ResourceDef(
    terraformType: def.terraformType,
    description: def.description,
    deprecationMessage: def.deprecationMessage,
    root: BlockDef(
      attributes: attrs,
      nestedBlocks: def.root.nestedBlocks,
      description: def.root.description,
    ),
  );
}

bool isEnumListType(String dartType) => _enumListElement(dartType) != null;

String? _enumListElement(String dartType) {
  final m = RegExp(r'^List<(\w+)>$').firstMatch(dartType);
  return m != null && isEnumTypeName(m.group(1)!) ? m.group(1) : null;
}

bool isEnumTypeName(String dartType) =>
    RegExp(r'^[A-Z][A-Za-z0-9_]*$').hasMatch(dartType) &&
    dartType != 'String' &&
    dartType != 'Object';

String argTypeFor(String dartType, {bool sensitive = false}) =>
    switch (_enumListElement(dartType)) {
      final element? => 'EnumList<$element>',
      null when isEnumTypeName(dartType) => dartType,
      null when sensitive => 'Sensitive<$dartType>',
      null => 'TfArg<$dartType>',
    };

bool takesSensitive(Attribute attr) => attr.constraints.sensitive;

/// [ir] with each top-level `extraSensitiveFields` entry of [overrides]
/// marked sensitive, so the input takes `Sensitive<T>` as a
/// schema-sensitive one does.
ProviderSchemaIR withOverrideSensitive(
  LoadedOverrides overrides,
  ProviderSchemaIR ir,
) {
  Map<String, ResourceDef> marked(WrapperOverrideKind kind) => {
    for (final MapEntry(key: type, value: def) in ir.of(kind).entries)
      type: switch (overrides.of(kind)[type]?.extraSensitiveFields) {
        final extra? => ResourceDef(
          terraformType: def.terraformType,
          description: def.description,
          deprecationMessage: def.deprecationMessage,
          root: BlockDef(
            attributes: [
              for (final a in def.root.attributes)
                if (extra.contains(a.name))
                  Attribute(
                    name: a.name,
                    type: a.type,
                    description: a.description,
                    defaultValue: a.defaultValue,
                    constraints: a.constraints.copyWith(sensitive: true),
                  )
                else
                  a,
            ],
            nestedBlocks: def.root.nestedBlocks,
            description: def.root.description,
          ),
        ),
        null => def,
      },
  };
  return ProviderSchemaIR(
    providerName: ir.providerName,
    providerSource: ir.providerSource,
    providerVersion: ir.providerVersion,
    resources: marked(WrapperOverrideKind.resource),
    dataSources: marked(WrapperOverrideKind.dataSource),
  );
}

bool _isStringish(TypeDef t) => switch (t) {
  StringType() => true,
  ListType(:final element) || SetType(:final element) => element is StringType,
  _ => false,
};

String _enumSlotType(Attribute attr, String enumType) =>
    attr.type is StringType ? enumType : 'List<$enumType>';

Attribute _enrichAttr(Attribute a, EnumValuesResolver resolve) {
  if (!_isStringish(a.type) ||
      a.constraints.enumValues != null ||
      a.constraints.computedOnly) {
    return a;
  }
  final values = resolve([a.name], a.description);
  if (values == null || values.isEmpty) return a;
  return Attribute(
    name: a.name,
    type: a.type,
    description: a.description,
    defaultValue: a.defaultValue,
    constraints: a.constraints.copyWith(enumValues: values),
  );
}
