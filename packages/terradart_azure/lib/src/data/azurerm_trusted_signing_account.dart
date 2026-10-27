// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../trusted/azurerm_trusted_signing_account.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_trusted_signing_account`.
const Set<String> _azurermTrustedSigningAccountSensitive = <String>{};

/// Factory wrapper for `azurerm_trusted_signing_account`.
final class DataAzurermTrustedSigningAccount extends Data {
  static const String tfType = 'azurerm_trusted_signing_account';

  DataAzurermTrustedSigningAccount(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermTrustedSigningAccountSensitive;

  /// A reference to the `azurerm_trusted_signing_account` this data source reads, for
  /// arguments typed `RefTo<AzurermTrustedSigningAccount>`.
  RefTo<AzurermTrustedSigningAccount> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_uri` attribute.
  TfRef<String> get accountUri => TfRef.attribute<String>(this, 'account_uri');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
