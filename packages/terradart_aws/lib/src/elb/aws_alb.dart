// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_alb`.
const Set<String> _awsAlbSensitive = <String>{};

/// Alb Desync Mitigation enum for `desync_mitigation_mode`.
enum AlbDesyncMitigationMode implements TerraformEnum {
  monitor('monitor'),
  defensive('defensive'),
  strictest('strictest');

  const AlbDesyncMitigationMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Dns Record Client Routing enum for `dns_record_client_routing_policy`.
enum AlbDnsRecordClientRoutingPolicy implements TerraformEnum {
  availabilityZoneAffinity('availability_zone_affinity'),
  partialAvailabilityZoneAffinity('partial_availability_zone_affinity'),
  anyAvailabilityZone('any_availability_zone');

  const AlbDnsRecordClientRoutingPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Enable Prefix For Ipv6 Source enum for `enable_prefix_for_ipv6_source_nat`.
enum AlbEnablePrefixForIpv6SourceNat implements TerraformEnum {
  on('on'),
  off('off');

  const AlbEnablePrefixForIpv6SourceNat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Enforce Security Group Inbound Rules On Private Link enum for `enforce_security_group_inbound_rules_on_private_link_traffic`.
enum AlbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic
    implements TerraformEnum {
  on('on'),
  off('off');

  const AlbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Alb Ip Address enum for `ip_address_type`.
enum AlbIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  dualstack('dualstack'),
  dualstackWithoutPublicIpv4('dualstack-without-public-ipv4');

  const AlbIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Load Balancer enum for `load_balancer_type`.
enum AlbLoadBalancerType implements TerraformEnum {
  application('application'),
  network('network'),
  gateway('gateway');

  const AlbLoadBalancerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Xff Header Processing enum for `xff_header_processing_mode`.
enum AlbXffHeaderProcessingMode implements TerraformEnum {
  append('append'),
  preserve('preserve'),
  remove('remove');

  const AlbXffHeaderProcessingMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `subnet_mapping`, `subnets` on `aws_alb`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.subnetMapping(...)`.
sealed class AlbSubnetMappingOrSubnets {
  const AlbSubnetMappingOrSubnets();

  /// Sets `subnet_mapping`.
  const factory AlbSubnetMappingOrSubnets.subnetMapping(
    List<AlbSubnetMapping> subnetMapping,
  ) = AlbSubnetMappingOrSubnetsSubnetMapping;

  /// Sets `subnets`.
  const factory AlbSubnetMappingOrSubnets.subnets(TfArg<List<String>> subnets) =
      AlbSubnetMappingOrSubnetsSubnets;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AlbSubnetMappingOrSubnets.subnetMapping] choice: sets `subnet_mapping`.
final class AlbSubnetMappingOrSubnetsSubnetMapping
    extends AlbSubnetMappingOrSubnets {
  const AlbSubnetMappingOrSubnetsSubnetMapping(this.subnetMapping);

  final List<AlbSubnetMapping> subnetMapping;

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

/// The [AlbSubnetMappingOrSubnets.subnets] choice: sets `subnets`.
final class AlbSubnetMappingOrSubnetsSubnets extends AlbSubnetMappingOrSubnets {
  const AlbSubnetMappingOrSubnetsSubnets(this.subnets);

  final TfArg<List<String>> subnets;

  @override
  String get blockKey => 'subnets';

  @override
  Map<String, Object?> encode() => {'subnets': subnets.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'subnets': subnets};
}

/// At most one of `name`, `name_prefix` on `aws_alb`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class AlbNameOrNamePrefix {
  const AlbNameOrNamePrefix();

  /// Sets `name`.
  const factory AlbNameOrNamePrefix.name(TfArg<String> name) =
      AlbNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory AlbNameOrNamePrefix.namePrefix(TfArg<String> namePrefix) =
      AlbNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [AlbNameOrNamePrefix.name] choice: sets `name`.
final class AlbNameOrNamePrefixName extends AlbNameOrNamePrefix {
  const AlbNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [AlbNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class AlbNameOrNamePrefixNamePrefix extends AlbNameOrNamePrefix {
  const AlbNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `access_logs` block of
/// `aws_alb` (derived from provider schema).
@immutable
final class AlbAccessLogs {
  const AlbAccessLogs({required this.bucket, this.enabled, this.prefix});

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
/// `aws_alb` (derived from provider schema).
@immutable
final class AlbConnectionLogs {
  const AlbConnectionLogs({required this.bucket, this.enabled, this.prefix});

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
/// `aws_alb` (derived from provider schema).
@immutable
final class AlbHealthCheckLogs {
  const AlbHealthCheckLogs({required this.bucket, this.enabled, this.prefix});

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
/// `aws_alb` (derived from provider schema).
@immutable
final class AlbIpamPools {
  const AlbIpamPools({required this.ipv4IpamPoolId});

  final TfArg<String> ipv4IpamPoolId;

  Map<String, Object?> encode() => {
    'ipv4_ipam_pool_id': ipv4IpamPoolId.toTfJson(),
  };
}

/// Typed helper for the `minimum_load_balancer_capacity` block of
/// `aws_alb` (derived from provider schema).
@immutable
final class AlbMinimumLoadBalancerCapacity {
  const AlbMinimumLoadBalancerCapacity({required this.capacityUnits});

  final TfArg<num> capacityUnits;

  Map<String, Object?> encode() => {'capacity_units': capacityUnits.toTfJson()};
}

/// Typed helper for the `subnet_mapping` block of
/// `aws_alb` (derived from provider schema).
@immutable
final class AlbSubnetMapping {
  const AlbSubnetMapping({
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

/// Factory wrapper for `aws_alb`.
final class AwsAlb extends Resource {
  static const String tfType = 'aws_alb';

  AwsAlb({
    required super.localName,
    TfArg<num>? clientKeepAlive,
    TfArg<String>? customerOwnedIpv4Pool,
    TfArg<AlbDesyncMitigationMode>? desyncMitigationMode,
    TfArg<AlbDnsRecordClientRoutingPolicy>? dnsRecordClientRoutingPolicy,
    TfArg<bool>? dropInvalidHeaderFields,
    TfArg<bool>? enableCrossZoneLoadBalancing,
    TfArg<bool>? enableDeletionProtection,
    TfArg<bool>? enableHttp2,
    TfArg<AlbEnablePrefixForIpv6SourceNat>? enablePrefixForIpv6SourceNat,
    TfArg<bool>? enableTlsVersionAndCipherSuiteHeaders,
    TfArg<bool>? enableWafFailOpen,
    TfArg<bool>? enableXffClientPort,
    TfArg<bool>? enableZonalShift,
    TfArg<AlbEnforceSecurityGroupInboundRulesOnPrivateLinkTraffic>?
    enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
    TfArg<num>? idleTimeout,
    TfArg<bool>? internal,
    TfArg<AlbIpAddressType>? ipAddressType,
    TfArg<AlbLoadBalancerType>? loadBalancerType,
    AlbNameOrNamePrefix? nameOrNamePrefix,
    TfArg<bool>? preserveHostHeader,
    TfArg<String>? region,
    TfArg<num>? secondaryIpsAutoAssignedPerSubnet,
    TfArg<List<String>>? securityGroups,
    required AlbSubnetMappingOrSubnets subnetMappingOrSubnets,
    TfArg<Map<String, String>>? tags,
    TfArg<AlbXffHeaderProcessingMode>? xffHeaderProcessingMode,
    AlbAccessLogs? accessLogs,
    AlbConnectionLogs? connectionLogs,
    AlbHealthCheckLogs? healthCheckLogs,
    AlbIpamPools? ipamPools,
    AlbMinimumLoadBalancerCapacity? minimumLoadBalancerCapacity,
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
           ...?nameOrNamePrefix?.argMap,
           if (preserveHostHeader != null)
             'preserve_host_header': preserveHostHeader,
           if (region != null) 'region': region,
           if (secondaryIpsAutoAssignedPerSubnet != null)
             'secondary_ips_auto_assigned_per_subnet':
                 secondaryIpsAutoAssignedPerSubnet,
           if (securityGroups != null) 'security_groups': securityGroups,
           ...subnetMappingOrSubnets.argMap,
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
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAlbSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAlb>`.
  RefTo<AwsAlb> get ref => RefTo.of(this);

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
