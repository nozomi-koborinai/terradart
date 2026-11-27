// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

import 'example_synth_env.dart';
import 'lane_surface.dart';
import 'readme_excerpts.dart';
import 'terraform_api_requirements.dart';
import 'validate_engine.dart';
import 'wrap_lanes.dart';

Future<void> main(List<String> args) async {
  final errors = <String>[];
  await runExampleSynthGates(
    errors,
    skipValidate: args.contains('--skip-validate'),
  );
  if (errors.isEmpty) {
    print('example_synth_gates: OK');
    exit(0);
  }
  stderr.writeln('example_synth_gates: FAILED');
  for (final e in errors) {
    stderr.writeln('  - $e');
  }
  exit(1);
}

Future<void> runExampleSynthGates(
  List<String> errors, {
  bool skipValidate = false,
}) async {
  final quickstarts = _quickstartSlugs();
  final synthByExample = <String, Map<String, dynamic>>{};
  final allResourceTypes = <String>{};
  final allDataTypes = <String>{};

  final scheduled = [...quickstarts]
    ..sort((a, b) {
      final al = a.endsWith('_leftover_quickstart') ? 0 : 1;
      final bl = b.endsWith('_leftover_quickstart') ? 0 : 1;
      if (al != bl) return al.compareTo(bl);
      return a.compareTo(b);
    });
  final synthResults =
      <String, ({Map<String, dynamic>? json, List<String> errors})>{};
  final workers = Platform.numberOfProcessors.clamp(1, scheduled.length);
  var next = 0;
  Future<void> worker() async {
    while (true) {
      final i = next++;
      if (i >= scheduled.length) return;
      final slug = scheduled[i];
      final slugErrors = <String>[];
      final json = await synthExample(slug, slugErrors);
      synthResults[slug] = (json: json, errors: slugErrors);
    }
  }

  if (scheduled.isNotEmpty) {
    await Future.wait([for (var w = 0; w < workers; w++) worker()]);
  }

  for (final slug in quickstarts) {
    final result = synthResults[slug]!;
    errors.addAll(result.errors);
    final json = result.json;
    if (json == null) continue;
    synthByExample[slug] = json;
    checkReadmeExcerpts(slug, json, errors);
    allResourceTypes.addAll(_resourceTfTypes(json));
    allDataTypes.addAll(_dataTfTypes(json));
  }

  _checkSynthCoverage(errors, allResourceTypes, allDataTypes);
  final apiDebt = _apiEnablementDebt(errors);
  for (final entry in synthByExample.entries) {
    checkApiEnablement(entry.key, entry.value, errors, apiDebt: apiDebt);
  }
  _checkStaleApiDebt(errors, synthByExample, apiDebt);
  if (skipValidate) {
    print('example validate: skipped (--skip-validate)');
  } else {
    await _checkValidate(errors, quickstarts);
  }

  print(
    'example synth: ${quickstarts.length} quickstarts, '
    '${allResourceTypes.length} resource + ${allDataTypes.length} data '
    'tfTypes in synth output',
  );
}

Future<void> _checkValidate(
  List<String> errors,
  List<String> quickstarts,
) async {
  final tofu = await resolveOpenTofu();
  final terraform = (await Process.run('which', ['terraform'])).exitCode == 0
      ? 'terraform'
      : null;
  if (tofu == null && terraform == null) {
    print(
      'example validate: skipped (no OpenTofu from terradart engine, and no '
      'terraform on PATH)',
    );
    return;
  }
  if (tofu == null) {
    stderr.writeln(
      'example validate: warning: validating with terraform on PATH; CI '
      'validates with OpenTofu.',
    );
  }

  final byEngine = <String, int>{};
  final skipped = <String>[];
  for (final slug in quickstarts) {
    final tfOut = Directory('examples/$slug/tf-out');
    final mainTf = File('${tfOut.path}/main.tf.json');
    if (!mainTf.existsSync()) {
      errors.add('examples/$slug: missing tf-out/main.tf.json before validate');
      continue;
    }
    final json = jsonDecode(mainTf.readAsStringSync()) as Map<String, dynamic>;
    final String? engine;
    if (providersNotOnOpenTofu(json).isNotEmpty) {
      engine = terraform;
    } else {
      engine = tofu ?? terraform;
    }
    if (engine == null) {
      skipped.add(slug);
      continue;
    }
    final name = engine == terraform ? 'terraform' : 'tofu';
    final init = await Process.run(engine, [
      'init',
      '-backend=false',
      '-input=false',
      '-reconfigure',
    ], workingDirectory: tfOut.path);
    if (init.exitCode != 0) {
      errors.add(
        'examples/$slug: $name init failed (exit ${init.exitCode})\n'
        '${init.stderr}',
      );
      continue;
    }
    final validate = await Process.run(engine, [
      'validate',
    ], workingDirectory: tfOut.path);
    if (validate.exitCode != 0) {
      errors.add(
        'examples/$slug: $name validate failed (exit ${validate.exitCode})\n'
        '${validate.stderr}',
      );
      continue;
    }
    byEngine.update(name, (n) => n + 1, ifAbsent: () => 1);
  }
  final counts = [for (final e in byEngine.entries) '${e.value} with ${e.key}'];
  print(
    'example validate: ${byEngine.values.fold(0, (a, b) => a + b)}/'
    '${quickstarts.length} quickstarts OK (${counts.join(', ')})'
    '${skipped.isEmpty ? '' : '; skipped ${skipped.join(', ')} (provider not on the OpenTofu registry, no terraform on PATH)'}',
  );
}

