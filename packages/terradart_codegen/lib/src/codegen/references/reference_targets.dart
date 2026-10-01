import 'dart:io';

import 'package:yaml/yaml.dart';

import '../../parser/mm_yaml_parser.dart';
import '../naming.dart';

/// One rule of the reference-target ledger (`tool/reference_targets.yaml`):
/// every string input whose dotted path matches [slots] names a [target]
/// resource and emits its [attribute], unless [attributes] picks another
/// attribute for that input or [exclude] leaves it a plain string.
final class ReferenceRule {
  const ReferenceRule({
    required this.target,
    required this.attribute,
    required this.slots,
    this.types,
    this.attributes = const {},
    this.exclude = const {},
    this.inherited = false,
  });

  /// Terraform type the inputs reference (`google_compute_network`).
  final String target;

  /// The target's attribute an input emits unless [attributes] says
  /// otherwise (`id`, `self_link`, `arn`, `email`).
  final String attribute;

  /// Matched against an input's dotted path from the resource root
  /// (`network`, `network_interface.subnetwork`).
  final RegExp slots;

  /// When set, only the inputs of resource and data source types it matches
  /// (`^appwrite_mysql_`), for a path several targets share.
  final RegExp? types;

  /// `<resource type>.<path>` → the attribute that input emits instead.
  /// The same input of the type's data source follows the entry; a
  /// `data.<type>.<path>` key sets a data source input alone.
  final Map<String, String> attributes;

  /// `<resource type>.<path>` inputs that match [slots] but name something
  /// else (an Ethereum network, a bare contact email), for the resource and
  /// its data source; `data.<type>.<path>` for a data source input alone.
  final Set<String> exclude;

  /// Loaded through another section's `inherit:`. The rule may match none
  /// of this lane's inputs, and its [attributes] / [exclude] are shared by
  /// every inherited rule, so they are checked across all of them.
  final bool inherited;
}

/// The `- mm: resource-refs` entry of a ledger section: every Magic Modules
/// `ResourceRef` input of a curated resource names the MM resource it
/// imports from, in the same product, and emits the attribute it imports —
/// unless an explicit rule claims the input first, [attributes] picks
/// another attribute or [exclude] leaves it a string.
final class MmReferenceRule {
  const MmReferenceRule({this.attributes = const {}, this.exclude = const {}});

  /// `<resource type>.<path>` → the attribute that input emits instead.
  final Map<String, String> attributes;

  /// `<resource type>.<path>` inputs that stay strings.
  final Set<String> exclude;
}

/// The `- mm: resource-refs` entry of [providerSource]'s section, or null.
MmReferenceRule? loadMmReferenceRule(String path, String providerSource) {
  final doc = loadYaml(
    File(path).readAsStringSync(),
    sourceUrl: Uri.file(path),
  );
  final section = doc is YamlMap ? doc[providerSource] : null;
  if (section is! YamlList) return null;
  for (final (i, raw) in section.indexed) {
    if (raw is! YamlMap || !raw.containsKey('mm')) continue;
    final context = '$path: $providerSource[$i]';
    for (final key in raw.keys) {
      if (!const {'mm', 'attributes', 'exclude'}.contains(key)) {
        throw FormatException('$context: unknown key "$key" beside mm');
      }
    }
    if (raw['mm'] != 'resource-refs') {
      throw FormatException('$context: mm must be "resource-refs"');
    }
    final (:attributes, :exclude) = _exceptions(raw, context: context);
    return MmReferenceRule(attributes: attributes, exclude: exclude);
  }
  return null;
}

/// Loads the rules of [providerSource] (`hashicorp/google`) from the ledger
/// at [path]; an empty list when the ledger has no section for it.
List<ReferenceRule> loadReferenceRules(String path, String providerSource) {
  final file = File(path);
  if (!file.existsSync()) {
    throw FormatException('reference-target ledger not found: $path');
  }
  final doc = loadYaml(file.readAsStringSync(), sourceUrl: Uri.file(path));
  if (doc is! YamlMap) {
    throw FormatException('$path: expected a map of provider sources');
  }
  final section = doc[providerSource];
  if (section == null) return const [];
  if (section is! YamlList) {
    throw FormatException('$path: $providerSource must be a list of rules');
  }
  return [
    for (final (i, raw) in section.indexed)
      if (raw is YamlMap && raw.containsKey('inherit'))
        ..._inheritRules(doc, raw, context: '$path: $providerSource[$i]')
      else if (raw is! YamlMap || !raw.containsKey('mm'))
        _parseRule(raw, context: '$path: $providerSource[$i]'),
  ];
}

