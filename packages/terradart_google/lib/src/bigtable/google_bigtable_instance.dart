// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

/// One cluster block on `google_bigtable_instance`.
class BigtableInstanceCluster {
  const BigtableInstanceCluster({
    required this.clusterId,
    this.zone,
    this.numNodes,
    this.storageType,
    this.kmsKeyName,
  });

  final TfArg<String> clusterId;
  final TfArg<String>? zone;
  final TfArg<num>? numNodes;
  final TfArg<BigtableClusterStorageType>? storageType;
  final TfArg<String>? kmsKeyName;

  Map<String, Object?> toArgMap() => {
    'cluster_id': clusterId.toTfJson(),
    if (zone != null) 'zone': zone!.toTfJson(),
    if (numNodes != null) 'num_nodes': numNodes!.toTfJson(),
    if (storageType != null) 'storage_type': storageType!.toTfJson(),
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
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
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (cluster != null)
             'cluster': TfArg.literal(
               cluster.map((c) => c.toArgMap()).toList(),
             ),
           if (displayName != null) 'display_name': displayName,
           if (instanceType != null) 'instance_type': instanceType,
           if (edition != null) 'edition': edition,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableInstanceSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
