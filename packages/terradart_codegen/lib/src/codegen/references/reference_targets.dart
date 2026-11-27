import 'dart:io';

import 'package:yaml/yaml.dart';

import '../../parser/mm_yaml_parser.dart';
import '../naming.dart';
import 'resolved_reference.dart';

export 'resolved_reference.dart';

final class ReferenceRule {
  const ReferenceRule({
    required this.target,
    required this.attribute,
    required this.slots,
    this.types,
    this.attributes = const {},
    this.exclude = const {},
    this.withKeys = const [],
    this.inherited = false,
  });

  final String target;

  final String attribute;

  final RegExp slots;

  final RegExp? types;

  final Map<String, String> attributes;

  final Set<String> exclude;

  final List<String> withKeys;

  final bool inherited;
}

final class MmReferenceRule {
  const MmReferenceRule({this.attributes = const {}, this.exclude = const {}});

  final Map<String, String> attributes;

  final Set<String> exclude;
}

final class ParentReferenceRule {
  const ParentReferenceRule({
    this.identity = const {},
    this.attributes = const {},
    this.names = const {},
    this.exclude = const {},
  });

  final Map<String, String> identity;

  final Map<String, String> attributes;

  final Map<String, String> names;

  final Set<String> exclude;
}

ParentReferenceRule? loadParentReferenceRule(
  String path,
  String providerSource,
) {
  final doc = loadYaml(
    File(path).readAsStringSync(),
    sourceUrl: Uri.file(path),
  );
  final section = doc is YamlMap ? doc[providerSource] : null;
  if (section is! YamlList) return null;
  for (final (i, raw) in section.indexed) {
    if (raw is! YamlMap || !raw.containsKey('parents')) continue;
    final context = '$path: $providerSource[$i]';
    const known = {'parents', 'identity', 'attributes', 'names', 'exclude'};
    for (final key in raw.keys) {
      if (!known.contains(key)) {
        throw FormatException('$context: unknown key "$key" beside parents');
      }
    }
    if (raw['parents'] != 'iam-adjuncts') {
      throw FormatException('$context: parents must be "iam-adjuncts"');
    }
    Map<String, String> map(String key) {
      final v = raw[key];
      if (v == null) return const {};
      if (v is! YamlMap) {
        throw FormatException('$context: "$key" must be a map');
      }
      return {for (final e in v.entries) '${e.key}': '${e.value}'};
    }

    final exclude = raw['exclude'];
    if (exclude != null && exclude is! YamlList) {
      throw FormatException('$context: "exclude" must be a list');
    }
    return ParentReferenceRule(
      identity: map('identity'),
      attributes: map('attributes'),
      names: map('names'),
      exclude: {
        if (exclude is YamlList)
          for (final e in exclude) '$e',
      },
    );
  }
  return null;
}

final class PrincipalRule {
  const PrincipalRule({
    required this.slots,
    this.types,
    this.className = principalClassName,
  });

  final RegExp slots;

  final String className;

  final RegExp? types;
}

PrincipalRule? loadPrincipalRule(String path, String providerSource) {
  final doc = loadYaml(
    File(path).readAsStringSync(),
    sourceUrl: Uri.file(path),
  );
  final section = doc is YamlMap ? doc[providerSource] : null;
  if (section is! YamlList) return null;
  for (final (i, raw) in section.indexed) {
    if (raw is! YamlMap || !raw.containsKey('principals')) continue;
    final context = '$path: $providerSource[$i]';
    for (final key in raw.keys) {
      if (!const {'principals', 'slots', 'types'}.contains(key)) {
        throw FormatException('$context: unknown key "$key" beside principals');
      }
    }
    final className = raw['principals'];
    if (className is! String || !principalTypes.containsKey(className)) {
      throw FormatException(
        '$context: principals must be one of '
        '${principalTypes.keys.map((k) => '"$k"').join(', ')}',
      );
    }
    final slots = raw['slots'];
    final types = raw['types'];
    if (slots is! String || (types != null && types is! String)) {
      throw FormatException(
        '$context: principals needs a "slots" pattern and an optional '
        '"types" pattern',
      );
    }
    return PrincipalRule(
      slots: RegExp(slots),
      types: types is String ? RegExp(types) : null,
      className: className,
    );
  }
  return null;
}

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
      else if (!_isSectionEntry(raw))
        _parseRule(raw, context: '$path: $providerSource[$i]'),
  ];
}

bool _isSectionEntry(Object? raw) =>
    raw is YamlMap &&
    (raw.containsKey('mm') ||
        raw.containsKey('parents') ||
        raw.containsKey('principals'));

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
      else if (_isSectionEntry(rule))
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
    'with',
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
  final withKeys = raw['with'];
  if (withKeys != null && withKeys is! YamlList) {
    throw FormatException('$context: "with" must be a list');
  }
  return ReferenceRule(
    target: target,
    attribute: requireString('attribute'),
    slots: RegExp(requireString('slots')),
    types: raw.containsKey('types') ? RegExp(requireString('types')) : null,
    attributes: attributes,
    exclude: exclude,
    withKeys: [
      if (withKeys is YamlList)
        for (final k in withKeys) '$k',
    ],
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
    withKeys: withKeys,
    inherited: true,
  );
}

