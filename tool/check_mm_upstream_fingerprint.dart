// ignore_for_file: avoid_print
//
// Maintainer gate: catch `upstream: null` entries in tool/mm_yaml_sources.yaml
// that are almost certainly Magic-Modules-generated.
//
// Why this exists: Waves 26-32 shipped a copy-pasted
// `upstream: null # handwritten in terraform-provider-google` comment across
// ~29 resources that DO have an mmv1 YAML upstream (certificatemanager,
// privateca, alloydb, memcache, spanner, filestore, ...). A wrong null
// silently disables MM enum-drift checks for that resource — the frozen
// prelude enums then rot when upstream adds a constant.
//
// Detection (offline, schema-fixture only — no network): a resource is
// flagged when it carries an MM fingerprint yet maps to `upstream: null`:
//   - an `effective_labels` / `terraform_labels` attribute (MM labels rework), or
//   - any attribute description with MM's machine-appended
//     `Possible values: [...]` / `Default value: ...` suffix.
//
// This is a heuristic, not a prover: it cannot see label-less MM resources
// (probe the upstream path to be sure). It exists to stop the high-volume
// copy-paste class, not to certify every null.
//
// Usage: dart tool/check_mm_upstream_fingerprint.dart

import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

/// Resources that genuinely lack an mmv1 YAML but still carry an MM-style
/// fingerprint (the provider-wide labels rework gave handwritten resources
/// `effective_labels`; `cloudbuild_worker_pool` is DCL/tpgtools-generated, not
/// mmv1). Verified by upstream 404 probe (2026-06). Revisit if magic-modules
/// later adds these.
const _fingerprintFalsePositives = <String>{
  'google_compute_security_policy',
  'google_project',
  'google_cloudbuild_worker_pool',
  'google_bigtable_instance', // third_party go + meta.yaml; no mmv1/products/bigtable/Instance.yaml
  // Probed earlier; reasons live on their mm_yaml_sources.yaml entries, but
  // the listing here was missed, which silently broke the full agent gate:
  'google_compute_network_peering', // third_party resource_compute_network_peering.go
  'google_compute_router_peer', // no mmv1/products/compute/RouterPeer.yaml (sync 404)
  'google_dataplex_zone', // MM Zone.yaml is IAM-only (exclude_resource: true)
  'google_dataplex_asset', // MM Asset.yaml is IAM-only (exclude_resource: true)
  'google_recaptcha_enterprise_key', // third_party resource_recaptcha_enterprise_key.go
  'google_composer_environment', // third_party resource_composer_environment.go.tmpl; no mmv1/products/composer/Environment.yaml
  'google_composer_user_workloads_secret', // third_party resource_composer_user_workloads_secret.go.tmpl; no mmv1 YAML
  'google_dataproc_cluster', // third_party resource_dataproc_cluster.go; no mmv1/products/dataproc/Cluster.yaml (product has AutoscalingPolicy/Batch/SessionTemplate only)
};

bool _isIamAdjunct(String tfType) =>
    tfType.contains('_iam_member') ||
    tfType.contains('_iam_binding') ||
    tfType.contains('_iam_policy');

bool _hasFingerprint(Map<String, dynamic> resourceSchema) {
  final block = resourceSchema['block'] as Map<String, dynamic>?;
  if (block == null) return false;
  final attrs = block['attributes'] as Map<String, dynamic>? ?? const {};
  if (attrs.containsKey('effective_labels') ||
      attrs.containsKey('terraform_labels')) {
    return true;
  }
  for (final a in attrs.values) {
    if (a is! Map) continue;
    final desc = a['description'] as String? ?? '';
    if (desc.contains('Possible values:') || desc.contains('Default value:')) {
      return true;
    }
  }
  return false;
}

void main() {
  final manifestFile = File('tool/mm_yaml_sources.yaml');
  if (!manifestFile.existsSync()) {
    stderr.writeln('check_mm_upstream_fingerprint: tool/mm_yaml_sources.yaml '
        'not found (run from repo root)');
    exit(2);
  }
  final manifest = loadYaml(manifestFile.readAsStringSync()) as YamlMap;
  final files = manifest['files'] as YamlMap;

  final schema = jsonDecode(
    File('packages/terradart_codegen/test/fixtures/wrap/source/schema.json')
        .readAsStringSync(),
  ) as Map<String, dynamic>;
  final providerSchemas = schema['provider_schemas'] as Map<String, dynamic>;
  final resourceSchemas = (providerSchemas.values.first
      as Map<String, dynamic>)['resource_schemas'] as Map<String, dynamic>;

  final violations = <String>[];
  var nullCount = 0;
  for (final entry in files.entries) {
    final tfType = entry.key.toString();
    final spec = entry.value as YamlMap;
    if (spec['upstream'] != null) continue;
    nullCount++;
    if (_isIamAdjunct(tfType)) continue;
    if (_fingerprintFalsePositives.contains(tfType)) continue;
    final rs = resourceSchemas[tfType] as Map<String, dynamic>?;
    if (rs == null) continue; // not in the GA fixture (beta-only, data source)
    if (_hasFingerprint(rs)) violations.add(tfType);
  }

  if (violations.isEmpty) {
    print(
      'check_mm_upstream_fingerprint: OK '
      '($nullCount null entries; 0 suspected mislabels)',
    );
    exit(0);
  }

  violations.sort();
  stderr.writeln(
    'check_mm_upstream_fingerprint: ${violations.length} suspected '
    'mislabeled `upstream: null` entr${violations.length == 1 ? 'y' : 'ies'} '
    '(MM fingerprint present):',
  );
  for (final v in violations) {
    stderr.writeln('  - $v');
  }
  stderr.writeln(
    'Each likely has an mmv1/products/<product>/<Resource>.yaml upstream. '
    'Set the real path in tool/mm_yaml_sources.yaml (then run '
    'dart tool/sync_mm_yaml.dart). If genuinely handwritten despite the '
    'fingerprint, add it to _fingerprintFalsePositives with a probe note.',
  );
  exit(1);
}
