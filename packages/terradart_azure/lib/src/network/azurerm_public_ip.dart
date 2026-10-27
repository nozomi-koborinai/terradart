// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_public_ip`.
const Set<String> _azurermPublicIpSensitive = <String>{};

/// Public Ip Allocation enum for `allocation_method`.
extension type const PublicIpAllocationMethod._(TfArg<String> _)
    implements TfArg<String> {
  PublicIpAllocationMethod.variable(String name) : this._(TfArg.variable(name));
  PublicIpAllocationMethod.expression(String template)
    : this._(TfArg.expression(template));
  const PublicIpAllocationMethod.arg(TfArg<String> arg) : this._(arg);

  static const dynamic = PublicIpAllocationMethod._(TfArgLiteral('Dynamic'));
  static const static = PublicIpAllocationMethod._(TfArgLiteral('Static'));

  static const List<PublicIpAllocationMethod> values = [dynamic, static];
}

/// Public Ip Ddos Protection enum for `ddos_protection_mode`.
extension type const PublicIpDdosProtectionMode._(TfArg<String> _)
    implements TfArg<String> {
  PublicIpDdosProtectionMode.variable(String name)
    : this._(TfArg.variable(name));
  PublicIpDdosProtectionMode.expression(String template)
    : this._(TfArg.expression(template));
  const PublicIpDdosProtectionMode.arg(TfArg<String> arg) : this._(arg);

  static const disabled = PublicIpDdosProtectionMode._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = PublicIpDdosProtectionMode._(TfArgLiteral('Enabled'));
  static const virtualnetworkinherited = PublicIpDdosProtectionMode._(
    TfArgLiteral('VirtualNetworkInherited'),
  );

  static const List<PublicIpDdosProtectionMode> values = [
    disabled,
    enabled,
    virtualnetworkinherited,
  ];
}

/// Public Ip Domain Name Label enum for `domain_name_label_scope`.
extension type const PublicIpDomainNameLabelScope._(TfArg<String> _)
    implements TfArg<String> {
  PublicIpDomainNameLabelScope.variable(String name)
    : this._(TfArg.variable(name));
  PublicIpDomainNameLabelScope.expression(String template)
    : this._(TfArg.expression(template));
  const PublicIpDomainNameLabelScope.arg(TfArg<String> arg) : this._(arg);

  static const noreuse = PublicIpDomainNameLabelScope._(
    TfArgLiteral('NoReuse'),
  );
  static const resourcegroupreuse = PublicIpDomainNameLabelScope._(
    TfArgLiteral('ResourceGroupReuse'),
  );
  static const subscriptionreuse = PublicIpDomainNameLabelScope._(
    TfArgLiteral('SubscriptionReuse'),
  );
  static const tenantreuse = PublicIpDomainNameLabelScope._(
    TfArgLiteral('TenantReuse'),
  );

  static const List<PublicIpDomainNameLabelScope> values = [
    noreuse,
    resourcegroupreuse,
    subscriptionreuse,
    tenantreuse,
  ];
}

/// Public Ip enum for `ip_version`.
extension type const PublicIpVersion._(TfArg<String> _)
    implements TfArg<String> {
  PublicIpVersion.variable(String name) : this._(TfArg.variable(name));
  PublicIpVersion.expression(String template)
    : this._(TfArg.expression(template));
  const PublicIpVersion.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = PublicIpVersion._(TfArgLiteral('IPv4'));
  static const ipv6 = PublicIpVersion._(TfArgLiteral('IPv6'));

  static const List<PublicIpVersion> values = [ipv4, ipv6];
}

/// Public Ip enum for `sku`.
extension type const PublicIpSku._(TfArg<String> _) implements TfArg<String> {
  PublicIpSku.variable(String name) : this._(TfArg.variable(name));
  PublicIpSku.expression(String template) : this._(TfArg.expression(template));
  const PublicIpSku.arg(TfArg<String> arg) : this._(arg);

  static const basic = PublicIpSku._(TfArgLiteral('Basic'));
  static const standard = PublicIpSku._(TfArgLiteral('Standard'));
  static const standardv2 = PublicIpSku._(TfArgLiteral('StandardV2'));

  static const List<PublicIpSku> values = [basic, standard, standardv2];
}

/// Public Ip Sku enum for `sku_tier`.
extension type const PublicIpSkuTier._(TfArg<String> _)
    implements TfArg<String> {
  PublicIpSkuTier.variable(String name) : this._(TfArg.variable(name));
  PublicIpSkuTier.expression(String template)
    : this._(TfArg.expression(template));
  const PublicIpSkuTier.arg(TfArg<String> arg) : this._(arg);

  static const global = PublicIpSkuTier._(TfArgLiteral('Global'));
  static const regional = PublicIpSkuTier._(TfArgLiteral('Regional'));

  static const List<PublicIpSkuTier> values = [global, regional];
}

/// Factory wrapper for `azurerm_public_ip`.
final class AzurermPublicIp extends Resource {
  static const String tfType = 'azurerm_public_ip';

  AzurermPublicIp(
    super.localName, {
    required PublicIpAllocationMethod allocationMethod,
    PublicIpDdosProtectionMode? ddosProtectionMode,
    TfArg<String>? ddosProtectionPlanId,
    TfArg<String>? domainNameLabel,
    PublicIpDomainNameLabelScope? domainNameLabelScope,
    TfArg<String>? edgeZone,
    TfArg<num>? idleTimeoutInMinutes,
    TfArg<Map<String, String>>? ipTags,
    PublicIpVersion? ipVersion,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? publicIpPrefixId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? reverseFqdn,
    PublicIpSku? sku,
    PublicIpSkuTier? skuTier,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? zones,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocation_method': allocationMethod,
           'ddos_protection_mode': ?ddosProtectionMode,
           'ddos_protection_plan_id': ?ddosProtectionPlanId,
           'domain_name_label': ?domainNameLabel,
           'domain_name_label_scope': ?domainNameLabelScope,
           'edge_zone': ?edgeZone,
           'idle_timeout_in_minutes': ?idleTimeoutInMinutes,
           'ip_tags': ?ipTags,
           'ip_version': ?ipVersion,
           'location': location,
           'name': name,
           'public_ip_prefix_id': ?publicIpPrefixId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'reverse_fqdn': ?reverseFqdn,
           'sku': ?sku,
           'sku_tier': ?skuTier,
           'tags': ?tags,
           'zones': ?zones,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPublicIpSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPublicIp>`.
  RefTo<AzurermPublicIp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

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

  /// Reference to `idle_timeout_in_minutes` attribute.
  TfRef<num> get idleTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'idle_timeout_in_minutes');

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

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

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
}
