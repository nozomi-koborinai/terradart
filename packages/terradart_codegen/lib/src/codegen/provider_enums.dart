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
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// The `wrap --provider-enums` gate: enum value sets a provider documents
/// outside Magic Modules.
///
/// Two sources, in precedence order:
/// 1. `<source>/hints/<terraform_type>.yaml` — value sets extracted from the
///    provider's Go validators (`tool/extract_provider_hints.dart`), in the
///    MM YAML subset `properties[].api_name` / `enum_values`. Resources only.
/// 2. The attribute description: the dialects every lane reads
///    ([parseEnumValuesFromDescription]) plus the `Available values:`
///    dialect ([parseAvailableValues]), which the GA google schema also
///    contains and so stays behind this gate.
///
/// [off] is every lane's default and changes nothing.
final class ProviderEnums {
  const ProviderEnums._({required this.enabled, required this.hints})
    : exactlyOneGroups = const {},
      atMostOneGroups = const {},
      caseInsensitive = false,
      availableValuesDialect = false;

  /// The gate closed: no enrichment, the default description resolver.
  static const ProviderEnums off = ProviderEnums._(enabled: false, hints: {});

  /// Opens the gate over [hints] (Terraform type → dotted attribute path →
  /// values), [exactlyOneGroups] and [atMostOneGroups].
  const ProviderEnums.on({
    this.hints = const <String, Map<String, List<String>>>{},
    this.exactlyOneGroups = const <String, List<List<String>>>{},
    this.atMostOneGroups = const <String, List<List<String>>>{},
    this.caseInsensitive = true,
    this.availableValuesDialect = true,
  }) : enabled = true;

  /// `wrap --mm-hints`: the same gate with Magic Modules YAML as the hint
  /// source — each resource's `enum_values` by path, its `exactly_one_of`
  /// groups ([MmResourceOverrides.exactlyOneOfPaths]) and its `conflicts`
  /// sets ([MmResourceOverrides.atMostOneOfPaths]).
  /// Magic Modules validators match case-sensitively, and the google
  /// schema's `Available values:` prose has no validator behind it, so the
  /// description dialects stay the ones every lane reads.
  factory ProviderEnums.fromMm(Map<String, MmResourceOverrides> mm) =>
      ProviderEnums.on(
        hints: {
          for (final MapEntry(:key, :value) in mm.entries)
            key: value.enumValuesByPath,
        },
        exactlyOneGroups: {
          for (final MapEntry(:key, :value) in mm.entries)
            if (value.exactlyOneOfPaths.isNotEmpty)
              key: value.exactlyOneOfPaths,
        },
        atMostOneGroups: {
          for (final MapEntry(:key, :value) in mm.entries)
            if (value.atMostOneOfPaths.isNotEmpty) key: value.atMostOneOfPaths,
        },
        caseInsensitive: false,
        availableValuesDialect: false,
      );

  /// `wrap --mm-groups`: only the `exactly_one_of` / `conflicts` groups of
  /// [ProviderEnums.fromMm], for a lane whose enum typing comes from the
  /// merged IR instead (google GA). The gate stays closed, so the
  /// resolver, [enrich] and [typeDerivedEnums] behave as [off] does.
  factory ProviderEnums.mmGroups(Map<String, MmResourceOverrides> mm) {
    final all = ProviderEnums.fromMm(mm);
    return ProviderEnums._groups(
      exactlyOneGroups: all.exactlyOneGroups,
      atMostOneGroups: all.atMostOneGroups,
    );
  }

  /// Whether any exclusive-group source is loaded. Without one, no group
  /// exists to match, so a `sealedNames` key cannot be judged stale.
  bool get hasGroupSource =>
      enabled || exactlyOneGroups.isNotEmpty || atMostOneGroups.isNotEmpty;

  const ProviderEnums._groups({
    required this.exactlyOneGroups,
    required this.atMostOneGroups,
  }) : enabled = false,
       hints = const {},
       caseInsensitive = false,
       availableValuesDialect = false;

