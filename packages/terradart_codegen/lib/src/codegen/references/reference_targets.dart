import 'dart:io';

import 'package:yaml/yaml.dart';

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
    this.attributes = const {},
    this.exclude = const {},
  });

  /// Terraform type the inputs reference (`google_compute_network`).
  final String target;

  /// The target's attribute an input emits unless [attributes] says
  /// otherwise (`id`, `self_link`, `arn`, `email`).
  final String attribute;

  /// Matched against an input's dotted path from the resource root
  /// (`network`, `network_interface.subnetwork`).
  final RegExp slots;

  /// `<resource type>.<path>` → the attribute that input emits instead.
  /// The same input of the type's data source follows the entry; a
  /// `data.<type>.<path>` key sets a data source input alone.
  final Map<String, String> attributes;

  /// `<resource type>.<path>` inputs that match [slots] but name something
  /// else (an Ethereum network, a bare contact email), for the resource and
  /// its data source; `data.<type>.<path>` for a data source input alone.
  final Set<String> exclude;
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
      _parseRule(raw, context: '$path: $providerSource[$i]'),
  ];
}

ReferenceRule _parseRule(Object? raw, {required String context}) {
  if (raw is! YamlMap) throw FormatException('$context: expected a map');
  const known = {'target', 'attribute', 'slots', 'attributes', 'exclude'};
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
  final attributes = raw['attributes'];
  if (attributes != null && attributes is! YamlMap) {
    throw FormatException('$context ($target): "attributes" must be a map');
  }
  final exclude = raw['exclude'];
  if (exclude != null && exclude is! YamlList) {
    throw FormatException('$context ($target): "exclude" must be a list');
  }
  return ReferenceRule(
    target: target,
    attribute: requireString('attribute'),
    slots: RegExp(requireString('slots')),
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

/// A resource input typed `RefTo<className>`.
final class ResolvedReference {
  const ResolvedReference({
    required this.target,
    required this.className,
    required this.outputDir,
    required this.attribute,
    required this.list,
  });

  final String target;
  final String className;

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

  for (final rule in rules) {
    final targetDir = targetDirs[rule.target];
    final targetBlock = resourceSchemas[rule.target];
    if (targetDir == null || targetBlock == null) {
      errors.add('${rule.target}: target is not a curated resource');
      continue;
    }
    final targetAttributes = _attributeNames(targetBlock);
    final dataAttributes = dataSourceSchemas[rule.target] == null
        ? null
        : _attributeNames(dataSourceSchemas[rule.target]!);
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
          attribute:
              rule.attributes[key] ?? rule.attributes[twin] ?? rule.attribute,
          list: list,
        );
      }
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

Set<String> _attributeNames(Map<String, dynamic> block) =>
    ((block['attributes'] as Map?)?.keys.cast<String>() ?? const <String>[])
        .toSet();
