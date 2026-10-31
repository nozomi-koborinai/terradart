import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/provider_schema_ir.dart';
import '../ir/resource_def.dart';
import '../ir/type_def.dart';
import '../parser/mm_yaml_parser.dart';
import 'enum_value_parser.dart';
import 'exactly_one_placement.dart';
import 'exactly_one_types.dart';
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'nested_types/nested_type_names.dart';
import 'wrapper_overrides/wrapper_override.dart';
import 'wrapper_overrides/yaml_loader.dart';

/// Where [kind]'s hint files live under a lane fixture: `<sourceDir>/hints`
/// for resources, `<sourceDir>/hints/data` for data sources. Every reader
/// and writer of hint files goes through this.
String providerHintsDir(String sourceDir, WrapperOverrideKind kind) =>
    switch (kind) {
      WrapperOverrideKind.resource => p.join(sourceDir, 'hints'),
      WrapperOverrideKind.dataSource => p.join(sourceDir, 'hints', 'data'),
    };

/// Whether [sourceDir] has at least one data-source hint file.
bool hasDataSourceHints(String sourceDir) {
  final dir = Directory(
    providerHintsDir(sourceDir, WrapperOverrideKind.dataSource),
  );
  return dir.existsSync() &&
      dir.listSync().any((f) => f is File && f.path.endsWith('.yaml'));
}

/// One kind's hint table, keyed by Terraform type.
final class KindHints {
  const KindHints({
    this.enums = const {},
    this.exactlyOne = const {},
    this.atMostOne = const {},
  });

  static const KindHints empty = KindHints();

  /// Terraform type → dotted input path → the values the provider accepts.
  final Map<String, Map<String, List<String>>> enums;

  /// Terraform type → each input set the provider requires exactly one of,
  /// as dotted paths from the schema root that share one parent block
  /// (`exactly_one_of_groups`).
  final Map<String, List<List<String>>> exactlyOne;

  /// Terraform type → each mutually exclusive input set the provider also
  /// accepts none of, shaped like [exactlyOne] (`at_most_one_of_groups`).
  final Map<String, List<List<String>>> atMostOne;

  bool get hasGroups => exactlyOne.isNotEmpty || atMostOne.isNotEmpty;

  KindHints _withGroups(
    Map<String, List<List<String>>> exactlyOne,
    Map<String, List<List<String>>> atMostOne,
  ) => KindHints(enums: enums, exactlyOne: exactlyOne, atMostOne: atMostOne);
}

/// What the nested-type collector and the migration manifest read for one
/// override's derived types.
typedef NestedHints = ({
  EnumValuesResolver enumValues,

  /// Nested blocks only (the root removed); empty unless `deriveExactlyOne`.
  Map<String, List<List<String>>> exactlyOneGroups,
  Map<String, List<List<String>>> atMostOneGroups,

  /// The root sealed types' names and variants: the names helpers keep off.
  Set<String> reserved,
});

extension ProviderSchemaIRByKind on ProviderSchemaIR {
  /// The definitions of [kind].
  Map<String, ResourceDef> of(WrapperOverrideKind kind) => switch (kind) {
    WrapperOverrideKind.resource => resources,
    WrapperOverrideKind.dataSource => dataSources,
  };
}

/// The `wrap --provider-enums` gate: enum value sets and exclusive groups a
/// provider documents outside Magic Modules.
///
/// Each kind reads its own table ([KindHints]), so a resource hint never
/// types a data source of the same Terraform type. Every lookup takes the
/// override and reads `override.kind`. Two sources, in precedence order:
/// 1. `providerHintsDir(<source>, kind)/<terraform_type>.yaml` — value sets
///    extracted from the provider's Go validators
///    (`tool/extract_provider_hints.dart`), in the MM YAML subset
///    `properties[].api_name` / `enum_values`.
/// 2. The attribute description: the dialects every lane reads
///    ([parseEnumValuesFromDescription]) plus the `Available values:`
///    dialect ([parseAvailableValues]), which the GA google schema also
///    contains and so stays behind this gate.
///
/// A group [ProviderEnums.withinSchema] drops, because fewer than two of
/// its [members] are inputs of the [type] of [kind]: the others are
/// [missing].
typedef DroppedGroup = ({
  WrapperOverrideKind kind,
  String type,
  List<String> members,
  List<String> missing,
});

/// [off] is every lane's default and changes nothing.
final class ProviderEnums {
  const ProviderEnums._({
    required this.enabled,
    required ByKind<KindHints> tables,
    this.caseInsensitive = false,
    this.availableValuesDialect = false,
    required this.hasGroupSource,
  }) : _tables = tables;

