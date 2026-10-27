// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_synapse_workspace`.
const Set<String> _azurermSynapseWorkspaceSensitive = <String>{
  'sql_administrator_login_password',
};

/// At most one of `azure_devops_repo`, `github_repo` on `azurerm_synapse_workspace`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.azureDevopsRepo(...)`.
sealed class SynapseWorkspaceRepo {
  const SynapseWorkspaceRepo();

  /// Sets `azure_devops_repo`.
  const factory SynapseWorkspaceRepo.azureDevopsRepo(
    SynapseWorkspaceAzureDevopsRepo azureDevopsRepo,
  ) = SynapseWorkspaceAzureDevopsRepoChoice;

  /// Sets `github_repo`.
  const factory SynapseWorkspaceRepo.githubRepo(
    SynapseWorkspaceGithubRepo githubRepo,
  ) = SynapseWorkspaceGithubRepoChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SynapseWorkspaceRepo.azureDevopsRepo] choice: sets `azure_devops_repo`.
final class SynapseWorkspaceAzureDevopsRepoChoice extends SynapseWorkspaceRepo {
  const SynapseWorkspaceAzureDevopsRepoChoice(this.azureDevopsRepo);

  final SynapseWorkspaceAzureDevopsRepo azureDevopsRepo;

  @internal
  @override
  String get blockKey => 'azure_devops_repo';

  @internal
  @override
  Map<String, Object?> encode() => {
    'azure_devops_repo': azureDevopsRepo.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'azure_devops_repo': TfArg.literal(azureDevopsRepo.encode()),
  };
}

/// The [SynapseWorkspaceRepo.githubRepo] choice: sets `github_repo`.
final class SynapseWorkspaceGithubRepoChoice extends SynapseWorkspaceRepo {
  const SynapseWorkspaceGithubRepoChoice(this.githubRepo);

  final SynapseWorkspaceGithubRepo githubRepo;

  @internal
  @override
  String get blockKey => 'github_repo';

  @internal
  @override
  Map<String, Object?> encode() => {'github_repo': githubRepo.encode()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'github_repo': TfArg.literal(githubRepo.encode()),
  };
}

/// Typed helper for the `azure_devops_repo` block of
/// `azurerm_synapse_workspace` (derived from provider schema).
@immutable
final class SynapseWorkspaceAzureDevopsRepo {
  const SynapseWorkspaceAzureDevopsRepo({
    required this.accountName,
    required this.branchName,
    this.lastCommitId,
    required this.projectName,
    required this.repositoryName,
    required this.rootFolder,
    this.tenantId,
  });

  final TfArg<String> accountName;

  final TfArg<String> branchName;

  final TfArg<String>? lastCommitId;

  final TfArg<String> projectName;

  final TfArg<String> repositoryName;

  final TfArg<String> rootFolder;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'account_name': accountName.toTfJson(),
    'branch_name': branchName.toTfJson(),
    'last_commit_id': ?lastCommitId?.toTfJson(),
    'project_name': projectName.toTfJson(),
    'repository_name': repositoryName.toTfJson(),
    'root_folder': rootFolder.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `customer_managed_key` block of
/// `azurerm_synapse_workspace` (derived from provider schema).
@immutable
final class SynapseWorkspaceCustomerManagedKey {
  const SynapseWorkspaceCustomerManagedKey({
    this.keyName,
    required this.keyVersionlessId,
    this.userAssignedIdentityId,
  });

  final TfArg<String>? keyName;

  final TfArg<String> keyVersionlessId;

  final TfArg<String>? userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'key_name': ?keyName?.toTfJson(),
    'key_versionless_id': keyVersionlessId.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
  };
}

/// Typed helper for the `github_repo` block of
/// `azurerm_synapse_workspace` (derived from provider schema).
@immutable
final class SynapseWorkspaceGithubRepo {
  const SynapseWorkspaceGithubRepo({
    required this.accountName,
    required this.branchName,
    this.gitUrl,
    this.lastCommitId,
    required this.repositoryName,
    required this.rootFolder,
  });

  final TfArg<String> accountName;

  final TfArg<String> branchName;

  final TfArg<String>? gitUrl;

  final TfArg<String>? lastCommitId;

  final TfArg<String> repositoryName;

  final TfArg<String> rootFolder;