/// `- inherit: <provider source>`: that section's rules, targeting the
/// other lane's resources, with this entry's `attributes` / `exclude` in
/// place of theirs (which name the other lane's inputs).
List<ReferenceRule> _inheritRules(
  YamlMap doc,
  YamlMap raw, {
  required String context,
}) {
  for (final key in raw.keys) {
    if (!const {'inherit', 'attributes', 'exclude'}.contains(key)) {
      throw FormatException('$context: unknown key "$key" beside inherit');
    }
  }
  final source = raw['inherit'];
  final section = doc[source];
  if (source is! String || section is! YamlList) {
    throw FormatException('$context: inherit names no section: $source');
  }
  final (:attributes, :exclude) = _exceptions(raw, context: context);
  return [
    for (final (i, rule) in section.indexed)
      if (rule is YamlMap && rule.containsKey('inherit'))
        throw FormatException('$context: $source[$i] inherits in turn')
      else if (rule is YamlMap && rule.containsKey('mm'))
        ...const <ReferenceRule>[]
      else
        _parseRule(
          rule,
          context: '$context -> $source[$i]',
        ).inherit(attributes: attributes, exclude: exclude),
  ];
}

({Map<String, String> attributes, Set<String> exclude}) _exceptions(
  YamlMap raw, {
  required String context,
}) {
  final attributes = raw['attributes'];
  if (attributes != null && attributes is! YamlMap) {
    throw FormatException('$context: "attributes" must be a map');
  }
  final exclude = raw['exclude'];
  if (exclude != null && exclude is! YamlList) {
    throw FormatException('$context: "exclude" must be a list');
  }
  return (
    attributes: {
      if (attributes is YamlMap)
        for (final e in attributes.entries) '${e.key}': '${e.value}',
    },
    exclude: {
      if (exclude is YamlList)
        for (final e in exclude) '$e',
    },
  );
}

ReferenceRule _parseRule(Object? raw, {required String context}) {
  if (raw is! YamlMap) throw FormatException('$context: expected a map');
  const known = {
    'target',
    'attribute',
    'slots',
    'types',
    'attributes',
    'exclude',
  };
  for (final key in raw.keys) {
    if (!known.contains(key)) {
      throw FormatException('$context: unknown key "$key"');
    }
  }
  String requireString(String key) {
    final v = raw[key];
    if (v is! String || v.isEmpty) {
      throw FormatException('$context: "$key" must be a non-empty string');
    }
    return v;
  }

  final target = requireString('target');
  final (:attributes, :exclude) = _exceptions(
    raw,
    context: '$context ($target)',
  );
  return ReferenceRule(
    target: target,
    attribute: requireString('attribute'),
    slots: RegExp(requireString('slots')),
    types: raw.containsKey('types') ? RegExp(requireString('types')) : null,
    attributes: attributes,
    exclude: exclude,
  );
}

extension on ReferenceRule {
  ReferenceRule inherit({
    required Map<String, String> attributes,
    required Set<String> exclude,
  }) => ReferenceRule(
    target: target,
    attribute: attribute,
    slots: slots,
    types: types,
    attributes: attributes,
    exclude: exclude,
    inherited: true,
  );
}

/// Another lane's resources that inherited rules target: its schema blocks,
/// its wrappers' directories under `lib/src/`, and its package name.
typedef ExternalTargets = ({
  Map<String, Map<String, dynamic>> resourceSchemas,
  Map<String, Map<String, dynamic>> dataSourceSchemas,
  Map<String, String> dirs,
  String package,
});

/// A resource input typed `RefTo<className>`.
final class ResolvedReference {
  const ResolvedReference({
    required this.target,
    required this.className,
    required this.outputDir,
    required this.attribute,
    required this.list,
    this.package,
  });

  final String target;
  final String className;

