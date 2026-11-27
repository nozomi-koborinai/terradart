// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

const _fingerprintFalsePositives = <String, String>{
  'google_compute_security_policy':
      'handwritten with provider-wide effective_labels; no mmv1 YAML (probed 2026-06)',
  'google_project':
      'handwritten with provider-wide effective_labels; no mmv1 YAML (probed 2026-06)',
  'google_cloudbuild_worker_pool':
      'DCL/tpgtools-generated, not mmv1 (probed 2026-06)',
  'google_bigtable_instance':
      'third_party go + meta.yaml; no mmv1/products/bigtable/Instance.yaml',
  'google_compute_network_peering':
      'third_party resource_compute_network_peering.go',
  'google_compute_router_peer':
      'no mmv1/products/compute/RouterPeer.yaml (sync 404)',
  'google_dataplex_zone': 'MM Zone.yaml is IAM-only (exclude_resource: true)',
  'google_dataplex_asset': 'MM Asset.yaml is IAM-only (exclude_resource: true)',
  'google_recaptcha_enterprise_key':
      'third_party resource_recaptcha_enterprise_key.go',
  'google_composer_environment':
      'third_party resource_composer_environment.go.tmpl; no mmv1/products/composer/Environment.yaml',
  'google_composer_user_workloads_secret':
      'third_party resource_composer_user_workloads_secret.go.tmpl; no mmv1 YAML',
  'google_dataproc_cluster':
      'third_party resource_dataproc_cluster.go; no mmv1/products/dataproc/Cluster.yaml',
  'google_dataproc_job':
      'third_party resource_dataproc_job.go; no mmv1/products/dataproc/Job.yaml (404, probed 2026-07-25)',
  'google_dataproc_workflow_template':
      'third_party resource_dataproc_workflow_template.go.tmpl; no mmv1/products/dataproc/WorkflowTemplate.yaml (404, probed 2026-08-14)',
  'google_dataflow_job':
      'third_party resource_dataflow_job.go; mmv1/products/dataflow has product.yaml only (404, probed 2026-07-25)',
  'google_dataflow_flex_template_job':
      'third_party resource_dataflow_flex_template_job.go; mmv1/products/dataflow has product.yaml only (probed 2026-11-03)',
  'google_apigee_api':
      'handwritten mmv1/third_party/terraform/services/apigee; no mmv1/products/apigee/<Resource>.yaml (404, probed 2026-07-25)',
  'google_apigee_sharedflow':
      'handwritten mmv1/third_party/terraform/services/apigee; no mmv1/products/apigee/<Resource>.yaml (404, probed 2026-07-25)',
  'google_apigee_sharedflow_deployment':
      'handwritten mmv1/third_party/terraform/services/apigee; no mmv1/products/apigee/<Resource>.yaml (404, probed 2026-07-25)',
  'google_apigee_flowhook':
      'handwritten mmv1/third_party/terraform/services/apigee; no mmv1/products/apigee/<Resource>.yaml (404, probed 2026-07-25)',
  'google_apigee_environment_debugmask':
      'handwritten mmv1/third_party/terraform/services/apigee; no mmv1/products/apigee/<Resource>.yaml (404, probed 2026-07-25)',
  'google_apigee_keystores_aliases_key_cert_file':
      'handwritten mmv1/third_party/terraform/services/apigee; no mmv1/products/apigee/<Resource>.yaml (404, probed 2026-07-25)',
  'google_apigee_keystores_aliases_pkcs12':
      'handwritten mmv1/third_party/terraform/services/apigee; no mmv1/products/apigee/<Resource>.yaml (404, probed 2026-07-25)',
  'google_container_aws_cluster':
      'DCL/third_party under mmv1/third_party/terraform/services/containeraws; product.yaml only (404, probed 2026-07-25)',
  'google_container_aws_node_pool':
      'DCL/third_party under mmv1/third_party/terraform/services/containeraws; product.yaml only (404, probed 2026-07-25)',
  'google_container_azure_cluster':
      'DCL/third_party under mmv1/third_party/terraform/services/containerazure; product.yaml only (404, probed 2026-07-25)',
  'google_container_azure_node_pool':
      'DCL/third_party under mmv1/third_party/terraform/services/containerazure; product.yaml only (404, probed 2026-07-25)',
  'google_network_connectivity_internal_range':
      'no mmv1/products/networkconnectivity/InternalRange.yaml (404, probed 2026-08-11)',
  'google_compute_instance_from_template':
      'third_party resource_compute_instance_from_template.go.tmpl; no mmv1/products/compute/InstanceFromTemplate.yaml (404, probed 2026-08-12)',
  'google_assured_workloads_workload':
      'mmv1/products/assuredworkloads has product.yaml only (404, probed 2026-08-15)',
  'google_compute_region_instance_template':
      'handwritten third_party region_instance_template.go.tmpl; no RegionInstanceTemplate.yaml',
  'google_apikeys_key':
      'DCL->handwritten third_party resource_apikeys_key.go; mmv1/products/apikeys has product.yaml only (8.4.0 067aeb86)',
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
    stderr.writeln(
      'check_google_mm_fingerprint: tool/mm_yaml_sources.yaml '
      'not found (run from repo root)',
    );
    exit(2);
  }
  final manifest = loadYaml(manifestFile.readAsStringSync()) as YamlMap;
  final files = manifest['files'] as YamlMap;

  final schema =
      jsonDecode(
            File(
              'packages/terradart_codegen/test/fixtures/wrap/source/schema.json',
            ).readAsStringSync(),
          )
          as Map<String, dynamic>;
  final providerSchemas = schema['provider_schemas'] as Map<String, dynamic>;
  final resourceSchemas =
      (providerSchemas.values.first as Map<String, dynamic>)['resource_schemas']
          as Map<String, dynamic>;

  final violations = <String>[];
  var nullCount = 0;
  for (final entry in files.entries) {
    final tfType = entry.key.toString();
    final spec = entry.value as YamlMap;
    if (spec['upstream'] != null) continue;
    nullCount++;
    if (_isIamAdjunct(tfType)) continue;
    if (_fingerprintFalsePositives.containsKey(tfType)) continue;
    final rs = resourceSchemas[tfType] as Map<String, dynamic>?;
    if (rs == null) continue;
    if (_hasFingerprint(rs)) violations.add(tfType);
  }

  if (violations.isEmpty) {
    print(
      'check_google_mm_fingerprint: OK '
      '($nullCount null entries; 0 suspected mislabels)',
    );
    exit(0);
  }

  violations.sort();
  stderr.writeln(
    'check_google_mm_fingerprint: ${violations.length} suspected '
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
