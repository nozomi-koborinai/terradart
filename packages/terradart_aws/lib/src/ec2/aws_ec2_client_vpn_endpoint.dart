// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_client_vpn_endpoint`.
const Set<String> _awsEc2ClientVpnEndpointSensitive = <String>{};

/// Ec2 Client Vpn Endpoint Endpoint Ip Address enum for `endpoint_ip_address_type`.
enum Ec2ClientVpnEndpointEndpointIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6'),
  dualStack('dual-stack');

  const Ec2ClientVpnEndpointEndpointIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Client Vpn Endpoint Self Service enum for `self_service_portal`.
enum Ec2ClientVpnEndpointSelfServicePortal implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const Ec2ClientVpnEndpointSelfServicePortal(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Client Vpn Endpoint Traffic Ip Address enum for `traffic_ip_address_type`.
enum Ec2ClientVpnEndpointTrafficIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6'),
  dualStack('dual-stack');

  const Ec2ClientVpnEndpointTrafficIpAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ec2 Client Vpn Endpoint Transport enum for `transport_protocol`.
enum Ec2ClientVpnEndpointTransportProtocol implements TerraformEnum {
  tcp('tcp'),
  udp('udp');

  const Ec2ClientVpnEndpointTransportProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<Ec2ClientVpnEndpointAuthenticationOptionsType> type;

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

/// `type` — derived from the provider schema description.
enum Ec2ClientVpnEndpointAuthenticationOptionsType implements TerraformEnum {
  certificateAuthentication('certificate-authentication'),
  directoryServiceAuthentication('directory-service-authentication'),
  federatedAuthentication('federated-authentication');

  const Ec2ClientVpnEndpointAuthenticationOptionsType(this.terraformValue);
  @override
  final String terraformValue;
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
    this.availabilityZone,
    this.transitGatewayId,
  });

  final Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZone?
  availabilityZone;

  final TfArg<String>? transitGatewayId;

  Map<String, Object?> encode() => {
    ...?availabilityZone?.encode(),
    if (transitGatewayId != null)
      'transit_gateway_id': transitGatewayId!.toTfJson(),
  };
}

/// At most one of `availability_zone_ids`, `availability_zones` on the `transit_gateway_configuration` block of `aws_ec2_client_vpn_endpoint`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.availabilityZoneIds(...)`.
sealed class Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZone {
  const Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZone();

  /// Sets `availability_zone_ids`.
  const factory Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZone.availabilityZoneIds(
    TfArg<List<Object?>> availabilityZoneIds,
  ) = Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZoneAvailabilityZoneIds;

  /// Sets `availability_zones`.
  const factory Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZone.availabilityZones(
    TfArg<List<Object?>> availabilityZones,
  ) = Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZoneAvailabilityZones;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZone.availabilityZoneIds] choice: sets `availability_zone_ids`.
final class Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZoneAvailabilityZoneIds
    extends Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZone {
  const Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZoneAvailabilityZoneIds(
    this.availabilityZoneIds,
  );

  final TfArg<List<Object?>> availabilityZoneIds;

  @override
  String get blockKey => 'availability_zone_ids';

  @override
  Map<String, Object?> encode() => {
    'availability_zone_ids': availabilityZoneIds.toTfJson(),
  };
}

/// The [Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZone.availabilityZones] choice: sets `availability_zones`.
final class Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZoneAvailabilityZones
    extends Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZone {
  const Ec2ClientVpnEndpointTransitGatewayConfigurationAvailabilityZoneAvailabilityZones(
    this.availabilityZones,
  );

  final TfArg<List<Object?>> availabilityZones;

  @override
  String get blockKey => 'availability_zones';

  @override
  Map<String, Object?> encode() => {
    'availability_zones': availabilityZones.toTfJson(),
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
    TfArg<Ec2ClientVpnEndpointEndpointIpAddressType>? endpointIpAddressType,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    TfArg<Ec2ClientVpnEndpointSelfServicePortal>? selfServicePortal,
    required TfArg<String> serverCertificateArn,
    TfArg<num>? sessionTimeoutHours,
    TfArg<bool>? splitTunnel,
    TfArg<Map<String, String>>? tags,
    TfArg<Ec2ClientVpnEndpointTrafficIpAddressType>? trafficIpAddressType,
    TfArg<Ec2ClientVpnEndpointTransportProtocol>? transportProtocol,
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