  /// The gate closed: no enrichment, the default description resolver.
  static const ProviderEnums off = ProviderEnums._(
    enabled: false,
    tables: (resources: KindHints.empty, dataSources: KindHints.empty),
    hasGroupSource: false,
  );

  /// Opens the gate over each kind's table.
  const ProviderEnums.on({
    KindHints resources = KindHints.empty,
    KindHints dataSources = KindHints.empty,
    this.caseInsensitive = true,
    this.availableValuesDialect = true,
  }) : enabled = true,
       _tables = (resources: resources, dataSources: dataSources),
       hasGroupSource = true;

  /// `wrap --mm-hints`: the same gate with Magic Modules YAML as the hint
  /// source — each resource's `enum_values` by path, its `exactly_one_of`
  /// groups ([MmResourceOverrides.exactlyOneOfPaths]) and its `conflicts`
  /// sets ([MmResourceOverrides.atMostOneOfPaths]). Magic Modules YAML
  /// describes resources, so the data-source table stays empty.
  /// Magic Modules validators match case-sensitively, and the google
  /// schema's `Available values:` prose has no validator behind it, so the
  /// description dialects stay the ones every lane reads.
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

  /// `wrap --mm-groups` (google GA): [ProviderEnums.fromMm] for a lane whose
  /// merged IR already carries the top-level `enum_values`. The Magic
  /// Modules table also types the nested inputs the merged IR does not
  /// reach, and an input it has no values for takes the description
  /// dialects every lane reads. [typeDerivedEnums] types each `deriveEnums`
  /// input with the enum the wrapper declares.
  factory ProviderEnums.mmGroups(Map<String, MmResourceOverrides> mm) =>
      ProviderEnums.fromMm(mm);

  /// Reads `providerHintsDir(sourceDir, kind)/*.yaml` into each kind's
  /// table (a missing directory means no hints).
  ///
  /// Throws [FormatException] when a file is malformed or its
  /// `provider_version` differs from [providerVersion] — hints extracted at
  /// another release would type the wrappers against the wrong validators.
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

  /// Whether the provider matches enum values case-insensitively (its
  /// validators are `OneOfCaseInsensitive`), recorded in the migration
  /// manifest.
  final bool caseInsensitive;

  /// Whether the resolver also reads the `Available values:` description
  /// dialect ([parseAvailableValues]).
  final bool availableValuesDialect;

  final ByKind<KindHints> _tables;

  /// Whether hints or Magic Modules groups were loaded, even ones that
  /// declare no group. Without a source, a `sealedNames` key that matches
  /// no group cannot be judged stale. Copies keep the flag, so trimming a
  /// group leaves the source loaded, and an override's own groups are no
  /// source.
  final bool hasGroupSource;

  ProviderEnums _withTables(
    KindHints Function(WrapperOverrideKind kind, KindHints table) table,
  ) => ProviderEnums._(
    enabled: enabled,
    tables: byKind((k) => table(k, _tables.of(k))),
    caseInsensitive: caseInsensitive,
    availableValuesDialect: availableValuesDialect,
    hasGroupSource: hasGroupSource,
  );

  /// Each table's groups without the members its own kind's definitions in
  /// [ir] have no input for, and without every group that leaves fewer than
  /// two members. Magic Modules YAML is shared by the GA and beta
  /// providers, so a GA lane reads `conflicts` / `exactly_one_of` naming
  /// `min_version: beta` fields, and some upstream paths name a field at
  /// the wrong depth; neither is a constraint a constructor can express.
  /// [dropped] hears each group no input is left of but one or none, with
  /// the members that are not inputs.
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

  /// These groups plus each override's `exactlyOneOf` / `atMostOneOf`
  /// entries, each added to its own kind's table. An `exactlyOneOf` entry
  /// that matches an at-most-one group tightens it to exactly one (the API
  /// requires a member the group source only marks exclusive). [error]
  /// hears an entry that names no input of its kind's definitions in [ir]
  /// or that these groups already hold, as `type [members]: reason`.
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

  /// Whether [path] names an input: a computed-only attribute or block is
  /// an output, which no group can constrain.
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

  /// [groups] keyed by their parent block's dotted path (`''` for the
  /// schema root), members as bare names.
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

  /// The groups on [override]'s own arguments (the root block), for
  /// sealing. Empty unless [override] sets `deriveExactlyOne`.
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

