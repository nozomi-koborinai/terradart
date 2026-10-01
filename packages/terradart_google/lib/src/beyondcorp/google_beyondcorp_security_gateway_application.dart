// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_security_gateway_application`.
const Set<String> _googleBeyondcorpSecurityGatewayApplicationSensitive =
    <String>{};

/// Beyondcorp Security Gateway Application enum for `schema`.
extension type const BeyondcorpSecurityGatewayApplicationSchema._(
  TfArg<String> _
) implements TfArg<String> {
  BeyondcorpSecurityGatewayApplicationSchema.variable(String name)
    : this._(TfArg.variable(name));
  BeyondcorpSecurityGatewayApplicationSchema.expression(String template)
    : this._(TfArg.expression(template));
  const BeyondcorpSecurityGatewayApplicationSchema.arg(TfArg<String> arg)
    : this._(arg);

  static const proxyGateway = BeyondcorpSecurityGatewayApplicationSchema._(
    TfArgLiteral('PROXY_GATEWAY'),
  );
  static const apiGateway = BeyondcorpSecurityGatewayApplicationSchema._(
    TfArgLiteral('API_GATEWAY'),
  );

  static const List<BeyondcorpSecurityGatewayApplicationSchema> values = [
    proxyGateway,
    apiGateway,
  ];
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

  final TfArg<List<num>> ports;

  @internal
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

  final BeyondcorpSecurityGatewayApplicationEgressPolicy? egressPolicy;

  final BeyondcorpSecurityGatewayApplicationExternal? external;

  final BeyondcorpSecurityGatewayApplicationNetwork? network;

  final BeyondcorpSecurityGatewayApplicationProxyProtocol? proxyProtocol;

  @internal
  Map<String, Object?> encode() => {
    'egress_policy': ?egressPolicy?.encode(),
    'external': ?external?.encode(),
    'network': ?network?.encode(),
    'proxy_protocol': ?proxyProtocol?.encode(),
  };
}

/// Typed helper for the `upstreams.egress_policy` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationEgressPolicy {
  const BeyondcorpSecurityGatewayApplicationEgressPolicy({
    required this.regions,
  });

  final TfArg<List<String>> regions;

  @internal
  Map<String, Object?> encode() => {'regions': regions.toTfJson()};
}

/// Typed helper for the `upstreams.external` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationExternal {
  const BeyondcorpSecurityGatewayApplicationExternal({required this.endpoints});

  final List<BeyondcorpSecurityGatewayApplicationEndpoints> endpoints;

  @internal
  Map<String, Object?> encode() => {
    'endpoints': [for (final e in endpoints) e.encode()],
  };
}

/// Typed helper for the `upstreams.external.endpoints` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationEndpoints {
  const BeyondcorpSecurityGatewayApplicationEndpoints({
    required this.hostname,
    required this.port,
  });

  final TfArg<String> hostname;

  final TfArg<num> port;

  @internal
  Map<String, Object?> encode() => {
    'hostname': hostname.toTfJson(),
    'port': port.toTfJson(),
  };
}

/// Typed helper for the `upstreams.network` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationNetwork {
  const BeyondcorpSecurityGatewayApplicationNetwork({required this.name});

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `upstreams.proxy_protocol` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationProxyProtocol {
  const BeyondcorpSecurityGatewayApplicationProxyProtocol({
    this.allowedClientHeaders,
    this.clientIp,
    this.gatewayIdentity,
    this.metadataHeaders,
    this.contextualHeaders,
  });

  final TfArg<List<String>>? allowedClientHeaders;

  final TfArg<bool>? clientIp;

  final TfArg<String>? gatewayIdentity;

  final TfArg<Map<String, String>>? metadataHeaders;

  final BeyondcorpSecurityGatewayApplicationContextualHeaders?
  contextualHeaders;

  @internal
  Map<String, Object?> encode() => {
    'allowed_client_headers': ?allowedClientHeaders?.toTfJson(),
    'client_ip': ?clientIp?.toTfJson(),
    'gateway_identity': ?gatewayIdentity?.toTfJson(),
    'metadata_headers': ?metadataHeaders?.toTfJson(),
    'contextual_headers': ?contextualHeaders?.encode(),
  };
}

