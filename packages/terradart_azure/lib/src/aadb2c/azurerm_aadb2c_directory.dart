// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_aadb2c_directory`.
const Set<String> _azurermAadb2cDirectorySensitive = <String>{};

/// Aadb2c Directory Data Residency enum for `data_residency_location`.
extension type const Aadb2cDirectoryDataResidencyLocation._(TfArg<String> _)
    implements TfArg<String> {
  Aadb2cDirectoryDataResidencyLocation.variable(String name)
    : this._(TfArg.variable(name));
  Aadb2cDirectoryDataResidencyLocation.expression(String template)
    : this._(TfArg.expression(template));
  const Aadb2cDirectoryDataResidencyLocation.arg(TfArg<String> arg)
    : this._(arg);

  static const asiaPacific = Aadb2cDirectoryDataResidencyLocation._(
    TfArgLiteral('Asia Pacific'),
  );
  static const australia = Aadb2cDirectoryDataResidencyLocation._(
    TfArgLiteral('Australia'),
  );
  static const europe = Aadb2cDirectoryDataResidencyLocation._(
    TfArgLiteral('Europe'),
  );
  static const global = Aadb2cDirectoryDataResidencyLocation._(
    TfArgLiteral('Global'),
  );
  static const unitedStates = Aadb2cDirectoryDataResidencyLocation._(
    TfArgLiteral('United States'),
  );

  static const List<Aadb2cDirectoryDataResidencyLocation> values = [
    asiaPacific,
    australia,
    europe,
    global,
    unitedStates,
  ];
}

/// Aadb2c Directory Sku enum for `sku_name`.
extension type const Aadb2cDirectorySkuName._(TfArg<String> _)
    implements TfArg<String> {
  Aadb2cDirectorySkuName.variable(String name) : this._(TfArg.variable(name));
  Aadb2cDirectorySkuName.expression(String template)
    : this._(TfArg.expression(template));
  const Aadb2cDirectorySkuName.arg(TfArg<String> arg) : this._(arg);

  static const premiump1 = Aadb2cDirectorySkuName._(TfArgLiteral('PremiumP1'));
  static const premiump2 = Aadb2cDirectorySkuName._(TfArgLiteral('PremiumP2'));

  static const List<Aadb2cDirectorySkuName> values = [premiump1, premiump2];
}

/// Factory wrapper for `azurerm_aadb2c_directory`.
final class AzurermAadb2cDirectory extends Resource {
  static const String tfType = 'azurerm_aadb2c_directory';

  AzurermAadb2cDirectory(
    super.localName, {
    TfArg<String>? countryCode,
    required Aadb2cDirectoryDataResidencyLocation dataResidencyLocation,
    TfArg<String>? displayName,
    required TfArg<String> domainName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required Aadb2cDirectorySkuName skuName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'country_code': ?countryCode,
           'data_residency_location': dataResidencyLocation,
           'display_name': ?displayName,
           'domain_name': domainName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAadb2cDirectorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAadb2cDirectory>`.
  RefTo<AzurermAadb2cDirectory> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `billing_type` attribute.
  TfRef<String> get billingType =>
      TfRef.attribute<String>(this, 'billing_type');

  /// Reference to `effective_start_date` attribute.
  TfRef<String> get effectiveStartDate =>
      TfRef.attribute<String>(this, 'effective_start_date');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `country_code` attribute.
  TfRef<String> get countryCode =>
      TfRef.attribute<String>(this, 'country_code');

  /// Reference to `data_residency_location` attribute.
  TfRef<String> get dataResidencyLocation =>
      TfRef.attribute<String>(this, 'data_residency_location');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
