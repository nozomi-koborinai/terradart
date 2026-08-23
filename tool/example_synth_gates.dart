// example_synth_gates.dart — synth every quickstart once and run machine gates.
//
// - Coverage v2: curated factory tfTypes (GA + google-beta + appwrite) must
//   appear in synth output (or tool/example_debt.yaml by className). Reasons
//   containing `iam-adjunct-debt:` additionally require *IamBinding/*IamPolicy
//   + sibling *IamMember in synth.
// - API enablement: when an example enables APIs via google_project_service,
//   EVERY resource requiring an API must have its API enabled in the same
//   stack (or be listed in tool/example_api_debt.yaml) and transitively
//   depend on the enabling service. Examples that enable nothing are exempt
//   (documented manual-enablement mode) — the gate ratchets as examples
//   migrate to `Apis.enable`.
//
// Run from repo root: dart tool/example_synth_gates.dart
// Pass --skip-validate to skip the terraform init/validate pass (CI runs the
// per-example terraform validate matrix separately).
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'terraform_api_requirements.dart';

const _projectId = 'ci-test-project-id';

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

  for (final slug in quickstarts) {
    final json = await synthExample(slug, errors);
    if (json == null) continue;
    synthByExample[slug] = json;
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
    print('example terraform validate: skipped (--skip-validate)');
  } else {
    await _checkTerraformValidate(errors, quickstarts);
  }

  print(
    'example synth: ${quickstarts.length} quickstarts, '
    '${allResourceTypes.length} resource + ${allDataTypes.length} data '
    'tfTypes in synth output',
  );
}

