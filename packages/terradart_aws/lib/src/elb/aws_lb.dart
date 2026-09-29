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
enum LbDesyncMitigationMode implements TerraformEnum {
  monitor('monitor'),
  defensive('defensive'),
  strictest('strictest');

  const LbDesyncMitigationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Dns Record Client Routing enum for `dns_record_client_routing_policy`.
enum LbDnsRecordClientRoutingPolicy implements TerraformEnum {
  availabilityZoneAffinity('availability_zone_affinity'),
  partialAvailabilityZoneAffinity('partial_availability_zone_affinity'),
  anyAvailabilityZone('any_availability_zone');

  const LbDnsRecordClientRoutingPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Enable Prefix For Ipv6 Source enum for `enable_prefix_for_ipv6_source_nat`.
enum LbEnablePrefixForIpv6SourceNat implements TerraformEnum {
  on('on'),
  off('off');

  const LbEnablePrefixForIpv6SourceNat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Enforce Security Group Inbound Rules On Private Link enum for `enforce_security_group_inbound_rules_on_private_link_traffic`.
enum LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic
    implements TerraformEnum {
  on('on'),
  off('off');

  const LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Lb Ip Address enum for `ip_address_type`.
enum LbIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  dualstack('dualstack'),
  dualstackWithoutPublicIpv4('dualstack-without-public-ipv4');

  const LbIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Load Balancer enum for `load_balancer_type`.
enum LbLoadBalancerType implements TerraformEnum {
  application('application'),
  network('network'),
  gateway('gateway');

  const LbLoadBalancerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Lb Xff Header Processing enum for `xff_header_processing_mode`.
enum LbXffHeaderProcessingMode implements TerraformEnum {
  append('append'),
  preserve('preserve'),
  remove('remove');

  const LbXffHeaderProcessingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `subnet_mapping`, `subnets` on `aws_lb`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.subnetMapping(...)`.
sealed class LbSubnet {
  const LbSubnet();

  /// Sets `subnet_mapping`.
  const factory LbSubnet.subnetMapping(List<LbSubnetMapping> subnetMapping) =
      LbSubnetSubnetMapping;

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
final class LbSubnetSubnetMapping extends LbSubnet {
  const LbSubnetSubnetMapping(this.subnetMapping);

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
  const factory LbName.name(TfArg<String> name) = LbNameName;

  /// Sets `name_prefix`.
  const factory LbName.namePrefix(TfArg<String> namePrefix) = LbNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LbName.name] choice: sets `name`.
final class LbNameName extends LbName {
  const LbNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [LbName.namePrefix] choice: sets `name_prefix`.
final class LbNameNamePrefix extends LbName {
  const LbNameNamePrefix(this.namePrefix);

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

  AwsLb({
    required super.localName,
    TfArg<num>? clientKeepAlive,
    TfArg<String>? customerOwnedIpv4Pool,
    TfArg<LbDesyncMitigationMode>? desyncMitigationMode,
    TfArg<LbDnsRecordClientRoutingPolicy>? dnsRecordClientRoutingPolicy,
    TfArg<bool>? dropInvalidHeaderFields,
    TfArg<bool>? enableCrossZoneLoadBalancing,
    TfArg<bool>? enableDeletionProtection,
    TfArg<bool>? enableHttp2,
    TfArg<LbEnablePrefixForIpv6SourceNat>? enablePrefixForIpv6SourceNat,
    TfArg<bool>? enableTlsVersionAndCipherSuiteHeaders,
    TfArg<bool>? enableWafFailOpen,
    TfArg<bool>? enableXffClientPort,
    TfArg<bool>? enableZonalShift,
    TfArg<LbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic>?
    enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
    TfArg<num>? idleTimeout,
    TfArg<bool>? internal,
    TfArg<LbIpAddressType>? ipAddressType,
    TfArg<LbLoadBalancerType>? loadBalancerType,
    LbName? name,
    TfArg<bool>? preserveHostHeader,
    TfArg<String>? region,
    TfArg<num>? secondaryIpsAutoAssignedPerSubnet,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    required LbSubnet subnet,
    TfArg<Map<String, String>>? tags,
    TfArg<LbXffHeaderProcessingMode>? xffHeaderProcessingMode,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