  /// The package the target wrapper lives in, when it is not the lane's own
  /// (a google-beta input naming a `terradart_google` network).
  final String? package;

  /// The target wrapper's directory under `lib/src/`, for the import.
  final String outputDir;

  /// The attribute the input emits.
  final String attribute;

  /// Whether the input is a list of references (`TfArg<List<RefTo<C>>>`).
  final bool list;

  /// The Dart parameter / field type, before nullability.
  String get dartType =>
      list ? 'TfArg<List<RefTo<$className>>>' : 'RefTo<$className>';

  /// The import that brings [className] into a wrapper under `lib/src/`.
  String get import => "import '../$outputDir/$target.dart' show $className;";
}

/// The imports that bring [refs]' classes into a wrapper under `lib/src/`:
/// one `show` list per other package, then the lane's own files, sorted
/// (`directives_ordering`).
List<String> referenceImports(Iterable<ResolvedReference> refs) {
  final byPackage = <String, Set<String>>{};
  final local = <String>{};
  for (final ref in refs) {
    if (ref.package case final package?) {
      (byPackage[package] ??= {}).add(ref.className);
    } else {
      local.add(ref.import);
    }
  }
  return [
    for (final package in byPackage.keys.toList()..sort())
      "import 'package:$package/$package.dart' "
          "show ${(byPackage[package]!.toList()..sort()).join(', ')};",
    ...local.toList()..sort(),
  ];
}

/// The ledger applied to one lane: every curated resource's and data
/// source's reference inputs, keyed by Terraform type and then dotted input
/// path.
final class ReferenceResolution {
  const ReferenceResolution({
    required this.byResource,
    required this.errors,
    this.byDataSource = const {},
  });

  final Map<String, Map<String, ResolvedReference>> byResource;

  final Map<String, Map<String, ResolvedReference>> byDataSource;

  /// Ledger entries that no longer describe the schema; wrap fails on any.
  final List<String> errors;

  int get slotCount => [
    ...byResource.values,
    ...byDataSource.values,
  ].fold(0, (sum, slots) => sum + slots.length);
}

