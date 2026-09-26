// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpn_connection`.
const Set<String> _awsVpnConnectionSensitive = <String>{
  'customer_gateway_configuration',
  'tunnel1_preshared_key',
  'tunnel2_preshared_key',
};

/// Typed helper for the `tunnel1_log_options` block of
/// `aws_vpn_connection` (derived from provider schema).
@immutable
final class VpnConnectionTunnel1LogOptions {
  const VpnConnectionTunnel1LogOptions({this.cloudwatchLogOptions});

  final VpnConnectionTunnel1LogOptionsCloudwatchLogOptions?
  cloudwatchLogOptions;

  Map<String, Object?> encode() => {
    if (cloudwatchLogOptions != null)
      'cloudwatch_log_options': cloudwatchLogOptions!.encode(),
  };
}

/// Typed helper for the `tunnel1_log_options.cloudwatch_log_options` block of
/// `aws_vpn_connection` (derived from provider schema).
@immutable
final class VpnConnectionTunnel1LogOptionsCloudwatchLogOptions {
  const VpnConnectionTunnel1LogOptionsCloudwatchLogOptions({
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

  final TfArg<String>? logGroupArn;

  final TfArg<String>? logOutputFormat;

  Map<String, Object?> encode() => {
    if (bgpLogEnabled != null) 'bgp_log_enabled': bgpLogEnabled!.toTfJson(),
    if (bgpLogGroupArn != null) 'bgp_log_group_arn': bgpLogGroupArn!.toTfJson(),
    if (bgpLogOutputFormat != null)
      'bgp_log_output_format': bgpLogOutputFormat!.toTfJson(),
    if (logEnabled != null) 'log_enabled': logEnabled!.toTfJson(),
    if (logGroupArn != null) 'log_group_arn': logGroupArn!.toTfJson(),
    if (logOutputFormat != null)
      'log_output_format': logOutputFormat!.toTfJson(),
  };
}

/// Typed helper for the `tunnel2_log_options` block of
/// `aws_vpn_connection` (derived from provider schema).
@immutable
final class VpnConnectionTunnel2LogOptions {
  const VpnConnectionTunnel2LogOptions({this.cloudwatchLogOptions});

  final VpnConnectionTunnel2LogOptionsCloudwatchLogOptions?
  cloudwatchLogOptions;

  Map<String, Object?> encode() => {
    if (cloudwatchLogOptions != null)
      'cloudwatch_log_options': cloudwatchLogOptions!.encode(),
  };
}

/// Typed helper for the `tunnel2_log_options.cloudwatch_log_options` block of
/// `aws_vpn_connection` (derived from provider schema).
@immutable
final class VpnConnectionTunnel2LogOptionsCloudwatchLogOptions {
  const VpnConnectionTunnel2LogOptionsCloudwatchLogOptions({
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

  final TfArg<String>? logGroupArn;

  final TfArg<String>? logOutputFormat;

  Map<String, Object?> encode() => {
    if (bgpLogEnabled != null) 'bgp_log_enabled': bgpLogEnabled!.toTfJson(),
    if (bgpLogGroupArn != null) 'bgp_log_group_arn': bgpLogGroupArn!.toTfJson(),
    if (bgpLogOutputFormat != null)
      'bgp_log_output_format': bgpLogOutputFormat!.toTfJson(),
    if (logEnabled != null) 'log_enabled': logEnabled!.toTfJson(),
    if (logGroupArn != null) 'log_group_arn': logGroupArn!.toTfJson(),
    if (logOutputFormat != null)
      'log_output_format': logOutputFormat!.toTfJson(),
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
    TfArg<String>? outsideIpAddressType,
    TfArg<String>? presharedKeyStorage,
    TfArg<String>? region,
    TfArg<String>? remoteIpv4NetworkCidr,
    TfArg<String>? remoteIpv6NetworkCidr,
    TfArg<bool>? staticRoutesOnly,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? transitGatewayId,
    TfArg<String>? transportTransitGatewayAttachmentId,
    TfArg<String>? tunnel1DpdTimeoutAction,
    TfArg<num>? tunnel1DpdTimeoutSeconds,
    TfArg<bool>? tunnel1EnableTunnelLifecycleControl,
    TfArg<List<String>>? tunnel1IkeVersions,
    TfArg<String>? tunnel1InsideCidr,
    TfArg<String>? tunnel1InsideIpv6Cidr,
    TfArg<List<num>>? tunnel1Phase1DhGroupNumbers,
    TfArg<List<String>>? tunnel1Phase1EncryptionAlgorithms,
    TfArg<List<String>>? tunnel1Phase1IntegrityAlgorithms,
    TfArg<num>? tunnel1Phase1LifetimeSeconds,
    TfArg<List<num>>? tunnel1Phase2DhGroupNumbers,
    TfArg<List<String>>? tunnel1Phase2EncryptionAlgorithms,
    TfArg<List<String>>? tunnel1Phase2IntegrityAlgorithms,
    TfArg<num>? tunnel1Phase2LifetimeSeconds,
    TfArg<String>? tunnel1PresharedKey,
    TfArg<num>? tunnel1RekeyFuzzPercentage,
    TfArg<num>? tunnel1RekeyMarginTimeSeconds,
    TfArg<num>? tunnel1ReplayWindowSize,
    TfArg<String>? tunnel1StartupAction,
    TfArg<String>? tunnel2DpdTimeoutAction,
    TfArg<num>? tunnel2DpdTimeoutSeconds,
    TfArg<bool>? tunnel2EnableTunnelLifecycleControl,
    TfArg<List<String>>? tunnel2IkeVersions,
    TfArg<String>? tunnel2InsideCidr,
    TfArg<String>? tunnel2InsideIpv6Cidr,
    TfArg<List<num>>? tunnel2Phase1DhGroupNumbers,
    TfArg<List<String>>? tunnel2Phase1EncryptionAlgorithms,
    TfArg<List<String>>? tunnel2Phase1IntegrityAlgorithms,
    TfArg<num>? tunnel2Phase1LifetimeSeconds,
    TfArg<List<num>>? tunnel2Phase2DhGroupNumbers,
    TfArg<List<String>>? tunnel2Phase2EncryptionAlgorithms,
    TfArg<List<String>>? tunnel2Phase2IntegrityAlgorithms,
    TfArg<num>? tunnel2Phase2LifetimeSeconds,
    TfArg<String>? tunnel2PresharedKey,
    TfArg<num>? tunnel2RekeyFuzzPercentage,
    TfArg<num>? tunnel2RekeyMarginTimeSeconds,
    TfArg<num>? tunnel2ReplayWindowSize,
    TfArg<String>? tunnel2StartupAction,
    TfArg<String>? tunnelBandwidth,
    TfArg<String>? tunnelInsideIpVersion,
    required TfArg<String> type,
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
           if (enableAcceleration != null)
             'enable_acceleration': enableAcceleration,
           if (localIpv4NetworkCidr != null)
             'local_ipv4_network_cidr': localIpv4NetworkCidr,
           if (localIpv6NetworkCidr != null)
             'local_ipv6_network_cidr': localIpv6NetworkCidr,
           if (outsideIpAddressType != null)
             'outside_ip_address_type': outsideIpAddressType,
           if (presharedKeyStorage != null)
             'preshared_key_storage': presharedKeyStorage,
           if (region != null) 'region': region,
           if (remoteIpv4NetworkCidr != null)
             'remote_ipv4_network_cidr': remoteIpv4NetworkCidr,
           if (remoteIpv6NetworkCidr != null)
             'remote_ipv6_network_cidr': remoteIpv6NetworkCidr,
           if (staticRoutesOnly != null) 'static_routes_only': staticRoutesOnly,
           if (tags != null) 'tags': tags,
           if (transitGatewayId != null) 'transit_gateway_id': transitGatewayId,
           if (transportTransitGatewayAttachmentId != null)
             'transport_transit_gateway_attachment_id':
                 transportTransitGatewayAttachmentId,
           if (tunnel1DpdTimeoutAction != null)
             'tunnel1_dpd_timeout_action': tunnel1DpdTimeoutAction,
           if (tunnel1DpdTimeoutSeconds != null)
             'tunnel1_dpd_timeout_seconds': tunnel1DpdTimeoutSeconds,
           if (tunnel1EnableTunnelLifecycleControl != null)
             'tunnel1_enable_tunnel_lifecycle_control':
                 tunnel1EnableTunnelLifecycleControl,
           if (tunnel1IkeVersions != null)
             'tunnel1_ike_versions': tunnel1IkeVersions,
           if (tunnel1InsideCidr != null)
             'tunnel1_inside_cidr': tunnel1InsideCidr,
           if (tunnel1InsideIpv6Cidr != null)
             'tunnel1_inside_ipv6_cidr': tunnel1InsideIpv6Cidr,
           if (tunnel1Phase1DhGroupNumbers != null)
             'tunnel1_phase1_dh_group_numbers': tunnel1Phase1DhGroupNumbers,
           if (tunnel1Phase1EncryptionAlgorithms != null)
             'tunnel1_phase1_encryption_algorithms':
                 tunnel1Phase1EncryptionAlgorithms,
           if (tunnel1Phase1IntegrityAlgorithms != null)
             'tunnel1_phase1_integrity_algorithms':
                 tunnel1Phase1IntegrityAlgorithms,
           if (tunnel1Phase1LifetimeSeconds != null)
             'tunnel1_phase1_lifetime_seconds': tunnel1Phase1LifetimeSeconds,
           if (tunnel1Phase2DhGroupNumbers != null)
             'tunnel1_phase2_dh_group_numbers': tunnel1Phase2DhGroupNumbers,
           if (tunnel1Phase2EncryptionAlgorithms != null)
             'tunnel1_phase2_encryption_algorithms':
                 tunnel1Phase2EncryptionAlgorithms,
           if (tunnel1Phase2IntegrityAlgorithms != null)
             'tunnel1_phase2_integrity_algorithms':
                 tunnel1Phase2IntegrityAlgorithms,
           if (tunnel1Phase2LifetimeSeconds != null)
             'tunnel1_phase2_lifetime_seconds': tunnel1Phase2LifetimeSeconds,
           if (tunnel1PresharedKey != null)
             'tunnel1_preshared_key': tunnel1PresharedKey,
           if (tunnel1RekeyFuzzPercentage != null)
             'tunnel1_rekey_fuzz_percentage': tunnel1RekeyFuzzPercentage,
           if (tunnel1RekeyMarginTimeSeconds != null)
             'tunnel1_rekey_margin_time_seconds': tunnel1RekeyMarginTimeSeconds,
           if (tunnel1ReplayWindowSize != null)
             'tunnel1_replay_window_size': tunnel1ReplayWindowSize,
           if (tunnel1StartupAction != null)
             'tunnel1_startup_action': tunnel1StartupAction,
           if (tunnel2DpdTimeoutAction != null)
             'tunnel2_dpd_timeout_action': tunnel2DpdTimeoutAction,
           if (tunnel2DpdTimeoutSeconds != null)
             'tunnel2_dpd_timeout_seconds': tunnel2DpdTimeoutSeconds,
           if (tunnel2EnableTunnelLifecycleControl != null)
             'tunnel2_enable_tunnel_lifecycle_control':
                 tunnel2EnableTunnelLifecycleControl,
           if (tunnel2IkeVersions != null)
             'tunnel2_ike_versions': tunnel2IkeVersions,
           if (tunnel2InsideCidr != null)
             'tunnel2_inside_cidr': tunnel2InsideCidr,
           if (tunnel2InsideIpv6Cidr != null)
             'tunnel2_inside_ipv6_cidr': tunnel2InsideIpv6Cidr,
           if (tunnel2Phase1DhGroupNumbers != null)
             'tunnel2_phase1_dh_group_numbers': tunnel2Phase1DhGroupNumbers,
           if (tunnel2Phase1EncryptionAlgorithms != null)
             'tunnel2_phase1_encryption_algorithms':
                 tunnel2Phase1EncryptionAlgorithms,
           if (tunnel2Phase1IntegrityAlgorithms != null)
             'tunnel2_phase1_integrity_algorithms':
                 tunnel2Phase1IntegrityAlgorithms,
           if (tunnel2Phase1LifetimeSeconds != null)
             'tunnel2_phase1_lifetime_seconds': tunnel2Phase1LifetimeSeconds,
           if (tunnel2Phase2DhGroupNumbers != null)
             'tunnel2_phase2_dh_group_numbers': tunnel2Phase2DhGroupNumbers,
           if (tunnel2Phase2EncryptionAlgorithms != null)
             'tunnel2_phase2_encryption_algorithms':
                 tunnel2Phase2EncryptionAlgorithms,
           if (tunnel2Phase2IntegrityAlgorithms != null)
             'tunnel2_phase2_integrity_algorithms':
                 tunnel2Phase2IntegrityAlgorithms,
           if (tunnel2Phase2LifetimeSeconds != null)
             'tunnel2_phase2_lifetime_seconds': tunnel2Phase2LifetimeSeconds,
           if (tunnel2PresharedKey != null)
             'tunnel2_preshared_key': tunnel2PresharedKey,
           if (tunnel2RekeyFuzzPercentage != null)
             'tunnel2_rekey_fuzz_percentage': tunnel2RekeyFuzzPercentage,
           if (tunnel2RekeyMarginTimeSeconds != null)
             'tunnel2_rekey_margin_time_seconds': tunnel2RekeyMarginTimeSeconds,
           if (tunnel2ReplayWindowSize != null)
             'tunnel2_replay_window_size': tunnel2ReplayWindowSize,
           if (tunnel2StartupAction != null)
             'tunnel2_startup_action': tunnel2StartupAction,
           if (tunnelBandwidth != null) 'tunnel_bandwidth': tunnelBandwidth,
           if (tunnelInsideIpVersion != null)
             'tunnel_inside_ip_version': tunnelInsideIpVersion,
           'type': type,
           if (vpnConcentratorId != null)
             'vpn_concentrator_id': vpnConcentratorId,
           if (vpnGatewayId != null) 'vpn_gateway_id': vpnGatewayId,
           if (tunnel1LogOptions != null)
             'tunnel1_log_options': TfArg.literal(tunnel1LogOptions.encode()),
           if (tunnel2LogOptions != null)
             'tunnel2_log_options': TfArg.literal(tunnel2LogOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpnConnectionSensitive;

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
}
