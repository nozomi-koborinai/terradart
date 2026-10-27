// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../key_vault/azurerm_key_vault_access_policy.dart';

/// Sensitive field paths for `azurerm_key_vault_access_policy`.
const Set<String> _azurermKeyVaultAccessPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_key_vault_access_policy`.
final class DataAzurermKeyVaultAccessPolicy extends Data {
  static const String tfType = 'azurerm_key_vault_access_policy';

  DataAzurermKeyVaultAccessPolicy(
    super.localName, {
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields => _azurermKeyVaultAccessPolicySensitive;

  /// A reference to the `azurerm_key_vault_access_policy` this data source reads, for
  /// arguments typed `RefTo<AzurermKeyVaultAccessPolicy>`.
  RefTo<AzurermKeyVaultAccessPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_permissions` attribute.
  TfRef<List<String>> get certificatePermissions =>
      TfRef.attribute<List<String>>(this, 'certificate_permissions');

  /// Reference to `key_permissions` attribute.
  TfRef<List<String>> get keyPermissions =>
      TfRef.attribute<List<String>>(this, 'key_permissions');

  /// Reference to `secret_permissions` attribute.
  TfRef<List<String>> get secretPermissions =>
      TfRef.attribute<List<String>>(this, 'secret_permissions');
}