  /// The hints [override]'s derived nested types read.
  NestedHints nestedHints(String terraformType, WrapperOverride override) {
    final table = _tables.of(override.kind);
    final derived = _resolver(table, terraformType);
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

  EnumValuesResolver _resolver(KindHints table, String terraformType) {
    if (!enabled) return descriptionEnumValues;
    final typeHints =
        table.enums[terraformType] ?? const <String, List<String>>{};
    return (path, description) =>
        typeHints[path.join('.')] ??
        parseEnumValuesFromDescription(description) ??
        (availableValuesDialect ? parseAvailableValues(description) : null);
  }

  /// [ir] with `enumValues` filled on every top-level string or
  /// list-of-string input that has none yet, each kind from its own table.
  /// Computed-only attributes stay untouched: they have no constructor
  /// parameter to type.
  ProviderSchemaIR enrich(ProviderSchemaIR ir) {
    if (!enabled) return ir;
    Map<String, ResourceDef> enriched(WrapperOverrideKind kind) => {
      for (final e in ir.of(kind).entries)
        e.key: _enrich(e.value, _resolver(_tables.of(kind), e.key)),
    };
    return ProviderSchemaIR(
      providerName: ir.providerName,
      providerSource: ir.providerSource,
      providerVersion: ir.providerVersion,
      resources: enriched(WrapperOverrideKind.resource),
      dataSources: enriched(WrapperOverrideKind.dataSource),
    );
  }

  /// [ir] with each override's `enumValues` in place of the value set of
  /// the top-level attribute it names; nested paths reach the derived types
  /// through [nestedHints]. [error] hears an entry that names no string
  /// attribute of its kind's definition, or whose values the derivation
  /// already gives (stale once upstream is fixed), as `type path: reason`.
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
        final resolve = _resolver(_tables.of(kind), type);
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
          if (derived != null &&
              derived.length == values.length &&
              derived.toSet().containsAll(values)) {
            error(
              '$label: the derivation already gives these values; '
              'remove the entry',
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

  /// [overrides] with a `dartTypeOverrides` entry naming the derived enum
  /// ([topLevelEnums]) for every top-level string attribute of its kind's
  /// definition in [ir] — so the constructor parameter takes the enum the
  /// wrapper declares — and `List<Enum>` for a list or set of strings, the
  /// element-wise shape nested helpers use ([isEnumListType]). An explicit
  /// `dartTypeOverrides` entry or a custom slot wins.
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

/// The enum every top-level input of [def] carrying `enumValues` takes when
/// [override] sets `deriveEnums`, keyed by input name in attribute order and
/// named on `override.kind.typeStem`. The one source for both the
/// `dartTypeOverrides` [ProviderEnums.typeDerivedEnums] writes and the
/// declarations both emitters write.
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

/// An input whose `dartTypeOverrides` entry names another type, or a type
/// the hand-written [prelude] declares, never takes the enum derived for
/// it, so the wrapper does not declare one.
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

/// Throws a [StateError] naming each `typeNames` entry of [override] that no
/// derived type of [def] took: a key that is not the path of an enum or a
/// helper input, or that a shared type does not take its name from.
/// [nested] is what `collectNestedTypes` derived for [def].
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

/// Whether a `dartTypeOverrides` value is the element-wise enum list shape
/// (`List<Enum>`): the constructor takes it bare, not in a `TfArg`, and the
/// argMap encodes it element by element.
bool isEnumListType(String dartType) {
  final m = RegExp(r'^List<(\w+)>$').firstMatch(dartType);
  return m != null && isEnumTypeName(m.group(1)!);
}

/// Whether [dartType] names a generated or prelude enum. Enums are the only
/// bare type names a `dartTypeOverrides` value or a derived nested input
/// carries; the provider schema's own types render as `String`, `int`,
/// `num`, `bool`, `Object?` or a collection.
bool isEnumTypeName(String dartType) =>
    RegExp(r'^[A-Z][A-Za-z0-9_]*$').hasMatch(dartType) &&
    dartType != 'String' &&
    dartType != 'Object';

/// The parameter or field type for an input whose payload is [dartType]:
/// an enum, or a list of one, is itself a `TfArg` and goes in bare;
/// anything else is wrapped in `TfArg<...>`, or in `Sensitive<...>` when the
/// provider schema marks the input [sensitive] — a type with no `.literal`,
/// so a secret never lands in `main.tf.json`.
String argTypeFor(String dartType, {bool sensitive = false}) =>
    isEnumTypeName(dartType) || isEnumListType(dartType)
    ? dartType
    : sensitive
    ? 'Sensitive<$dartType>'
    : 'TfArg<$dartType>';

/// Whether an input takes `Sensitive<T>`: the provider schema marks it
/// sensitive. A write-only `_wo` input is too — its value stays out of
/// state, not out of `main.tf.json`.
bool takesSensitive(Attribute attr) => attr.constraints.sensitive;

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
