// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../ec2/aws_vpc.dart' show AwsVpc;

/// Sensitive field paths for `aws_vpc_endpoint`.
const Set<String> _awsVpcEndpointSensitive = <String>{};

/// Vpc Endpoint Ip Address enum for `ip_address_type`.
extension type const VpcEndpointIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  VpcEndpointIpAddressType.variable(String name) : this._(TfArg.variable(name));
  VpcEndpointIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const VpcEndpointIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = VpcEndpointIpAddressType._(TfArgLiteral('ipv4'));
  static const dualstack = VpcEndpointIpAddressType._(
    TfArgLiteral('dualstack'),
  );
  static const ipv6 = VpcEndpointIpAddressType._(TfArgLiteral('ipv6'));

  static const List<VpcEndpointIpAddressType> values = [ipv4, dualstack, ipv6];
}

/// Vpc Endpoint enum for `vpc_endpoint_type`.
extension type const VpcEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  VpcEndpointType.variable(String name) : this._(TfArg.variable(name));
  VpcEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const VpcEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const interface = VpcEndpointType._(TfArgLiteral('Interface'));
  static const gateway = VpcEndpointType._(TfArgLiteral('Gateway'));
  static const gatewayloadbalancer = VpcEndpointType._(
    TfArgLiteral('GatewayLoadBalancer'),
  );
  static const resource = VpcEndpointType._(TfArgLiteral('Resource'));
  static const servicenetwork = VpcEndpointType._(
    TfArgLiteral('ServiceNetwork'),
  );

  static const List<VpcEndpointType> values = [
    interface,
    gateway,
    gatewayloadbalancer,
    resource,
    servicenetwork,
  ];
}

/// At most one of `resource_configuration_arn`, `service_name`, `service_network_arn` on `aws_vpc_endpoint`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.resourceConfigurationArn(...)`.
sealed class VpcEndpointService {
  const VpcEndpointService();

  /// Sets `resource_configuration_arn`.
  const factory VpcEndpointService.resourceConfigurationArn(
    TfArg<String> resourceConfigurationArn,
  ) = VpcEndpointServiceResourceConfigurationArn;

  /// Sets `service_name`.
  const factory VpcEndpointService.serviceName(TfArg<String> serviceName) =
      VpcEndpointServiceName;

  /// Sets `service_network_arn`.
  const factory VpcEndpointService.serviceNetworkArn(
    TfArg<String> serviceNetworkArn,
  ) = VpcEndpointServiceNetworkArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [VpcEndpointService.resourceConfigurationArn] choice: sets `resource_configuration_arn`.
final class VpcEndpointServiceResourceConfigurationArn
    extends VpcEndpointService {
  const VpcEndpointServiceResourceConfigurationArn(
    this.resourceConfigurationArn,
  );

  final TfArg<String> resourceConfigurationArn;

  @override
  String get blockKey => 'resource_configuration_arn';

  @override
  Map<String, Object?> encode() => {
    'resource_configuration_arn': resourceConfigurationArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'resource_configuration_arn': resourceConfigurationArn,
  };
}

/// The [VpcEndpointService.serviceName] choice: sets `service_name`.
final class VpcEndpointServiceName extends VpcEndpointService {
  const VpcEndpointServiceName(this.serviceName);

  final TfArg<String> serviceName;

  @override
  String get blockKey => 'service_name';

  @override
  Map<String, Object?> encode() => {'service_name': serviceName.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'service_name': serviceName};
}

/// The [VpcEndpointService.serviceNetworkArn] choice: sets `service_network_arn`.
final class VpcEndpointServiceNetworkArn extends VpcEndpointService {
  const VpcEndpointServiceNetworkArn(this.serviceNetworkArn);

  final TfArg<String> serviceNetworkArn;

  @override
  String get blockKey => 'service_network_arn';

  @override
  Map<String, Object?> encode() => {
    'service_network_arn': serviceNetworkArn.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'service_network_arn': serviceNetworkArn,
  };
}

/// Typed helper for the `dns_options` block of
/// `aws_vpc_endpoint` (derived from provider schema).
@immutable
final class VpcEndpointDnsOptions {
  const VpcEndpointDnsOptions({
    this.dnsRecordIpType,
    this.privateDnsOnlyForInboundResolverEndpoint,
    this.privateDnsPreference,
    this.privateDnsSpecifiedDomains,
  });

  final VpcEndpointDnsRecordIpType? dnsRecordIpType;

  final TfArg<bool>? privateDnsOnlyForInboundResolverEndpoint;

  final VpcEndpointPrivateDnsPreference? privateDnsPreference;

  final TfArg<List<String>>? privateDnsSpecifiedDomains;

