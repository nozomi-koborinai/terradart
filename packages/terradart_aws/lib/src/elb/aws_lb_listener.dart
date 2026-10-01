// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_listener`.
const Set<String> _awsLbListenerSensitive = <String>{
  'default_action.authenticate_oidc.client_secret',
};

/// Lb Listener Alpn enum for `alpn_policy`.
extension type const LbListenerAlpnPolicy._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerAlpnPolicy.variable(String name) : this._(TfArg.variable(name));
  LbListenerAlpnPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerAlpnPolicy.arg(TfArg<String> arg) : this._(arg);

  static const http1only = LbListenerAlpnPolicy._(TfArgLiteral('HTTP1Only'));
  static const http2only = LbListenerAlpnPolicy._(TfArgLiteral('HTTP2Only'));
  static const http2optional = LbListenerAlpnPolicy._(
    TfArgLiteral('HTTP2Optional'),
  );
  static const http2preferred = LbListenerAlpnPolicy._(
    TfArgLiteral('HTTP2Preferred'),
  );
  static const none = LbListenerAlpnPolicy._(TfArgLiteral('None'));

  static const List<LbListenerAlpnPolicy> values = [
    http1only,
    http2only,
    http2optional,
    http2preferred,
    none,
  ];
}

/// Lb Listener enum for `protocol`.
extension type const LbListenerProtocol._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerProtocol.variable(String name) : this._(TfArg.variable(name));
  LbListenerProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerProtocol.arg(TfArg<String> arg) : this._(arg);

  static const http = LbListenerProtocol._(TfArgLiteral('HTTP'));
  static const https = LbListenerProtocol._(TfArgLiteral('HTTPS'));
  static const tcp = LbListenerProtocol._(TfArgLiteral('TCP'));
  static const tls = LbListenerProtocol._(TfArgLiteral('TLS'));
  static const udp = LbListenerProtocol._(TfArgLiteral('UDP'));
  static const tcpUdp = LbListenerProtocol._(TfArgLiteral('TCP_UDP'));
  static const geneve = LbListenerProtocol._(TfArgLiteral('GENEVE'));
  static const quic = LbListenerProtocol._(TfArgLiteral('QUIC'));
  static const tcpQuic = LbListenerProtocol._(TfArgLiteral('TCP_QUIC'));

  static const List<LbListenerProtocol> values = [
    http,
    https,
    tcp,
    tls,
    udp,
    tcpUdp,
    geneve,
    quic,
    tcpQuic,
  ];
}

/// Typed helper for the `default_action` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerDefaultAction {
  const LbListenerDefaultAction({
    this.order,
    this.targetGroupArn,
    required this.type,
    this.authenticateCognito,
    this.authenticateOidc,
    this.fixedResponse,
    this.forward,
    this.jwtValidation,
    this.redirect,
  });

  final TfArg<num>? order;

  final TfArg<String>? targetGroupArn;

  final LbListenerType type;

  final LbListenerAuthenticateCognito? authenticateCognito;

  final LbListenerAuthenticateOidc? authenticateOidc;

  final LbListenerFixedResponse? fixedResponse;

  final LbListenerForward? forward;

  final LbListenerJwtValidation? jwtValidation;

  final LbListenerRedirect? redirect;

  @internal
  Map<String, Object?> encode() => {
    'order': ?order?.toTfJson(),
    'target_group_arn': ?targetGroupArn?.toTfJson(),
    'type': type.toTfJson(),
    'authenticate_cognito': ?authenticateCognito?.encode(),
    'authenticate_oidc': ?authenticateOidc?.encode(),
    'fixed_response': ?fixedResponse?.encode(),
    'forward': ?forward?.encode(),
    'jwt_validation': ?jwtValidation?.encode(),
    'redirect': ?redirect?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LbListenerType._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerType.variable(String name) : this._(TfArg.variable(name));
  LbListenerType.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerType.arg(TfArg<String> arg) : this._(arg);

  static const forward = LbListenerType._(TfArgLiteral('forward'));
  static const authenticateOidc = LbListenerType._(
    TfArgLiteral('authenticate-oidc'),
  );
  static const authenticateCognito = LbListenerType._(
    TfArgLiteral('authenticate-cognito'),
  );
  static const redirect = LbListenerType._(TfArgLiteral('redirect'));
  static const fixedResponse = LbListenerType._(TfArgLiteral('fixed-response'));
  static const jwtValidation = LbListenerType._(TfArgLiteral('jwt-validation'));

  static const List<LbListenerType> values = [
    forward,
    authenticateOidc,
    authenticateCognito,
    redirect,
    fixedResponse,
    jwtValidation,
  ];
}

