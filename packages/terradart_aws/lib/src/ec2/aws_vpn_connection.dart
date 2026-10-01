// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;

/// Sensitive field paths for `aws_vpn_connection`.
const Set<String> _awsVpnConnectionSensitive = <String>{
  'customer_gateway_configuration',
  'tunnel1_preshared_key',
  'tunnel2_preshared_key',
};

/// Vpn Connection Outside Ip Address enum for `outside_ip_address_type`.
enum VpnConnectionOutsideIpAddressType implements TerraformEnum {
  privateipv4('PrivateIpv4'),
  publicipv4('PublicIpv4');

  const VpnConnectionOutsideIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Preshared Key enum for `preshared_key_storage`.
enum VpnConnectionPresharedKeyStorage implements TerraformEnum {
  secretsmanager('SecretsManager'),
  standard('Standard');

  const VpnConnectionPresharedKeyStorage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel1 Dpd Timeout enum for `tunnel1_dpd_timeout_action`.
enum VpnConnectionTunnel1DpdTimeoutAction implements TerraformEnum {
  clear('clear'),
  none('none'),
  restart('restart');

  const VpnConnectionTunnel1DpdTimeoutAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel1 Ike enum for `tunnel1_ike_versions`.
enum VpnConnectionTunnel1IkeVersions implements TerraformEnum {
  ikev1('ikev1'),
  ikev2('ikev2');

  const VpnConnectionTunnel1IkeVersions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel1 Phase1 Encryption enum for `tunnel1_phase1_encryption_algorithms`.
enum VpnConnectionTunnel1Phase1EncryptionAlgorithms implements TerraformEnum {
  aes128('AES128'),
  aes256('AES256'),
  aes128Gcm16('AES128-GCM-16'),
  aes256Gcm16('AES256-GCM-16');