/// Typed helper for the `upstreams.proxy_protocol.contextual_headers` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationContextualHeaders {
  const BeyondcorpSecurityGatewayApplicationContextualHeaders({
    this.outputType,
    this.deviceInfo,
    this.groupInfo,
    this.userInfo,
  });

  final BeyondcorpSecurityGatewayApplicationOutputType? outputType;

  final BeyondcorpSecurityGatewayApplicationDeviceInfo? deviceInfo;

  final BeyondcorpSecurityGatewayApplicationGroupInfo? groupInfo;

  final BeyondcorpSecurityGatewayApplicationUserInfo? userInfo;

  @internal
  Map<String, Object?> encode() => {
    'output_type': ?outputType?.toTfJson(),
    'device_info': ?deviceInfo?.encode(),
    'group_info': ?groupInfo?.encode(),
    'user_info': ?userInfo?.encode(),
  };
}

/// `output_type` — derived from the provider schema description.
extension type const BeyondcorpSecurityGatewayApplicationOutputType._(
  TfArg<String> _
) implements TfArg<String> {
  BeyondcorpSecurityGatewayApplicationOutputType.variable(String name)
    : this._(TfArg.variable(name));
  BeyondcorpSecurityGatewayApplicationOutputType.expression(String template)
    : this._(TfArg.expression(template));
  const BeyondcorpSecurityGatewayApplicationOutputType.arg(TfArg<String> arg)
    : this._(arg);

  static const protobuf = BeyondcorpSecurityGatewayApplicationOutputType._(
    TfArgLiteral('PROTOBUF'),
  );
  static const json = BeyondcorpSecurityGatewayApplicationOutputType._(
    TfArgLiteral('JSON'),
  );
  static const none = BeyondcorpSecurityGatewayApplicationOutputType._(
    TfArgLiteral('NONE'),
  );

  static const List<BeyondcorpSecurityGatewayApplicationOutputType> values = [
    protobuf,
    json,
    none,
  ];
}

/// Typed helper for the `upstreams.proxy_protocol.contextual_headers.device_info` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationDeviceInfo {
  const BeyondcorpSecurityGatewayApplicationDeviceInfo({this.outputType});

  final BeyondcorpSecurityGatewayApplicationOutputType? outputType;

  @internal
  Map<String, Object?> encode() => {'output_type': ?outputType?.toTfJson()};
}

/// Typed helper for the `upstreams.proxy_protocol.contextual_headers.group_info` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationGroupInfo {
  const BeyondcorpSecurityGatewayApplicationGroupInfo({this.outputType});

  final BeyondcorpSecurityGatewayApplicationOutputType? outputType;

  @internal
  Map<String, Object?> encode() => {'output_type': ?outputType?.toTfJson()};
}

/// Typed helper for the `upstreams.proxy_protocol.contextual_headers.user_info` block of
/// `google_beyondcorp_security_gateway_application` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApplicationUserInfo {
  const BeyondcorpSecurityGatewayApplicationUserInfo({this.outputType});

  final BeyondcorpSecurityGatewayApplicationOutputType? outputType;

  @internal
  Map<String, Object?> encode() => {'output_type': ?outputType?.toTfJson()};
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

  GoogleBeyondcorpSecurityGatewayApplication(
    super.localName, {
    required TfArg<String> applicationId,
    required TfArg<String> securityGatewayId,
    TfArg<String>? displayName,
    BeyondcorpSecurityGatewayApplicationSchema? schema,
    List<BeyondcorpSecurityGatewayApplicationEndpointMatchers>?
    endpointMatchers,
    List<BeyondcorpSecurityGatewayApplicationUpstreams>? upstreams,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'security_gateway_id': securityGatewayId,
           'display_name': ?displayName,
           'schema': ?schema,
           if (endpointMatchers != null)
             'endpoint_matchers': TfArg.literal([
               for (final e in endpointMatchers) e.encode(),
             ]),
           if (upstreams != null)
             'upstreams': TfArg.literal([
               for (final e in upstreams) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBeyondcorpSecurityGatewayApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBeyondcorpSecurityGatewayApplication>`.
  RefTo<GoogleBeyondcorpSecurityGatewayApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `schema` attribute.
  TfRef<String> get schema => TfRef.attribute<String>(this, 'schema');

  /// Reference to `security_gateway_id` attribute.
  TfRef<String> get securityGatewayId =>
      TfRef.attribute<String>(this, 'security_gateway_id');
}
