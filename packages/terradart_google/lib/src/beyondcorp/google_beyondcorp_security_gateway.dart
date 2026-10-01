// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_security_gateway`.
const Set<String> _googleBeyondcorpSecurityGatewaySensitive = <String>{};

/// Typed helper for the `hubs` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayHubs {
  const BeyondcorpSecurityGatewayHubs({
    required this.region,
    this.internetGateway,
  });

  final TfArg<String> region;

  final BeyondcorpSecurityGatewayInternetGateway? internetGateway;

  @internal
  Map<String, Object?> encode() => {
    'region': region.toTfJson(),
    'internet_gateway': ?internetGateway?.encode(),
  };
}

/// Typed helper for the `hubs.internet_gateway` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayInternetGateway {
  const BeyondcorpSecurityGatewayInternetGateway();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `logging` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayLogging {
  const BeyondcorpSecurityGatewayLogging();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `proxy_protocol_config` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayProxyProtocolConfig {
  const BeyondcorpSecurityGatewayProxyProtocolConfig({
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

  final BeyondcorpSecurityGatewayContextualHeaders? contextualHeaders;

  @internal
  Map<String, Object?> encode() => {
    'allowed_client_headers': ?allowedClientHeaders?.toTfJson(),
    'client_ip': ?clientIp?.toTfJson(),
    'gateway_identity': ?gatewayIdentity?.toTfJson(),
    'metadata_headers': ?metadataHeaders?.toTfJson(),
    'contextual_headers': ?contextualHeaders?.encode(),
  };
}

/// Typed helper for the `proxy_protocol_config.contextual_headers` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayContextualHeaders {
  const BeyondcorpSecurityGatewayContextualHeaders({
    this.outputType,
    this.deviceInfo,
    this.groupInfo,
    this.userInfo,
  });

  final BeyondcorpSecurityGatewayOutputType? outputType;

  final BeyondcorpSecurityGatewayDeviceInfo? deviceInfo;

  final BeyondcorpSecurityGatewayGroupInfo? groupInfo;

  final BeyondcorpSecurityGatewayUserInfo? userInfo;

  @internal
  Map<String, Object?> encode() => {
    'output_type': ?outputType?.toTfJson(),
    'device_info': ?deviceInfo?.encode(),
    'group_info': ?groupInfo?.encode(),
    'user_info': ?userInfo?.encode(),
  };
}

/// `output_type` — derived from the provider schema description.
extension type const BeyondcorpSecurityGatewayOutputType._(TfArg<String> _)
    implements TfArg<String> {
  BeyondcorpSecurityGatewayOutputType.variable(String name)
    : this._(TfArg.variable(name));
  BeyondcorpSecurityGatewayOutputType.expression(String template)
    : this._(TfArg.expression(template));
  const BeyondcorpSecurityGatewayOutputType.arg(TfArg<String> arg)
    : this._(arg);

  static const protobuf = BeyondcorpSecurityGatewayOutputType._(
    TfArgLiteral('PROTOBUF'),
  );
  static const json = BeyondcorpSecurityGatewayOutputType._(
    TfArgLiteral('JSON'),
  );
  static const none = BeyondcorpSecurityGatewayOutputType._(
    TfArgLiteral('NONE'),
  );

  static const List<BeyondcorpSecurityGatewayOutputType> values = [
    protobuf,
    json,
    none,
  ];
}

/// Typed helper for the `proxy_protocol_config.contextual_headers.device_info` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayDeviceInfo {
  const BeyondcorpSecurityGatewayDeviceInfo({this.outputType});

  final BeyondcorpSecurityGatewayOutputType? outputType;

  @internal
  Map<String, Object?> encode() => {'output_type': ?outputType?.toTfJson()};
}

/// Typed helper for the `proxy_protocol_config.contextual_headers.group_info` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayGroupInfo {
  const BeyondcorpSecurityGatewayGroupInfo({this.outputType});

  final BeyondcorpSecurityGatewayOutputType? outputType;

  @internal
  Map<String, Object?> encode() => {'output_type': ?outputType?.toTfJson()};
}