List<String> _quickstartSlugs() {
  return Directory('examples')
      .listSync()
      .whereType<Directory>()
      .map((d) => d.path.split(Platform.pathSeparator).last)
      .where((name) => name.endsWith('_quickstart'))
      .toList()
    ..sort();
}

Future<Map<String, dynamic>?> synthExample(
  String slug,
  List<String> errors,
) async {
  final dir = Directory('examples/$slug');
  final infra = File('examples/$slug/bin/infra.dart');
  if (!infra.existsSync()) {
    errors.add('examples/$slug: missing bin/infra.dart');
    return null;
  }
  if (!RegExp(
    r'\b(runStack|runEnvironments)\(',
  ).hasMatch(infra.readAsStringSync())) {
    errors.add(
      'examples/$slug/bin/infra.dart: call runStack (or runEnvironments) '
      'instead of writing the Stack yourself',
    );
  }
  final result = await Process.run(
    'dart',
    ['run', 'bin/infra.dart'],
    workingDirectory: dir.path,
    environment: exampleSynthEnvironment,
  );
  if (result.exitCode != 0) {
    errors.add(
      'examples/$slug: synth failed (exit ${result.exitCode})\n'
      '${result.stderr}',
    );
    return null;
  }
  final out = File('examples/$slug/tf-out/main.tf.json');
  if (!out.existsSync()) {
    errors.add('examples/$slug: missing tf-out/main.tf.json after synth');
    return null;
  }
  return jsonDecode(out.readAsStringSync()) as Map<String, dynamic>;
}

Set<String> _resourceTfTypes(Map<String, dynamic> root) {
  final resources = root['resource'];
  if (resources is! Map) return const {};
  return resources.keys.map((k) => k.toString()).toSet();
}

Set<String> _dataTfTypes(Map<String, dynamic> root) {
  final data = root['data'];
  if (data is! Map) return const {};
  return data.keys.map((k) => k.toString()).toSet();
}

void _checkSynthCoverage(
  List<String> errors,
  Set<String> synthResourceTypes,
  Set<String> synthDataTypes,
) {
  final lanes = parseWrapLanes(File(providersPath).readAsStringSync());
  final factories = <({String tfType, String className, String kind})>[];
  final catalogClasses = <String>{};
  for (final path in laneCatalogPaths(lanes)) {
    final catalog = File(path);
    if (!catalog.existsSync()) {
      errors.add('Missing $path');
      return;
    }
    for (final entry in parseCatalogEntries(catalog.readAsStringSync())) {
      catalogClasses.add(entry.className);
      factories.add((
        tfType: entry.tfType,
        className: entry.className,
        kind: entry.kind,
      ));
    }
  }

  final debt = _exampleDebt(errors);
  final classToTfType = {for (final f in factories) f.className: f.tfType};
  var covered = 0;
  for (final f in factories) {
    final used = f.kind == 'dataSource'
        ? synthDataTypes.contains(f.tfType)
        : synthResourceTypes.contains(f.tfType);
    if (used) covered++;
    final listed = debt.containsKey(f.className);
    if (!used && !listed) {
      errors.add(
        'example coverage (synth): ${f.className} (${f.tfType}) not in any '
        'quickstart synth output; extend an example or add tool/example_debt.yaml',
      );
    } else if (used && listed) {
      errors.add(
        'tool/example_debt.yaml: stale entry ${f.className} '
        '(now in synth output — remove the line)',
      );
    }
  }
  for (final name in debt.keys) {
    if (!catalogClasses.contains(name)) {
      errors.add('tool/example_debt.yaml: unknown catalog class $name');
    }
  }
  final backlog = File('tool/curation_backlog.yaml');
  final backlogTypes = backlog.existsSync()
      ? backlogKeys(backlog.readAsStringSync())
      : <String>{};
  final classToKey = {
    for (final f in factories) f.className: '${f.kind}:${f.tfType}',
  };
  for (final entry in debt.entries) {
    checkAwaitingExampleEntry(
      className: entry.key,
      reason: entry.value,
      catalogKey: classToKey[entry.key],
      backlogTypes: backlogTypes,
      errors: errors,
    );
    checkIamAdjunctDebtEntry(
      className: entry.key,
      reason: entry.value,
      catalogClasses: catalogClasses,
      classToTfType: classToTfType,
      synthTfTypes: synthResourceTypes,
      errors: errors,
    );
  }
  print(
    'example coverage (synth): ${factories.length} factories, '
    '$covered in synth output, ${debt.length} in tool/example_debt.yaml',
  );
}

