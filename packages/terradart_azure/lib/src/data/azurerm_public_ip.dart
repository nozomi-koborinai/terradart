// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_public_ip.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_public_ip`.
const Set<String> _azurermPublicIpSensitive = <String>{};

/// Factory wrapper for `azurerm_public_ip`.
final class DataAzurermPublicIp extends Data {
  static const String tfType = 'azurerm_public_ip';

  DataAzurermPublicIp(
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
  Set<String> get sensitiveFields => _azurermPublicIpSensitive;

  /// A reference to the `azurerm_public_ip` this data source reads, for
  /// arguments typed `RefTo<AzurermPublicIp>`.
  RefTo<AzurermPublicIp> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocation_method` attribute.
  TfRef<String> get allocationMethod =>
      TfRef.attribute<String>(this, 'allocation_method');

  /// Reference to `ddos_protection_mode` attribute.
  TfRef<String> get ddosProtectionMode =>
      TfRef.attribute<String>(this, 'ddos_protection_mode');

  /// Reference to `ddos_protection_plan_id` attribute.
  TfRef<String> get ddosProtectionPlanId =>
      TfRef.attribute<String>(this, 'ddos_protection_plan_id');

  /// Reference to `domain_name_label` attribute.
  TfRef<String> get domainNameLabel =>
      TfRef.attribute<String>(this, 'domain_name_label');

  /// Reference to `domain_name_label_scope` attribute.
  TfRef<String> get domainNameLabelScope =>
      TfRef.attribute<String>(this, 'domain_name_label_scope');

  /// Reference to `edge_zone` attribute.
  TfRef<String> get edgeZone => TfRef.attribute<String>(this, 'edge_zone');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `idle_timeout_in_minutes` attribute.
  TfRef<num> get idleTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'idle_timeout_in_minutes');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `ip_tags` attribute.
  TfRef<Map<String, String>> get ipTags =>
      TfRef.attribute<Map<String, String>>(this, 'ip_tags');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `public_ip_prefix_id` attribute.
  TfRef<String> get publicIpPrefixId =>
      TfRef.attribute<String>(this, 'public_ip_prefix_id');

  /// Reference to `reverse_fqdn` attribute.
  TfRef<String> get reverseFqdn =>
      TfRef.attribute<String>(this, 'reverse_fqdn');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `sku_tier` attribute.
  TfRef<String> get skuTier => TfRef.attribute<String>(this, 'sku_tier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