/// Typed helper for the `proxy_protocol_config.contextual_headers.user_info` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayUserInfo {
  const BeyondcorpSecurityGatewayUserInfo({this.outputType});

  final BeyondcorpSecurityGatewayOutputType? outputType;

  @internal
  Map<String, Object?> encode() => {'output_type': ?outputType?.toTfJson()};
}

/// Typed helper for the `service_discovery` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayServiceDiscovery {
  const BeyondcorpSecurityGatewayServiceDiscovery({this.apiGateway});

  final BeyondcorpSecurityGatewayApiGateway? apiGateway;

  @internal
  Map<String, Object?> encode() => {'api_gateway': ?apiGateway?.encode()};
}

/// Typed helper for the `service_discovery.api_gateway` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayApiGateway {
  const BeyondcorpSecurityGatewayApiGateway({this.resourceOverride});

  final BeyondcorpSecurityGatewayResourceOverride? resourceOverride;

  @internal
  Map<String, Object?> encode() => {
    'resource_override': ?resourceOverride?.encode(),
  };
}

/// Typed helper for the `service_discovery.api_gateway.resource_override` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayResourceOverride {
  const BeyondcorpSecurityGatewayResourceOverride({this.path});

  final TfArg<String>? path;

  @internal
  Map<String, Object?> encode() => {'path': ?path?.toTfJson()};
}

/// Factory wrapper for `google_beyondcorp_security_gateway`.
///
/// Deployment of Security Gateway.
///
/// BeyondCorp **Security Gateway** — Chrome Enterprise Premium security
/// gateway (hubs, logging, service discovery).
///
/// **Cost / apply:** Chrome Enterprise Premium `F91A-404B-8D2E` Monthly
/// Users SKU `E2D2-474B-B4EF` **$6/user·mo**. Needs a CEP entitlement
/// absent on `terradart-validate`. Debt-only. **Never** wire into
/// apply-smoke.
///
/// Enable `beyondcorp.googleapis.com` via [GoogleProjectService] before
/// apply.
final class GoogleBeyondcorpSecurityGateway extends Resource {
  static const String tfType = 'google_beyondcorp_security_gateway';

  GoogleBeyondcorpSecurityGateway(
    super.localName, {
    required TfArg<String> securityGatewayId,
    TfArg<String>? location,
    TfArg<String>? displayName,
    List<BeyondcorpSecurityGatewayHubs>? hubs,
    BeyondcorpSecurityGatewayLogging? logging,
    BeyondcorpSecurityGatewayProxyProtocolConfig? proxyProtocolConfig,
    BeyondcorpSecurityGatewayServiceDiscovery? serviceDiscovery,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'security_gateway_id': securityGatewayId,
           'location': ?location,
           'display_name': ?displayName,
           if (hubs != null)
             'hubs': TfArg.literal([for (final e in hubs) e.encode()]),
           if (logging != null) 'logging': TfArg.literal(logging.encode()),
           if (proxyProtocolConfig != null)
             'proxy_protocol_config': TfArg.literal(
               proxyProtocolConfig.encode(),
             ),
           if (serviceDiscovery != null)
             'service_discovery': TfArg.literal(serviceDiscovery.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBeyondcorpSecurityGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBeyondcorpSecurityGateway>`.
  RefTo<GoogleBeyondcorpSecurityGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delegating_service_account` attribute.
  TfRef<String> get delegatingServiceAccount =>
      TfRef.attribute<String>(this, 'delegating_service_account');

  /// Reference to `external_ips` attribute.
  TfRef<List<String>> get externalIps =>
      TfRef.attribute<List<String>>(this, 'external_ips');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `security_gateway_id` attribute.
  TfRef<String> get securityGatewayId =>
      TfRef.attribute<String>(this, 'security_gateway_id');
}
