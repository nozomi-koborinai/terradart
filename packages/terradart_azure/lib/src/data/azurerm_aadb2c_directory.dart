// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../aadb2c/azurerm_aadb2c_directory.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_aadb2c_directory`.
const Set<String> _azurermAadb2cDirectorySensitive = <String>{};

/// Factory wrapper for `azurerm_aadb2c_directory`.
final class DataAzurermAadb2cDirectory extends Data {
  static const String tfType = 'azurerm_aadb2c_directory';

  DataAzurermAadb2cDirectory(
    super.localName, {
    required TfArg<String> domainName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain_name': domainName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAadb2cDirectorySensitive;

  /// A reference to the `azurerm_aadb2c_directory` this data source reads, for
  /// arguments typed `RefTo<AzurermAadb2cDirectory>`.
  RefTo<AzurermAadb2cDirectory> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `billing_type` attribute.
  TfRef<String> get billingType =>
      TfRef.attribute<String>(this, 'billing_type');

  /// Reference to `data_residency_location` attribute.
  TfRef<String> get dataResidencyLocation =>
      TfRef.attribute<String>(this, 'data_residency_location');

  /// Reference to `effective_start_date` attribute.
  TfRef<String> get effectiveStartDate =>
      TfRef.attribute<String>(this, 'effective_start_date');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
