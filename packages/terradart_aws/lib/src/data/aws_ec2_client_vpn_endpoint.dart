// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_client_vpn_endpoint`.
const Set<String> _awsEc2ClientVpnEndpointSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_client_vpn_endpoint` (derived from provider schema).
@immutable
final class DataEc2ClientVpnEndpointFilter {
  const DataEc2ClientVpnEndpointFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_client_vpn_endpoint`.
final class DataAwsEc2ClientVpnEndpoint extends Data {
  static const String tfType = 'aws_ec2_client_vpn_endpoint';

  DataAwsEc2ClientVpnEndpoint({
    required super.localName,
    TfArg<String>? clientVpnEndpointId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2ClientVpnEndpointFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (clientVpnEndpointId != null)
             'client_vpn_endpoint_id': clientVpnEndpointId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ClientVpnEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `authentication_options` attribute.
  TfRef<List<Map<String, Object?>>> get authenticationOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'authentication_options',
      );

  /// Reference to `client_cidr_block` attribute.
  TfRef<String> get clientCidrBlock =>
      TfRef.attribute<String>(this, 'client_cidr_block');

  /// Reference to `client_connect_options` attribute.
  TfRef<List<Map<String, Object?>>> get clientConnectOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'client_connect_options',
      );

  /// Reference to `client_login_banner_options` attribute.
  TfRef<List<Map<String, Object?>>> get clientLoginBannerOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'client_login_banner_options',
      );

  /// Reference to `client_route_enforcement_options` attribute.
  TfRef<List<Map<String, Object?>>> get clientRouteEnforcementOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'client_route_enforcement_options',
      );

  /// Reference to `connection_log_options` attribute.
  TfRef<List<Map<String, Object?>>> get connectionLogOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'connection_log_options',
      );

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `dns_servers` attribute.
  TfRef<List<String>> get dnsServers =>
      TfRef.attribute<List<String>>(this, 'dns_servers');

  /// Reference to `endpoint_ip_address_type` attribute.
  TfRef<String> get endpointIpAddressType =>
      TfRef.attribute<String>(this, 'endpoint_ip_address_type');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `self_service_portal` attribute.
  TfRef<String> get selfServicePortal =>
      TfRef.attribute<String>(this, 'self_service_portal');

  /// Reference to `self_service_portal_url` attribute.
  TfRef<String> get selfServicePortalUrl =>
      TfRef.attribute<String>(this, 'self_service_portal_url');

  /// Reference to `server_certificate_arn` attribute.
  TfRef<String> get serverCertificateArn =>
      TfRef.attribute<String>(this, 'server_certificate_arn');

  /// Reference to `session_timeout_hours` attribute.
  TfRef<num> get sessionTimeoutHours =>
      TfRef.attribute<num>(this, 'session_timeout_hours');

  /// Reference to `split_tunnel` attribute.
  TfRef<bool> get splitTunnel => TfRef.attribute<bool>(this, 'split_tunnel');

  /// Reference to `traffic_ip_address_type` attribute.
  TfRef<String> get trafficIpAddressType =>
      TfRef.attribute<String>(this, 'traffic_ip_address_type');

  /// Reference to `transit_gateway_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get transitGatewayConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'transit_gateway_configuration',
      );

  /// Reference to `transport_protocol` attribute.
  TfRef<String> get transportProtocol =>
      TfRef.attribute<String>(this, 'transport_protocol');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `vpn_port` attribute.
  TfRef<num> get vpnPort => TfRef.attribute<num>(this, 'vpn_port');
}
