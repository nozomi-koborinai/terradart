// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_vpc.dart' show AwsVpc;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;

/// Sensitive field paths for `aws_ec2_client_vpn_endpoint`.
const Set<String> _awsEc2ClientVpnEndpointSensitive = <String>{};

/// Ec2 Client Vpn Endpoint Ip Address enum for `endpoint_ip_address_type`.
enum Ec2ClientVpnEndpointIpAddressType implements TerraformEnum {
  ipv4('ipv4'),
  ipv6('ipv6'),
  dualStack('dual-stack');

  const Ec2ClientVpnEndpointIpAddressType(this.terraformValue);
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

  final TfArg<Ec2ClientVpnEndpointType> type;

  Map<String, Object?> encode() => {
    'active_directory_id': ?activeDirectoryId?.toTfJson(),
    'root_certificate_chain_arn': ?rootCertificateChainArn?.toTfJson(),
    'saml_provider_arn': ?samlProviderArn?.toTfJson(),
    'self_service_saml_provider_arn': ?selfServiceSamlProviderArn?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum Ec2ClientVpnEndpointType implements TerraformEnum {
  certificateAuthentication('certificate-authentication'),
  directoryServiceAuthentication('directory-service-authentication'),
  federatedAuthentication('federated-authentication');

  const Ec2ClientVpnEndpointType(this.terraformValue);
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

  final RefTo<AwsLambdaFunction>? lambdaFunctionArn;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'lambda_function_arn': ?lambdaFunctionArn?.encodeAs('arn').toTfJson(),
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
    'banner_text': ?bannerText?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
  };
}

/// Typed helper for the `client_route_enforcement_options` block of
/// `aws_ec2_client_vpn_endpoint` (derived from provider schema).
@immutable
final class Ec2ClientVpnEndpointClientRouteEnforcementOptions {
  const Ec2ClientVpnEndpointClientRouteEnforcementOptions({this.enforced});

  final TfArg<bool>? enforced;

  Map<String, Object?> encode() => {'enforced': ?enforced?.toTfJson()};
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
    'cloudwatch_log_group': ?cloudwatchLogGroup?.toTfJson(),
    'cloudwatch_log_stream': ?cloudwatchLogStream?.toTfJson(),
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

  final Ec2ClientVpnEndpointAvailabilityZone? availabilityZone;

  final TfArg<String>? transitGatewayId;

  Map<String, Object?> encode() => {
    ...?availabilityZone?.encode(),
    'transit_gateway_id': ?transitGatewayId?.toTfJson(),
  };
}

/// At most one of `availability_zone_ids`, `availability_zones` on the `transit_gateway_configuration` block of `aws_ec2_client_vpn_endpoint`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.availabilityZoneIds(...)`.
sealed class Ec2ClientVpnEndpointAvailabilityZone {
  const Ec2ClientVpnEndpointAvailabilityZone();

  /// Sets `availability_zone_ids`.
  const factory Ec2ClientVpnEndpointAvailabilityZone.availabilityZoneIds(
    TfArg<List<String>> availabilityZoneIds,
  ) = Ec2ClientVpnEndpointAvailabilityZoneIds;

