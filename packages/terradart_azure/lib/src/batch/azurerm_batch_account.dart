// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../storage/azurerm_storage_account.dart' show AzurermStorageAccount;

/// Sensitive field paths for `azurerm_batch_account`.
const Set<String> _azurermBatchAccountSensitive = <String>{
  'primary_access_key',
  'secondary_access_key',
};

/// Batch Account Allowed Authentication enum for `allowed_authentication_modes`.
extension type const BatchAccountAllowedAuthenticationModes._(TfArg<String> _)
    implements TfArg<String> {
  BatchAccountAllowedAuthenticationModes.variable(String name)
    : this._(TfArg.variable(name));
  BatchAccountAllowedAuthenticationModes.expression(String template)
    : this._(TfArg.expression(template));
  const BatchAccountAllowedAuthenticationModes.arg(TfArg<String> arg)
    : this._(arg);

  static const aad = BatchAccountAllowedAuthenticationModes._(
    TfArgLiteral('AAD'),
  );
  static const sharedkey = BatchAccountAllowedAuthenticationModes._(
    TfArgLiteral('SharedKey'),
  );
  static const taskauthenticationtoken =
      BatchAccountAllowedAuthenticationModes._(
        TfArgLiteral('TaskAuthenticationToken'),
      );

  static const List<BatchAccountAllowedAuthenticationModes> values = [
    aad,
    sharedkey,
    taskauthenticationtoken,
  ];
}

/// Batch Account Pool Allocation enum for `pool_allocation_mode`.
extension type const BatchAccountPoolAllocationMode._(TfArg<String> _)
    implements TfArg<String> {
  BatchAccountPoolAllocationMode.variable(String name)
    : this._(TfArg.variable(name));
  BatchAccountPoolAllocationMode.expression(String template)
    : this._(TfArg.expression(template));
  const BatchAccountPoolAllocationMode.arg(TfArg<String> arg) : this._(arg);

  static const batchservice = BatchAccountPoolAllocationMode._(
    TfArgLiteral('BatchService'),
  );
  static const usersubscription = BatchAccountPoolAllocationMode._(
    TfArgLiteral('UserSubscription'),
  );

  static const List<BatchAccountPoolAllocationMode> values = [
    batchservice,
    usersubscription,
  ];
}

