// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_trusted_signing_account`.
const Set<String> _azurermTrustedSigningAccountSensitive = <String>{};

/// Trusted Signing Account Sku enum for `sku_name`.
extension type const TrustedSigningAccountSkuName._(TfArg<String> _)
    implements TfArg<String> {
  TrustedSigningAccountSkuName.variable(String name)
    : this._(TfArg.variable(name));
  TrustedSigningAccountSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const TrustedSigningAccountSkuName.arg(TfArg<String> arg) : this._(arg);

  static const basic = TrustedSigningAccountSkuName._(TfArgLiteral('Basic'));
  static const premium = TrustedSigningAccountSkuName._(
    TfArgLiteral('Premium'),
  );

  static const List<TrustedSigningAccountSkuName> values = [basic, premium];
}

/// Factory wrapper for `azurerm_trusted_signing_account`.
final class AzurermTrustedSigningAccount extends Resource {
  static const String tfType = 'azurerm_trusted_signing_account';

  AzurermTrustedSigningAccount(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TrustedSigningAccountSkuName skuName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermTrustedSigningAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermTrustedSigningAccount>`.
  RefTo<AzurermTrustedSigningAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_uri` attribute.
  TfRef<String> get accountUri => TfRef.attribute<String>(this, 'account_uri');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
