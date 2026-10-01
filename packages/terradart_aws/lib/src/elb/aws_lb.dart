// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_lb`.
const Set<String> _awsLbSensitive = <String>{};

/// Lb Desync Mitigation enum for `desync_mitigation_mode`.
extension type const LbDesyncMitigationMode._(TfArg<String> _)
    implements TfArg<String> {
  LbDesyncMitigationMode.variable(String name) : this._(TfArg.variable(name));
  LbDesyncMitigationMode.expression(String template)
    : this._(TfArg.expression(template));
  const LbDesyncMitigationMode.arg(TfArg<String> arg) : this._(arg);

  static const monitor = LbDesyncMitigationMode._(TfArgLiteral('monitor'));
  static const defensive = LbDesyncMitigationMode._(TfArgLiteral('defensive'));
  static const strictest = LbDesyncMitigationMode._(TfArgLiteral('strictest'));

  static const List<LbDesyncMitigationMode> values = [
    monitor,
    defensive,
    strictest,
  ];
}

/// Lb Dns Record Client Routing enum for `dns_record_client_routing_policy`.
extension type const LbDnsRecordClientRoutingPolicy._(TfArg<String> _)
    implements TfArg<String> {
  LbDnsRecordClientRoutingPolicy.variable(String name)
    : this._(TfArg.variable(name));
  LbDnsRecordClientRoutingPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const LbDnsRecordClientRoutingPolicy.arg(TfArg<String> arg) : this._(arg);

  static const availabilityZoneAffinity = LbDnsRecordClientRoutingPolicy._(
    TfArgLiteral('availability_zone_affinity'),
  );
  static const partialAvailabilityZoneAffinity =
      LbDnsRecordClientRoutingPolicy._(
        TfArgLiteral('partial_availability_zone_affinity'),
      );
  static const anyAvailabilityZone = LbDnsRecordClientRoutingPolicy._(
    TfArgLiteral('any_availability_zone'),
  );

  static const List<LbDnsRecordClientRoutingPolicy> values = [
    availabilityZoneAffinity,
    partialAvailabilityZoneAffinity,
    anyAvailabilityZone,
  ];
}

/// Lb Enable Prefix For Ipv6 Source enum for `enable_prefix_for_ipv6_source_nat`.
extension type const LbEnablePrefixForIpv6SourceNat._(TfArg<String> _)
    implements TfArg<String> {
  LbEnablePrefixForIpv6SourceNat.variable(String name)
    : this._(TfArg.variable(name));
  LbEnablePrefixForIpv6SourceNat.expression(String template)
    : this._(TfArg.expression(template));
  const LbEnablePrefixForIpv6SourceNat.arg(TfArg<String> arg) : this._(arg);

  static const on = LbEnablePrefixForIpv6SourceNat._(TfArgLiteral('on'));
  static const off = LbEnablePrefixForIpv6SourceNat._(TfArgLiteral('off'));

  static const List<LbEnablePrefixForIpv6SourceNat> values = [on, off];
}

/// Lb Enforce Security Group Inbound Rules On Private Link enum for `enforce_security_group_inbound_rules_on_private_link_traffic`.
extension type const LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic._(
  TfArg<String> _
) implements TfArg<String> {
  LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic.variable(String name)
    : this._(TfArg.variable(name));
  LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const on = LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic._(
    TfArgLiteral('on'),
  );
  static const off = LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic._(
    TfArgLiteral('off'),
  );

  static const List<LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic>
  values = [on, off];
}

/// Lb Ip Address enum for `ip_address_type`.
extension type const LbIpAddressType._(TfArg<String> _)
    implements TfArg<String> {
  LbIpAddressType.variable(String name) : this._(TfArg.variable(name));
  LbIpAddressType.expression(String template)
    : this._(TfArg.expression(template));
  const LbIpAddressType.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = LbIpAddressType._(TfArgLiteral('ipv4'));
  static const dualstack = LbIpAddressType._(TfArgLiteral('dualstack'));
  static const dualstackWithoutPublicIpv4 = LbIpAddressType._(
    TfArgLiteral('dualstack-without-public-ipv4'),
  );

  static const List<LbIpAddressType> values = [
    ipv4,
    dualstack,
    dualstackWithoutPublicIpv4,
  ];
}

