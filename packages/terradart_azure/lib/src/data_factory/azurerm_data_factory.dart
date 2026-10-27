// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_data_factory`.
const Set<String> _azurermDataFactorySensitive = <String>{};

/// Typed helper for the `github_configuration` block of
/// `azurerm_data_factory` (derived from provider schema).
@immutable
final class DataFactoryGithubConfiguration {
  const DataFactoryGithubConfiguration({
    required this.accountName,
    required this.branchName,
    this.gitUrl,
    this.publishingEnabled,
    required this.repositoryName,
    required this.rootFolder,
  });

  final TfArg<String> accountName;

  final TfArg<String> branchName;

  final TfArg<String>? gitUrl;

  final TfArg<bool>? publishingEnabled;

  final TfArg<String> repositoryName;

  final TfArg<String> rootFolder;

  @internal
  Map<String, Object?> encode() => {
    'account_name': accountName.toTfJson(),
    'branch_name': branchName.toTfJson(),
    'git_url': ?gitUrl?.toTfJson(),
    'publishing_enabled': ?publishingEnabled?.toTfJson(),
    'repository_name': repositoryName.toTfJson(),
    'root_folder': rootFolder.toTfJson(),
  };
}

/// Typed helper for the `global_parameter` block of
/// `azurerm_data_factory` (derived from provider schema).
@immutable
final class DataFactoryGlobalParameter {
  const DataFactoryGlobalParameter({
    required this.name,
    required this.type,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_data_factory` (derived from provider schema).
@immutable
final class DataFactoryIdentity {
  const DataFactoryIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `vsts_configuration` block of
/// `azurerm_data_factory` (derived from provider schema).
@immutable
final class DataFactoryVstsConfiguration {
  const DataFactoryVstsConfiguration({
    required this.accountName,
    required this.branchName,
    required this.projectName,
    this.publishingEnabled,
    required this.repositoryName,
    required this.rootFolder,
    required this.tenantId,
  });

  final TfArg<String> accountName;

  final TfArg<String> branchName;

  final TfArg<String> projectName;

  final TfArg<bool>? publishingEnabled;

  final TfArg<String> repositoryName;

  final TfArg<String> rootFolder;

  final TfArg<String> tenantId;

  @internal
  Map<String, Object?> encode() => {
    'account_name': accountName.toTfJson(),
    'branch_name': branchName.toTfJson(),
    'project_name': projectName.toTfJson(),
    'publishing_enabled': ?publishingEnabled?.toTfJson(),
    'repository_name': repositoryName.toTfJson(),
    'root_folder': rootFolder.toTfJson(),
    'tenant_id': tenantId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory`.
final class AzurermDataFactory extends Resource {
  static const String tfType = 'azurerm_data_factory';

  AzurermDataFactory(
    super.localName, {
    TfArg<String>? customerManagedKeyId,
    TfArg<String>? customerManagedKeyIdentityId,
    required TfArg<String> location,
    TfArg<bool>? managedVirtualNetworkEnabled,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkEnabled,
    TfArg<String>? purviewId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    DataFactoryGithubConfiguration? githubConfiguration,
    List<DataFactoryGlobalParameter>? globalParameter,
    DataFactoryIdentity? identity,
    DataFactoryVstsConfiguration? vstsConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'customer_managed_key_id': ?customerManagedKeyId,
           'customer_managed_key_identity_id': ?customerManagedKeyIdentityId,
           'location': location,
           'managed_virtual_network_enabled': ?managedVirtualNetworkEnabled,
           'name': name,
           'public_network_enabled': ?publicNetworkEnabled,
           'purview_id': ?purviewId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (githubConfiguration != null)
             'github_configuration': TfArg.literal(
               githubConfiguration.encode(),
             ),
           if (globalParameter != null)
             'global_parameter': TfArg.literal([
               for (final e in globalParameter) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (vstsConfiguration != null)
             'vsts_configuration': TfArg.literal(vstsConfiguration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDataFactorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactory>`.
  RefTo<AzurermDataFactory> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `customer_managed_key_id` attribute.
  TfRef<String> get customerManagedKeyId =>
      TfRef.attribute<String>(this, 'customer_managed_key_id');

  /// Reference to `customer_managed_key_identity_id` attribute.
  TfRef<String> get customerManagedKeyIdentityId =>
      TfRef.attribute<String>(this, 'customer_managed_key_identity_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_virtual_network_enabled` attribute.
  TfRef<bool> get managedVirtualNetworkEnabled =>
      TfRef.attribute<bool>(this, 'managed_virtual_network_enabled');

  /// Reference to `public_network_enabled` attribute.
  TfRef<bool> get publicNetworkEnabled =>
      TfRef.attribute<bool>(this, 'public_network_enabled');

  /// Reference to `purview_id` attribute.
  TfRef<String> get purviewId => TfRef.attribute<String>(this, 'purview_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
