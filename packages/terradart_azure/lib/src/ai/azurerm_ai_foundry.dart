// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_ai_foundry`.
const Set<String> _azurermAiFoundrySensitive = <String>{};

/// Ai Foundry Public Network enum for `public_network_access`.
extension type const AiFoundryPublicNetworkAccess._(TfArg<String> _)
    implements TfArg<String> {
  AiFoundryPublicNetworkAccess.variable(String name)
    : this._(TfArg.variable(name));
  AiFoundryPublicNetworkAccess.expression(String template)
    : this._(TfArg.expression(template));
  const AiFoundryPublicNetworkAccess.arg(TfArg<String> arg) : this._(arg);

  static const disabled = AiFoundryPublicNetworkAccess._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = AiFoundryPublicNetworkAccess._(
    TfArgLiteral('Enabled'),
  );

  static const List<AiFoundryPublicNetworkAccess> values = [disabled, enabled];
}

/// Typed helper for the `encryption` block of
/// `azurerm_ai_foundry` (derived from provider schema).
@immutable
final class AiFoundryEncryption {
  const AiFoundryEncryption({
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

/// Typed helper for the `identity` block of
/// `azurerm_ai_foundry` (derived from provider schema).
@immutable
final class AiFoundryIdentity {
  const AiFoundryIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `managed_network` block of
/// `azurerm_ai_foundry` (derived from provider schema).
@immutable
final class AiFoundryManagedNetwork {
  const AiFoundryManagedNetwork({this.isolationMode});

  final AiFoundryIsolationMode? isolationMode;

  @internal
  Map<String, Object?> encode() => {
    'isolation_mode': ?isolationMode?.toTfJson(),
  };
}

/// `isolation_mode` — derived from the provider schema description.
extension type const AiFoundryIsolationMode._(TfArg<String> _)
    implements TfArg<String> {
  AiFoundryIsolationMode.variable(String name) : this._(TfArg.variable(name));
  AiFoundryIsolationMode.expression(String template)
    : this._(TfArg.expression(template));
  const AiFoundryIsolationMode.arg(TfArg<String> arg) : this._(arg);

  static const allowinternetoutbound = AiFoundryIsolationMode._(
    TfArgLiteral('AllowInternetOutbound'),
  );
  static const allowonlyapprovedoutbound = AiFoundryIsolationMode._(
    TfArgLiteral('AllowOnlyApprovedOutbound'),
  );
  static const disabled = AiFoundryIsolationMode._(TfArgLiteral('Disabled'));

  static const List<AiFoundryIsolationMode> values = [
    allowinternetoutbound,
    allowonlyapprovedoutbound,
    disabled,
  ];
}

/// Factory wrapper for `azurerm_ai_foundry`.
final class AzurermAiFoundry extends Resource {
  static const String tfType = 'azurerm_ai_foundry';

  AzurermAiFoundry(
    super.localName, {
    TfArg<String>? applicationInsightsId,
    TfArg<String>? containerRegistryId,
    TfArg<String>? description,
    TfArg<String>? friendlyName,
    TfArg<bool>? highBusinessImpactEnabled,
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? primaryUserAssignedIdentity,
    AiFoundryPublicNetworkAccess? publicNetworkAccess,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required RefTo<AzurermStorageAccount> storageAccountId,
    TfArg<Map<String, String>>? tags,
    AiFoundryEncryption? encryption,
    required AiFoundryIdentity identity,
    AiFoundryManagedNetwork? managedNetwork,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_insights_id': ?applicationInsightsId,
           'container_registry_id': ?containerRegistryId,
           'description': ?description,
           'friendly_name': ?friendlyName,
           'high_business_impact_enabled': ?highBusinessImpactEnabled,
           'key_vault_id': keyVaultId.encodeAs('id'),
           'location': location,
           'name': name,
           'primary_user_assigned_identity': ?primaryUserAssignedIdentity,
           'public_network_access': ?publicNetworkAccess,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_account_id': storageAccountId.encodeAs('id'),
           'tags': ?tags,
           if (encryption != null)
             'encryption': TfArg.literal(encryption.encode()),
           'identity': TfArg.literal(identity.encode()),
           if (managedNetwork != null)
             'managed_network': TfArg.literal(managedNetwork.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAiFoundrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAiFoundry>`.
  RefTo<AzurermAiFoundry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `high_business_impact_enabled` attribute.
  TfRef<bool> get highBusinessImpactEnabled =>
      TfRef.attribute<bool>(this, 'high_business_impact_enabled');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `primary_user_assigned_identity` attribute.
  TfRef<String> get primaryUserAssignedIdentity =>
      TfRef.attribute<String>(this, 'primary_user_assigned_identity');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