  const VpnConnectionTunnel1Phase1EncryptionAlgorithms(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel1 Phase1 Integrity enum for `tunnel1_phase1_integrity_algorithms`.
enum VpnConnectionTunnel1Phase1IntegrityAlgorithms implements TerraformEnum {
  sha1('SHA1'),
  sha2256('SHA2-256'),
  sha2384('SHA2-384'),
  sha2512('SHA2-512');

  const VpnConnectionTunnel1Phase1IntegrityAlgorithms(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel1 Phase2 Encryption enum for `tunnel1_phase2_encryption_algorithms`.
enum VpnConnectionTunnel1Phase2EncryptionAlgorithms implements TerraformEnum {
  aes128('AES128'),
  aes256('AES256'),
  aes128Gcm16('AES128-GCM-16'),
  aes256Gcm16('AES256-GCM-16');

  const VpnConnectionTunnel1Phase2EncryptionAlgorithms(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel1 Phase2 Integrity enum for `tunnel1_phase2_integrity_algorithms`.
enum VpnConnectionTunnel1Phase2IntegrityAlgorithms implements TerraformEnum {
  sha1('SHA1'),
  sha2256('SHA2-256'),
  sha2384('SHA2-384'),
  sha2512('SHA2-512');

  const VpnConnectionTunnel1Phase2IntegrityAlgorithms(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel1 Startup enum for `tunnel1_startup_action`.
enum VpnConnectionTunnel1StartupAction implements TerraformEnum {
  add('add'),
  start('start');

  const VpnConnectionTunnel1StartupAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel2 Dpd Timeout enum for `tunnel2_dpd_timeout_action`.
enum VpnConnectionTunnel2DpdTimeoutAction implements TerraformEnum {
  clear('clear'),
  none('none'),
  restart('restart');

  const VpnConnectionTunnel2DpdTimeoutAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel2 Ike enum for `tunnel2_ike_versions`.
enum VpnConnectionTunnel2IkeVersions implements TerraformEnum {
  ikev1('ikev1'),
  ikev2('ikev2');

  const VpnConnectionTunnel2IkeVersions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel2 Phase1 Encryption enum for `tunnel2_phase1_encryption_algorithms`.
enum VpnConnectionTunnel2Phase1EncryptionAlgorithms implements TerraformEnum {
  aes128('AES128'),
  aes256('AES256'),
  aes128Gcm16('AES128-GCM-16'),
  aes256Gcm16('AES256-GCM-16');

  const VpnConnectionTunnel2Phase1EncryptionAlgorithms(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel2 Phase1 Integrity enum for `tunnel2_phase1_integrity_algorithms`.
enum VpnConnectionTunnel2Phase1IntegrityAlgorithms implements TerraformEnum {
  sha1('SHA1'),
  sha2256('SHA2-256'),
  sha2384('SHA2-384'),
  sha2512('SHA2-512');

  const VpnConnectionTunnel2Phase1IntegrityAlgorithms(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel2 Phase2 Encryption enum for `tunnel2_phase2_encryption_algorithms`.
enum VpnConnectionTunnel2Phase2EncryptionAlgorithms implements TerraformEnum {
  aes128('AES128'),
  aes256('AES256'),
  aes128Gcm16('AES128-GCM-16'),
  aes256Gcm16('AES256-GCM-16');

  const VpnConnectionTunnel2Phase2EncryptionAlgorithms(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel2 Phase2 Integrity enum for `tunnel2_phase2_integrity_algorithms`.
enum VpnConnectionTunnel2Phase2IntegrityAlgorithms implements TerraformEnum {
  sha1('SHA1'),
  sha2256('SHA2-256'),
  sha2384('SHA2-384'),
  sha2512('SHA2-512');

  const VpnConnectionTunnel2Phase2IntegrityAlgorithms(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel2 Startup enum for `tunnel2_startup_action`.
enum VpnConnectionTunnel2StartupAction implements TerraformEnum {
  add('add'),
  start('start');

  const VpnConnectionTunnel2StartupAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel enum for `tunnel_bandwidth`.
enum VpnConnectionTunnelBandwidth implements TerraformEnum {
  standard('standard'),
  large('large');

  const VpnConnectionTunnelBandwidth(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection Tunnel Inside Ip enum for `tunnel_inside_ip_version`.
enum VpnConnectionTunnelInsideIpVersion implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6');

  const VpnConnectionTunnelInsideIpVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Vpn Connection enum for `type`.
enum VpnConnectionType implements TerraformEnum {
  ipsec1('ipsec.1'),
  ipsec1Aes256('ipsec.1-aes256');

  const VpnConnectionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `tunnel1_log_options` block of
/// `aws_vpn_connection` (derived from provider schema).
@immutable
final class VpnConnectionTunnel1LogOptions {
  const VpnConnectionTunnel1LogOptions({this.cloudwatchLogOptions});

  final VpnConnectionCloudwatchLogOptions? cloudwatchLogOptions;

  Map<String, Object?> encode() => {
    'cloudwatch_log_options': ?cloudwatchLogOptions?.encode(),
  };
}

/// Typed helper for the `tunnel1_log_options.cloudwatch_log_options` block of
/// `aws_vpn_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VpnConnectionCloudwatchLogOptions {
  const VpnConnectionCloudwatchLogOptions({
    this.bgpLogEnabled,
    this.bgpLogGroupArn,
    this.bgpLogOutputFormat,
    this.logEnabled,
    this.logGroupArn,
    this.logOutputFormat,
  });

  final TfArg<bool>? bgpLogEnabled;

  final TfArg<String>? bgpLogGroupArn;

  final TfArg<String>? bgpLogOutputFormat;

  final TfArg<bool>? logEnabled;

  final RefTo<AwsCloudwatchLogGroup>? logGroupArn;

  final TfArg<String>? logOutputFormat;

  Map<String, Object?> encode() => {
    'bgp_log_enabled': ?bgpLogEnabled?.toTfJson(),
    'bgp_log_group_arn': ?bgpLogGroupArn?.toTfJson(),
    'bgp_log_output_format': ?bgpLogOutputFormat?.toTfJson(),
    'log_enabled': ?logEnabled?.toTfJson(),
    'log_group_arn': ?logGroupArn?.encodeAs('arn').toTfJson(),
    'log_output_format': ?logOutputFormat?.toTfJson(),
  };
}

/// Typed helper for the `tunnel2_log_options` block of
/// `aws_vpn_connection` (derived from provider schema).
@immutable
final class VpnConnectionTunnel2LogOptions {
  const VpnConnectionTunnel2LogOptions({this.cloudwatchLogOptions});

  final VpnConnectionCloudwatchLogOptions? cloudwatchLogOptions;

  Map<String, Object?> encode() => {
    'cloudwatch_log_options': ?cloudwatchLogOptions?.encode(),
  };
}

/// Factory wrapper for `aws_vpn_connection`.
final class AwsVpnConnection extends Resource {
  static const String tfType = 'aws_vpn_connection';

  AwsVpnConnection({
    required super.localName,
    required TfArg<String> customerGatewayId,
    TfArg<bool>? enableAcceleration,
    TfArg<String>? localIpv4NetworkCidr,
    TfArg<String>? localIpv6NetworkCidr,
    TfArg<VpnConnectionOutsideIpAddressType>? outsideIpAddressType,
    TfArg<VpnConnectionPresharedKeyStorage>? presharedKeyStorage,
    TfArg<String>? region,
    TfArg<String>? remoteIpv4NetworkCidr,
    TfArg<String>? remoteIpv6NetworkCidr,
    TfArg<bool>? staticRoutesOnly,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transitGatewayId,
    TfArg<String>? transportTransitGatewayAttachmentId,
    TfArg<VpnConnectionTunnel1DpdTimeoutAction>? tunnel1DpdTimeoutAction,
    TfArg<num>? tunnel1DpdTimeoutSeconds,
    TfArg<bool>? tunnel1EnableTunnelLifecycleControl,
    List<TfArg<VpnConnectionTunnel1IkeVersions>>? tunnel1IkeVersions,
    TfArg<String>? tunnel1InsideCidr,
    TfArg<String>? tunnel1InsideIpv6Cidr,
    TfArg<List<num>>? tunnel1Phase1DhGroupNumbers,
    List<TfArg<VpnConnectionTunnel1Phase1EncryptionAlgorithms>>?
    tunnel1Phase1EncryptionAlgorithms,
    List<TfArg<VpnConnectionTunnel1Phase1IntegrityAlgorithms>>?
    tunnel1Phase1IntegrityAlgorithms,
    TfArg<num>? tunnel1Phase1LifetimeSeconds,
    TfArg<List<num>>? tunnel1Phase2DhGroupNumbers,
    List<TfArg<VpnConnectionTunnel1Phase2EncryptionAlgorithms>>?
    tunnel1Phase2EncryptionAlgorithms,
    List<TfArg<VpnConnectionTunnel1Phase2IntegrityAlgorithms>>?
    tunnel1Phase2IntegrityAlgorithms,
    TfArg<num>? tunnel1Phase2LifetimeSeconds,
    TfArg<String>? tunnel1PresharedKey,
    TfArg<num>? tunnel1RekeyFuzzPercentage,
    TfArg<num>? tunnel1RekeyMarginTimeSeconds,
    TfArg<num>? tunnel1ReplayWindowSize,
    TfArg<VpnConnectionTunnel1StartupAction>? tunnel1StartupAction,
    TfArg<VpnConnectionTunnel2DpdTimeoutAction>? tunnel2DpdTimeoutAction,
    TfArg<num>? tunnel2DpdTimeoutSeconds,
    TfArg<bool>? tunnel2EnableTunnelLifecycleControl,
    List<TfArg<VpnConnectionTunnel2IkeVersions>>? tunnel2IkeVersions,
    TfArg<String>? tunnel2InsideCidr,
    TfArg<String>? tunnel2InsideIpv6Cidr,
    TfArg<List<num>>? tunnel2Phase1DhGroupNumbers,
    List<TfArg<VpnConnectionTunnel2Phase1EncryptionAlgorithms>>?
    tunnel2Phase1EncryptionAlgorithms,
    List<TfArg<VpnConnectionTunnel2Phase1IntegrityAlgorithms>>?
    tunnel2Phase1IntegrityAlgorithms,
    TfArg<num>? tunnel2Phase1LifetimeSeconds,
    TfArg<List<num>>? tunnel2Phase2DhGroupNumbers,
    List<TfArg<VpnConnectionTunnel2Phase2EncryptionAlgorithms>>?
    tunnel2Phase2EncryptionAlgorithms,
    List<TfArg<VpnConnectionTunnel2Phase2IntegrityAlgorithms>>?
    tunnel2Phase2IntegrityAlgorithms,
    TfArg<num>? tunnel2Phase2LifetimeSeconds,
    TfArg<String>? tunnel2PresharedKey,
    TfArg<num>? tunnel2RekeyFuzzPercentage,
    TfArg<num>? tunnel2RekeyMarginTimeSeconds,
    TfArg<num>? tunnel2ReplayWindowSize,
    TfArg<VpnConnectionTunnel2StartupAction>? tunnel2StartupAction,
    TfArg<VpnConnectionTunnelBandwidth>? tunnelBandwidth,
    TfArg<VpnConnectionTunnelInsideIpVersion>? tunnelInsideIpVersion,
    required TfArg<VpnConnectionType> type,
    TfArg<String>? vpnConcentratorId,
    TfArg<String>? vpnGatewayId,
    VpnConnectionTunnel1LogOptions? tunnel1LogOptions,
    VpnConnectionTunnel2LogOptions? tunnel2LogOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'customer_gateway_id': customerGatewayId,
           'enable_acceleration': ?enableAcceleration,
           'local_ipv4_network_cidr': ?localIpv4NetworkCidr,
           'local_ipv6_network_cidr': ?localIpv6NetworkCidr,
           'outside_ip_address_type': ?outsideIpAddressType,
           'preshared_key_storage': ?presharedKeyStorage,
           'region': ?region,
           'remote_ipv4_network_cidr': ?remoteIpv4NetworkCidr,
           'remote_ipv6_network_cidr': ?remoteIpv6NetworkCidr,
           'static_routes_only': ?staticRoutesOnly,
           'tags': ?tags,
           'transit_gateway_id': ?transitGatewayId,
           'transport_transit_gateway_attachment_id':
               ?transportTransitGatewayAttachmentId,
           'tunnel1_dpd_timeout_action': ?tunnel1DpdTimeoutAction,
           'tunnel1_dpd_timeout_seconds': ?tunnel1DpdTimeoutSeconds,
           'tunnel1_enable_tunnel_lifecycle_control':
               ?tunnel1EnableTunnelLifecycleControl,
           if (tunnel1IkeVersions != null)
             'tunnel1_ike_versions': TfArg.literal([
               for (final e in tunnel1IkeVersions) e.toTfJson(),
             ]),
           'tunnel1_inside_cidr': ?tunnel1InsideCidr,
           'tunnel1_inside_ipv6_cidr': ?tunnel1InsideIpv6Cidr,
           'tunnel1_phase1_dh_group_numbers': ?tunnel1Phase1DhGroupNumbers,
           if (tunnel1Phase1EncryptionAlgorithms != null)
             'tunnel1_phase1_encryption_algorithms': TfArg.literal([
               for (final e in tunnel1Phase1EncryptionAlgorithms) e.toTfJson(),
             ]),
           if (tunnel1Phase1IntegrityAlgorithms != null)
             'tunnel1_phase1_integrity_algorithms': TfArg.literal([
               for (final e in tunnel1Phase1IntegrityAlgorithms) e.toTfJson(),
             ]),
           'tunnel1_phase1_lifetime_seconds': ?tunnel1Phase1LifetimeSeconds,
           'tunnel1_phase2_dh_group_numbers': ?tunnel1Phase2DhGroupNumbers,
           if (tunnel1Phase2EncryptionAlgorithms != null)
             'tunnel1_phase2_encryption_algorithms': TfArg.literal([
               for (final e in tunnel1Phase2EncryptionAlgorithms) e.toTfJson(),
             ]),
           if (tunnel1Phase2IntegrityAlgorithms != null)
             'tunnel1_phase2_integrity_algorithms': TfArg.literal([
               for (final e in tunnel1Phase2IntegrityAlgorithms) e.toTfJson(),
             ]),
           'tunnel1_phase2_lifetime_seconds': ?tunnel1Phase2LifetimeSeconds,
           'tunnel1_preshared_key': ?tunnel1PresharedKey,
           'tunnel1_rekey_fuzz_percentage': ?tunnel1RekeyFuzzPercentage,
           'tunnel1_rekey_margin_time_seconds': ?tunnel1RekeyMarginTimeSeconds,
           'tunnel1_replay_window_size': ?tunnel1ReplayWindowSize,
           'tunnel1_startup_action': ?tunnel1StartupAction,
           'tunnel2_dpd_timeout_action': ?tunnel2DpdTimeoutAction,
           'tunnel2_dpd_timeout_seconds': ?tunnel2DpdTimeoutSeconds,
           'tunnel2_enable_tunnel_lifecycle_control':
               ?tunnel2EnableTunnelLifecycleControl,
           if (tunnel2IkeVersions != null)
             'tunnel2_ike_versions': TfArg.literal([
               for (final e in tunnel2IkeVersions) e.toTfJson(),
             ]),
           'tunnel2_inside_cidr': ?tunnel2InsideCidr,
           'tunnel2_inside_ipv6_cidr': ?tunnel2InsideIpv6Cidr,
           'tunnel2_phase1_dh_group_numbers': ?tunnel2Phase1DhGroupNumbers,
           if (tunnel2Phase1EncryptionAlgorithms != null)
             'tunnel2_phase1_encryption_algorithms': TfArg.literal([
               for (final e in tunnel2Phase1EncryptionAlgorithms) e.toTfJson(),
             ]),
           if (tunnel2Phase1IntegrityAlgorithms != null)
             'tunnel2_phase1_integrity_algorithms': TfArg.literal([
               for (final e in tunnel2Phase1IntegrityAlgorithms) e.toTfJson(),
             ]),
           'tunnel2_phase1_lifetime_seconds': ?tunnel2Phase1LifetimeSeconds,
           'tunnel2_phase2_dh_group_numbers': ?tunnel2Phase2DhGroupNumbers,
           if (tunnel2Phase2EncryptionAlgorithms != null)
             'tunnel2_phase2_encryption_algorithms': TfArg.literal([
               for (final e in tunnel2Phase2EncryptionAlgorithms) e.toTfJson(),
             ]),
           if (tunnel2Phase2IntegrityAlgorithms != null)
             'tunnel2_phase2_integrity_algorithms': TfArg.literal([
               for (final e in tunnel2Phase2IntegrityAlgorithms) e.toTfJson(),
             ]),
           'tunnel2_phase2_lifetime_seconds': ?tunnel2Phase2LifetimeSeconds,
           'tunnel2_preshared_key': ?tunnel2PresharedKey,
           'tunnel2_rekey_fuzz_percentage': ?tunnel2RekeyFuzzPercentage,
           'tunnel2_rekey_margin_time_seconds': ?tunnel2RekeyMarginTimeSeconds,
           'tunnel2_replay_window_size': ?tunnel2ReplayWindowSize,
           'tunnel2_startup_action': ?tunnel2StartupAction,
           'tunnel_bandwidth': ?tunnelBandwidth,
           'tunnel_inside_ip_version': ?tunnelInsideIpVersion,
           'type': type,
           'vpn_concentrator_id': ?vpnConcentratorId,
           'vpn_gateway_id': ?vpnGatewayId,
           if (tunnel1LogOptions != null)
             'tunnel1_log_options': TfArg.literal(tunnel1LogOptions.encode()),
           if (tunnel2LogOptions != null)
             'tunnel2_log_options': TfArg.literal(tunnel2LogOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpnConnection>`.
  RefTo<AwsVpnConnection> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `core_network_arn` attribute.
  TfRef<String> get coreNetworkArn =>
      TfRef.attribute<String>(this, 'core_network_arn');

  /// Reference to `core_network_attachment_arn` attribute.
  TfRef<String> get coreNetworkAttachmentArn =>
      TfRef.attribute<String>(this, 'core_network_attachment_arn');

  /// Reference to `customer_gateway_configuration` attribute.
  TfRef<String> get customerGatewayConfiguration =>
      TfRef.attribute<String>(this, 'customer_gateway_configuration');

  /// Reference to `preshared_key_arn` attribute.
  TfRef<String> get presharedKeyArn =>
      TfRef.attribute<String>(this, 'preshared_key_arn');

  /// Reference to `routes` attribute.
  TfRef<List<Map<String, Object?>>> get routes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'routes');

  /// Reference to `transit_gateway_attachment_id` attribute.
  TfRef<String> get transitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transit_gateway_attachment_id');

  /// Reference to `tunnel1_address` attribute.
  TfRef<String> get tunnel1Address =>
      TfRef.attribute<String>(this, 'tunnel1_address');

  /// Reference to `tunnel1_bgp_asn` attribute.
  TfRef<String> get tunnel1BgpAsn =>
      TfRef.attribute<String>(this, 'tunnel1_bgp_asn');

  /// Reference to `tunnel1_bgp_holdtime` attribute.
  TfRef<num> get tunnel1BgpHoldtime =>
      TfRef.attribute<num>(this, 'tunnel1_bgp_holdtime');

  /// Reference to `tunnel1_cgw_inside_address` attribute.
  TfRef<String> get tunnel1CgwInsideAddress =>
      TfRef.attribute<String>(this, 'tunnel1_cgw_inside_address');

  /// Reference to `tunnel1_vgw_inside_address` attribute.
  TfRef<String> get tunnel1VgwInsideAddress =>
      TfRef.attribute<String>(this, 'tunnel1_vgw_inside_address');

  /// Reference to `tunnel2_address` attribute.
  TfRef<String> get tunnel2Address =>
      TfRef.attribute<String>(this, 'tunnel2_address');

  /// Reference to `tunnel2_bgp_asn` attribute.
  TfRef<String> get tunnel2BgpAsn =>
      TfRef.attribute<String>(this, 'tunnel2_bgp_asn');

  /// Reference to `tunnel2_bgp_holdtime` attribute.
  TfRef<num> get tunnel2BgpHoldtime =>
      TfRef.attribute<num>(this, 'tunnel2_bgp_holdtime');

  /// Reference to `tunnel2_cgw_inside_address` attribute.
  TfRef<String> get tunnel2CgwInsideAddress =>
      TfRef.attribute<String>(this, 'tunnel2_cgw_inside_address');

  /// Reference to `tunnel2_vgw_inside_address` attribute.
  TfRef<String> get tunnel2VgwInsideAddress =>
      TfRef.attribute<String>(this, 'tunnel2_vgw_inside_address');

  /// Reference to `vgw_telemetry` attribute.
  TfRef<List<Map<String, Object?>>> get vgwTelemetry =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vgw_telemetry');

  /// Reference to `customer_gateway_id` attribute.
  TfRef<String> get customerGatewayId =>
      TfRef.attribute<String>(this, 'customer_gateway_id');

  /// Reference to `enable_acceleration` attribute.
  TfRef<bool> get enableAcceleration =>
      TfRef.attribute<bool>(this, 'enable_acceleration');

  /// Reference to `local_ipv4_network_cidr` attribute.
  TfRef<String> get localIpv4NetworkCidr =>
      TfRef.attribute<String>(this, 'local_ipv4_network_cidr');

  /// Reference to `local_ipv6_network_cidr` attribute.
  TfRef<String> get localIpv6NetworkCidr =>
      TfRef.attribute<String>(this, 'local_ipv6_network_cidr');

  /// Reference to `outside_ip_address_type` attribute.
  TfRef<String> get outsideIpAddressType =>
      TfRef.attribute<String>(this, 'outside_ip_address_type');

  /// Reference to `preshared_key_storage` attribute.
  TfRef<String> get presharedKeyStorage =>
      TfRef.attribute<String>(this, 'preshared_key_storage');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `remote_ipv4_network_cidr` attribute.
  TfRef<String> get remoteIpv4NetworkCidr =>
      TfRef.attribute<String>(this, 'remote_ipv4_network_cidr');

  /// Reference to `remote_ipv6_network_cidr` attribute.
  TfRef<String> get remoteIpv6NetworkCidr =>
      TfRef.attribute<String>(this, 'remote_ipv6_network_cidr');

  /// Reference to `static_routes_only` attribute.
  TfRef<bool> get staticRoutesOnly =>
      TfRef.attribute<bool>(this, 'static_routes_only');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `transit_gateway_id` attribute.
  TfRef<String> get transitGatewayId =>
      TfRef.attribute<String>(this, 'transit_gateway_id');

  /// Reference to `transport_transit_gateway_attachment_id` attribute.
  TfRef<String> get transportTransitGatewayAttachmentId =>
      TfRef.attribute<String>(this, 'transport_transit_gateway_attachment_id');

  /// Reference to `tunnel1_dpd_timeout_action` attribute.
  TfRef<String> get tunnel1DpdTimeoutAction =>
      TfRef.attribute<String>(this, 'tunnel1_dpd_timeout_action');

  /// Reference to `tunnel1_dpd_timeout_seconds` attribute.
  TfRef<num> get tunnel1DpdTimeoutSeconds =>
      TfRef.attribute<num>(this, 'tunnel1_dpd_timeout_seconds');

  /// Reference to `tunnel1_enable_tunnel_lifecycle_control` attribute.
  TfRef<bool> get tunnel1EnableTunnelLifecycleControl =>
      TfRef.attribute<bool>(this, 'tunnel1_enable_tunnel_lifecycle_control');

  /// Reference to `tunnel1_ike_versions` attribute.
  TfRef<List<String>> get tunnel1IkeVersions =>
      TfRef.attribute<List<String>>(this, 'tunnel1_ike_versions');

  /// Reference to `tunnel1_inside_cidr` attribute.
  TfRef<String> get tunnel1InsideCidr =>
      TfRef.attribute<String>(this, 'tunnel1_inside_cidr');

  /// Reference to `tunnel1_inside_ipv6_cidr` attribute.
  TfRef<String> get tunnel1InsideIpv6Cidr =>
      TfRef.attribute<String>(this, 'tunnel1_inside_ipv6_cidr');

  /// Reference to `tunnel1_phase1_dh_group_numbers` attribute.
  TfRef<List<num>> get tunnel1Phase1DhGroupNumbers =>
      TfRef.attribute<List<num>>(this, 'tunnel1_phase1_dh_group_numbers');

  /// Reference to `tunnel1_phase1_encryption_algorithms` attribute.
  TfRef<List<String>> get tunnel1Phase1EncryptionAlgorithms =>
      TfRef.attribute<List<String>>(
        this,
        'tunnel1_phase1_encryption_algorithms',
      );

  /// Reference to `tunnel1_phase1_integrity_algorithms` attribute.
  TfRef<List<String>> get tunnel1Phase1IntegrityAlgorithms =>
      TfRef.attribute<List<String>>(
        this,
        'tunnel1_phase1_integrity_algorithms',
      );

  /// Reference to `tunnel1_phase1_lifetime_seconds` attribute.
  TfRef<num> get tunnel1Phase1LifetimeSeconds =>
      TfRef.attribute<num>(this, 'tunnel1_phase1_lifetime_seconds');

  /// Reference to `tunnel1_phase2_dh_group_numbers` attribute.
  TfRef<List<num>> get tunnel1Phase2DhGroupNumbers =>
      TfRef.attribute<List<num>>(this, 'tunnel1_phase2_dh_group_numbers');

  /// Reference to `tunnel1_phase2_encryption_algorithms` attribute.
  TfRef<List<String>> get tunnel1Phase2EncryptionAlgorithms =>
      TfRef.attribute<List<String>>(
        this,
        'tunnel1_phase2_encryption_algorithms',
      );

  /// Reference to `tunnel1_phase2_integrity_algorithms` attribute.
  TfRef<List<String>> get tunnel1Phase2IntegrityAlgorithms =>
      TfRef.attribute<List<String>>(
        this,
        'tunnel1_phase2_integrity_algorithms',
      );

  /// Reference to `tunnel1_phase2_lifetime_seconds` attribute.
  TfRef<num> get tunnel1Phase2LifetimeSeconds =>
      TfRef.attribute<num>(this, 'tunnel1_phase2_lifetime_seconds');

  /// Reference to `tunnel1_preshared_key` attribute.
  TfRef<String> get tunnel1PresharedKey =>
      TfRef.attribute<String>(this, 'tunnel1_preshared_key');

  /// Reference to `tunnel1_rekey_fuzz_percentage` attribute.
  TfRef<num> get tunnel1RekeyFuzzPercentage =>
      TfRef.attribute<num>(this, 'tunnel1_rekey_fuzz_percentage');

  /// Reference to `tunnel1_rekey_margin_time_seconds` attribute.
  TfRef<num> get tunnel1RekeyMarginTimeSeconds =>
      TfRef.attribute<num>(this, 'tunnel1_rekey_margin_time_seconds');

  /// Reference to `tunnel1_replay_window_size` attribute.
  TfRef<num> get tunnel1ReplayWindowSize =>
      TfRef.attribute<num>(this, 'tunnel1_replay_window_size');

  /// Reference to `tunnel1_startup_action` attribute.
  TfRef<String> get tunnel1StartupAction =>
      TfRef.attribute<String>(this, 'tunnel1_startup_action');

  /// Reference to `tunnel2_dpd_timeout_action` attribute.
  TfRef<String> get tunnel2DpdTimeoutAction =>
      TfRef.attribute<String>(this, 'tunnel2_dpd_timeout_action');

  /// Reference to `tunnel2_dpd_timeout_seconds` attribute.
  TfRef<num> get tunnel2DpdTimeoutSeconds =>
      TfRef.attribute<num>(this, 'tunnel2_dpd_timeout_seconds');

  /// Reference to `tunnel2_enable_tunnel_lifecycle_control` attribute.
  TfRef<bool> get tunnel2EnableTunnelLifecycleControl =>
      TfRef.attribute<bool>(this, 'tunnel2_enable_tunnel_lifecycle_control');

  /// Reference to `tunnel2_ike_versions` attribute.
  TfRef<List<String>> get tunnel2IkeVersions =>
      TfRef.attribute<List<String>>(this, 'tunnel2_ike_versions');

  /// Reference to `tunnel2_inside_cidr` attribute.
  TfRef<String> get tunnel2InsideCidr =>
      TfRef.attribute<String>(this, 'tunnel2_inside_cidr');

  /// Reference to `tunnel2_inside_ipv6_cidr` attribute.
  TfRef<String> get tunnel2InsideIpv6Cidr =>
      TfRef.attribute<String>(this, 'tunnel2_inside_ipv6_cidr');

  /// Reference to `tunnel2_phase1_dh_group_numbers` attribute.
  TfRef<List<num>> get tunnel2Phase1DhGroupNumbers =>
      TfRef.attribute<List<num>>(this, 'tunnel2_phase1_dh_group_numbers');

  /// Reference to `tunnel2_phase1_encryption_algorithms` attribute.
  TfRef<List<String>> get tunnel2Phase1EncryptionAlgorithms =>
      TfRef.attribute<List<String>>(
        this,
        'tunnel2_phase1_encryption_algorithms',
      );

  /// Reference to `tunnel2_phase1_integrity_algorithms` attribute.
  TfRef<List<String>> get tunnel2Phase1IntegrityAlgorithms =>
      TfRef.attribute<List<String>>(
        this,
        'tunnel2_phase1_integrity_algorithms',
      );

  /// Reference to `tunnel2_phase1_lifetime_seconds` attribute.
  TfRef<num> get tunnel2Phase1LifetimeSeconds =>
      TfRef.attribute<num>(this, 'tunnel2_phase1_lifetime_seconds');

  /// Reference to `tunnel2_phase2_dh_group_numbers` attribute.
  TfRef<List<num>> get tunnel2Phase2DhGroupNumbers =>
      TfRef.attribute<List<num>>(this, 'tunnel2_phase2_dh_group_numbers');

  /// Reference to `tunnel2_phase2_encryption_algorithms` attribute.
  TfRef<List<String>> get tunnel2Phase2EncryptionAlgorithms =>
      TfRef.attribute<List<String>>(
        this,
        'tunnel2_phase2_encryption_algorithms',
      );

  /// Reference to `tunnel2_phase2_integrity_algorithms` attribute.
  TfRef<List<String>> get tunnel2Phase2IntegrityAlgorithms =>
      TfRef.attribute<List<String>>(
        this,
        'tunnel2_phase2_integrity_algorithms',
      );

  /// Reference to `tunnel2_phase2_lifetime_seconds` attribute.
  TfRef<num> get tunnel2Phase2LifetimeSeconds =>
      TfRef.attribute<num>(this, 'tunnel2_phase2_lifetime_seconds');

  /// Reference to `tunnel2_preshared_key` attribute.
  TfRef<String> get tunnel2PresharedKey =>
      TfRef.attribute<String>(this, 'tunnel2_preshared_key');

  /// Reference to `tunnel2_rekey_fuzz_percentage` attribute.
  TfRef<num> get tunnel2RekeyFuzzPercentage =>
      TfRef.attribute<num>(this, 'tunnel2_rekey_fuzz_percentage');

  /// Reference to `tunnel2_rekey_margin_time_seconds` attribute.
  TfRef<num> get tunnel2RekeyMarginTimeSeconds =>
      TfRef.attribute<num>(this, 'tunnel2_rekey_margin_time_seconds');

  /// Reference to `tunnel2_replay_window_size` attribute.
  TfRef<num> get tunnel2ReplayWindowSize =>
      TfRef.attribute<num>(this, 'tunnel2_replay_window_size');

  /// Reference to `tunnel2_startup_action` attribute.
  TfRef<String> get tunnel2StartupAction =>
      TfRef.attribute<String>(this, 'tunnel2_startup_action');

  /// Reference to `tunnel_bandwidth` attribute.
  TfRef<String> get tunnelBandwidth =>
      TfRef.attribute<String>(this, 'tunnel_bandwidth');

  /// Reference to `tunnel_inside_ip_version` attribute.
  TfRef<String> get tunnelInsideIpVersion =>
      TfRef.attribute<String>(this, 'tunnel_inside_ip_version');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `vpn_concentrator_id` attribute.
  TfRef<String> get vpnConcentratorId =>
      TfRef.attribute<String>(this, 'vpn_concentrator_id');

  /// Reference to `vpn_gateway_id` attribute.
  TfRef<String> get vpnGatewayId =>
      TfRef.attribute<String>(this, 'vpn_gateway_id');
}