/// Runs `terraform init` + `terraform validate` on each quickstart's synth
/// output. Catches nested-block shape mistakes that synth-only coverage
/// misses (e.g. wrong keys inside `destination_dataset`).
Future<void> _checkTerraformValidate(
  List<String> errors,
  List<String> quickstarts,
) async {
  final which = await Process.run('which', ['terraform']);
  if (which.exitCode != 0) {
    print('example terraform validate: skipped (terraform not on PATH)');
    return;
  }

  var validated = 0;
  for (final slug in quickstarts) {
    final tfOut = Directory('examples/$slug/tf-out');
    final mainTf = File('${tfOut.path}/main.tf.json');
    if (!mainTf.existsSync()) {
      errors.add(
        'examples/$slug: missing tf-out/main.tf.json before terraform validate',
      );
      continue;
    }
    final init = await Process.run(
      'terraform',
      ['init', '-backend=false', '-input=false', '-reconfigure'],
      workingDirectory: tfOut.path,
    );
    if (init.exitCode != 0) {
      errors.add(
        'examples/$slug: terraform init failed (exit ${init.exitCode})\n'
        '${init.stderr}',
      );
      continue;
    }
    final validate = await Process.run(
      'terraform',
      ['validate'],
      workingDirectory: tfOut.path,
    );
    if (validate.exitCode != 0) {
      errors.add(
        'examples/$slug: terraform validate failed (exit ${validate.exitCode})\n'
        '${validate.stderr}',
      );
      continue;
    }
    validated++;
  }
  print(
    'example terraform validate: $validated/${quickstarts.length} quickstarts OK',
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

/// Synths `examples/<slug>` (`dart run bin/infra.dart` with CI-safe env) and
/// returns the decoded `tf-out/main.tf.json`, appending to [errors] and
/// returning null on failure. Shared with check_example_topology.dart so
/// every gate synths examples exactly the same way.
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
  final result = await Process.run(
    'dart',
    ['run', 'bin/infra.dart'],
    workingDirectory: dir.path,
    environment: {
      'GCP_PROJECT_ID': _projectId,
      // Placeholder for synth-only quickstarts that read secrets from env.
      'DB_PASSWORD':
          Platform.environment['DB_PASSWORD'] ?? 'ci-synth-placeholder',
    },
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
  final catalogPaths = [
    'packages/terradart_google/lib/src/_catalog.g.dart',
    'packages/terradart_google_beta/lib/src/_catalog.g.dart',
    'packages/terradart_appwrite/lib/src/_catalog.g.dart',
  ];
  final factories = <({String tfType, String className, String kind})>[];
  final catalogClasses = <String>{};
  // dart format may wrap long `tfType:` string literals onto the next line.
  final tfRe = RegExp(
    r"tfType:\s*'([^']+)'[\s\S]*?className:\s*'([^']+)'[\s\S]*?kind:\s*CatalogKind\.(\w+)",
  );
  for (final path in catalogPaths) {
    final catalog = File(path);
    if (!catalog.existsSync()) {
      errors.add('Missing $path');
      return;
    }
    for (final m in tfRe.allMatches(catalog.readAsStringSync())) {
      catalogClasses.add(m.group(2)!);
      factories.add(
        (tfType: m.group(1)!, className: m.group(2)!, kind: m.group(3)!),
      );
    }
  }

  final debt = _exampleDebt(errors);
  final classToTfType = {
    for (final f in factories) f.className: f.tfType,
  };
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
  for (final entry in debt.entries) {
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

/// Enforces AGENTS.md IAM binding/policy debt path when [reason] contains
/// `iam-adjunct-debt:`: class must be `*IamBinding`/`*IamPolicy`, sibling
/// `*IamMember` must be curated, and sibling `tfType` must appear in synth.
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
    sibling = '${className.substring(0, className.length - 'IamPolicy'.length)}'
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

  final nodes = <String, String>{}; // address -> terraform type
  for (final typeEntry in resources.entries) {
    final tfType = typeEntry.key.toString();
    final instances = typeEntry.value;
    if (instances is! Map) continue;
    for (final localName in instances.keys) {
      nodes['$tfType.$localName'] = tfType;
    }
  }

  final edges = <String, Set<String>>{};
  void addEdge(String from, String to) {
    if (!nodes.containsKey(from) || !nodes.containsKey(to)) return;
    edges.putIfAbsent(from, () => {}).add(to);
  }

  final enabledApis =
      <String, Set<String>>{}; // api -> project_service addresses
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
          enabledApis.putIfAbsent(service, () => {}).add(address);
        }
      }
    }
  }

  for (final address in nodes.keys) {
    final tfType = nodes[address]!;
    final api = requiredApiForTerraformType(tfType);
    if (api == null) continue;
    final enablers = enabledApis[api];
    if (enablers == null || enablers.isEmpty) {
      // Ratchet: examples that enable nothing run in documented
      // manual-enablement mode and are exempt. An example that enables SOME
      // APIs claims self-sufficiency, so every API-gated resource must have
      // its API enabled too — a partial barrel list otherwise fails only at
      // first apply with SERVICE_DISABLED (the Wave 32 secretmanager gap).
      if (enabledApis.isNotEmpty && !apiDebt.containsKey('$slug:$api')) {
        errors.add(
          'examples/$slug: $address requires $api but the example does not '
          'enable it (it enables ${enabledApis.keys.join(', ')}). Add the '
          'matching barrel to Apis.enable, or record '
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

/// Parses `tool/example_api_debt.yaml` (`<slug>:<api>: <reason>` lines).
Map<String, String> _apiEnablementDebt(List<String> errors) {
  final file = File('tool/example_api_debt.yaml');
  if (!file.existsSync()) return const {};
  final entries = <String, String>{};
  for (final raw in file.readAsLinesSync()) {
    final line = raw.trim();
    if (line.isEmpty || line.startsWith('#')) continue;
    // Key itself contains one ':' (slug:api), so split on the LAST ':'.
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

/// Flags debt entries that no longer suppress anything (the example now
/// enables the API, or stopped using resources that need it).
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

/// True when [root] contains an API-gated resource needing [api] while the
/// example enables other APIs but not [api] — i.e. the debt entry still
/// suppresses a real mandate.
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