/// Typed helper for the `default_action.authenticate_cognito` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerAuthenticateCognito {
  const LbListenerAuthenticateCognito({
    this.authenticationRequestExtraParams,
    this.onUnauthenticatedRequest,
    this.scope,
    this.sessionCookieName,
    this.sessionTimeout,
    required this.userPoolArn,
    required this.userPoolClientId,
    required this.userPoolDomain,
  });

  final TfArg<Map<String, String>>? authenticationRequestExtraParams;

  final LbListenerOnUnauthenticatedRequest? onUnauthenticatedRequest;

  final TfArg<String>? scope;

  final TfArg<String>? sessionCookieName;

  final TfArg<num>? sessionTimeout;

  final TfArg<String> userPoolArn;

  final TfArg<String> userPoolClientId;

  final TfArg<String> userPoolDomain;

  @internal
  Map<String, Object?> encode() => {
    'authentication_request_extra_params': ?authenticationRequestExtraParams
        ?.toTfJson(),
    'on_unauthenticated_request': ?onUnauthenticatedRequest?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'session_cookie_name': ?sessionCookieName?.toTfJson(),
    'session_timeout': ?sessionTimeout?.toTfJson(),
    'user_pool_arn': userPoolArn.toTfJson(),
    'user_pool_client_id': userPoolClientId.toTfJson(),
    'user_pool_domain': userPoolDomain.toTfJson(),
  };
}

/// `on_unauthenticated_request` — derived from the provider schema description.
extension type const LbListenerOnUnauthenticatedRequest._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerOnUnauthenticatedRequest.variable(String name)
    : this._(TfArg.variable(name));
  LbListenerOnUnauthenticatedRequest.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerOnUnauthenticatedRequest.arg(TfArg<String> arg) : this._(arg);

  static const deny = LbListenerOnUnauthenticatedRequest._(
    TfArgLiteral('deny'),
  );
  static const allow = LbListenerOnUnauthenticatedRequest._(
    TfArgLiteral('allow'),
  );
  static const authenticate = LbListenerOnUnauthenticatedRequest._(
    TfArgLiteral('authenticate'),
  );

  static const List<LbListenerOnUnauthenticatedRequest> values = [
    deny,
    allow,
    authenticate,
  ];
}

/// Typed helper for the `default_action.authenticate_oidc` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerAuthenticateOidc {
  const LbListenerAuthenticateOidc({
    this.authenticationRequestExtraParams,
    required this.authorizationEndpoint,
    required this.clientId,
    required this.clientSecret,
    required this.issuer,
    this.onUnauthenticatedRequest,
    this.scope,
    this.sessionCookieName,
    this.sessionTimeout,
    required this.tokenEndpoint,
    required this.userInfoEndpoint,
  });

  final TfArg<Map<String, String>>? authenticationRequestExtraParams;

  final TfArg<String> authorizationEndpoint;

  final TfArg<String> clientId;

  final Sensitive<String> clientSecret;

  final TfArg<String> issuer;

  final LbListenerOnUnauthenticatedRequest? onUnauthenticatedRequest;

  final TfArg<String>? scope;

  final TfArg<String>? sessionCookieName;

  final TfArg<num>? sessionTimeout;

  final TfArg<String> tokenEndpoint;

  final TfArg<String> userInfoEndpoint;

  @internal
  Map<String, Object?> encode() => {
    'authentication_request_extra_params': ?authenticationRequestExtraParams
        ?.toTfJson(),
    'authorization_endpoint': authorizationEndpoint.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'issuer': issuer.toTfJson(),
    'on_unauthenticated_request': ?onUnauthenticatedRequest?.toTfJson(),
    'scope': ?scope?.toTfJson(),
    'session_cookie_name': ?sessionCookieName?.toTfJson(),
    'session_timeout': ?sessionTimeout?.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
    'user_info_endpoint': userInfoEndpoint.toTfJson(),
  };
}