/// Lb Load Balancer enum for `load_balancer_type`.
extension type const LbLoadBalancerType._(TfArg<String> _)
    implements TfArg<String> {
  LbLoadBalancerType.variable(String name) : this._(TfArg.variable(name));
  LbLoadBalancerType.expression(String template)
    : this._(TfArg.expression(template));
  const LbLoadBalancerType.arg(TfArg<String> arg) : this._(arg);

  static const application = LbLoadBalancerType._(TfArgLiteral('application'));
  static const network = LbLoadBalancerType._(TfArgLiteral('network'));
  static const gateway = LbLoadBalancerType._(TfArgLiteral('gateway'));

  static const List<LbLoadBalancerType> values = [
    application,
    network,
    gateway,
  ];
}

/// Lb Xff Header Processing enum for `xff_header_processing_mode`.
extension type const LbXffHeaderProcessingMode._(TfArg<String> _)
    implements TfArg<String> {
  LbXffHeaderProcessingMode.variable(String name)
    : this._(TfArg.variable(name));
  LbXffHeaderProcessingMode.expression(String template)
    : this._(TfArg.expression(template));
  const LbXffHeaderProcessingMode.arg(TfArg<String> arg) : this._(arg);

  static const append = LbXffHeaderProcessingMode._(TfArgLiteral('append'));
  static const preserve = LbXffHeaderProcessingMode._(TfArgLiteral('preserve'));
  static const remove = LbXffHeaderProcessingMode._(TfArgLiteral('remove'));

  static const List<LbXffHeaderProcessingMode> values = [
    append,
    preserve,
    remove,
  ];
}

/// Exactly one of `subnet_mapping`, `subnets` on `aws_lb`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.subnetMapping(...)`.
sealed class LbSubnet {
  const LbSubnet();

  /// Sets `subnet_mapping`.
  const factory LbSubnet.subnetMapping(List<LbSubnetMapping> subnetMapping) =
      LbSubnetMappingChoice;

  /// Sets `subnets`.
  const factory LbSubnet.subnets(TfArg<List<RefTo<AwsSubnet>>> subnets) =
      LbSubnetSubnets;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LbSubnet.subnetMapping] choice: sets `subnet_mapping`.
final class LbSubnetMappingChoice extends LbSubnet {
  const LbSubnetMappingChoice(this.subnetMapping);

  final List<LbSubnetMapping> subnetMapping;

  @override
  String get blockKey => 'subnet_mapping';

  @override
  Map<String, Object?> encode() => {
    'subnet_mapping': [for (final e in subnetMapping) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'subnet_mapping': TfArg.literal([
      for (final e in subnetMapping) e.encode(),
    ]),
  };
}

/// The [LbSubnet.subnets] choice: sets `subnets`.
final class LbSubnetSubnets extends LbSubnet {
  const LbSubnetSubnets(this.subnets);

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  @override
  String get blockKey => 'subnets';

  @override
  Map<String, Object?> encode() => {
    'subnets': subnets.encodeAs('id').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'subnets': subnets.encodeAs('id')};
}

/// At most one of `name`, `name_prefix` on `aws_lb`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class LbName {
  const LbName();

  /// Sets `name`.
  const factory LbName.name(TfArg<String> name) = LbNameChoice;

  /// Sets `name_prefix`.
  const factory LbName.namePrefix(TfArg<String> namePrefix) = LbNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LbName.name] choice: sets `name`.
final class LbNameChoice extends LbName {
  const LbNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [LbName.namePrefix] choice: sets `name_prefix`.
final class LbNamePrefix extends LbName {
  const LbNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `access_logs` block of
/// `aws_lb` (derived from provider schema).
@immutable
final class LbAccessLogs {
  const LbAccessLogs({required this.bucket, this.enabled, this.prefix});

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<bool>? enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
  };
}

/// Typed helper for the `connection_logs` block of
/// `aws_lb` (derived from provider schema).
@immutable
final class LbConnectionLogs {
  const LbConnectionLogs({required this.bucket, this.enabled, this.prefix});

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<bool>? enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
  };
}

/// Typed helper for the `health_check_logs` block of
/// `aws_lb` (derived from provider schema).
@immutable
final class LbHealthCheckLogs {
  const LbHealthCheckLogs({required this.bucket, this.enabled, this.prefix});

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<bool>? enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
  };
}

/// Typed helper for the `ipam_pools` block of
/// `aws_lb` (derived from provider schema).
@immutable
final class LbIpamPools {
  const LbIpamPools({required this.ipv4IpamPoolId});

  final TfArg<String> ipv4IpamPoolId;

  Map<String, Object?> encode() => {
    'ipv4_ipam_pool_id': ipv4IpamPoolId.toTfJson(),
  };
}

/// Typed helper for the `minimum_load_balancer_capacity` block of
/// `aws_lb` (derived from provider schema).
@immutable
final class LbMinimumLoadBalancerCapacity {
  const LbMinimumLoadBalancerCapacity({required this.capacityUnits});

