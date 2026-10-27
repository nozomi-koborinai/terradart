// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_logic_app_integration_account_certificate`.
const Set<String> _azurermLogicAppIntegrationAccountCertificateSensitive =
    <String>{};

/// Typed helper for the `key_vault_key` block of
/// `azurerm_logic_app_integration_account_certificate` (derived from provider schema).
@immutable
final class LogicAppIntegrationAccountCertificateKeyVaultKey {
  const LogicAppIntegrationAccountCertificateKeyVaultKey({
    required this.keyName,
    required this.keyVaultId,
    this.keyVersion,
  });

  final TfArg<String> keyName;

  final TfArg<String> keyVaultId;

  final TfArg<String>? keyVersion;

  @internal
  Map<String, Object?> encode() => {
    'key_name': keyName.toTfJson(),
    'key_vault_id': keyVaultId.toTfJson(),
    'key_version': ?keyVersion?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_logic_app_integration_account_certificate`.
final class AzurermLogicAppIntegrationAccountCertificate extends Resource {
  static const String tfType =
      'azurerm_logic_app_integration_account_certificate';

  AzurermLogicAppIntegrationAccountCertificate(
    super.localName, {
    required TfArg<String> integrationAccountName,
    TfArg<String>? metadata,
    required TfArg<String> name,
    TfArg<String>? publicCertificate,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    LogicAppIntegrationAccountCertificateKeyVaultKey? keyVaultKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'integration_account_name': integrationAccountName,
           'metadata': ?metadata,
           'name': name,
           'public_certificate': ?publicCertificate,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           if (keyVaultKey != null)
             'key_vault_key': TfArg.literal(keyVaultKey.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogicAppIntegrationAccountCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogicAppIntegrationAccountCertificate>`.
  RefTo<AzurermLogicAppIntegrationAccountCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `integration_account_name` attribute.
  TfRef<String> get integrationAccountName =>
      TfRef.attribute<String>(this, 'integration_account_name');

  /// Reference to `metadata` attribute.
  TfRef<String> get metadata => TfRef.attribute<String>(this, 'metadata');

  /// Reference to `public_certificate` attribute.
  TfRef<String> get publicCertificate =>
      TfRef.attribute<String>(this, 'public_certificate');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
