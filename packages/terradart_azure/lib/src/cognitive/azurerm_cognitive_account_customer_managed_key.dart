// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cognitive_account_customer_managed_key`.
const Set<String> _azurermCognitiveAccountCustomerManagedKeySensitive =
    <String>{};

/// Factory wrapper for `azurerm_cognitive_account_customer_managed_key`.
final class AzurermCognitiveAccountCustomerManagedKey extends Resource {
  static const String tfType = 'azurerm_cognitive_account_customer_managed_key';

  AzurermCognitiveAccountCustomerManagedKey(
    super.localName, {
    required TfArg<String> cognitiveAccountId,
    TfArg<String>? identityClientId,
    required TfArg<String> keyVaultKeyId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cognitive_account_id': cognitiveAccountId,
           'identity_client_id': ?identityClientId,
           'key_vault_key_id': keyVaultKeyId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCognitiveAccountCustomerManagedKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCognitiveAccountCustomerManagedKey>`.
  RefTo<AzurermCognitiveAccountCustomerManagedKey> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cognitive_account_id` attribute.
  TfRef<String> get cognitiveAccountId =>
      TfRef.attribute<String>(this, 'cognitive_account_id');

  /// Reference to `identity_client_id` attribute.
  TfRef<String> get identityClientId =>
      TfRef.attribute<String>(this, 'identity_client_id');

  /// Reference to `key_vault_key_id` attribute.
  TfRef<String> get keyVaultKeyId =>
      TfRef.attribute<String>(this, 'key_vault_key_id');
}