Set<String> backlogKeys(String source) {
  final doc = loadYaml(source);
  final entries = doc is YamlMap ? doc['entries'] : null;
  return {
    if (entries is YamlList)
      for (final e in entries.whereType<YamlMap>()) ...[
        if (e['resource'] case final String t) 'resource:$t',
        if (e['data_source'] case final String t) 'dataSource:$t',
      ],
  };
}

void checkAwaitingExampleEntry({
  required String className,
  required String reason,
  required String? catalogKey,
  required Set<String> backlogTypes,
  required List<String> errors,
}) {
  if (!reason.contains('awaiting-example:') || catalogKey == null) return;
  if (!backlogTypes.contains(catalogKey)) {
    errors.add(
      'tool/example_debt.yaml: $className is awaiting-example: but '
      '${catalogKey.substring(catalogKey.indexOf(':') + 1)} has no '
      'tool/curation_backlog.yaml entry',
    );
  }
}

void checkIamAdjunctDebtEntry({
  required String className,
  required String reason,
  required Set<String> catalogClasses,
  required Map<String, String> classToTfType,
  required Set<String> synthTfTypes,
  required List<String> errors,
}) {
  if (!reason.contains('iam-adjunct-debt:')) return;

  final String? sibling;
  if (className.endsWith('IamBinding')) {
    sibling =
        '${className.substring(0, className.length - 'IamBinding'.length)}'
        'IamMember';
  } else if (className.endsWith('IamPolicy')) {
    sibling =
        '${className.substring(0, className.length - 'IamPolicy'.length)}'
        'IamMember';
  } else {
    errors.add(
      'tool/example_debt.yaml: $className uses iam-adjunct-debt: but is not '
      '*IamBinding/*IamPolicy',
    );
    return;
  }

  if (!catalogClasses.contains(sibling)) {
    errors.add(
      'tool/example_debt.yaml: $className iam-adjunct-debt: sibling $sibling '
      'is not in the catalog',
    );
    return;
  }

  final siblingTf = classToTfType[sibling];
  if (siblingTf == null || !synthTfTypes.contains(siblingTf)) {
    errors.add(
      'tool/example_debt.yaml: $className iam-adjunct-debt: sibling $sibling '
      '(${siblingTf ?? 'no tfType'}) is not in any quickstart synth output',
    );
  }
}

Map<String, String> _exampleDebt(List<String> errors) {
  final file = File('tool/example_debt.yaml');
  if (!file.existsSync()) return const {};
  final entries = <String, String>{};
  for (final raw in file.readAsLinesSync()) {
    final line = raw.trim();
    if (line.isEmpty || line.startsWith('#')) continue;
    final sep = line.indexOf(':');
    if (sep <= 0) {
      errors.add('tool/example_debt.yaml: unparsable line "$raw"');
      continue;
    }
    final name = line.substring(0, sep).trim();
    final reason = line.substring(sep + 1).trim();
    if (reason.isEmpty) {
      errors.add('tool/example_debt.yaml: $name needs a reason');
      continue;
    }
    entries[name] = reason;
  }
  return entries;
}

