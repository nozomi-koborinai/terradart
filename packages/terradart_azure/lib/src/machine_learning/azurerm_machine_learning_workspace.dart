// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_machine_learning_workspace`.
const Set<String> _azurermMachineLearningWorkspaceSensitive = <String>{};

/// Machine Learning Workspace enum for `kind`.
extension type const MachineLearningWorkspaceKind._(TfArg<String> _)
    implements TfArg<String> {
  MachineLearningWorkspaceKind.variable(String name)
    : this._(TfArg.variable(name));
  MachineLearningWorkspaceKind.expression(String template)
    : this._(TfArg.expression(template));
  const MachineLearningWorkspaceKind.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = MachineLearningWorkspaceKind._(
    TfArgLiteral('Default'),
  );
  static const featurestore = MachineLearningWorkspaceKind._(
    TfArgLiteral('FeatureStore'),
  );

  static const List<MachineLearningWorkspaceKind> values = [
    defaultCase,
    featurestore,
  ];
}

/// Machine Learning Workspace Sku enum for `sku_name`.
extension type const MachineLearningWorkspaceSkuName._(TfArg<String> _)
    implements TfArg<String> {
  MachineLearningWorkspaceSkuName.variable(String name)
    : this._(TfArg.variable(name));
  MachineLearningWorkspaceSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const MachineLearningWorkspaceSkuName.arg(TfArg<String> arg) : this._(arg);

  static const basic = MachineLearningWorkspaceSkuName._(TfArgLiteral('Basic'));

  static const List<MachineLearningWorkspaceSkuName> values = [basic];
}

/// Machine Learning Workspace Storage Account Access enum for `storage_account_access_type`.
extension type const MachineLearningWorkspaceStorageAccountAccessType._(
  TfArg<String> _
) implements TfArg<String> {
  MachineLearningWorkspaceStorageAccountAccessType.variable(String name)
    : this._(TfArg.variable(name));
  MachineLearningWorkspaceStorageAccountAccessType.expression(String template)
    : this._(TfArg.expression(template));
  const MachineLearningWorkspaceStorageAccountAccessType.arg(TfArg<String> arg)
    : this._(arg);

  static const accesskey = MachineLearningWorkspaceStorageAccountAccessType._(
    TfArgLiteral('AccessKey'),
  );
  static const identity = MachineLearningWorkspaceStorageAccountAccessType._(
    TfArgLiteral('Identity'),
  );

  static const List<MachineLearningWorkspaceStorageAccountAccessType> values = [
    accesskey,
    identity,
  ];
}

/// Typed helper for the `encryption` block of
/// `azurerm_machine_learning_workspace` (derived from provider schema).
@immutable
final class MachineLearningWorkspaceEncryption {
  const MachineLearningWorkspaceEncryption({
    required this.keyId,
    required this.keyVaultId,
    this.userAssignedIdentityId,
  });

  final TfArg<String> keyId;

  final TfArg<String> keyVaultId;

  final TfArg<String>? userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'key_id': keyId.toTfJson(),
    'key_vault_id': keyVaultId.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
  };
}

/// Typed helper for the `feature_store` block of
/// `azurerm_machine_learning_workspace` (derived from provider schema).
@immutable
final class MachineLearningWorkspaceFeatureStore {
  const MachineLearningWorkspaceFeatureStore({
    this.computerSparkRuntimeVersion,
    this.offlineConnectionName,
    this.onlineConnectionName,
  });

  final TfArg<String>? computerSparkRuntimeVersion;

  final TfArg<String>? offlineConnectionName;

  final TfArg<String>? onlineConnectionName;

