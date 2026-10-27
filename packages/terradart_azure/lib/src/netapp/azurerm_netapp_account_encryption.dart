// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_netapp_account_encryption`.
const Set<String> _azurermNetappAccountEncryptionSensitive = <String>{};

/// At most one of `system_assigned_identity_principal_id`, `user_assigned_identity_id` on `azurerm_netapp_account_encryption`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.systemAssignedIdentityPrincipalId(...)`.
sealed class NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityId {
  const NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityId();

  /// Sets `system_assigned_identity_principal_id`.
  const factory NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityId.systemAssignedIdentityPrincipalId(
    TfArg<String> systemAssignedIdentityPrincipalId,
  ) = NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityIdSystemAssignedIdentityPrincipalId;

  /// Sets `user_assigned_identity_id`.
  const factory NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityId.userAssignedIdentityId(
    TfArg<String> userAssignedIdentityId,
  ) = NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityIdChoice;

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

/// The [NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityId.systemAssignedIdentityPrincipalId] choice: sets `system_assigned_identity_principal_id`.
final class NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityIdSystemAssignedIdentityPrincipalId
    extends
        NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityId {
  const NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityIdSystemAssignedIdentityPrincipalId(
    this.systemAssignedIdentityPrincipalId,
  );

  final TfArg<String> systemAssignedIdentityPrincipalId;

  @internal
  @override
  String get blockKey => 'system_assigned_identity_principal_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'system_assigned_identity_principal_id': systemAssignedIdentityPrincipalId
        .toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'system_assigned_identity_principal_id': systemAssignedIdentityPrincipalId,
  };
}

/// The [NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityId.userAssignedIdentityId] choice: sets `user_assigned_identity_id`.
final class NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityIdChoice
    extends
        NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityId {
  const NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityIdChoice(
    this.userAssignedIdentityId,
  );

  final TfArg<String> userAssignedIdentityId;

  @internal
  @override
  String get blockKey => 'user_assigned_identity_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'user_assigned_identity_id': userAssignedIdentityId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'user_assigned_identity_id': userAssignedIdentityId,
  };
}

/// Factory wrapper for `azurerm_netapp_account_encryption`.
final class AzurermNetappAccountEncryption extends Resource {
  static const String tfType = 'azurerm_netapp_account_encryption';

  AzurermNetappAccountEncryption(
    super.localName, {
    TfArg<String>? crossTenantKeyVaultResourceId,
    required TfArg<String> encryptionKey,
    TfArg<String>? federatedClientId,
    required TfArg<String> netappAccountId,
    NetappAccountEncryptionSystemAssignedIdentityPrincipalIdOrUserAssignedIdentityId?
    systemAssignedIdentityPrincipalIdOrUserAssignedIdentityId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cross_tenant_key_vault_resource_id': ?crossTenantKeyVaultResourceId,
           'encryption_key': encryptionKey,
           'federated_client_id': ?federatedClientId,
           'netapp_account_id': netappAccountId,
           ...?systemAssignedIdentityPrincipalIdOrUserAssignedIdentityId
               ?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappAccountEncryptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappAccountEncryption>`.
  RefTo<AzurermNetappAccountEncryption> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cross_tenant_key_vault_resource_id` attribute.
  TfRef<String> get crossTenantKeyVaultResourceId =>
      TfRef.attribute<String>(this, 'cross_tenant_key_vault_resource_id');

  /// Reference to `encryption_key` attribute.
  TfRef<String> get encryptionKey =>
      TfRef.attribute<String>(this, 'encryption_key');

  /// Reference to `federated_client_id` attribute.
  TfRef<String> get federatedClientId =>
      TfRef.attribute<String>(this, 'federated_client_id');

  /// Reference to `netapp_account_id` attribute.
  TfRef<String> get netappAccountId =>
      TfRef.attribute<String>(this, 'netapp_account_id');

  /// Reference to `system_assigned_identity_principal_id` attribute.
  TfRef<String> get systemAssignedIdentityPrincipalId =>
      TfRef.attribute<String>(this, 'system_assigned_identity_principal_id');

  /// Reference to `user_assigned_identity_id` attribute.
  TfRef<String> get userAssignedIdentityId =>
      TfRef.attribute<String>(this, 'user_assigned_identity_id');
}
