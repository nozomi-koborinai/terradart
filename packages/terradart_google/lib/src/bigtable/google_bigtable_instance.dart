// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_bigtable_instance`.
const Set<String> _googleBigtableInstanceSensitive = <String>{};

/// `instance_type` on `google_bigtable_instance`.
enum BigtableInstanceType implements TerraformEnum {
  development('DEVELOPMENT'),
  production('PRODUCTION');

  const BigtableInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `edition` on `google_bigtable_instance`.
enum BigtableInstanceEdition implements TerraformEnum {
  enterprise('ENTERPRISE'),
  enterprisePlus('ENTERPRISE_PLUS');

  const BigtableInstanceEdition(this.terraformValue);
  @override
  final String terraformValue;
}

/// `storage_type` on a Bigtable cluster.
enum BigtableClusterStorageType implements TerraformEnum {
  ssd('SSD'),
  hdd('HDD');

  const BigtableClusterStorageType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cluster` block of
/// `google_bigtable_instance` (derived from provider schema).
@immutable
final class BigtableInstanceCluster {
  const BigtableInstanceCluster({
    required this.clusterId,
    this.kmsKeyName,
    this.nodeScalingFactor,
    this.numNodes,
    this.storageType,
    this.zone,
    this.autoscalingConfig,
  });

  final TfArg<String> clusterId;

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<String>? nodeScalingFactor;

  final TfArg<num>? numNodes;

  final TfArg<BigtableClusterStorageType>? storageType;

  final TfArg<String>? zone;

  final BigtableInstanceAutoscalingConfig? autoscalingConfig;

  Map<String, Object?> encode() => {
    'cluster_id': clusterId.toTfJson(),
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'node_scaling_factor': ?nodeScalingFactor?.toTfJson(),
    'num_nodes': ?numNodes?.toTfJson(),
    'storage_type': ?storageType?.toTfJson(),
    'zone': ?zone?.toTfJson(),
    'autoscaling_config': ?autoscalingConfig?.encode(),
  };
}

/// Typed helper for the `cluster.autoscaling_config` block of
/// `google_bigtable_instance` (derived from provider schema).
@immutable
final class BigtableInstanceAutoscalingConfig {
  const BigtableInstanceAutoscalingConfig({
    required this.cpuTarget,
    required this.maxNodes,
    required this.minNodes,
    this.storageTarget,
  });

  final TfArg<num> cpuTarget;

  final TfArg<num> maxNodes;

  final TfArg<num> minNodes;

  final TfArg<num>? storageTarget;

  Map<String, Object?> encode() => {
    'cpu_target': cpuTarget.toTfJson(),
    'max_nodes': maxNodes.toTfJson(),
    'min_nodes': minNodes.toTfJson(),
    'storage_target': ?storageTarget?.toTfJson(),
  };
}

/// Factory wrapper for `google_bigtable_instance`.
///
/// Cloud Bigtable instance — the top-level container for clusters and tables.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: instance ID (6-33 chars, lowercase letters, numbers, hyphens).
/// - [cluster]: at least one [BigtableInstanceCluster] (zone + node count).
///
/// Enable `bigtableadmin.googleapis.com` via [Apis.enable] before apply.
///
/// Example (single-zone development instance):
/// ```dart
/// GoogleBigtableInstance(
///   localName: 'events',
///   name: TfArg.literal('events-dev'),
///   instanceType: TfArg.literal(BigtableInstanceType.development),
///   cluster: [
///     BigtableInstanceCluster(
///       clusterId: TfArg.literal('events-c1'),
///       zone: TfArg.literal('us-central1-b'),
///       numNodes: TfArg.literal(1),
///     ),
///   ],
/// );
/// ```
final class GoogleBigtableInstance extends Resource {
  static const String tfType = 'google_bigtable_instance';

  GoogleBigtableInstance({
    required super.localName,
    required TfArg<String> name,
    List<BigtableInstanceCluster>? cluster,
    TfArg<String>? displayName,
    TfArg<BigtableInstanceType>? instanceType,
    TfArg<BigtableInstanceEdition>? edition,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<bool>? forceDestroy,
    TfArg<String>? project,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (cluster != null)
             'cluster': TfArg.literal([for (final e in cluster) e.encode()]),
           'display_name': ?displayName,
           'instance_type': ?instanceType,
           'edition': ?edition,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'force_destroy': ?forceDestroy,
           'project': ?project,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableInstanceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableInstance>`.
  RefTo<GoogleBigtableInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `edition` attribute.
  TfRef<String> get edition => TfRef.attribute<String>(this, 'edition');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
