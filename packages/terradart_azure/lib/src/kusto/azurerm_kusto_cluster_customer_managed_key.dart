// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_kusto_cluster_customer_managed_key`.
const Set<String> _azurermKustoClusterCustomerManagedKeySensitive = <String>{};

/// Exactly one of `key_vault_id`, `managed_hsm_key_id` on `azurerm_kusto_cluster_customer_managed_key`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.keyVaultId(...)`.
sealed class KustoClusterCustomerManagedKeyIdentifier {
  const KustoClusterCustomerManagedKeyIdentifier();

  /// Sets `key_vault_id`.
  const factory KustoClusterCustomerManagedKeyIdentifier.keyVaultId(
    RefTo<AzurermKeyVault> keyVaultId,
  ) = KustoClusterCustomerManagedKeyIdentifierKeyVaultId;

  /// Sets `managed_hsm_key_id`.
  const factory KustoClusterCustomerManagedKeyIdentifier.managedHsmKeyId(
    TfArg<String> managedHsmKeyId,
  ) = KustoClusterCustomerManagedKeyIdentifierManagedHsmKeyId;

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

/// The [KustoClusterCustomerManagedKeyIdentifier.keyVaultId] choice: sets `key_vault_id`.
final class KustoClusterCustomerManagedKeyIdentifierKeyVaultId
    extends KustoClusterCustomerManagedKeyIdentifier {
  const KustoClusterCustomerManagedKeyIdentifierKeyVaultId(this.keyVaultId);

  final RefTo<AzurermKeyVault> keyVaultId;

  @internal
  @override
  String get blockKey => 'key_vault_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'key_vault_id': keyVaultId.encodeAs('id').toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'key_vault_id': keyVaultId.encodeAs('id'),
  };
}

/// The [KustoClusterCustomerManagedKeyIdentifier.managedHsmKeyId] choice: sets `managed_hsm_key_id`.
final class KustoClusterCustomerManagedKeyIdentifierManagedHsmKeyId
    extends KustoClusterCustomerManagedKeyIdentifier {
  const KustoClusterCustomerManagedKeyIdentifierManagedHsmKeyId(
    this.managedHsmKeyId,
  );

  final TfArg<String> managedHsmKeyId;

  @internal
  @override
  String get blockKey => 'managed_hsm_key_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'managed_hsm_key_id': managedHsmKeyId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'managed_hsm_key_id': managedHsmKeyId,
  };
}

/// Factory wrapper for `azurerm_kusto_cluster_customer_managed_key`.
final class AzurermKustoClusterCustomerManagedKey extends Resource {
  static const String tfType = 'azurerm_kusto_cluster_customer_managed_key';

  AzurermKustoClusterCustomerManagedKey(
    super.localName, {
    required TfArg<String> clusterId,
    TfArg<String>? keyName,
    required KustoClusterCustomerManagedKeyIdentifier keyIdentifier,
    TfArg<String>? keyVersion,
    TfArg<String>? userIdentity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'key_name': ?keyName,
           ...keyIdentifier.argMap,
           'key_version': ?keyVersion,
           'user_identity': ?userIdentity,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKustoClusterCustomerManagedKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoClusterCustomerManagedKey>`.
  RefTo<AzurermKustoClusterCustomerManagedKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyName => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `key_version` attribute.
  TfRef<String> get keyVersion => TfRef.attribute<String>(this, 'key_version');

  /// Reference to `managed_hsm_key_id` attribute.
  TfRef<String> get managedHsmKeyId =>
      TfRef.attribute<String>(this, 'managed_hsm_key_id');

  /// Reference to `user_identity` attribute.
  TfRef<String> get userIdentity =>
      TfRef.attribute<String>(this, 'user_identity');
}