/// Typed helper for the `default_action.fixed_response` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerFixedResponse {
  const LbListenerFixedResponse({
    required this.contentType,
    this.messageBody,
    this.statusCode,
  });

  final LbListenerContentType contentType;

  final TfArg<String>? messageBody;

  final TfArg<String>? statusCode;

  @internal
  Map<String, Object?> encode() => {
    'content_type': contentType.toTfJson(),
    'message_body': ?messageBody?.toTfJson(),
    'status_code': ?statusCode?.toTfJson(),
  };
}

/// `content_type` — derived from the provider schema description.
extension type const LbListenerContentType._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerContentType.variable(String name) : this._(TfArg.variable(name));
  LbListenerContentType.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerContentType.arg(TfArg<String> arg) : this._(arg);

  static const textPlain = LbListenerContentType._(TfArgLiteral('text/plain'));
  static const textCss = LbListenerContentType._(TfArgLiteral('text/css'));
  static const textHtml = LbListenerContentType._(TfArgLiteral('text/html'));
  static const applicationJavascript = LbListenerContentType._(
    TfArgLiteral('application/javascript'),
  );
  static const applicationJson = LbListenerContentType._(
    TfArgLiteral('application/json'),
  );

  static const List<LbListenerContentType> values = [
    textPlain,
    textCss,
    textHtml,
    applicationJavascript,
    applicationJson,
  ];
}

/// Typed helper for the `default_action.forward` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerForward {
  const LbListenerForward({this.stickiness, required this.targetGroup});

  final LbListenerStickiness? stickiness;

  final List<LbListenerTargetGroup> targetGroup;

  @internal
  Map<String, Object?> encode() => {
    'stickiness': ?stickiness?.encode(),
    'target_group': [for (final e in targetGroup) e.encode()],
  };
}

/// Typed helper for the `default_action.forward.stickiness` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerStickiness {
  const LbListenerStickiness({required this.duration, this.enabled});

  final TfArg<num> duration;

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
  };
}

/// Typed helper for the `default_action.forward.target_group` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerTargetGroup {
  const LbListenerTargetGroup({required this.arn, this.weight});

  final TfArg<String> arn;

  final TfArg<num>? weight;

  @internal
  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `default_action.jwt_validation` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerJwtValidation {
  const LbListenerJwtValidation({
    required this.issuer,
    required this.jwksEndpoint,
    this.additionalClaim,
  });

  final TfArg<String> issuer;

  final TfArg<String> jwksEndpoint;

  final List<LbListenerAdditionalClaim>? additionalClaim;

  @internal
  Map<String, Object?> encode() => {
    'issuer': issuer.toTfJson(),
    'jwks_endpoint': jwksEndpoint.toTfJson(),
    if (additionalClaim != null)
      'additional_claim': [for (final e in additionalClaim!) e.encode()],
  };
}

/// Typed helper for the `default_action.jwt_validation.additional_claim` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerAdditionalClaim {
  const LbListenerAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  final LbListenerFormat format;

  final TfArg<String> name;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `format` — derived from the provider schema description.
extension type const LbListenerFormat._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerFormat.variable(String name) : this._(TfArg.variable(name));
  LbListenerFormat.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerFormat.arg(TfArg<String> arg) : this._(arg);

  static const singleString = LbListenerFormat._(TfArgLiteral('single-string'));
  static const stringArray = LbListenerFormat._(TfArgLiteral('string-array'));
  static const spaceSeparatedValues = LbListenerFormat._(
    TfArgLiteral('space-separated-values'),
  );

  static const List<LbListenerFormat> values = [
    singleString,
    stringArray,
    spaceSeparatedValues,
  ];
}

