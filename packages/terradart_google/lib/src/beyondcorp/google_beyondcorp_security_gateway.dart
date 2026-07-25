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

  final BeyondcorpSecurityGatewayHubsInternetGateway? internetGateway;

  Map<String, Object?> encode() => {
    'region': region.toTfJson(),
    if (internetGateway != null) 'internet_gateway': internetGateway!.encode(),
  };
}

/// Typed helper for the `hubs.internet_gateway` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayHubsInternetGateway {
  const BeyondcorpSecurityGatewayHubsInternetGateway();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `logging` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayLogging {
  const BeyondcorpSecurityGatewayLogging();

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

  final TfArg<List<Object?>>? allowedClientHeaders;

  final TfArg<bool>? clientIp;

  final TfArg<String>? gatewayIdentity;

  final TfArg<Map<String, String>>? metadataHeaders;

  final BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeaders?
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

/// Typed helper for the `proxy_protocol_config.contextual_headers` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeaders {
  const BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeaders({
    this.outputType,
    this.deviceInfo,
    this.groupInfo,
    this.userInfo,
  });

  final TfArg<
    BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersOutputType
  >?
  outputType;

  final BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo?
  deviceInfo;

  final BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo?
  groupInfo;

  final BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersUserInfo?
  userInfo;

  Map<String, Object?> encode() => {
    if (outputType != null) 'output_type': outputType!.toTfJson(),
    if (deviceInfo != null) 'device_info': deviceInfo!.encode(),
    if (groupInfo != null) 'group_info': groupInfo!.encode(),
    if (userInfo != null) 'user_info': userInfo!.encode(),
  };
}

/// `output_type` — derived from the provider schema description.
enum BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersOutputType
    implements TerraformEnum {
  protobuf('PROTOBUF'),
  json('JSON'),
  none('NONE');

  const BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersOutputType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `proxy_protocol_config.contextual_headers.device_info` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo {
  const BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo({
    this.outputType,
  });

  final TfArg<
    BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfoOutputType
  >?
  outputType;

  Map<String, Object?> encode() => {
    if (outputType != null) 'output_type': outputType!.toTfJson(),
  };
}

/// `output_type` — derived from the provider schema description.
enum BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfoOutputType
    implements TerraformEnum {
  protobuf('PROTOBUF'),
  json('JSON'),
  none('NONE');

  const BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfoOutputType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `proxy_protocol_config.contextual_headers.group_info` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo {
  const BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo({
    this.outputType,
  });

  final TfArg<
    BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersGroupInfoOutputType
  >?
  outputType;

  Map<String, Object?> encode() => {
    if (outputType != null) 'output_type': outputType!.toTfJson(),
  };
}

/// `output_type` — derived from the provider schema description.
enum BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersGroupInfoOutputType
    implements TerraformEnum {
  protobuf('PROTOBUF'),
  json('JSON'),
  none('NONE');

  const BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersGroupInfoOutputType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `proxy_protocol_config.contextual_headers.user_info` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersUserInfo {
  const BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersUserInfo({
    this.outputType,
  });

  final TfArg<
    BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersUserInfoOutputType
  >?
  outputType;

  Map<String, Object?> encode() => {
    if (outputType != null) 'output_type': outputType!.toTfJson(),
  };
}

/// `output_type` — derived from the provider schema description.
enum BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersUserInfoOutputType
    implements TerraformEnum {
  protobuf('PROTOBUF'),
  json('JSON'),
  none('NONE');

  const BeyondcorpSecurityGatewayProxyProtocolConfigContextualHeadersUserInfoOutputType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `service_discovery` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayServiceDiscovery {
  const BeyondcorpSecurityGatewayServiceDiscovery({this.apiGateway});

  final BeyondcorpSecurityGatewayServiceDiscoveryApiGateway? apiGateway;

  Map<String, Object?> encode() => {
    if (apiGateway != null) 'api_gateway': apiGateway!.encode(),
  };
}

/// Typed helper for the `service_discovery.api_gateway` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayServiceDiscoveryApiGateway {
  const BeyondcorpSecurityGatewayServiceDiscoveryApiGateway({
    this.resourceOverride,
  });

  final BeyondcorpSecurityGatewayServiceDiscoveryApiGatewayResourceOverride?
  resourceOverride;

  Map<String, Object?> encode() => {
    if (resourceOverride != null)
      'resource_override': resourceOverride!.encode(),
  };
}

/// Typed helper for the `service_discovery.api_gateway.resource_override` block of
/// `google_beyondcorp_security_gateway` (derived from provider schema).
@immutable
final class BeyondcorpSecurityGatewayServiceDiscoveryApiGatewayResourceOverride {
  const BeyondcorpSecurityGatewayServiceDiscoveryApiGatewayResourceOverride({
    this.path,
  });

  final TfArg<String>? path;

  Map<String, Object?> encode() => {if (path != null) 'path': path!.toTfJson()};
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

  GoogleBeyondcorpSecurityGateway({
    required super.localName,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'security_gateway_id': securityGatewayId,
           if (location != null) 'location': location,
           if (displayName != null) 'display_name': displayName,
           if (hubs != null)
             'hubs': TfArg.literal([for (final e in hubs) e.encode()]),
           if (logging != null) 'logging': TfArg.literal(logging.encode()),
           if (proxyProtocolConfig != null)
             'proxy_protocol_config': TfArg.literal(
               proxyProtocolConfig.encode(),
             ),
           if (serviceDiscovery != null)
             'service_discovery': TfArg.literal(serviceDiscovery.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBeyondcorpSecurityGatewaySensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
