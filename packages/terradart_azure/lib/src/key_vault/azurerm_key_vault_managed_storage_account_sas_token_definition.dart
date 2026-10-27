// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_key_vault_managed_storage_account_sas_token_definition`.
const Set<String>
_azurermKeyVaultManagedStorageAccountSasTokenDefinitionSensitive = <String>{};

/// Key Vault Managed Storage Account Sas Token Definition Sas enum for `sas_type`.
extension type const KeyVaultManagedStorageAccountSasTokenDefinitionSasType._(
  TfArg<String> _
) implements TfArg<String> {
  KeyVaultManagedStorageAccountSasTokenDefinitionSasType.variable(String name)
    : this._(TfArg.variable(name));
  KeyVaultManagedStorageAccountSasTokenDefinitionSasType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const KeyVaultManagedStorageAccountSasTokenDefinitionSasType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const service =
      KeyVaultManagedStorageAccountSasTokenDefinitionSasType._(
        TfArgLiteral('service'),
      );
  static const account =
      KeyVaultManagedStorageAccountSasTokenDefinitionSasType._(
        TfArgLiteral('account'),
      );

  static const List<KeyVaultManagedStorageAccountSasTokenDefinitionSasType>
  values = [service, account];
}

/// Factory wrapper for `azurerm_key_vault_managed_storage_account_sas_token_definition`.
final class AzurermKeyVaultManagedStorageAccountSasTokenDefinition
    extends Resource {
  static const String tfType =
      'azurerm_key_vault_managed_storage_account_sas_token_definition';

  AzurermKeyVaultManagedStorageAccountSasTokenDefinition(
    super.localName, {
    required TfArg<String> managedStorageAccountId,
    required TfArg<String> name,
    required TfArg<String> sasTemplateUri,
    required KeyVaultManagedStorageAccountSasTokenDefinitionSasType sasType,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> validityPeriod,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_storage_account_id': managedStorageAccountId,
           'name': name,
           'sas_template_uri': sasTemplateUri,
           'sas_type': sasType,
           'tags': ?tags,
           'validity_period': validityPeriod,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKeyVaultManagedStorageAccountSasTokenDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKeyVaultManagedStorageAccountSasTokenDefinition>`.
  RefTo<AzurermKeyVaultManagedStorageAccountSasTokenDefinition> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `secret_id` attribute.
  TfRef<String> get secretId => TfRef.attribute<String>(this, 'secret_id');

  /// Reference to `managed_storage_account_id` attribute.
  TfRef<String> get managedStorageAccountId =>
      TfRef.attribute<String>(this, 'managed_storage_account_id');

  /// Reference to `sas_template_uri` attribute.
  TfRef<String> get sasTemplateUri =>
      TfRef.attribute<String>(this, 'sas_template_uri');

  /// Reference to `sas_type` attribute.
  TfRef<String> get sasType => TfRef.attribute<String>(this, 'sas_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `validity_period` attribute.
  TfRef<String> get validityPeriod =>
      TfRef.attribute<String>(this, 'validity_period');
}
