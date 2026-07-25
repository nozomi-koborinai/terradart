// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_security_gateway_application`.
const Set<String> _googleBeyondcorpSecurityGatewayApplicationSensitive =
    <String>{};

/// Beyondcorp Security Gateway Application enum for `schema`.
enum BeyondcorpSecurityGatewayApplicationSchema implements TerraformEnum {
  proxyGateway('PROXY_GATEWAY'),
  apiGateway('API_GATEWAY');

  const BeyondcorpSecurityGatewayApplicationSchema(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `endpoint_matchers` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationEndpointMatchers {
  const BeyondcorpSecurityGatewayApplicationEndpointMatchers({
    required this.hostname,
    required this.ports,
  });

  final TfArg<String> hostname;

  final TfArg<List<Object?>> ports;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    'ports': ports.toTfJson(),
  };
}

/// Typed helper for the `upstreams` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUpstreams {
  const BeyondcorpSecurityGatewayApplicationUpstreams({
    this.egressPolicy,
    this.external,
    this.network,
    this.proxyProtocol,
  });

  final BeyondcorpSecurityGatewayApplicationUpstreamsEgressPolicy? egressPolicy;

  final BeyondcorpSecurityGatewayApplicationUpstreamsExternal? external;

  final BeyondcorpSecurityGatewayApplicationUpstreamsNetwork? network;

  final BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocol?
  proxyProtocol;

  Map<String, Object?> encode() => {
    if (egressPolicy != null) 'egress_policy': egressPolicy!.encode(),
    if (external != null) 'external': external!.encode(),
    if (network != null) 'network': network!.encode(),
    if (proxyProtocol != null) 'proxy_protocol': proxyProtocol!.encode(),
  };
}

/// Typed helper for the `upstreams.egress_policy` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUpstreamsEgressPolicy {
  const BeyondcorpSecurityGatewayApplicationUpstreamsEgressPolicy({
    required this.regions,
  });

  final TfArg<List<Object?>> regions;

  Map<String, Object?> encode() => {'regions': regions.toTfJson()};
}

/// Typed helper for the `upstreams.external` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUpstreamsExternal {
  const BeyondcorpSecurityGatewayApplicationUpstreamsExternal({
    required this.endpoints,
  });

  final List<BeyondcorpSecurityGatewayApplicationUpstreamsExternalEndpoints>
  endpoints;

  Map<String, Object?> encode() => {
    'endpoints': [for (final e in endpoints) e.encode()],
  };
}

/// Typed helper for the `upstreams.external.endpoints` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUpstreamsExternalEndpoints {
  const BeyondcorpSecurityGatewayApplicationUpstreamsExternalEndpoints({
    required this.hostname,
    required this.port,
  });

  final TfArg<String> hostname;

  final TfArg<num> port;

  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `upstreams.network` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUpstreamsNetwork {
  const BeyondcorpSecurityGatewayApplicationUpstreamsNetwork({
    required this.name,
  });

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `upstreams.proxy_protocol` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocol {
  const BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocol({
    this.allowedClientHeaders,
    this.clientIp,
    this.gatewayIdentity,
    this.metadataHeaders,
    this.contextualHeaders,
  });

  final TfArg<List<Object?>>? allowedClientHeaders;

  final TfArg<bool>? clientIp;

  final TfArg<String>? gatewayIdentity;

  final TfArg<Map<String, String>>? metadataHeaders;

  final BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeaders?
  contextualHeaders;

  Map<String, Object?> encode() => {
    if (allowedClientHeaders != null)
      'allowed_client_headers': allowedClientHeaders!.toTfJson(),
    if (clientIp != null) 'client_ip': clientIp!.toTfJson(),
    if (gatewayIdentity != null)
      'gateway_identity': gatewayIdentity!.toTfJson(),
    if (metadataHeaders != null)
      'metadata_headers': metadataHeaders!.toTfJson(),
    if (contextualHeaders != null)
      'contextual_headers': contextualHeaders!.encode(),
  };
}

/// Typed helper for the `upstreams.proxy_protocol.contextual_headers` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeaders {
  const BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeaders({
    this.outputType,
    this.deviceInfo,
    this.groupInfo,
    this.userInfo,
  });

  final TfArg<
    BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersOutputType
  >?
  outputType;

  final BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersDeviceInfo?
  deviceInfo;

  final BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersGroupInfo?
  groupInfo;

  final BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersUserInfo?
  userInfo;

  Map<String, Object?> encode() => {
    if (outputType != null) 'output_type': outputType!.toTfJson(),
    if (deviceInfo != null) 'device_info': deviceInfo!.encode(),
    if (groupInfo != null) 'group_info': groupInfo!.encode(),
    if (userInfo != null) 'user_info': userInfo!.encode(),
  };
}

