// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_public_ip_prefix`.
const Set<String> _azurermPublicIpPrefixSensitive = <String>{};

/// Public Ip Prefix Ip enum for `ip_version`.
extension type const PublicIpPrefixIpVersion._(TfArg<String> _)
    implements TfArg<String> {
  PublicIpPrefixIpVersion.variable(String name) : this._(TfArg.variable(name));
  PublicIpPrefixIpVersion.expression(String template)
    : this._(TfArg.expression(template));
  const PublicIpPrefixIpVersion.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = PublicIpPrefixIpVersion._(TfArgLiteral('IPv4'));
  static const ipv6 = PublicIpPrefixIpVersion._(TfArgLiteral('IPv6'));

  static const List<PublicIpPrefixIpVersion> values = [ipv4, ipv6];
}

/// Public Ip Prefix enum for `sku`.
extension type const PublicIpPrefixSku._(TfArg<String> _)
    implements TfArg<String> {
  PublicIpPrefixSku.variable(String name) : this._(TfArg.variable(name));
  PublicIpPrefixSku.expression(String template)
    : this._(TfArg.expression(template));
  const PublicIpPrefixSku.arg(TfArg<String> arg) : this._(arg);

  static const standard = PublicIpPrefixSku._(TfArgLiteral('Standard'));
  static const standardv2 = PublicIpPrefixSku._(TfArgLiteral('StandardV2'));

  static const List<PublicIpPrefixSku> values = [standard, standardv2];
}

/// Public Ip Prefix Sku enum for `sku_tier`.
extension type const PublicIpPrefixSkuTier._(TfArg<String> _)
    implements TfArg<String> {
  PublicIpPrefixSkuTier.variable(String name) : this._(TfArg.variable(name));
  PublicIpPrefixSkuTier.expression(String template)
    : this._(TfArg.expression(template));
  const PublicIpPrefixSkuTier.arg(TfArg<String> arg) : this._(arg);

  static const global = PublicIpPrefixSkuTier._(TfArgLiteral('Global'));
  static const regional = PublicIpPrefixSkuTier._(TfArgLiteral('Regional'));

  static const List<PublicIpPrefixSkuTier> values = [global, regional];
}

/// Factory wrapper for `azurerm_public_ip_prefix`.
final class AzurermPublicIpPrefix extends Resource {
  static const String tfType = 'azurerm_public_ip_prefix';

  AzurermPublicIpPrefix(
    super.localName, {
    TfArg<String>? customIpPrefixId,
    PublicIpPrefixIpVersion? ipVersion,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<num>? prefixLength,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    PublicIpPrefixSku? sku,
    PublicIpPrefixSkuTier? skuTier,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? zones,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_ip_prefix_id': ?customIpPrefixId,
           'ip_version': ?ipVersion,
           'location': location,
           'name': name,
           'prefix_length': ?prefixLength,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku': ?sku,
           'sku_tier': ?skuTier,
           'tags': ?tags,
           'zones': ?zones,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPublicIpPrefixSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPublicIpPrefix>`.
  RefTo<AzurermPublicIpPrefix> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip_prefix` attribute.
  TfRef<String> get ipPrefix => TfRef.attribute<String>(this, 'ip_prefix');

  /// Reference to `custom_ip_prefix_id` attribute.
  TfRef<String> get customIpPrefixId =>
      TfRef.attribute<String>(this, 'custom_ip_prefix_id');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `prefix_length` attribute.
  TfRef<num> get prefixLength => TfRef.attribute<num>(this, 'prefix_length');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `sku_tier` attribute.
  TfRef<String> get skuTier => TfRef.attribute<String>(this, 'sku_tier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