/// Matches [rules] against the string inputs of every resource in
/// [curated] and every data source in [dataSourceSchemas], read from the
/// raw schema blocks. [targetDirs] maps each curated resource type to its
/// wrapper `outputDir`. [dataSourceSchemas] holds the curated data sources'
/// blocks: a data source that reads a target carries its `ref` getter, so
/// it must expose every attribute the inputs emit; the top-level inputs of
/// that data source are the target's lookup key, not a reference.
///
/// Unless [complete] (a `--only` run sees one resource), entries that match
/// nothing are not reported: they may match a resource outside [curated].
ReferenceResolution resolveReferences({
  required List<ReferenceRule> rules,
  required Map<String, Map<String, dynamic>> resourceSchemas,
  required Iterable<String> curated,
  required Map<String, String> targetDirs,
  Map<String, Map<String, dynamic>> dataSourceSchemas = const {},
  ExternalTargets? external,
  MmReferenceRule? mmRule,
  Map<String, MmResourceOverrides> mm = const {},
  bool complete = true,
}) {
  final errors = <String>[];
  final byResource = <String, Map<String, ResolvedReference>>{};
  final byDataSource = <String, Map<String, ResolvedReference>>{};
  final inputs = <({String type, bool data}), Map<String, bool>>{
    for (final type in curated)
      if (resourceSchemas[type] case final block?)
        (type: type, data: false): stringInputs(block),
    for (final MapEntry(key: type, value: block) in dataSourceSchemas.entries)
      (type: type, data: true): stringInputs(block),
  };
  final claimedBy = <String, String>{};

  final inheritedMatched = <String>{};
  for (final rule in rules) {
    var targetDir = targetDirs[rule.target];
    var targetBlock = resourceSchemas[rule.target];
    var targetData = dataSourceSchemas[rule.target];
    String? package;
    if ((targetDir == null || targetBlock == null) && external != null) {
      targetDir = external.dirs[rule.target];
      targetBlock = external.resourceSchemas[rule.target];
      targetData = external.dataSourceSchemas[rule.target];
      package = external.package;
    }
    if (targetDir == null || targetBlock == null) {
      errors.add('${rule.target}: target is not a curated resource');
      continue;
    }
    final targetAttributes = _attributeNames(targetBlock);
    final dataAttributes = targetData == null
        ? null
        : _attributeNames(targetData);
    void checkAttribute(String attribute, String where) {
      if (!targetAttributes.contains(attribute)) {
        errors.add(
          '${rule.target}: $where emits "$attribute", which the target '
          'does not export',
        );
      } else if (dataAttributes != null &&
          !dataAttributes.contains(attribute)) {
        errors.add(
          '${rule.target}: $where emits "$attribute", which the data source '
          '${dataSourceClassName(rule.target)} does not export',
        );
      }
    }

    checkAttribute(rule.attribute, 'the rule');
    final matched = <String>{};
    for (final MapEntry(key: (:type, :data), value: slots) in inputs.entries) {
      for (final MapEntry(key: path, value: list) in slots.entries) {
        if (!rule.slots.hasMatch(path)) continue;
        if (rule.types case final types? when !types.hasMatch(type)) continue;
        // The target's own top-level input is its identity, not a reference.
        if (type == rule.target && !path.contains('.')) continue;
        final key = data ? 'data.$type.$path' : '$type.$path';
        final twin = '$type.$path';
        matched.add(key);
        if (rule.exclude.contains(key) || rule.exclude.contains(twin)) {
          continue;
        }
        final other = claimedBy[key];
        if (other != null) {
          errors.add('$key: matched by both $other and ${rule.target}');
          continue;
        }
        claimedBy[key] = rule.target;
        ((data ? byDataSource : byResource)[type] ??=
            {})[path] = ResolvedReference(
          target: rule.target,
          className: snakeToPascal(rule.target),
          outputDir: targetDir,
          package: package,
          attribute:
              rule.attributes[key] ?? rule.attributes[twin] ?? rule.attribute,
          list: list,
        );
      }
    }
    if (rule.inherited) {
      inheritedMatched.addAll(matched);
      for (final MapEntry(key: key, value: attribute)
          in rule.attributes.entries) {
        if (matched.contains(key)) checkAttribute(attribute, '"$key"');
      }
      continue;
    }
    if (complete && matched.isEmpty) {
      errors.add('${rule.target}: the rule matches no curated input');
    }
    for (final MapEntry(key: key, value: attribute)
        in rule.attributes.entries) {
      if (!matched.contains(key)) {
        if (!complete) continue;
        errors.add(
          '${rule.target}: attributes entry "$key" is not an input the rule '
          'matches',
        );
      } else if (rule.exclude.contains(key)) {
        errors.add('${rule.target}: "$key" is both excluded and overridden');
      } else {
        checkAttribute(attribute, '"$key"');
      }
    }
    for (final key in rule.exclude) {
      if (complete && !matched.contains(key)) {
        errors.add(
          '${rule.target}: exclude entry "$key" is not an input the rule '
          'matches',
        );
      }
    }
  }
  if (mmRule != null) {
    final matched = <String>{};
    for (final type in curated) {
      final overrides = mm[type];
      final slots = inputs[(type: type, data: false)];
      if (overrides == null || slots == null) continue;
      final prefix = _mmProductPrefix(type, overrides.name);
      if (prefix == null) continue;
      for (final MapEntry(key: path, value: (:resource, :imports))
          in overrides.resourceRefs.entries) {
        final list = slots[path];
        if (list == null) continue;
        final target = '$prefix${mmSnakeCase(resource)}';
        if (target == type && !path.contains('.')) continue;
        var targetDir = targetDirs[target];
        var targetBlock = resourceSchemas[target];
        var targetData = dataSourceSchemas[target];
        String? package;
        if ((targetDir == null || targetBlock == null) && external != null) {
          targetDir = external.dirs[target];
          targetBlock = external.resourceSchemas[target];
          targetData = external.dataSourceSchemas[target];
          package = external.package;
        }
        if (targetDir == null || targetBlock == null) continue;
        final key = '$type.$path';
        matched.add(key);
        if (claimedBy.containsKey(key) || mmRule.exclude.contains(key)) {
          continue;
        }
        final attribute = mmRule.attributes[key] ?? mmSnakeCase(imports);
        final exported =
            _attributeNames(targetBlock).contains(attribute) &&
            (targetData == null ||
                _attributeNames(targetData).contains(attribute));
        if (!exported) {
          if (mmRule.attributes.containsKey(key)) {
            errors.add(
              'mm: "$key" emits "$attribute", which $target does not export',
            );
          }
          continue;
        }
        claimedBy[key] = 'mm';
        (byResource[type] ??= {})[path] = ResolvedReference(
          target: target,
          className: snakeToPascal(target),
          outputDir: targetDir,
          package: package,
          attribute: attribute,
          list: list,
        );
      }
    }
    if (complete) {
      for (final key in {...mmRule.attributes.keys, ...mmRule.exclude}) {
        if (!matched.contains(key)) {
          errors.add('mm: "$key" is not a ResourceRef input of a curated type');
        }
      }
    }
  }
  if (rules.where((r) => r.inherited).firstOrNull case final rule?
      when complete) {
    for (final key in rule.attributes.keys) {
      if (!inheritedMatched.contains(key)) {
        errors.add(
          'inherit: attributes entry "$key" is not an input an inherited rule '
          'matches',
        );
      } else if (rule.exclude.contains(key)) {
        errors.add('inherit: "$key" is both excluded and overridden');
      }
    }
    for (final key in rule.exclude) {
      if (!inheritedMatched.contains(key)) {
        errors.add(
          'inherit: exclude entry "$key" is not an input an inherited rule '
          'matches',
        );
      }
    }
  }
  return ReferenceResolution(
    byResource: byResource,
    byDataSource: byDataSource,
    errors: errors,
  );
}