  final TfArg<num> capacityUnits;

  Map<String, Object?> encode() => {'capacity_units': capacityUnits.toTfJson()};
}

/// Typed helper for the `subnet_mapping` block of
/// `aws_lb` (derived from provider schema).
@immutable
final class LbSubnetMapping {
  const LbSubnetMapping({
    this.allocationId,
    this.ipv6Address,
    this.privateIpv4Address,
    required this.subnetId,
  });

  final TfArg<String>? allocationId;

  final TfArg<String>? ipv6Address;

  final TfArg<String>? privateIpv4Address;

  final RefTo<AwsSubnet> subnetId;

  Map<String, Object?> encode() => {
    'allocation_id': ?allocationId?.toTfJson(),
    'ipv6_address': ?ipv6Address?.toTfJson(),
    'private_ipv4_address': ?privateIpv4Address?.toTfJson(),
    'subnet_id': subnetId.encodeAs('id').toTfJson(),
  };
}

/// Factory wrapper for `aws_lb`.
final class AwsLb extends Resource {
  static const String tfType = 'aws_lb';

  AwsLb(
    super.localName, {
    TfArg<num>? clientKeepAlive,
    TfArg<String>? customerOwnedIpv4Pool,
    LbDesyncMitigationMode? desyncMitigationMode,
    LbDnsRecordClientRoutingPolicy? dnsRecordClientRoutingPolicy,
    TfArg<bool>? dropInvalidHeaderFields,
    TfArg<bool>? enableCrossZoneLoadBalancing,
    TfArg<bool>? enableDeletionProtection,
    TfArg<bool>? enableHttp2,
    LbEnablePrefixForIpv6SourceNat? enablePrefixForIpv6SourceNat,
    TfArg<bool>? enableTlsVersionAndCipherSuiteHeaders,
    TfArg<bool>? enableWafFailOpen,
    TfArg<bool>? enableXffClientPort,
    TfArg<bool>? enableZonalShift,
    LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic?
    enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
    TfArg<num>? idleTimeout,
    TfArg<bool>? internal,
    LbIpAddressType? ipAddressType,
    LbLoadBalancerType? loadBalancerType,
    LbName? name,
    TfArg<bool>? preserveHostHeader,
    TfArg<String>? region,
    TfArg<num>? secondaryIpsAutoAssignedPerSubnet,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    required LbSubnet subnet,
    TfArg<Map<String, String>>? tags,
    LbXffHeaderProcessingMode? xffHeaderProcessingMode,
    LbAccessLogs? accessLogs,
    LbConnectionLogs? connectionLogs,
    LbHealthCheckLogs? healthCheckLogs,
    LbIpamPools? ipamPools,
    LbMinimumLoadBalancerCapacity? minimumLoadBalancerCapacity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_keep_alive': ?clientKeepAlive,
           'customer_owned_ipv4_pool': ?customerOwnedIpv4Pool,
           'desync_mitigation_mode': ?desyncMitigationMode,
           'dns_record_client_routing_policy': ?dnsRecordClientRoutingPolicy,
           'drop_invalid_header_fields': ?dropInvalidHeaderFields,
           'enable_cross_zone_load_balancing': ?enableCrossZoneLoadBalancing,
           'enable_deletion_protection': ?enableDeletionProtection,
           'enable_http2': ?enableHttp2,
           'enable_prefix_for_ipv6_source_nat': ?enablePrefixForIpv6SourceNat,
           'enable_tls_version_and_cipher_suite_headers':
               ?enableTlsVersionAndCipherSuiteHeaders,
           'enable_waf_fail_open': ?enableWafFailOpen,
           'enable_xff_client_port': ?enableXffClientPort,
           'enable_zonal_shift': ?enableZonalShift,
           'enforce_security_group_inbound_rules_on_private_link_traffic':
               ?enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
           'idle_timeout': ?idleTimeout,
           'internal': ?internal,
           'ip_address_type': ?ipAddressType,
           'load_balancer_type': ?loadBalancerType,
           ...?name?.argMap,
           'preserve_host_header': ?preserveHostHeader,
           'region': ?region,
           'secondary_ips_auto_assigned_per_subnet':
               ?secondaryIpsAutoAssignedPerSubnet,
           'security_groups': ?securityGroups?.encodeAs('id'),
           ...subnet.argMap,
           'tags': ?tags,
           'xff_header_processing_mode': ?xffHeaderProcessingMode,
           if (accessLogs != null)
             'access_logs': TfArg.literal(accessLogs.encode()),
           if (connectionLogs != null)
             'connection_logs': TfArg.literal(connectionLogs.encode()),
           if (healthCheckLogs != null)
             'health_check_logs': TfArg.literal(healthCheckLogs.encode()),
           if (ipamPools != null)
             'ipam_pools': TfArg.literal(ipamPools.encode()),
           if (minimumLoadBalancerCapacity != null)
             'minimum_load_balancer_capacity': TfArg.literal(
               minimumLoadBalancerCapacity.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLb>`.
  RefTo<AwsLb> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `arn_suffix` attribute.
  TfRef<String> get arnSuffix => TfRef.attribute<String>(this, 'arn_suffix');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');

  /// Reference to `client_keep_alive` attribute.
  TfRef<num> get clientKeepAlive =>
      TfRef.attribute<num>(this, 'client_keep_alive');

  /// Reference to `customer_owned_ipv4_pool` attribute.
  TfRef<String> get customerOwnedIpv4Pool =>
      TfRef.attribute<String>(this, 'customer_owned_ipv4_pool');

  /// Reference to `desync_mitigation_mode` attribute.
  TfRef<String> get desyncMitigationMode =>
      TfRef.attribute<String>(this, 'desync_mitigation_mode');

  /// Reference to `dns_record_client_routing_policy` attribute.
  TfRef<String> get dnsRecordClientRoutingPolicy =>
      TfRef.attribute<String>(this, 'dns_record_client_routing_policy');

  /// Reference to `drop_invalid_header_fields` attribute.
  TfRef<bool> get dropInvalidHeaderFields =>
      TfRef.attribute<bool>(this, 'drop_invalid_header_fields');

  /// Reference to `enable_cross_zone_load_balancing` attribute.
  TfRef<bool> get enableCrossZoneLoadBalancing =>
      TfRef.attribute<bool>(this, 'enable_cross_zone_load_balancing');

  /// Reference to `enable_deletion_protection` attribute.
  TfRef<bool> get enableDeletionProtection =>
      TfRef.attribute<bool>(this, 'enable_deletion_protection');

  /// Reference to `enable_http2` attribute.
  TfRef<bool> get enableHttp2 => TfRef.attribute<bool>(this, 'enable_http2');

  /// Reference to `enable_prefix_for_ipv6_source_nat` attribute.
  TfRef<String> get enablePrefixForIpv6SourceNat =>
      TfRef.attribute<String>(this, 'enable_prefix_for_ipv6_source_nat');

  /// Reference to `enable_tls_version_and_cipher_suite_headers` attribute.
  TfRef<bool> get enableTlsVersionAndCipherSuiteHeaders =>
      TfRef.attribute<bool>(
        this,
        'enable_tls_version_and_cipher_suite_headers',
      );

  /// Reference to `enable_waf_fail_open` attribute.
  TfRef<bool> get enableWafFailOpen =>
      TfRef.attribute<bool>(this, 'enable_waf_fail_open');

  /// Reference to `enable_xff_client_port` attribute.
  TfRef<bool> get enableXffClientPort =>
      TfRef.attribute<bool>(this, 'enable_xff_client_port');

  /// Reference to `enable_zonal_shift` attribute.
  TfRef<bool> get enableZonalShift =>
      TfRef.attribute<bool>(this, 'enable_zonal_shift');

  /// Reference to `enforce_security_group_inbound_rules_on_private_link_traffic` attribute.
  TfRef<String> get enforceSecurityGroupInboundRulesOnPrivateLinkTraffic =>
      TfRef.attribute<String>(
        this,
        'enforce_security_group_inbound_rules_on_private_link_traffic',
      );

  /// Reference to `idle_timeout` attribute.
  TfRef<num> get idleTimeout => TfRef.attribute<num>(this, 'idle_timeout');

  /// Reference to `internal` attribute.
  TfRef<bool> get internal => TfRef.attribute<bool>(this, 'internal');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `load_balancer_type` attribute.
  TfRef<String> get loadBalancerType =>
      TfRef.attribute<String>(this, 'load_balancer_type');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `preserve_host_header` attribute.
  TfRef<bool> get preserveHostHeader =>
      TfRef.attribute<bool>(this, 'preserve_host_header');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secondary_ips_auto_assigned_per_subnet` attribute.
  TfRef<num> get secondaryIpsAutoAssignedPerSubnet =>
      TfRef.attribute<num>(this, 'secondary_ips_auto_assigned_per_subnet');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `subnets` attribute.
  TfRef<List<String>> get subnets =>
      TfRef.attribute<List<String>>(this, 'subnets');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `xff_header_processing_mode` attribute.
  TfRef<String> get xffHeaderProcessingMode =>
      TfRef.attribute<String>(this, 'xff_header_processing_mode');
}