typedef ExternalTargets = ({
  Map<String, Map<String, dynamic>> resourceSchemas,
  Map<String, Map<String, dynamic>> dataSourceSchemas,
  Map<String, String> dirs,
  String package,
});

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

final class ReferenceResolution {
  const ReferenceResolution({
    required this.byResource,
    required this.errors,
    this.byDataSource = const {},
    this.principal,
    this.principalResources = const {},
    this.principalDataSources = const {},
  });

  final ResolvedReference? principal;

  final Set<String> principalResources;
  final Set<String> principalDataSources;

  final Map<String, Map<String, ResolvedReference>> byResource;

  final Map<String, Map<String, ResolvedReference>> byDataSource;

  final List<String> errors;

  int get slotCount => [
    ...byResource.values,
    ...byDataSource.values,
  ].fold(0, (sum, slots) => sum + slots.length);
}

ReferenceResolution resolveReferences({
  required List<ReferenceRule> rules,
  required Map<String, Map<String, dynamic>> resourceSchemas,
  required Iterable<String> curated,
  required Map<String, String> targetDirs,
  Map<String, Map<String, dynamic>> dataSourceSchemas = const {},
  ExternalTargets? external,
  MmReferenceRule? mmRule,
  Map<String, MmResourceOverrides> mm = const {},
  ParentReferenceRule? parentRule,
  PrincipalRule? principalRule,
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

  ({
    String dir,
    Map<String, dynamic> block,
    Map<String, dynamic>? data,
    String? package,
  })?
  targetOf(String target) {
    if ((targetDirs[target], resourceSchemas[target]) case (
      final dir?,
      final block?,
    )) {
      return (
        dir: dir,
        block: block,
        data: dataSourceSchemas[target],
        package: null,
      );
    }
    if (external == null) return null;
    if ((external.dirs[target], external.resourceSchemas[target]) case (
      final dir?,
      final block?,
    )) {
      return (
        dir: dir,
        block: block,
        data: external.dataSourceSchemas[target],
        package: external.package,
      );
    }
    return null;
  }

  bool Function(String) exportedBy(
    Map<String, dynamic> block,
    Map<String, dynamic>? data,
  ) {
    final names = _attributeNames(block);
    final dataNames = data == null ? null : _attributeNames(data);
    return (a) => names.contains(a) && (dataNames?.contains(a) ?? true);
  }

  final principal = principalRule == null
      ? null
      : ResolvedReference.principal(
          list: false,
          package: external?.package,
          className: principalRule.className,
        );
  final principalResources = <String>{};
  final principalDataSources = <String>{};
  if (principalRule != null) {
    var matched = false;
    for (final MapEntry(key: (:type, :data), value: slots) in inputs.entries) {
      final at = data ? 'data.$type' : type;
      if (principalRule.types case final types? when !types.hasMatch(at)) {
        continue;
      }
      for (final MapEntry(key: path, value: list) in slots.entries) {
        if (!principalRule.slots.hasMatch(path)) continue;
        matched = true;
        claimedBy['$at.$path'] = 'principals';
        ((data ? byDataSource : byResource)[type] ??=
            {})[path] = ResolvedReference.principal(
          list: list,
          package: external?.package,
          className: principalRule.className,
        );
      }
    }
    if (complete && !matched) {
      errors.add('principals: the entry matches no curated input');
    }
    if (principalRule.className == principalClassName) {
      for (final type in curated) {
        if (_hasPrincipal(resourceSchemas[type])) principalResources.add(type);
      }
      for (final MapEntry(key: type, value: block)
          in dataSourceSchemas.entries) {
        if (_hasPrincipal(block)) principalDataSources.add(type);
      }
    }
  }

  if (parentRule != null) {
    final parents = <String>{};
    for (final type in curated) {
      final parent = _iamAdjunct.firstMatch(type)?[1];
      final slots = inputs[(type: type, data: false)];
      if (parent == null || slots == null) continue;
      final target = targetOf(parent);
      if (target == null) continue;
      parents.add(parent);
      if (parentRule.exclude.contains(parent)) continue;
      final keys = [
        for (final MapEntry(key: path, value: list) in slots.entries)
          if (!list && !path.contains('.') && !_iamKeys.contains(path)) path,
      ];
      final identity =
          parentRule.identity[parent] ?? _parentIdentity(parent, keys);
      if (identity == null || !keys.contains(identity)) {
        errors.add(
          identity == null
              ? '$type: no key of ${keys.join(', ')} tells which $parent it '
                    'grants on; add an identity entry'
              : 'parents: identity "$identity" is not a key of $type',
        );
        continue;
      }
      final exported = exportedBy(target.block, target.data);
      final attribute =
          parentRule.attributes[parent] ??
          (exported(identity) ? identity : 'name');
      if (!exported(attribute)) {
        errors.add(
          'parents: $type emits "$attribute", which $parent (or its data '
          'source) does not export',
        );
        continue;
      }
      final absorbed = attribute == 'id'
          ? const <String>[]
          : [
              for (final key in keys)
                if (key != identity && exported(key)) key,
            ];
      final dartName =
          parentRule.names[parent] ?? _parentDartName(parent, identity);
      final clash = keys
          .where((k) => k != identity && snakeToDartIdent(k) == dartName)
          .firstOrNull;
      if (clash != null) {
        errors.add(
          'parents: $type names the $parent argument "$dartName", which is '
          'also its "$clash" input; add a names entry',
        );
        continue;
      }
      for (final key in [identity, ...absorbed]) {
        claimedBy['$type.$key'] = 'parents';
      }
      (byResource[type] ??= {})[identity] = ResolvedReference(
        target: parent,
        className: snakeToPascal(parent),
        outputDir: target.dir,
        package: target.package,
        attribute: attribute,
        list: false,
        dartName: dartName == snakeToDartIdent(identity) ? null : dartName,
        absorbed: absorbed,
      );
    }
    if (complete) {
      for (final (axis, keys) in [
        ('identity', parentRule.identity.keys),
        ('attributes', parentRule.attributes.keys),
        ('names', parentRule.names.keys),
        ('exclude', parentRule.exclude),
      ]) {
        for (final key in keys) {
          if (!parents.contains(key)) {
            errors.add(
              'parents: $axis entry "$key" is not the curated parent of a '
              'curated IAM adjunct',
            );
          }
        }
      }
    }
  }

  final inheritedMatched = <String>{};
  for (final rule in rules) {
    final resolved = targetOf(rule.target);
    if (resolved == null) {
      errors.add('${rule.target}: target is not a curated resource');
      continue;
    }
    final (dir: targetDir, block: targetBlock, data: targetData, :package) =
        resolved;
    final exported = exportedBy(targetBlock, targetData);
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
        if (type == rule.target && !path.contains('.')) continue;
        final key = data ? 'data.$type.$path' : '$type.$path';
        final twin = '$type.$path';
        if (claimedBy[key] case 'parents' || 'principals') continue;
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
        final absorbed = data || path.contains('.')
            ? const <String>[]
            : [
                for (final k in rule.withKeys)
                  if (slots[k] == false && exported(k)) k,
              ];
        for (final k in absorbed) {
          final other = claimedBy['$type.$k'];
          if (other != null) {
            errors.add(
              '$type.$k: filled by ${rule.target} and matched by $other',
            );
          }
          claimedBy['$type.$k'] = rule.target;
        }
        ((data ? byDataSource : byResource)[type] ??=
            {})[path] = ResolvedReference(
          target: rule.target,
          className: snakeToPascal(rule.target),
          outputDir: targetDir,
          package: package,
          attribute:
              rule.attributes[key] ?? rule.attributes[twin] ?? rule.attribute,
          list: list,
          absorbed: absorbed,
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
    principal: principal,
    principalResources: principalResources,
    principalDataSources: principalDataSources,
  );
}

bool _hasPrincipal(Map<String, dynamic>? block) {
  final member = (block?['attributes'] as Map?)?['member'];
  return member is Map &&
      member['type'] == 'string' &&
      member['computed'] == true &&
      member['optional'] != true &&
      member['required'] != true;
}

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

String? _mmProductPrefix(String type, String? name) {
  if (name == null) return null;
  final suffix = mmSnakeCase(name);
  if (!type.endsWith('_$suffix')) return null;
  return type.substring(0, type.length - suffix.length);
}

String mmSnakeCase(String camel) => camel
    .replaceAllMapped(RegExp('(?<=[a-z0-9])([A-Z])'), (m) => '_${m[1]}')
    .toLowerCase();

final _iamAdjunct = RegExp(r'^(.+)_iam_(?:member|binding|policy)$');

const _iamKeys = {'id', 'role', 'member', 'members', 'policy_data'};

const _positionalKeys = {'location', 'region', 'zone', 'project'};

String? _parentIdentity(String parent, List<String> keys) {
  final named = [
    for (final k in keys)
      if (!_positionalKeys.contains(k)) k,
  ];
  if (named.length == 1) return named.single;
  final segments = parent.split('_');
  final spellings = {
    'name',
    for (var i = 1; i < segments.length; i++)
      for (final suffix in const ['', '_id', '_name'])
        '${segments.sublist(i).join('_')}$suffix',
  };
  final candidates = named.where(spellings.contains).toList();
  return candidates.length == 1 ? candidates.single : null;
}

String _parentDartName(String parent, String identity) => identity == 'name'
    ? snakeToDartIdent(parent.split('_').last)
    : snakeToDartIdent(identity.replaceFirst(RegExp(r'_(id|name)$'), ''));

Set<String> _attributeNames(Map<String, dynamic> block) =>
    ((block['attributes'] as Map?)?.keys.cast<String>() ?? const <String>[])
        .toSet();
