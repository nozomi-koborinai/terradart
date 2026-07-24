// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_edgecontainer_node_pool`.
const Set<String> _googleEdgecontainerNodePoolSensitive = <String>{};

/// Typed helper for the `local_disk_encryption` block of
/// `google_edgecontainer_node_pool` (derived from provider schema).
@immutable
final class EdgecontainerNodePoolLocalDiskEncryption {
  const EdgecontainerNodePoolLocalDiskEncryption({this.kmsKey});

  final TfArg<String>? kmsKey;

  Map<String, Object?> encode() => {
    if (kmsKey != null) 'kms_key': kmsKey!.toTfJson(),
  };
}

/// Typed helper for the `node_config` block of
/// `google_edgecontainer_node_pool` (derived from provider schema).
@immutable
final class EdgecontainerNodePoolNodeConfig {
  const EdgecontainerNodePoolNodeConfig({this.labels});

  final TfArg<Map<String, String>>? labels;

  Map<String, Object?> encode() => {
    if (labels != null) 'labels': labels!.toTfJson(),
  };
}

/// Factory wrapper for `google_edgecontainer_node_pool`.
///
/// "A set of Kubernetes nodes in a cluster with common configuration and
/// specification."
///
/// Google Distributed Cloud Edge **node pool** — worker nodes for a
/// [GoogleEdgecontainerCluster].
///
/// **Cost / apply:** Same GDCE hardware commitment surface as the parent
/// cluster (`8A2D-5CB1-345B`, e.g. Connected Server Gen1 SKU
/// `007E-2D86-E472` **$3600/mo**). Requires a real edge cluster and
/// physical machines absent on `terradart-validate` — ships without a
/// quickstart (`tool/example_debt.yaml`). **Never** wire into apply-smoke.
///
/// Enable `edgecontainer.googleapis.com` via [GoogleProjectService] before
/// apply. [cluster] is the parent cluster name; [nodeLocation] is a GDCE
/// zone (e.g. `us-central1-edge-customer-a`).
final class GoogleEdgecontainerNodePool extends Resource {
  static const String tfType = 'google_edgecontainer_node_pool';

  GoogleEdgecontainerNodePool({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> cluster,
    required TfArg<String> location,
    required TfArg<String> nodeLocation,
    required TfArg<num> nodeCount,
    EdgecontainerNodePoolNodeConfig? nodeConfig,
    EdgecontainerNodePoolLocalDiskEncryption? localDiskEncryption,
    TfArg<String>? machineFilter,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'cluster': cluster,
           'location': location,
           'node_location': nodeLocation,
           'node_count': nodeCount,
           if (nodeConfig != null)
             'node_config': TfArg.literal(nodeConfig.encode()),
           if (localDiskEncryption != null)
             'local_disk_encryption': TfArg.literal(
               localDiskEncryption.encode(),
             ),
           if (machineFilter != null) 'machine_filter': machineFilter,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEdgecontainerNodePoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `node_version` attribute.
  TfRef<String> get nodeVersion =>
      TfRef.attribute<String>(this, 'node_version');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
