// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_client_vpn_endpoint`.
const Set<String> _awsEc2ClientVpnEndpointSensitive = <String>{};

/// Typed helper for the `authentication_options` block of
/// `aws_ec2_client_vpn_endpoint` (derived from provider schema).
@immutable
final class Ec2ClientVpnEndpointAuthenticationOptions {
  const Ec2ClientVpnEndpointAuthenticationOptions({
    this.activeDirectoryId,
    this.rootCertificateChainArn,
    this.samlProviderArn,
    this.selfServiceSamlProviderArn,
    required this.type,
  });

  final TfArg<String>? activeDirectoryId;

  final TfArg<String>? rootCertificateChainArn;

  final TfArg<String>? samlProviderArn;

  final TfArg<String>? selfServiceSamlProviderArn;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (activeDirectoryId != null)
      'active_directory_id': activeDirectoryId!.toTfJson(),
    if (rootCertificateChainArn != null)
      'root_certificate_chain_arn': rootCertificateChainArn!.toTfJson(),
    if (samlProviderArn != null)
      'saml_provider_arn': samlProviderArn!.toTfJson(),
    if (selfServiceSamlProviderArn != null)
      'self_service_saml_provider_arn': selfServiceSamlProviderArn!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `client_connect_options` block of
/// `aws_ec2_client_vpn_endpoint` (derived from provider schema).
@immutable
final class Ec2ClientVpnEndpointClientConnectOptions {
  const Ec2ClientVpnEndpointClientConnectOptions({
    this.enabled,
    this.lambdaFunctionArn,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? lambdaFunctionArn;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (lambdaFunctionArn != null)
      'lambda_function_arn': lambdaFunctionArn!.toTfJson(),
  };
}

/// Typed helper for the `client_login_banner_options` block of
/// `aws_ec2_client_vpn_endpoint` (derived from provider schema).
@immutable
final class Ec2ClientVpnEndpointClientLoginBannerOptions {
  const Ec2ClientVpnEndpointClientLoginBannerOptions({
    this.bannerText,
    this.enabled,
  });

  final TfArg<String>? bannerText;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (bannerText != null) 'banner_text': bannerText!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `client_route_enforcement_options` block of
/// `aws_ec2_client_vpn_endpoint` (derived from provider schema).
@immutable
final class Ec2ClientVpnEndpointClientRouteEnforcementOptions {
  const Ec2ClientVpnEndpointClientRouteEnforcementOptions({this.enforced});

  final TfArg<bool>? enforced;

  Map<String, Object?> encode() => {
    if (enforced != null) 'enforced': enforced!.toTfJson(),
  };
}

/// Typed helper for the `connection_log_options` block of
/// `aws_ec2_client_vpn_endpoint` (derived from provider schema).
@immutable
final class Ec2ClientVpnEndpointConnectionLogOptions {
  const Ec2ClientVpnEndpointConnectionLogOptions({
    this.cloudwatchLogGroup,
    this.cloudwatchLogStream,
    required this.enabled,
  });

  final TfArg<String>? cloudwatchLogGroup;

  final TfArg<String>? cloudwatchLogStream;

  final TfArg<bool> enabled;

  Map<String, Object?> encode() => {
    if (cloudwatchLogGroup != null)
      'cloudwatch_log_group': cloudwatchLogGroup!.toTfJson(),
    if (cloudwatchLogStream != null)
      'cloudwatch_log_stream': cloudwatchLogStream!.toTfJson(),
    'enabled': enabled.toTfJson(),
  };
}

/// Typed helper for the `transit_gateway_configuration` block of
/// `aws_ec2_client_vpn_endpoint` (derived from provider schema).
@immutable
final class Ec2ClientVpnEndpointTransitGatewayConfiguration {
  const Ec2ClientVpnEndpointTransitGatewayConfiguration({
    this.availabilityZoneIds,
    this.availabilityZones,
    this.transitGatewayId,
  });