/// `output_type` — derived from the provider schema description.
enum BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersOutputType
    implements TerraformEnum {
  protobuf('PROTOBUF'),
  json('JSON'),
  none('NONE');

  const BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersOutputType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `upstreams.proxy_protocol.contextual_headers.device_info` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersDeviceInfo {
  const BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersDeviceInfo({
    this.outputType,
  });

  final TfArg<
    BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersDeviceInfoOutputType
  >?
  outputType;

  Map<String, Object?> encode() => {
    if (outputType != null) 'output_type': outputType!.toTfJson(),
  };
}

/// `output_type` — derived from the provider schema description.
enum BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersDeviceInfoOutputType
    implements TerraformEnum {
  protobuf('PROTOBUF'),
  json('JSON'),
  none('NONE');

  const BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersDeviceInfoOutputType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `upstreams.proxy_protocol.contextual_headers.group_info` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersGroupInfo {
  const BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersGroupInfo({
    this.outputType,
  });

  final TfArg<
    BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersGroupInfoOutputType
  >?
  outputType;

  Map<String, Object?> encode() => {
    if (outputType != null) 'output_type': outputType!.toTfJson(),
  };
}

/// `output_type` — derived from the provider schema description.
enum BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersGroupInfoOutputType
    implements TerraformEnum {
  protobuf('PROTOBUF'),
  json('JSON'),
  none('NONE');

  const BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersGroupInfoOutputType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `upstreams.proxy_protocol.contextual_headers.user_info` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersUserInfo {
  const BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersUserInfo({
    this.outputType,
  });

  final TfArg<
    BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersUserInfoOutputType
  >?
  outputType;

  Map<String, Object?> encode() => {
    if (outputType != null) 'output_type': outputType!.toTfJson(),
  };
}

/// `output_type` — derived from the provider schema description.
enum BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersUserInfoOutputType
    implements TerraformEnum {
  protobuf('PROTOBUF'),
  json('JSON'),
  none('NONE');

  const BeyondcorpSecurityGatewayApplicationUpstreamsProxyProtocolContextualHeadersUserInfoOutputType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_beyondcorp_security_gateway_application`.
///
/// Specifies application endpoint(s) to protect behind a Security Gateway.
///
/// BeyondCorp **Security Gateway Application** — application routed
/// through a [GoogleBeyondcorpSecurityGateway].
///
/// **Cost / apply:** Chrome Enterprise Premium `F91A-404B-8D2E` Monthly
/// Users SKU `E2D2-474B-B4EF` **$6/user·mo**; parent security gateway is
/// never_apply. Debt-only on `terradart-validate`. **Never** wire into
/// apply-smoke.
final class GoogleBeyondcorpSecurityGatewayApplication extends Resource {
  static const String tfType = 'google_beyondcorp_security_gateway_application';

  GoogleBeyondcorpSecurityGatewayApplication({
    required super.localName,
    required TfArg<String> applicationId,
    required TfArg<String> securityGatewayId,
    TfArg<String>? displayName,
    TfArg<BeyondcorpSecurityGatewayApplicationSchema>? schema,
    List<BeyondcorpSecurityGatewayApplicationEndpointMatchers>?
    endpointMatchers,
    List<BeyondcorpSecurityGatewayApplicationUpstreams>? upstreams,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'security_gateway_id': securityGatewayId,
           if (displayName != null) 'display_name': displayName,
           if (schema != null) 'schema': schema,
           if (endpointMatchers != null)
             'endpoint_matchers': TfArg.literal([
               for (final e in endpointMatchers) e.encode(),
             ]),
           if (upstreams != null)
             'upstreams': TfArg.literal([
               for (final e in upstreams) e.encode(),
             ]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayApplicationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
