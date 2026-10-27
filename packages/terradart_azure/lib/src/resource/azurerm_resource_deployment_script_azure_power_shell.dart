// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_resource_deployment_script_azure_power_shell`.
const Set<String> _azurermResourceDeploymentScriptAzurePowerShellSensitive =
    <String>{'environment_variable.secure_value', 'storage_account.key'};

/// Typed helper for the `container` block of
/// `azurerm_resource_deployment_script_azure_power_shell` (derived from provider schema).
@immutable
final class ResourceDeploymentScriptAzurePowerShellContainer {
  const ResourceDeploymentScriptAzurePowerShellContainer({
    this.containerGroupName,
  });

  final TfArg<String>? containerGroupName;

  @internal
  Map<String, Object?> encode() => {
    'container_group_name': ?containerGroupName?.toTfJson(),
  };
}

/// Typed helper for the `environment_variable` block of
/// `azurerm_resource_deployment_script_azure_power_shell` (derived from provider schema).
@immutable
final class ResourceDeploymentScriptAzurePowerShellEnvironmentVariable {
  const ResourceDeploymentScriptAzurePowerShellEnvironmentVariable({
    required this.name,
    this.secureValue,
    this.value,
  });

  final TfArg<String> name;

  final Sensitive<String>? secureValue;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'secure_value': ?secureValue?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_resource_deployment_script_azure_power_shell` (derived from provider schema).
@immutable
final class ResourceDeploymentScriptAzurePowerShellIdentity {
  const ResourceDeploymentScriptAzurePowerShellIdentity({
    required this.identityIds,
    required this.type,
  });

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `storage_account` block of
/// `azurerm_resource_deployment_script_azure_power_shell` (derived from provider schema).
@immutable
final class ResourceDeploymentScriptAzurePowerShellStorageAccount {
  const ResourceDeploymentScriptAzurePowerShellStorageAccount({
    required this.key,
    required this.name,
  });

  final Sensitive<String> key;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_resource_deployment_script_azure_power_shell`.
final class AzurermResourceDeploymentScriptAzurePowerShell extends Resource {
  static const String tfType =
      'azurerm_resource_deployment_script_azure_power_shell';

  AzurermResourceDeploymentScriptAzurePowerShell(
    super.localName, {
    TfArg<String>? cleanupPreference,
    TfArg<String>? commandLine,
    TfArg<String>? forceUpdateTag,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? primaryScriptUri,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> retentionInterval,
    TfArg<String>? scriptContent,
    TfArg<List<String>>? supportingScriptUris,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? timeout,
    required TfArg<String> version,
    ResourceDeploymentScriptAzurePowerShellContainer? container,
    List<ResourceDeploymentScriptAzurePowerShellEnvironmentVariable>?
    environmentVariable,
    ResourceDeploymentScriptAzurePowerShellIdentity? identity,
    ResourceDeploymentScriptAzurePowerShellStorageAccount? storageAccount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cleanup_preference': ?cleanupPreference,
           'command_line': ?commandLine,
           'force_update_tag': ?forceUpdateTag,
           'location': location,
           'name': name,
           'primary_script_uri': ?primaryScriptUri,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retention_interval': retentionInterval,
           'script_content': ?scriptContent,
           'supporting_script_uris': ?supportingScriptUris,
           'tags': ?tags,
           'timeout': ?timeout,
           'version': version,
           if (container != null)
             'container': TfArg.literal(container.encode()),
           if (environmentVariable != null)
             'environment_variable': TfArg.literal([
               for (final e in environmentVariable) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (storageAccount != null)
             'storage_account': TfArg.literal(storageAccount.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermResourceDeploymentScriptAzurePowerShellSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourceDeploymentScriptAzurePowerShell>`.
  RefTo<AzurermResourceDeploymentScriptAzurePowerShell> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `outputs` attribute.
  TfRef<String> get outputs => TfRef.attribute<String>(this, 'outputs');

  /// Reference to `cleanup_preference` attribute.
  TfRef<String> get cleanupPreference =>
      TfRef.attribute<String>(this, 'cleanup_preference');

  /// Reference to `command_line` attribute.
  TfRef<String> get commandLine =>
      TfRef.attribute<String>(this, 'command_line');

  /// Reference to `force_update_tag` attribute.
  TfRef<String> get forceUpdateTag =>
      TfRef.attribute<String>(this, 'force_update_tag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `primary_script_uri` attribute.
  TfRef<String> get primaryScriptUri =>
      TfRef.attribute<String>(this, 'primary_script_uri');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `retention_interval` attribute.
  TfRef<String> get retentionInterval =>
      TfRef.attribute<String>(this, 'retention_interval');

  /// Reference to `script_content` attribute.
  TfRef<String> get scriptContent =>
      TfRef.attribute<String>(this, 'script_content');

  /// Reference to `supporting_script_uris` attribute.
  TfRef<List<String>> get supportingScriptUris =>
      TfRef.attribute<List<String>>(this, 'supporting_script_uris');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `timeout` attribute.
  TfRef<String> get timeout => TfRef.attribute<String>(this, 'timeout');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