  /// Sets `availability_zones`.
  const factory Ec2ClientVpnEndpointAvailabilityZone.availabilityZones(
    TfArg<List<String>> availabilityZones,
  ) = Ec2ClientVpnEndpointAvailabilityZoneAvailabilityZones;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Ec2ClientVpnEndpointAvailabilityZone.availabilityZoneIds] choice: sets `availability_zone_ids`.
final class Ec2ClientVpnEndpointAvailabilityZoneIds
    extends Ec2ClientVpnEndpointAvailabilityZone {
  const Ec2ClientVpnEndpointAvailabilityZoneIds(this.availabilityZoneIds);

  final TfArg<List<String>> availabilityZoneIds;

  @override
  String get blockKey => 'availability_zone_ids';

  @override
  Map<String, Object?> encode() => {
    'availability_zone_ids': availabilityZoneIds.toTfJson(),
  };
}

/// The [Ec2ClientVpnEndpointAvailabilityZone.availabilityZones] choice: sets `availability_zones`.
final class Ec2ClientVpnEndpointAvailabilityZoneAvailabilityZones
    extends Ec2ClientVpnEndpointAvailabilityZone {
  const Ec2ClientVpnEndpointAvailabilityZoneAvailabilityZones(
    this.availabilityZones,
  );

  final TfArg<List<String>> availabilityZones;

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

  AwsEc2ClientVpnEndpoint(
    super.localName, {
    TfArg<String>? clientCidrBlock,
    TfArg<String>? description,
    TfArg<bool>? disconnectOnSessionTimeout,
    TfArg<List<String>>? dnsServers,
    TfArg<Ec2ClientVpnEndpointIpAddressType>? endpointIpAddressType,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    TfArg<Ec2ClientVpnEndpointSelfServicePortal>? selfServicePortal,
    required TfArg<String> serverCertificateArn,
    TfArg<num>? sessionTimeoutHours,
    TfArg<bool>? splitTunnel,
    TfArg<Map<String, String>>? tags,
    TfArg<Ec2ClientVpnEndpointTrafficIpAddressType>? trafficIpAddressType,
    TfArg<Ec2ClientVpnEndpointTransportProtocol>? transportProtocol,
    RefTo<AwsVpc>? vpcId,
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
           'client_cidr_block': ?clientCidrBlock,
           'description': ?description,
           'disconnect_on_session_timeout': ?disconnectOnSessionTimeout,
           'dns_servers': ?dnsServers,
           'endpoint_ip_address_type': ?endpointIpAddressType,
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'self_service_portal': ?selfServicePortal,
           'server_certificate_arn': serverCertificateArn,
           'session_timeout_hours': ?sessionTimeoutHours,
           'split_tunnel': ?splitTunnel,
           'tags': ?tags,
           'traffic_ip_address_type': ?trafficIpAddressType,
           'transport_protocol': ?transportProtocol,
           'vpc_id': ?vpcId?.encodeAs('id'),
           'vpn_port': ?vpnPort,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2ClientVpnEndpoint>`.
  RefTo<AwsEc2ClientVpnEndpoint> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `self_service_portal_url` attribute.
  TfRef<String> get selfServicePortalUrl =>
      TfRef.attribute<String>(this, 'self_service_portal_url');

  /// Reference to `client_cidr_block` attribute.
  TfRef<String> get clientCidrBlock =>
      TfRef.attribute<String>(this, 'client_cidr_block');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disconnect_on_session_timeout` attribute.
  TfRef<bool> get disconnectOnSessionTimeout =>
      TfRef.attribute<bool>(this, 'disconnect_on_session_timeout');

  /// Reference to `dns_servers` attribute.
  TfRef<List<String>> get dnsServers =>
      TfRef.attribute<List<String>>(this, 'dns_servers');

  /// Reference to `endpoint_ip_address_type` attribute.
  TfRef<String> get endpointIpAddressType =>
      TfRef.attribute<String>(this, 'endpoint_ip_address_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `self_service_portal` attribute.
  TfRef<String> get selfServicePortal =>
      TfRef.attribute<String>(this, 'self_service_portal');

  /// Reference to `server_certificate_arn` attribute.
  TfRef<String> get serverCertificateArn =>
      TfRef.attribute<String>(this, 'server_certificate_arn');

  /// Reference to `session_timeout_hours` attribute.
  TfRef<num> get sessionTimeoutHours =>
      TfRef.attribute<num>(this, 'session_timeout_hours');

  /// Reference to `split_tunnel` attribute.
  TfRef<bool> get splitTunnel => TfRef.attribute<bool>(this, 'split_tunnel');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `traffic_ip_address_type` attribute.
  TfRef<String> get trafficIpAddressType =>
      TfRef.attribute<String>(this, 'traffic_ip_address_type');

  /// Reference to `transport_protocol` attribute.
  TfRef<String> get transportProtocol =>
      TfRef.attribute<String>(this, 'transport_protocol');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `vpn_port` attribute.
  TfRef<num> get vpnPort => TfRef.attribute<num>(this, 'vpn_port');
}
