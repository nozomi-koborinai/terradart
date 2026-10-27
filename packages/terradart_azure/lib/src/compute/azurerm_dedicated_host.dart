// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_dedicated_host`.
const Set<String> _azurermDedicatedHostSensitive = <String>{};

/// Factory wrapper for `azurerm_dedicated_host`.
final class AzurermDedicatedHost extends Resource {
  static const String tfType = 'azurerm_dedicated_host';

  AzurermDedicatedHost(
    super.localName, {
    TfArg<bool>? autoReplaceOnFailure,
    required TfArg<String> dedicatedHostGroupId,
    TfArg<String>? licenseType,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<num> platformFaultDomain,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_replace_on_failure': ?autoReplaceOnFailure,
           'dedicated_host_group_id': dedicatedHostGroupId,
           'license_type': ?licenseType,
           'location': location,
           'name': name,
           'platform_fault_domain': platformFaultDomain,
           'sku_name': skuName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDedicatedHostSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDedicatedHost>`.
  RefTo<AzurermDedicatedHost> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_replace_on_failure` attribute.
  TfRef<bool> get autoReplaceOnFailure =>
      TfRef.attribute<bool>(this, 'auto_replace_on_failure');

  /// Reference to `dedicated_host_group_id` attribute.
  TfRef<String> get dedicatedHostGroupId =>
      TfRef.attribute<String>(this, 'dedicated_host_group_id');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `platform_fault_domain` attribute.
  TfRef<num> get platformFaultDomain =>
      TfRef.attribute<num>(this, 'platform_fault_domain');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