/// Typed helper for the `default_action.redirect` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerRedirect {
  const LbListenerRedirect({
    this.host,
    this.path,
    this.port,
    this.protocol,
    this.query,
    required this.statusCode,
  });

  final TfArg<String>? host;

  final TfArg<String>? path;

  final TfArg<String>? port;

  final LbListenerRedirectProtocol? protocol;

  final TfArg<String>? query;

  final LbListenerStatusCode statusCode;

  @internal
  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'query': ?query?.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const LbListenerRedirectProtocol._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerRedirectProtocol.variable(String name)
    : this._(TfArg.variable(name));
  LbListenerRedirectProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerRedirectProtocol.arg(TfArg<String> arg) : this._(arg);

  static const protocol = LbListenerRedirectProtocol._(
    TfArgLiteral('#{protocol}'),
  );
  static const http = LbListenerRedirectProtocol._(TfArgLiteral('HTTP'));
  static const https = LbListenerRedirectProtocol._(TfArgLiteral('HTTPS'));

  static const List<LbListenerRedirectProtocol> values = [
    protocol,
    http,
    https,
  ];
}

/// `status_code` — derived from the provider schema description.
extension type const LbListenerStatusCode._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerStatusCode.variable(String name) : this._(TfArg.variable(name));
  LbListenerStatusCode.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerStatusCode.arg(TfArg<String> arg) : this._(arg);

  static const http301 = LbListenerStatusCode._(TfArgLiteral('HTTP_301'));
  static const http302 = LbListenerStatusCode._(TfArgLiteral('HTTP_302'));

  static const List<LbListenerStatusCode> values = [http301, http302];
}

/// Typed helper for the `mutual_authentication` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerMutualAuthentication {
  const LbListenerMutualAuthentication({
    this.advertiseTrustStoreCaNames,
    this.ignoreClientCertificateExpiry,
    required this.mode,
    this.trustStoreArn,
  });

  final LbListenerAdvertiseTrustStoreCaNames? advertiseTrustStoreCaNames;

  final TfArg<bool>? ignoreClientCertificateExpiry;

  final LbListenerMode mode;

  final TfArg<String>? trustStoreArn;

  @internal
  Map<String, Object?> encode() => {
    'advertise_trust_store_ca_names': ?advertiseTrustStoreCaNames?.toTfJson(),
    'ignore_client_certificate_expiry': ?ignoreClientCertificateExpiry
        ?.toTfJson(),
    'mode': mode.toTfJson(),
    'trust_store_arn': ?trustStoreArn?.toTfJson(),
  };
}

/// `advertise_trust_store_ca_names` — derived from the provider schema description.
extension type const LbListenerAdvertiseTrustStoreCaNames._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerAdvertiseTrustStoreCaNames.variable(String name)
    : this._(TfArg.variable(name));
  LbListenerAdvertiseTrustStoreCaNames.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerAdvertiseTrustStoreCaNames.arg(TfArg<String> arg)
    : this._(arg);

  static const on = LbListenerAdvertiseTrustStoreCaNames._(TfArgLiteral('on'));
  static const off = LbListenerAdvertiseTrustStoreCaNames._(
    TfArgLiteral('off'),
  );

  static const List<LbListenerAdvertiseTrustStoreCaNames> values = [on, off];
}

/// `mode` — derived from the provider schema description.
extension type const LbListenerMode._(TfArg<String> _)
    implements TfArg<String> {
  LbListenerMode.variable(String name) : this._(TfArg.variable(name));
  LbListenerMode.expression(String template)
    : this._(TfArg.expression(template));
  const LbListenerMode.arg(TfArg<String> arg) : this._(arg);

  static const off = LbListenerMode._(TfArgLiteral('off'));
  static const verify = LbListenerMode._(TfArgLiteral('verify'));
  static const passthrough = LbListenerMode._(TfArgLiteral('passthrough'));

  static const List<LbListenerMode> values = [off, verify, passthrough];
}