  /// Reads `<sourceDir>/hints/*.yaml` (a missing directory means no hints).
  ///
  /// Throws [FormatException] when a file is malformed or its
  /// `provider_version` differs from [providerVersion] — hints extracted at
  /// another release would type the wrappers against the wrong validators.
  factory ProviderEnums.load(
    String sourceDir, {
    required String providerVersion,
  }) {
    final dir = Directory(p.join(sourceDir, 'hints'));
    final hints = <String, Map<String, List<String>>>{};
    final groups = <String, List<List<String>>>{};
    final atMostOne = <String, List<List<String>>>{};
    if (dir.existsSync()) {
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
        hints[type] = {
          for (final e
              in const MmYamlParser().parseString(src).fieldOverrides.entries)
            if (e.value.enumValues != null) e.key: e.value.enumValues!,
        };
        for (final (key, sink) in [
          ('exactly_one_of_groups', groups),
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
    }
    return ProviderEnums.on(
      hints: hints,
      exactlyOneGroups: groups,
      atMostOneGroups: atMostOne,
    );
  }

  final bool enabled;
  final Map<String, Map<String, List<String>>> hints;

  /// Whether the provider matches enum values case-insensitively (its
  /// validators are `OneOfCaseInsensitive`), recorded in the migration
  /// manifest.
  final bool caseInsensitive;

  /// Whether the resolver also reads the `Available values:` description
  /// dialect ([parseAvailableValues]).
  final bool availableValuesDialect;

  /// Terraform type → the input sets the provider requires exactly one of,
  /// each a list of dotted paths from the resource root that share one
  /// parent block (`hints/*.yaml` `exactly_one_of_groups`).
  final Map<String, List<List<String>>> exactlyOneGroups;

  /// [terraformType]'s exactly-one groups keyed by their parent block's
  /// dotted path (`''` for the resource's own arguments), members as bare
  /// names.
  Map<String, List<List<String>>> exactlyOneGroupsByBlock(
    String terraformType,
  ) => _byBlock(exactlyOneGroups[terraformType]);

  /// Terraform type → the mutually exclusive input sets the provider also
  /// accepts none of (at most one), in the shape of [exactlyOneGroups]
  /// (`hints/*.yaml` `at_most_one_of_groups`).
  final Map<String, List<List<String>>> atMostOneGroups;

  /// [atMostOneGroups] of [terraformType] keyed like
  /// [exactlyOneGroupsByBlock].
  Map<String, List<List<String>>> atMostOneGroupsByBlock(
    String terraformType,
  ) => _byBlock(atMostOneGroups[terraformType]);

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

  /// [exactlyOneGroupsByBlock] for the nested blocks of an override that
  /// sets `deriveExactlyOne` (empty otherwise), as `collectNestedTypes`
  /// takes them.
  Map<String, List<List<String>>> nestedExactlyOneGroups(
    String terraformType,
    WrapperOverride? override,
  ) {
    if (!(override?.deriveExactlyOne ?? false)) return const {};
    return exactlyOneGroupsByBlock(terraformType)..remove('');
  }

  /// [nestedExactlyOneGroups] for the at-most-one groups.
  Map<String, List<List<String>>> nestedAtMostOneGroups(
    String terraformType,
    WrapperOverride? override,
  ) {
    if (!(override?.deriveExactlyOne ?? false)) return const {};
    return atMostOneGroupsByBlock(terraformType)..remove('');
  }

  /// The nested-type collector's resolver for [terraformType] (null for a
  /// data source, which has no hints).
  EnumValuesResolver resolver(String? terraformType) {
    if (!enabled) return descriptionEnumValues;
    final typeHints = hints[terraformType] ?? const <String, List<String>>{};
    return (path, description) =>
        typeHints[path.join('.')] ??
        parseEnumValuesFromDescription(description) ??
        (availableValuesDialect ? parseAvailableValues(description) : null);
  }

  /// [ir] with `enumValues` filled on every top-level string or
  /// list-of-string input that has none yet. Computed-only attributes stay untouched: they have no
  /// constructor parameter to type.
  ProviderSchemaIR enrich(ProviderSchemaIR ir) {
    if (!enabled) return ir;
    return ProviderSchemaIR(
      providerName: ir.providerName,
      providerSource: ir.providerSource,
      providerVersion: ir.providerVersion,
      resources: {
        for (final e in ir.resources.entries)
          e.key: _enrich(e.value, resolver(e.key)),
      },
      dataSources: {
        for (final e in ir.dataSources.entries)
          e.key: _enrich(e.value, resolver(null)),
      },
    );
  }

  /// [overrides] with a `dartTypeOverrides` entry naming the derived enum
  /// for every `deriveEnums` top-level string attribute of [ir] that carries
  /// `enumValues` — so the constructor parameter takes the enum the wrapper
  /// declares — and `List<TfArg<Enum>>` for a list or set of strings, the
  /// element-wise shape nested helpers use ([isEnumListType]). An explicit
  /// `dartTypeOverrides` entry or a custom slot wins.
  Map<String, WrapperOverride> typeDerivedEnums(
    Map<String, WrapperOverride> overrides,
    Map<String, ResourceDef> defs,
  ) {
    if (!enabled) return overrides;
    return {
      for (final e in overrides.entries)
        e.key: _typeDerivedEnums(e.value, defs[e.key]),
    };
  }

  WrapperOverride _typeDerivedEnums(WrapperOverride o, ResourceDef? def) {
    if (!o.deriveEnums || def == null) return o;
    final explicit = o.dartTypeOverrides ?? const <String, String>{};
    final slots = o.customSlots ?? const <String, CustomSlot>{};
    final derived = <String, String>{
      for (final attr in def.root.attributes)
        if (_isStringish(attr.type) &&
            attr.constraints.enumValues != null &&
            !explicit.containsKey(attr.name) &&
            !slots.containsKey(attr.name))
          attr.name: _enumSlotType(
            attr,
            enumName(
              resourceType: def.terraformType,
              fieldPath: attr.name,
              members: attr.constraints.enumValues!,
            ).dartName,
          ),
    };
    if (derived.isEmpty) return o;
    return o.withDartTypeOverrides({...derived, ...explicit});
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
/// (`List<TfArg<Enum>>`): the constructor takes it bare, not in a `TfArg`,
/// and the argMap encodes it element by element.
bool isEnumListType(String dartType) => dartType.startsWith('List<TfArg<');

bool _isStringish(TypeDef t) => switch (t) {
  StringType() => true,
  ListType(:final element) || SetType(:final element) => element is StringType,
  _ => false,
};

String _enumSlotType(Attribute attr, String enumType) =>
    attr.type is StringType ? enumType : 'List<TfArg<$enumType>>';

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
