// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_instance_kubernetes_cluster`.
const Set<String>
_azurermDataProtectionBackupInstanceKubernetesClusterSensitive = <String>{};

/// Typed helper for the `backup_datasource_parameters` block of
/// `azurerm_data_protection_backup_instance_kubernetes_cluster` (derived from provider schema).
@immutable
final class DataProtectionBackupInstanceKubernetesClusterBackupDatasourceParameters {
  const DataProtectionBackupInstanceKubernetesClusterBackupDatasourceParameters({
    this.clusterScopedResourcesEnabled,
    this.excludedNamespaces,
    this.excludedResourceTypes,
    this.includedNamespaces,
    this.includedResourceTypes,
    this.labelSelectors,
    this.volumeSnapshotEnabled,
  });

  final TfArg<bool>? clusterScopedResourcesEnabled;

  final TfArg<List<String>>? excludedNamespaces;

  final TfArg<List<String>>? excludedResourceTypes;

  final TfArg<List<String>>? includedNamespaces;

  final TfArg<List<String>>? includedResourceTypes;

  final TfArg<List<String>>? labelSelectors;

  final TfArg<bool>? volumeSnapshotEnabled;

  @internal
  Map<String, Object?> encode() => {
    'cluster_scoped_resources_enabled': ?clusterScopedResourcesEnabled
        ?.toTfJson(),
    'excluded_namespaces': ?excludedNamespaces?.toTfJson(),
    'excluded_resource_types': ?excludedResourceTypes?.toTfJson(),
    'included_namespaces': ?includedNamespaces?.toTfJson(),
    'included_resource_types': ?includedResourceTypes?.toTfJson(),
    'label_selectors': ?labelSelectors?.toTfJson(),
    'volume_snapshot_enabled': ?volumeSnapshotEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_protection_backup_instance_kubernetes_cluster`.
final class AzurermDataProtectionBackupInstanceKubernetesCluster
    extends Resource {
  static const String tfType =
      'azurerm_data_protection_backup_instance_kubernetes_cluster';

  AzurermDataProtectionBackupInstanceKubernetesCluster(
    super.localName, {
    required TfArg<String> backupPolicyId,
    required TfArg<String> kubernetesClusterId,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> snapshotResourceGroupName,
    required TfArg<String> vaultId,
    DataProtectionBackupInstanceKubernetesClusterBackupDatasourceParameters?
    backupDatasourceParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_policy_id': backupPolicyId,
           'kubernetes_cluster_id': kubernetesClusterId,
           'location': location,
           'name': name,
           'snapshot_resource_group_name': snapshotResourceGroupName,
           'vault_id': vaultId,
           if (backupDatasourceParameters != null)
             'backup_datasource_parameters': TfArg.literal(
               backupDatasourceParameters.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupInstanceKubernetesClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupInstanceKubernetesCluster>`.
  RefTo<AzurermDataProtectionBackupInstanceKubernetesCluster> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `protection_state` attribute.
  TfRef<String> get protectionState =>
      TfRef.attribute<String>(this, 'protection_state');

  /// Reference to `backup_policy_id` attribute.
  TfRef<String> get backupPolicyId =>
      TfRef.attribute<String>(this, 'backup_policy_id');

  /// Reference to `kubernetes_cluster_id` attribute.
  TfRef<String> get kubernetesClusterId =>
      TfRef.attribute<String>(this, 'kubernetes_cluster_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `snapshot_resource_group_name` attribute.
  TfRef<String> get snapshotResourceGroupName =>
      TfRef.attribute<String>(this, 'snapshot_resource_group_name');

  /// Reference to `vault_id` attribute.
  TfRef<String> get vaultId => TfRef.attribute<String>(this, 'vault_id');
}