  Map<String, Object?> encode() => {
    'dns_record_ip_type': ?dnsRecordIpType?.toTfJson(),
    'private_dns_only_for_inbound_resolver_endpoint':
        ?privateDnsOnlyForInboundResolverEndpoint?.toTfJson(),
    'private_dns_preference': ?privateDnsPreference?.toTfJson(),
    'private_dns_specified_domains': ?privateDnsSpecifiedDomains?.toTfJson(),
  };
}

/// `dns_record_ip_type` — derived from the provider schema description.
extension type const VpcEndpointDnsRecordIpType._(TfArg<String> _)
    implements TfArg<String> {
  VpcEndpointDnsRecordIpType.variable(String name)
    : this._(TfArg.variable(name));
  VpcEndpointDnsRecordIpType.expression(String template)
    : this._(TfArg.expression(template));
  const VpcEndpointDnsRecordIpType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = VpcEndpointDnsRecordIpType._(TfArgLiteral('ipv4'));
  static const dualstack = VpcEndpointDnsRecordIpType._(
    TfArgLiteral('dualstack'),
  );
  static const ipv6 = VpcEndpointDnsRecordIpType._(TfArgLiteral('ipv6'));
  static const serviceDefined = VpcEndpointDnsRecordIpType._(
    TfArgLiteral('service-defined'),
  );

  static const List<VpcEndpointDnsRecordIpType> values = [
    ipv4,
    dualstack,
    ipv6,
    serviceDefined,
  ];
}

/// `private_dns_preference` — derived from the provider schema description.
extension type const VpcEndpointPrivateDnsPreference._(TfArg<String> _)
    implements TfArg<String> {
  VpcEndpointPrivateDnsPreference.variable(String name)
    : this._(TfArg.variable(name));
  VpcEndpointPrivateDnsPreference.expression(String template)
    : this._(TfArg.expression(template));
  const VpcEndpointPrivateDnsPreference.arg(TfArg<String> arg) : this._(arg);

  static const allDomains = VpcEndpointPrivateDnsPreference._(
    TfArgLiteral('ALL_DOMAINS'),
  );
  static const verifiedDomainsOnly = VpcEndpointPrivateDnsPreference._(
    TfArgLiteral('VERIFIED_DOMAINS_ONLY'),
  );
  static const verifiedDomainsAndSpecifiedDomains =
      VpcEndpointPrivateDnsPreference._(
        TfArgLiteral('VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS'),
      );
  static const specifiedDomainsOnly = VpcEndpointPrivateDnsPreference._(
    TfArgLiteral('SPECIFIED_DOMAINS_ONLY'),
  );

  static const List<VpcEndpointPrivateDnsPreference> values = [
    allDomains,
    verifiedDomainsOnly,
    verifiedDomainsAndSpecifiedDomains,
    specifiedDomainsOnly,
  ];
}

/// Typed helper for the `subnet_configuration` block of
/// `aws_vpc_endpoint` (derived from provider schema).
@immutable
final class VpcEndpointSubnetConfiguration {
  const VpcEndpointSubnetConfiguration({this.ipv4, this.ipv6, this.subnetId});

  final TfArg<String>? ipv4;

  final TfArg<String>? ipv6;

  final RefTo<AwsSubnet>? subnetId;

  Map<String, Object?> encode() => {
    'ipv4': ?ipv4?.toTfJson(),
    'ipv6': ?ipv6?.toTfJson(),
    'subnet_id': ?subnetId?.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_vpc_endpoint`.
final class AwsVpcEndpoint extends Resource {
  static const String tfType = 'aws_vpc_endpoint';

  AwsVpcEndpoint(
    super.localName, {
    TfArg<bool>? autoAccept,
    VpcEndpointIpAddressType? ipAddressType,
    TfArg<String>? policy,
    TfArg<bool>? privateDnsEnabled,
    TfArg<String>? region,
    VpcEndpointService? service,
    TfArg<List<String>>? routeTableIds,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    TfArg<String>? serviceRegion,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    VpcEndpointType? vpcEndpointType,
    required RefTo<AwsVpc> vpcId,
    VpcEndpointDnsOptions? dnsOptions,
    List<VpcEndpointSubnetConfiguration>? subnetConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_accept': ?autoAccept,
           'ip_address_type': ?ipAddressType,
           'policy': ?policy,
           'private_dns_enabled': ?privateDnsEnabled,
           'region': ?region,
           ...?service?.argMap,
           'route_table_ids': ?routeTableIds,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'service_region': ?serviceRegion,
           'subnet_ids': ?subnetIds?.encodeAs('id'),
           'tags': ?tags,
           'vpc_endpoint_type': ?vpcEndpointType,
           'vpc_id': vpcId.encodeAs('id'),
           if (dnsOptions != null)
             'dns_options': TfArg.literal(dnsOptions.encode()),
           if (subnetConfiguration != null)
             'subnet_configuration': TfArg.literal([
               for (final e in subnetConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpcEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcEndpoint>`.
  RefTo<AwsVpcEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cidr_blocks` attribute.
  TfRef<List<String>> get cidrBlocks =>
      TfRef.attribute<List<String>>(this, 'cidr_blocks');

  /// Reference to `dns_entry` attribute.
  TfRef<List<Map<String, Object?>>> get dnsEntry =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_entry');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `prefix_list_id` attribute.
  TfRef<String> get prefixListId =>
      TfRef.attribute<String>(this, 'prefix_list_id');

  /// Reference to `requester_managed` attribute.
  TfRef<bool> get requesterManaged =>
      TfRef.attribute<bool>(this, 'requester_managed');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `auto_accept` attribute.
  TfRef<bool> get autoAccept => TfRef.attribute<bool>(this, 'auto_accept');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `private_dns_enabled` attribute.
  TfRef<bool> get privateDnsEnabled =>
      TfRef.attribute<bool>(this, 'private_dns_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_configuration_arn` attribute.
  TfRef<String> get resourceConfigurationArn =>
      TfRef.attribute<String>(this, 'resource_configuration_arn');

  /// Reference to `route_table_ids` attribute.
  TfRef<List<String>> get routeTableIds =>
      TfRef.attribute<List<String>>(this, 'route_table_ids');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');

  /// Reference to `service_network_arn` attribute.
  TfRef<String> get serviceNetworkArn =>
      TfRef.attribute<String>(this, 'service_network_arn');

  /// Reference to `service_region` attribute.
  TfRef<String> get serviceRegion =>
      TfRef.attribute<String>(this, 'service_region');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vpc_endpoint_type` attribute.
  TfRef<String> get vpcEndpointType =>
      TfRef.attribute<String>(this, 'vpc_endpoint_type');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
