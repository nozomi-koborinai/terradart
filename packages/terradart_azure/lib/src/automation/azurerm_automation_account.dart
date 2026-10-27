// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_automation_account`.
const Set<String> _azurermAutomationAccountSensitive = <String>{
  'dsc_primary_access_key',
  'dsc_secondary_access_key',
};

/// Typed helper for the `encryption` block of
/// `azurerm_automation_account` (derived from provider schema).
@immutable
final class AutomationAccountEncryption {
  const AutomationAccountEncryption({
    required this.keyVaultKeyId,
    this.userAssignedIdentityId,
  });

  final TfArg<String> keyVaultKeyId;

  final TfArg<String>? userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_key_id': keyVaultKeyId.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_automation_account` (derived from provider schema).
@immutable
final class AutomationAccountIdentity {
  const AutomationAccountIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_automation_account`.
final class AzurermAutomationAccount extends Resource {
  static const String tfType = 'azurerm_automation_account';

  AzurermAutomationAccount(
    super.localName, {
    TfArg<bool>? localAuthenticationEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    List<AutomationAccountEncryption>? encryption,
    AutomationAccountIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'local_authentication_enabled': ?localAuthenticationEnabled,
           'location': location,
           'name': name,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           if (encryption != null)
             'encryption': TfArg.literal([
               for (final e in encryption) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAutomationAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAutomationAccount>`.
  RefTo<AzurermAutomationAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `dsc_primary_access_key` attribute.
  TfRef<String> get dscPrimaryAccessKey =>
      TfRef.attribute<String>(this, 'dsc_primary_access_key');

  /// Reference to `dsc_secondary_access_key` attribute.
  TfRef<String> get dscSecondaryAccessKey =>
      TfRef.attribute<String>(this, 'dsc_secondary_access_key');

  /// Reference to `dsc_server_endpoint` attribute.
  TfRef<String> get dscServerEndpoint =>
      TfRef.attribute<String>(this, 'dsc_server_endpoint');

  /// Reference to `hybrid_service_url` attribute.
  TfRef<String> get hybridServiceUrl =>
      TfRef.attribute<String>(this, 'hybrid_service_url');

  /// Reference to `private_endpoint_connection` attribute.
  TfRef<List<Map<String, Object?>>> get privateEndpointConnection =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_endpoint_connection',
      );

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