/// Dotted path → whether it is a list, for every string or list/set-of-string
/// input of [block] (attributes, `block_types` and plugin-framework
/// `nested_type` objects, recursively). Computed-only attributes and the
/// `timeouts` block are not inputs.
Map<String, bool> stringInputs(Map<String, dynamic> block) {
  final out = <String, bool>{};
  void walk(Map<String, dynamic> b, String prefix) {
    final attributes = (b['attributes'] as Map?)?.cast<String, dynamic>();
    for (final MapEntry(key: name, value: raw)
        in attributes?.entries ?? const <MapEntry<String, dynamic>>[]) {
      final attr = (raw as Map).cast<String, dynamic>();
      final input = attr['optional'] == true || attr['required'] == true;
      if (!input) continue;
      final nested = attr['nested_type'];
      if (nested is Map) {
        walk(nested.cast<String, dynamic>(), '$prefix$name.');
        continue;
      }
      final type = attr['type'];
      if (type == 'string') {
        out['$prefix$name'] = false;
      } else if (type is List &&
          type.length == 2 &&
          (type[0] == 'list' || type[0] == 'set') &&
          type[1] == 'string') {
        out['$prefix$name'] = true;
      }
    }
    final blocks = (b['block_types'] as Map?)?.cast<String, dynamic>();
    for (final MapEntry(key: name, value: raw)
        in blocks?.entries ?? const <MapEntry<String, dynamic>>[]) {
      if (name == 'timeouts') continue;
      final body = (raw as Map).cast<String, dynamic>();
      walk((body['block'] as Map).cast<String, dynamic>(), '$prefix$name.');
    }
  }

  walk(block, '');
  return out;
}

/// `google_compute_` for `google_compute_router_nat`, whose MM `name` is
/// `RouterNat`; null when the type does not end with the name.
String? _mmProductPrefix(String type, String? name) {
  if (name == null) return null;
  final suffix = mmSnakeCase(name);
  if (!type.endsWith('_$suffix')) return null;
  return type.substring(0, type.length - suffix.length);
}

/// Magic Modules' lowerCamel / Pascal names as Terraform snake_case
/// (`selfLink` → `self_link`, `Hl7V2Store` → `hl7_v2_store`).
String mmSnakeCase(String camel) => camel
    .replaceAllMapped(RegExp('(?<=[a-z0-9])([A-Z])'), (m) => '_${m[1]}')
    .toLowerCase();

Set<String> _attributeNames(Map<String, dynamic> block) =>
    ((block['attributes'] as Map?)?.keys.cast<String>() ?? const <String>[])
        .toSet();