/// Factory wrapper for `aws_lb_listener`.
final class AwsLbListener extends Resource {
  static const String tfType = 'aws_lb_listener';

  AwsLbListener(
    super.localName, {
    LbListenerAlpnPolicy? alpnPolicy,
    TfArg<String>? certificateArn,
    required TfArg<String> loadBalancerArn,
    TfArg<num>? port,
    LbListenerProtocol? protocol,
    TfArg<String>? region,
    TfArg<String>? routingHttpRequestXAmznMtlsClientcertHeaderName,
    TfArg<String>? routingHttpRequestXAmznMtlsClientcertIssuerHeaderName,
    TfArg<String>? routingHttpRequestXAmznMtlsClientcertLeafHeaderName,
    TfArg<String>? routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName,
    TfArg<String>? routingHttpRequestXAmznMtlsClientcertSubjectHeaderName,
    TfArg<String>? routingHttpRequestXAmznMtlsClientcertValidityHeaderName,
    TfArg<String>? routingHttpRequestXAmznTlsCipherSuiteHeaderName,
    TfArg<String>? routingHttpRequestXAmznTlsVersionHeaderName,
    TfArg<String>? routingHttpResponseAccessControlAllowCredentialsHeaderValue,
    TfArg<String>? routingHttpResponseAccessControlAllowHeadersHeaderValue,
    TfArg<String>? routingHttpResponseAccessControlAllowMethodsHeaderValue,
    TfArg<String>? routingHttpResponseAccessControlAllowOriginHeaderValue,
    TfArg<String>? routingHttpResponseAccessControlExposeHeadersHeaderValue,
    TfArg<String>? routingHttpResponseAccessControlMaxAgeHeaderValue,
    TfArg<String>? routingHttpResponseContentSecurityPolicyHeaderValue,
    TfArg<bool>? routingHttpResponseServerEnabled,
    TfArg<String>? routingHttpResponseStrictTransportSecurityHeaderValue,
    TfArg<String>? routingHttpResponseXContentTypeOptionsHeaderValue,
    TfArg<String>? routingHttpResponseXFrameOptionsHeaderValue,
    TfArg<String>? sslPolicy,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? tcpIdleTimeoutSeconds,
    required List<LbListenerDefaultAction> defaultAction,
    LbListenerMutualAuthentication? mutualAuthentication,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'alpn_policy': ?alpnPolicy,
           'certificate_arn': ?certificateArn,
           'load_balancer_arn': loadBalancerArn,
           'port': ?port,
           'protocol': ?protocol,
           'region': ?region,
           'routing_http_request_x_amzn_mtls_clientcert_header_name':
               ?routingHttpRequestXAmznMtlsClientcertHeaderName,
           'routing_http_request_x_amzn_mtls_clientcert_issuer_header_name':
               ?routingHttpRequestXAmznMtlsClientcertIssuerHeaderName,
           'routing_http_request_x_amzn_mtls_clientcert_leaf_header_name':
               ?routingHttpRequestXAmznMtlsClientcertLeafHeaderName,
           'routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name':
               ?routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName,
           'routing_http_request_x_amzn_mtls_clientcert_subject_header_name':
               ?routingHttpRequestXAmznMtlsClientcertSubjectHeaderName,
           'routing_http_request_x_amzn_mtls_clientcert_validity_header_name':
               ?routingHttpRequestXAmznMtlsClientcertValidityHeaderName,
           'routing_http_request_x_amzn_tls_cipher_suite_header_name':
               ?routingHttpRequestXAmznTlsCipherSuiteHeaderName,
           'routing_http_request_x_amzn_tls_version_header_name':
               ?routingHttpRequestXAmznTlsVersionHeaderName,
           'routing_http_response_access_control_allow_credentials_header_value':
               ?routingHttpResponseAccessControlAllowCredentialsHeaderValue,
           'routing_http_response_access_control_allow_headers_header_value':
               ?routingHttpResponseAccessControlAllowHeadersHeaderValue,
           'routing_http_response_access_control_allow_methods_header_value':
               ?routingHttpResponseAccessControlAllowMethodsHeaderValue,
           'routing_http_response_access_control_allow_origin_header_value':
               ?routingHttpResponseAccessControlAllowOriginHeaderValue,
           'routing_http_response_access_control_expose_headers_header_value':
               ?routingHttpResponseAccessControlExposeHeadersHeaderValue,
           'routing_http_response_access_control_max_age_header_value':
               ?routingHttpResponseAccessControlMaxAgeHeaderValue,
           'routing_http_response_content_security_policy_header_value':
               ?routingHttpResponseContentSecurityPolicyHeaderValue,
           'routing_http_response_server_enabled':
               ?routingHttpResponseServerEnabled,
           'routing_http_response_strict_transport_security_header_value':
               ?routingHttpResponseStrictTransportSecurityHeaderValue,
           'routing_http_response_x_content_type_options_header_value':
               ?routingHttpResponseXContentTypeOptionsHeaderValue,
           'routing_http_response_x_frame_options_header_value':
               ?routingHttpResponseXFrameOptionsHeaderValue,
           'ssl_policy': ?sslPolicy,
           'tags': ?tags,
           'tcp_idle_timeout_seconds': ?tcpIdleTimeoutSeconds,
           'default_action': TfArg.literal([
             for (final e in defaultAction) e.encode(),
           ]),
           if (mutualAuthentication != null)
             'mutual_authentication': TfArg.literal(
               mutualAuthentication.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbListenerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLbListener>`.
  RefTo<AwsLbListener> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `alpn_policy` attribute.
  TfRef<String> get alpnPolicy => TfRef.attribute<String>(this, 'alpn_policy');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `load_balancer_arn` attribute.
  TfRef<String> get loadBalancerArn =>
      TfRef.attribute<String>(this, 'load_balancer_arn');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `routing_http_request_x_amzn_mtls_clientcert_header_name` attribute.
  TfRef<String> get routingHttpRequestXAmznMtlsClientcertHeaderName =>
      TfRef.attribute<String>(
        this,
        'routing_http_request_x_amzn_mtls_clientcert_header_name',
      );

  /// Reference to `routing_http_request_x_amzn_mtls_clientcert_issuer_header_name` attribute.
  TfRef<String> get routingHttpRequestXAmznMtlsClientcertIssuerHeaderName =>
      TfRef.attribute<String>(
        this,
        'routing_http_request_x_amzn_mtls_clientcert_issuer_header_name',
      );

  /// Reference to `routing_http_request_x_amzn_mtls_clientcert_leaf_header_name` attribute.
  TfRef<String> get routingHttpRequestXAmznMtlsClientcertLeafHeaderName =>
      TfRef.attribute<String>(
        this,
        'routing_http_request_x_amzn_mtls_clientcert_leaf_header_name',
      );

  /// Reference to `routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name` attribute.
  TfRef<String>
  get routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName =>
      TfRef.attribute<String>(
        this,
        'routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name',
      );

  /// Reference to `routing_http_request_x_amzn_mtls_clientcert_subject_header_name` attribute.
  TfRef<String> get routingHttpRequestXAmznMtlsClientcertSubjectHeaderName =>
      TfRef.attribute<String>(
        this,
        'routing_http_request_x_amzn_mtls_clientcert_subject_header_name',
      );

  /// Reference to `routing_http_request_x_amzn_mtls_clientcert_validity_header_name` attribute.
  TfRef<String> get routingHttpRequestXAmznMtlsClientcertValidityHeaderName =>
      TfRef.attribute<String>(
        this,
        'routing_http_request_x_amzn_mtls_clientcert_validity_header_name',
      );

  /// Reference to `routing_http_request_x_amzn_tls_cipher_suite_header_name` attribute.
  TfRef<String> get routingHttpRequestXAmznTlsCipherSuiteHeaderName =>
      TfRef.attribute<String>(
        this,
        'routing_http_request_x_amzn_tls_cipher_suite_header_name',
      );

  /// Reference to `routing_http_request_x_amzn_tls_version_header_name` attribute.
  TfRef<String> get routingHttpRequestXAmznTlsVersionHeaderName =>
      TfRef.attribute<String>(
        this,
        'routing_http_request_x_amzn_tls_version_header_name',
      );

  /// Reference to `routing_http_response_access_control_allow_credentials_header_value` attribute.
  TfRef<String>
  get routingHttpResponseAccessControlAllowCredentialsHeaderValue =>
      TfRef.attribute<String>(
        this,
        'routing_http_response_access_control_allow_credentials_header_value',
      );

  /// Reference to `routing_http_response_access_control_allow_headers_header_value` attribute.
  TfRef<String> get routingHttpResponseAccessControlAllowHeadersHeaderValue =>
      TfRef.attribute<String>(
        this,
        'routing_http_response_access_control_allow_headers_header_value',
      );

  /// Reference to `routing_http_response_access_control_allow_methods_header_value` attribute.
  TfRef<String> get routingHttpResponseAccessControlAllowMethodsHeaderValue =>
      TfRef.attribute<String>(
        this,
        'routing_http_response_access_control_allow_methods_header_value',
      );

  /// Reference to `routing_http_response_access_control_allow_origin_header_value` attribute.
  TfRef<String> get routingHttpResponseAccessControlAllowOriginHeaderValue =>
      TfRef.attribute<String>(
        this,
        'routing_http_response_access_control_allow_origin_header_value',
      );

  /// Reference to `routing_http_response_access_control_expose_headers_header_value` attribute.
  TfRef<String> get routingHttpResponseAccessControlExposeHeadersHeaderValue =>
      TfRef.attribute<String>(
        this,
        'routing_http_response_access_control_expose_headers_header_value',
      );

  /// Reference to `routing_http_response_access_control_max_age_header_value` attribute.
  TfRef<String> get routingHttpResponseAccessControlMaxAgeHeaderValue =>
      TfRef.attribute<String>(
        this,
        'routing_http_response_access_control_max_age_header_value',
      );

  /// Reference to `routing_http_response_content_security_policy_header_value` attribute.
  TfRef<String> get routingHttpResponseContentSecurityPolicyHeaderValue =>
      TfRef.attribute<String>(
        this,
        'routing_http_response_content_security_policy_header_value',
      );

  /// Reference to `routing_http_response_server_enabled` attribute.
  TfRef<bool> get routingHttpResponseServerEnabled =>
      TfRef.attribute<bool>(this, 'routing_http_response_server_enabled');

  /// Reference to `routing_http_response_strict_transport_security_header_value` attribute.
  TfRef<String> get routingHttpResponseStrictTransportSecurityHeaderValue =>
      TfRef.attribute<String>(
        this,
        'routing_http_response_strict_transport_security_header_value',
      );

  /// Reference to `routing_http_response_x_content_type_options_header_value` attribute.
  TfRef<String> get routingHttpResponseXContentTypeOptionsHeaderValue =>
      TfRef.attribute<String>(
        this,
        'routing_http_response_x_content_type_options_header_value',
      );

  /// Reference to `routing_http_response_x_frame_options_header_value` attribute.
  TfRef<String> get routingHttpResponseXFrameOptionsHeaderValue =>
      TfRef.attribute<String>(
        this,
        'routing_http_response_x_frame_options_header_value',
      );

  /// Reference to `ssl_policy` attribute.
  TfRef<String> get sslPolicy => TfRef.attribute<String>(this, 'ssl_policy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tcp_idle_timeout_seconds` attribute.
  TfRef<num> get tcpIdleTimeoutSeconds =>
      TfRef.attribute<num>(this, 'tcp_idle_timeout_seconds');
}