  final TfArg<List<Object?>>? availabilityZoneIds;

  final TfArg<List<Object?>>? availabilityZones;

  final TfArg<String>? transitGatewayId;

  Map<String, Object?> encode() => {
    if (availabilityZoneIds != null)
      'availability_zone_ids': availabilityZoneIds!.toTfJson(),
    if (availabilityZones != null)
      'availability_zones': availabilityZones!.toTfJson(),
    if (transitGatewayId != null)
      'transit_gateway_id': transitGatewayId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_client_vpn_endpoint`.
final class AwsEc2ClientVpnEndpoint extends Resource {
  static const String tfType = 'aws_ec2_client_vpn_endpoint';

  AwsEc2ClientVpnEndpoint({
    required super.localName,
    TfArg<String>? clientCidrBlock,
    TfArg<String>? description,
    TfArg<bool>? disconnectOnSessionTimeout,
    TfArg<List<String>>? dnsServers,
    TfArg<String>? endpointIpAddressType,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    TfArg<String>? selfServicePortal,
    required TfArg<String> serverCertificateArn,
    TfArg<num>? sessionTimeoutHours,
    TfArg<bool>? splitTunnel,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? trafficIpAddressType,
    TfArg<String>? transportProtocol,
    TfArg<String>? vpcId,
    TfArg<num>? vpnPort,
    required List<Ec2ClientVpnEndpointAuthenticationOptions>
    authenticationOptions,
    Ec2ClientVpnEndpointClientConnectOptions? clientConnectOptions,
    Ec2ClientVpnEndpointClientLoginBannerOptions? clientLoginBannerOptions,
    Ec2ClientVpnEndpointClientRouteEnforcementOptions?
    clientRouteEnforcementOptions,
    required Ec2ClientVpnEndpointConnectionLogOptions connectionLogOptions,
    Ec2ClientVpnEndpointTransitGatewayConfiguration?
    transitGatewayConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (clientCidrBlock != null) 'client_cidr_block': clientCidrBlock,
           if (description != null) 'description': description,
           if (disconnectOnSessionTimeout != null)
             'disconnect_on_session_timeout': disconnectOnSessionTimeout,
           if (dnsServers != null) 'dns_servers': dnsServers,
           if (endpointIpAddressType != null)
             'endpoint_ip_address_type': endpointIpAddressType,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (selfServicePortal != null)
             'self_service_portal': selfServicePortal,
           'server_certificate_arn': serverCertificateArn,
           if (sessionTimeoutHours != null)
             'session_timeout_hours': sessionTimeoutHours,
           if (splitTunnel != null) 'split_tunnel': splitTunnel,
           if (tags != null) 'tags': tags,
           if (trafficIpAddressType != null)
             'traffic_ip_address_type': trafficIpAddressType,
           if (transportProtocol != null)
             'transport_protocol': transportProtocol,
           if (vpcId != null) 'vpc_id': vpcId,
           if (vpnPort != null) 'vpn_port': vpnPort,
           'authentication_options': TfArg.literal([
             for (final e in authenticationOptions) e.encode(),
           ]),
           if (clientConnectOptions != null)
             'client_connect_options': TfArg.literal(
               clientConnectOptions.encode(),
             ),
           if (clientLoginBannerOptions != null)
             'client_login_banner_options': TfArg.literal(
               clientLoginBannerOptions.encode(),
             ),
           if (clientRouteEnforcementOptions != null)
             'client_route_enforcement_options': TfArg.literal(
               clientRouteEnforcementOptions.encode(),
             ),
           'connection_log_options': TfArg.literal(
             connectionLogOptions.encode(),
           ),
           if (transitGatewayConfiguration != null)
             'transit_gateway_configuration': TfArg.literal(
               transitGatewayConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ClientVpnEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `self_service_portal_url` attribute.
  TfRef<String> get selfServicePortalUrl =>
      TfRef.attribute<String>(this, 'self_service_portal_url');
}