void checkApiEnablement(
  String slug,
  Map<String, dynamic> root,
  List<String> errors, {
  Map<String, String> apiDebt = const {},
}) {
  final resources = root['resource'];
  if (resources is! Map) return;

  final tfTypeByAddress = <String, String>{};
  for (final typeEntry in resources.entries) {
    final tfType = typeEntry.key.toString();
    final instances = typeEntry.value;
    if (instances is! Map) continue;
    for (final localName in instances.keys) {
      tfTypeByAddress['$tfType.$localName'] = tfType;
    }
  }

  final edges = <String, Set<String>>{};
  void addEdge(String from, String to) {
    if (!tfTypeByAddress.containsKey(from) ||
        !tfTypeByAddress.containsKey(to)) {
      return;
    }
    edges.putIfAbsent(from, () => {}).add(to);
  }

  final enablersByApi = <String, Set<String>>{};
  for (final typeEntry in resources.entries) {
    final tfType = typeEntry.key.toString();
    final instances = typeEntry.value;
    if (instances is! Map) continue;
    for (final localEntry in instances.entries) {
      final localName = localEntry.key.toString();
      final body = localEntry.value;
      if (body is! Map) continue;
      final address = '$tfType.$localName';

      final dependsOn = body['depends_on'];
      if (dependsOn is List) {
        for (final dep in dependsOn) {
          addEdge(address, dep.toString());
        }
      }
      _walkRefs(body, (ref) => addEdge(address, ref));

      if (tfType == 'google_project_service') {
        final service = body['service']?.toString();
        if (service != null && service.isNotEmpty) {
          enablersByApi.putIfAbsent(service, () => {}).add(address);
        }
      }
    }
  }

  for (final address in tfTypeByAddress.keys) {
    final tfType = tfTypeByAddress[address]!;
    final api = requiredApiForTerraformType(tfType);
    if (api == null) continue;
    final enablers = enablersByApi[api];
    if (enablers == null || enablers.isEmpty) {
      if (enablersByApi.isNotEmpty && !apiDebt.containsKey('$slug:$api')) {
        errors.add(
          'examples/$slug: $address requires $api but the example does not '
          'enable it (it enables ${enablersByApi.keys.join(', ')}). Add a '
          'GoogleProjectService for it, or record '
          '"$slug:$api: <reason>" in tool/example_api_debt.yaml',
        );
      }
      continue;
    }

    final reachable = _reachableFrom(address, edges);
    if (!enablers.any(reachable.contains)) {
      errors.add(
        'examples/$slug: $address requires $api but does not transitively '
        'depend on a google_project_service that enables it '
        '(expected depends_on/ref path to one of: ${enablers.join(', ')})',
      );
    }
  }
}

Map<String, String> _apiEnablementDebt(List<String> errors) {
  final file = File('tool/example_api_debt.yaml');
  if (!file.existsSync()) return const {};
  final entries = <String, String>{};
  for (final raw in file.readAsLinesSync()) {
    final line = raw.trim();
    if (line.isEmpty || line.startsWith('#')) continue;
    final sep = line.lastIndexOf(': ');
    if (sep <= 0) {
      errors.add('tool/example_api_debt.yaml: unparsable line "$raw"');
      continue;
    }
    final key = line.substring(0, sep).trim();
    final reason = line.substring(sep + 1).trim();
    if (!key.contains(':') || reason.isEmpty) {
      errors.add(
        'tool/example_api_debt.yaml: entry must be "<slug>:<api>: <reason>" '
        '(got "$raw")',
      );
      continue;
    }
    entries[key] = reason;
  }
  return entries;
}

void _checkStaleApiDebt(
  List<String> errors,
  Map<String, Map<String, dynamic>> synthByExample,
  Map<String, String> apiDebt,
) {
  for (final key in apiDebt.keys) {
    final sep = key.indexOf(':');
    final slug = key.substring(0, sep);
    final api = key.substring(sep + 1);
    final root = synthByExample[slug];
    if (root == null) {
      errors.add('tool/example_api_debt.yaml: unknown example in "$key"');
      continue;
    }
    if (!_wouldMandate(root, api)) {
      errors.add(
        'tool/example_api_debt.yaml: stale entry "$key" '
        '(the example now satisfies it — remove the line)',
      );
    }
  }
}

bool _wouldMandate(Map<String, dynamic> root, String api) {
  final resources = root['resource'];
  if (resources is! Map) return false;
  var enablesAny = false;
  var enablesThis = false;
  var needsThis = false;
  for (final typeEntry in resources.entries) {
    final tfType = typeEntry.key.toString();
    if (tfType == 'google_project_service') {
      final instances = typeEntry.value;
      if (instances is Map) {
        for (final body in instances.values) {
          if (body is! Map) continue;
          enablesAny = true;
          if (body['service']?.toString() == api) enablesThis = true;
        }
      }
      continue;
    }
    if (requiredApiForTerraformType(tfType) == api) needsThis = true;
  }
  return enablesAny && needsThis && !enablesThis;
}

void _walkRefs(dynamic node, void Function(String ref) emit) {
  if (node is String) {
    final re = RegExp(r'\$\{([^.}]+)\.([^}.]+)');
    for (final m in re.allMatches(node)) {
      emit('${m.group(1)}.${m.group(2)}');
    }
  } else if (node is Map) {
    for (final v in node.values) {
      _walkRefs(v, emit);
    }
  } else if (node is List) {
    for (final v in node) {
      _walkRefs(v, emit);
    }
  }
}

Set<String> _reachableFrom(String start, Map<String, Set<String>> edges) {
  final seen = <String>{start};
  final queue = [start];
  while (queue.isNotEmpty) {
    final current = queue.removeLast();
    for (final next in edges[current] ?? const <String>{}) {
      if (seen.add(next)) queue.add(next);
    }
  }
  return seen;
}