  @internal
  Map<String, Object?> encode() => {
    'computer_spark_runtime_version': ?computerSparkRuntimeVersion?.toTfJson(),
    'offline_connection_name': ?offlineConnectionName?.toTfJson(),
    'online_connection_name': ?onlineConnectionName?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_machine_learning_workspace` (derived from provider schema).
@immutable
final class MachineLearningWorkspaceIdentity {
  const MachineLearningWorkspaceIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `managed_network` block of
/// `azurerm_machine_learning_workspace` (derived from provider schema).
@immutable
final class MachineLearningWorkspaceManagedNetwork {
  const MachineLearningWorkspaceManagedNetwork({
    this.isolationMode,
    this.provisionOnCreationEnabled,
  });

  final MachineLearningWorkspaceIsolationMode? isolationMode;

  final TfArg<bool>? provisionOnCreationEnabled;

  @internal
  Map<String, Object?> encode() => {
    'isolation_mode': ?isolationMode?.toTfJson(),
    'provision_on_creation_enabled': ?provisionOnCreationEnabled?.toTfJson(),
  };
}

/// `isolation_mode` — derived from the provider schema description.
extension type const MachineLearningWorkspaceIsolationMode._(TfArg<String> _)
    implements TfArg<String> {
  MachineLearningWorkspaceIsolationMode.variable(String name)
    : this._(TfArg.variable(name));
  MachineLearningWorkspaceIsolationMode.expression(String template)
    : this._(TfArg.expression(template));
  const MachineLearningWorkspaceIsolationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const allowinternetoutbound = MachineLearningWorkspaceIsolationMode._(
    TfArgLiteral('AllowInternetOutbound'),
  );
  static const allowonlyapprovedoutbound =
      MachineLearningWorkspaceIsolationMode._(
        TfArgLiteral('AllowOnlyApprovedOutbound'),
      );
  static const disabled = MachineLearningWorkspaceIsolationMode._(
    TfArgLiteral('Disabled'),
  );

  static const List<MachineLearningWorkspaceIsolationMode> values = [
    allowinternetoutbound,
    allowonlyapprovedoutbound,
    disabled,
  ];
}

/// Typed helper for the `serverless_compute` block of
/// `azurerm_machine_learning_workspace` (derived from provider schema).
@immutable
final class MachineLearningWorkspaceServerlessCompute {
  const MachineLearningWorkspaceServerlessCompute({
    this.publicIpEnabled,
    this.subnetId,
  });

  final TfArg<bool>? publicIpEnabled;

  final TfArg<String>? subnetId;

  @internal
  Map<String, Object?> encode() => {
    'public_ip_enabled': ?publicIpEnabled?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_machine_learning_workspace`.
final class AzurermMachineLearningWorkspace extends Resource {
  static const String tfType = 'azurerm_machine_learning_workspace';

  AzurermMachineLearningWorkspace(
    super.localName, {
    required TfArg<String> applicationInsightsId,
    TfArg<String>? containerRegistryId,
    TfArg<String>? description,
    TfArg<String>? friendlyName,
    TfArg<bool>? highBusinessImpact,
    TfArg<String>? imageBuildComputeName,
    required RefTo<AzurermKeyVault> keyVaultId,
    MachineLearningWorkspaceKind? kind,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? primaryUserAssignedIdentity,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? serviceSideEncryptionEnabled,
    MachineLearningWorkspaceSkuName? skuName,
    MachineLearningWorkspaceStorageAccountAccessType? storageAccountAccessType,
    required RefTo<AzurermStorageAccount> storageAccountId,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? v1LegacyModeEnabled,
    MachineLearningWorkspaceEncryption? encryption,
    MachineLearningWorkspaceFeatureStore? featureStore,
    required MachineLearningWorkspaceIdentity identity,
    MachineLearningWorkspaceManagedNetwork? managedNetwork,
    MachineLearningWorkspaceServerlessCompute? serverlessCompute,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_insights_id': applicationInsightsId,
           'container_registry_id': ?containerRegistryId,
           'description': ?description,
           'friendly_name': ?friendlyName,
           'high_business_impact': ?highBusinessImpact,
           'image_build_compute_name': ?imageBuildComputeName,
           'key_vault_id': keyVaultId.encodeAs('id'),
           'kind': ?kind,
           'location': location,
           'name': name,
           'primary_user_assigned_identity': ?primaryUserAssignedIdentity,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_side_encryption_enabled': ?serviceSideEncryptionEnabled,
           'sku_name': ?skuName,
           'storage_account_access_type': ?storageAccountAccessType,
           'storage_account_id': storageAccountId.encodeAs('id'),
           'tags': ?tags,
           'v1_legacy_mode_enabled': ?v1LegacyModeEnabled,
           if (encryption != null)
             'encryption': TfArg.literal(encryption.encode()),
           if (featureStore != null)
             'feature_store': TfArg.literal(featureStore.encode()),
           'identity': TfArg.literal(identity.encode()),
           if (managedNetwork != null)
             'managed_network': TfArg.literal(managedNetwork.encode()),
           if (serverlessCompute != null)
             'serverless_compute': TfArg.literal(serverlessCompute.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMachineLearningWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningWorkspace>`.
  RefTo<AzurermMachineLearningWorkspace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `discovery_url` attribute.
  TfRef<String> get discoveryUrl =>
      TfRef.attribute<String>(this, 'discovery_url');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');

  /// Reference to `application_insights_id` attribute.
  TfRef<String> get applicationInsightsId =>
      TfRef.attribute<String>(this, 'application_insights_id');

  /// Reference to `container_registry_id` attribute.
  TfRef<String> get containerRegistryId =>
      TfRef.attribute<String>(this, 'container_registry_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `high_business_impact` attribute.
  TfRef<bool> get highBusinessImpact =>
      TfRef.attribute<bool>(this, 'high_business_impact');

  /// Reference to `image_build_compute_name` attribute.
  TfRef<String> get imageBuildComputeName =>
      TfRef.attribute<String>(this, 'image_build_compute_name');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `primary_user_assigned_identity` attribute.
  TfRef<String> get primaryUserAssignedIdentity =>
      TfRef.attribute<String>(this, 'primary_user_assigned_identity');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_side_encryption_enabled` attribute.
  TfRef<bool> get serviceSideEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'service_side_encryption_enabled');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `storage_account_access_type` attribute.
  TfRef<String> get storageAccountAccessType =>
      TfRef.attribute<String>(this, 'storage_account_access_type');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `v1_legacy_mode_enabled` attribute.
  TfRef<bool> get v1LegacyModeEnabled =>
      TfRef.attribute<bool>(this, 'v1_legacy_mode_enabled');
}