/// Batch Account Storage Account Authentication enum for `storage_account_authentication_mode`.
extension type const BatchAccountStorageAccountAuthenticationMode._(
  TfArg<String> _
) implements TfArg<String> {
  BatchAccountStorageAccountAuthenticationMode.variable(String name)
    : this._(TfArg.variable(name));
  BatchAccountStorageAccountAuthenticationMode.expression(String template)
    : this._(TfArg.expression(template));
  const BatchAccountStorageAccountAuthenticationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const batchaccountmanagedidentity =
      BatchAccountStorageAccountAuthenticationMode._(
        TfArgLiteral('BatchAccountManagedIdentity'),
      );
  static const storagekeys = BatchAccountStorageAccountAuthenticationMode._(
    TfArgLiteral('StorageKeys'),
  );

  static const List<BatchAccountStorageAccountAuthenticationMode> values = [
    batchaccountmanagedidentity,
    storagekeys,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_batch_account` (derived from provider schema).
@immutable
final class BatchAccountIdentity {
  const BatchAccountIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `key_vault_reference` block of
/// `azurerm_batch_account` (derived from provider schema).
@immutable
final class BatchAccountKeyVaultReference {
  const BatchAccountKeyVaultReference({required this.id, required this.url});

  final TfArg<String> id;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {'id': id.toTfJson(), 'url': url.toTfJson()};
}

/// Typed helper for the `network_profile` block of
/// `azurerm_batch_account` (derived from provider schema).
@immutable
final class BatchAccountNetworkProfile {
  const BatchAccountNetworkProfile({
    this.accountAccess,
    this.nodeManagementAccess,
  });

  final BatchAccountAccess? accountAccess;

  final BatchAccountNodeManagementAccess? nodeManagementAccess;

  @internal
  Map<String, Object?> encode() => {
    'account_access': ?accountAccess?.encode(),
    'node_management_access': ?nodeManagementAccess?.encode(),
  };
}

/// Typed helper for the `network_profile.account_access` block of
/// `azurerm_batch_account` (derived from provider schema).
@immutable
final class BatchAccountAccess {
  const BatchAccountAccess({this.defaultAction, this.ipRule});

  final BatchAccountDefaultAction? defaultAction;

  final List<BatchAccountIpRule>? ipRule;

  @internal
  Map<String, Object?> encode() => {
    'default_action': ?defaultAction?.toTfJson(),
    if (ipRule != null) 'ip_rule': [for (final e in ipRule!) e.encode()],
  };
}

/// `default_action` — derived from the provider schema description.
extension type const BatchAccountDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  BatchAccountDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  BatchAccountDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const BatchAccountDefaultAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = BatchAccountDefaultAction._(TfArgLiteral('Allow'));
  static const deny = BatchAccountDefaultAction._(TfArgLiteral('Deny'));

  static const List<BatchAccountDefaultAction> values = [allow, deny];
}

/// Typed helper for the `network_profile.account_access.ip_rule` block of
/// `azurerm_batch_account` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BatchAccountIpRule {
  const BatchAccountIpRule({this.action, required this.ipRange});

  final TfArg<String>? action;

  final TfArg<String> ipRange;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'ip_range': ipRange.toTfJson(),
  };
}

/// Typed helper for the `network_profile.node_management_access` block of
/// `azurerm_batch_account` (derived from provider schema).
@immutable
final class BatchAccountNodeManagementAccess {
  const BatchAccountNodeManagementAccess({this.defaultAction, this.ipRule});

  final BatchAccountDefaultAction? defaultAction;

  final List<BatchAccountIpRule>? ipRule;

  @internal
  Map<String, Object?> encode() => {
    'default_action': ?defaultAction?.toTfJson(),
    if (ipRule != null) 'ip_rule': [for (final e in ipRule!) e.encode()],
  };
}

/// Factory wrapper for `azurerm_batch_account`.
final class AzurermBatchAccount extends Resource {
  static const String tfType = 'azurerm_batch_account';

  AzurermBatchAccount(
    super.localName, {
    List<BatchAccountAllowedAuthenticationModes>? allowedAuthenticationModes,
    TfArg<List<Map<String, Object?>>>? encryption,
    required TfArg<String> location,
    required TfArg<String> name,
    BatchAccountPoolAllocationMode? poolAllocationMode,
    TfArg<bool>? publicNetworkAccessEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    BatchAccountStorageAccountAuthenticationMode?
    storageAccountAuthenticationMode,
    RefTo<AzurermStorageAccount>? storageAccountId,
    TfArg<String>? storageAccountNodeIdentity,
    TfArg<Map<String, String>>? tags,
    BatchAccountIdentity? identity,
    BatchAccountKeyVaultReference? keyVaultReference,
    BatchAccountNetworkProfile? networkProfile,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowedAuthenticationModes != null)
             'allowed_authentication_modes': TfArg.literal([
               for (final e in allowedAuthenticationModes) e.toTfJson(),
             ]),
           'encryption': ?encryption,
           'location': location,
           'name': name,
           'pool_allocation_mode': ?poolAllocationMode,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'storage_account_authentication_mode':
               ?storageAccountAuthenticationMode,
           'storage_account_id': ?storageAccountId?.encodeAs('id'),
           'storage_account_node_identity': ?storageAccountNodeIdentity,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (keyVaultReference != null)
             'key_vault_reference': TfArg.literal(keyVaultReference.encode()),
           if (networkProfile != null)
             'network_profile': TfArg.literal(networkProfile.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBatchAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBatchAccount>`.
  RefTo<AzurermBatchAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_endpoint` attribute.
  TfRef<String> get accountEndpoint =>
      TfRef.attribute<String>(this, 'account_endpoint');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `allowed_authentication_modes` attribute.
  TfRef<List<String>> get allowedAuthenticationModes =>
      TfRef.attribute<List<String>>(this, 'allowed_authentication_modes');

  /// Reference to `encryption` attribute.
  TfRef<List<Map<String, Object?>>> get encryption =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `pool_allocation_mode` attribute.
  TfRef<String> get poolAllocationMode =>
      TfRef.attribute<String>(this, 'pool_allocation_mode');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `storage_account_authentication_mode` attribute.
  TfRef<String> get storageAccountAuthenticationMode =>
      TfRef.attribute<String>(this, 'storage_account_authentication_mode');

  /// Reference to `storage_account_id` attribute.
  TfRef<String> get storageAccountId =>
      TfRef.attribute<String>(this, 'storage_account_id');

  /// Reference to `storage_account_node_identity` attribute.
  TfRef<String> get storageAccountNodeIdentity =>
      TfRef.attribute<String>(this, 'storage_account_node_identity');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