  @internal
  Map<String, Object?> encode() => {
    'account_name': accountName.toTfJson(),
    'branch_name': branchName.toTfJson(),
    'git_url': ?gitUrl?.toTfJson(),
    'last_commit_id': ?lastCommitId?.toTfJson(),
    'repository_name': repositoryName.toTfJson(),
    'root_folder': rootFolder.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_synapse_workspace` (derived from provider schema).
@immutable
final class SynapseWorkspaceIdentity {
  const SynapseWorkspaceIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_synapse_workspace`.
final class AzurermSynapseWorkspace extends Resource {
  static const String tfType = 'azurerm_synapse_workspace';

  AzurermSynapseWorkspace(
    super.localName, {
    TfArg<bool>? azureadAuthenticationOnly,
    TfArg<String>? computeSubnetId,
    TfArg<bool>? dataExfiltrationProtectionEnabled,
    TfArg<List<String>>? linkingAllowedForAadTenantIds,
    required TfArg<String> location,
    TfArg<String>? managedResourceGroupName,
    TfArg<bool>? managedVirtualNetworkEnabled,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<String>? purviewId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? sqlAdministratorLogin,
    Sensitive<String>? sqlAdministratorLoginPassword,
    TfArg<bool>? sqlIdentityControlEnabled,
    required TfArg<String> storageDataLakeGen2FilesystemId,
    TfArg<Map<String, String>>? tags,
    SynapseWorkspaceRepo? repo,
    SynapseWorkspaceCustomerManagedKey? customerManagedKey,
    SynapseWorkspaceIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'azuread_authentication_only': ?azureadAuthenticationOnly,
           'compute_subnet_id': ?computeSubnetId,
           'data_exfiltration_protection_enabled':
               ?dataExfiltrationProtectionEnabled,
           'linking_allowed_for_aad_tenant_ids': ?linkingAllowedForAadTenantIds,
           'location': location,
           'managed_resource_group_name': ?managedResourceGroupName,
           'managed_virtual_network_enabled': ?managedVirtualNetworkEnabled,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'purview_id': ?purviewId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sql_administrator_login': ?sqlAdministratorLogin,
           'sql_administrator_login_password': ?sqlAdministratorLoginPassword,
           'sql_identity_control_enabled': ?sqlIdentityControlEnabled,
           'storage_data_lake_gen2_filesystem_id':
               storageDataLakeGen2FilesystemId,
           'tags': ?tags,
           ...?repo?.argMap,
           if (customerManagedKey != null)
             'customer_managed_key': TfArg.literal(customerManagedKey.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSynapseWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseWorkspace>`.
  RefTo<AzurermSynapseWorkspace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connectivity_endpoints` attribute.
  TfRef<Map<String, String>> get connectivityEndpoints =>
      TfRef.attribute<Map<String, String>>(this, 'connectivity_endpoints');

  /// Reference to `azuread_authentication_only` attribute.
  TfRef<bool> get azureadAuthenticationOnly =>
      TfRef.attribute<bool>(this, 'azuread_authentication_only');

  /// Reference to `compute_subnet_id` attribute.
  TfRef<String> get computeSubnetId =>
      TfRef.attribute<String>(this, 'compute_subnet_id');

  /// Reference to `data_exfiltration_protection_enabled` attribute.
  TfRef<bool> get dataExfiltrationProtectionEnabled =>
      TfRef.attribute<bool>(this, 'data_exfiltration_protection_enabled');

  /// Reference to `linking_allowed_for_aad_tenant_ids` attribute.
  TfRef<List<String>> get linkingAllowedForAadTenantIds =>
      TfRef.attribute<List<String>>(this, 'linking_allowed_for_aad_tenant_ids');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_resource_group_name` attribute.
  TfRef<String> get managedResourceGroupName =>
      TfRef.attribute<String>(this, 'managed_resource_group_name');

  /// Reference to `managed_virtual_network_enabled` attribute.
  TfRef<bool> get managedVirtualNetworkEnabled =>
      TfRef.attribute<bool>(this, 'managed_virtual_network_enabled');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `purview_id` attribute.
  TfRef<String> get purviewId => TfRef.attribute<String>(this, 'purview_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sql_administrator_login` attribute.
  TfRef<String> get sqlAdministratorLogin =>
      TfRef.attribute<String>(this, 'sql_administrator_login');

  /// Reference to `sql_administrator_login_password` attribute.
  TfRef<String> get sqlAdministratorLoginPassword =>
      TfRef.attribute<String>(this, 'sql_administrator_login_password');

  /// Reference to `sql_identity_control_enabled` attribute.
  TfRef<bool> get sqlIdentityControlEnabled =>
      TfRef.attribute<bool>(this, 'sql_identity_control_enabled');

  /// Reference to `storage_data_lake_gen2_filesystem_id` attribute.
  TfRef<String> get storageDataLakeGen2FilesystemId =>
      TfRef.attribute<String>(this, 'storage_data_lake_gen2_filesystem_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
