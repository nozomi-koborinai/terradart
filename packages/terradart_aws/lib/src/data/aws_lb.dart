// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb`.
const Set<String> _awsLbSensitive = <String>{};

/// Factory wrapper for `aws_lb`.
final class DataAwsLb extends Data {
  static const String tfType = 'aws_lb';

  DataAwsLb({
    required super.localName,
    TfArg<String>? arn,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_logs` attribute.
  TfRef<List<Map<String, Object?>>> get accessLogs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_logs');

  /// Reference to `arn_suffix` attribute.
  TfRef<String> get arnSuffix => TfRef.attribute<String>(this, 'arn_suffix');

  /// Reference to `client_keep_alive` attribute.
  TfRef<num> get clientKeepAlive =>
      TfRef.attribute<num>(this, 'client_keep_alive');

  /// Reference to `connection_logs` attribute.
  TfRef<List<Map<String, Object?>>> get connectionLogs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'connection_logs');

  /// Reference to `customer_owned_ipv4_pool` attribute.
  TfRef<String> get customerOwnedIpv4Pool =>
      TfRef.attribute<String>(this, 'customer_owned_ipv4_pool');

  /// Reference to `desync_mitigation_mode` attribute.
  TfRef<String> get desyncMitigationMode =>
      TfRef.attribute<String>(this, 'desync_mitigation_mode');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

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

  /// Reference to `health_check_logs` attribute.
  TfRef<List<Map<String, Object?>>> get healthCheckLogs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'health_check_logs');

  /// Reference to `idle_timeout` attribute.
  TfRef<num> get idleTimeout => TfRef.attribute<num>(this, 'idle_timeout');

  /// Reference to `internal` attribute.
  TfRef<bool> get internal => TfRef.attribute<bool>(this, 'internal');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `ipam_pools` attribute.
  TfRef<List<Map<String, Object?>>> get ipamPools =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ipam_pools');

  /// Reference to `load_balancer_type` attribute.
  TfRef<String> get loadBalancerType =>
      TfRef.attribute<String>(this, 'load_balancer_type');

  /// Reference to `preserve_host_header` attribute.
  TfRef<bool> get preserveHostHeader =>
      TfRef.attribute<bool>(this, 'preserve_host_header');

  /// Reference to `secondary_ips_auto_assigned_per_subnet` attribute.
  TfRef<num> get secondaryIpsAutoAssignedPerSubnet =>
      TfRef.attribute<num>(this, 'secondary_ips_auto_assigned_per_subnet');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `subnet_mapping` attribute.
  TfRef<List<Map<String, Object?>>> get subnetMapping =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'subnet_mapping');

  /// Reference to `subnets` attribute.
  TfRef<List<String>> get subnets =>
      TfRef.attribute<List<String>>(this, 'subnets');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `xff_header_processing_mode` attribute.
  TfRef<String> get xffHeaderProcessingMode =>
      TfRef.attribute<String>(this, 'xff_header_processing_mode');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
