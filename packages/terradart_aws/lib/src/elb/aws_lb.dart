// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb`.
const Set<String> _awsLbSensitive = <String>{};

/// Typed helper for the `access_logs` block of
/// `aws_lb` (derived from provider schema).
@immutable
final class LbAccessLogs {
  const LbAccessLogs({required this.bucket, this.enabled, this.prefix});

  final TfArg<String> bucket;

  final TfArg<bool>? enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Typed helper for the `connection_logs` block of
/// `aws_lb` (derived from provider schema).
@immutable
final class LbConnectionLogs {
  const LbConnectionLogs({required this.bucket, this.enabled, this.prefix});

  final TfArg<String> bucket;

  final TfArg<bool>? enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
  };
}

/// Typed helper for the `health_check_logs` block of
/// `aws_lb` (derived from provider schema).
@immutable
final class LbHealthCheckLogs {
  const LbHealthCheckLogs({required this.bucket, this.enabled, this.prefix});

  final TfArg<String> bucket;

  final TfArg<bool>? enabled;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
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

  final TfArg<String> subnetId;

  Map<String, Object?> encode() => {
    if (allocationId != null) 'allocation_id': allocationId!.toTfJson(),
    if (ipv6Address != null) 'ipv6_address': ipv6Address!.toTfJson(),
    if (privateIpv4Address != null)
      'private_ipv4_address': privateIpv4Address!.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// Factory wrapper for `aws_lb`.
final class AwsLb extends Resource {
  static const String tfType = 'aws_lb';

  AwsLb({
    required super.localName,
    TfArg<num>? clientKeepAlive,
    TfArg<String>? customerOwnedIpv4Pool,
    TfArg<String>? desyncMitigationMode,
    TfArg<String>? dnsRecordClientRoutingPolicy,
    TfArg<bool>? dropInvalidHeaderFields,
    TfArg<bool>? enableCrossZoneLoadBalancing,
    TfArg<bool>? enableDeletionProtection,
    TfArg<bool>? enableHttp2,
    TfArg<String>? enablePrefixForIpv6SourceNat,
    TfArg<bool>? enableTlsVersionAndCipherSuiteHeaders,
    TfArg<bool>? enableWafFailOpen,
    TfArg<bool>? enableXffClientPort,
    TfArg<bool>? enableZonalShift,
    TfArg<String>? enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
    TfArg<num>? idleTimeout,
    TfArg<bool>? internal,
    TfArg<String>? ipAddressType,
    TfArg<String>? loadBalancerType,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<bool>? preserveHostHeader,
    TfArg<String>? region,
    TfArg<num>? secondaryIpsAutoAssignedPerSubnet,
    TfArg<List<String>>? securityGroups,
    TfArg<List<String>>? subnets,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? xffHeaderProcessingMode,
    LbAccessLogs? accessLogs,
    LbConnectionLogs? connectionLogs,
    LbHealthCheckLogs? healthCheckLogs,
    LbIpamPools? ipamPools,
    LbMinimumLoadBalancerCapacity? minimumLoadBalancerCapacity,
    List<LbSubnetMapping>? subnetMapping,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (clientKeepAlive != null) 'client_keep_alive': clientKeepAlive,
           if (customerOwnedIpv4Pool != null)
             'customer_owned_ipv4_pool': customerOwnedIpv4Pool,
           if (desyncMitigationMode != null)
             'desync_mitigation_mode': desyncMitigationMode,
           if (dnsRecordClientRoutingPolicy != null)
             'dns_record_client_routing_policy': dnsRecordClientRoutingPolicy,
           if (dropInvalidHeaderFields != null)
             'drop_invalid_header_fields': dropInvalidHeaderFields,
           if (enableCrossZoneLoadBalancing != null)
             'enable_cross_zone_load_balancing': enableCrossZoneLoadBalancing,
           if (enableDeletionProtection != null)
             'enable_deletion_protection': enableDeletionProtection,
           if (enableHttp2 != null) 'enable_http2': enableHttp2,
           if (enablePrefixForIpv6SourceNat != null)
             'enable_prefix_for_ipv6_source_nat': enablePrefixForIpv6SourceNat,
           if (enableTlsVersionAndCipherSuiteHeaders != null)
             'enable_tls_version_and_cipher_suite_headers':
                 enableTlsVersionAndCipherSuiteHeaders,
           if (enableWafFailOpen != null)
             'enable_waf_fail_open': enableWafFailOpen,
           if (enableXffClientPort != null)
             'enable_xff_client_port': enableXffClientPort,
           if (enableZonalShift != null) 'enable_zonal_shift': enableZonalShift,
           if (enforceSecurityGroupInboundRulesOnPrivateLinkTraffic != null)
             'enforce_security_group_inbound_rules_on_private_link_traffic':
                 enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
           if (idleTimeout != null) 'idle_timeout': idleTimeout,
           if (internal != null) 'internal': internal,
           if (ipAddressType != null) 'ip_address_type': ipAddressType,
           if (loadBalancerType != null) 'load_balancer_type': loadBalancerType,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (preserveHostHeader != null)
             'preserve_host_header': preserveHostHeader,
           if (region != null) 'region': region,
           if (secondaryIpsAutoAssignedPerSubnet != null)
             'secondary_ips_auto_assigned_per_subnet':
                 secondaryIpsAutoAssignedPerSubnet,
           if (securityGroups != null) 'security_groups': securityGroups,
           if (subnets != null) 'subnets': subnets,
           if (tags != null) 'tags': tags,
           if (xffHeaderProcessingMode != null)
             'xff_header_processing_mode': xffHeaderProcessingMode,
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
           if (subnetMapping != null)
             'subnet_mapping': TfArg.literal([
               for (final e in subnetMapping) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbSensitive;

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
