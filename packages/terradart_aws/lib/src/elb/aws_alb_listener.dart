// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_alb_listener`.
const Set<String> _awsAlbListenerSensitive = <String>{
  'default_action.authenticate_oidc.client_secret',
};

/// Alb Listener Alpn enum for `alpn_policy`.
enum AlbListenerAlpnPolicy implements TerraformEnum {
  http1only('HTTP1Only'),
  http2only('HTTP2Only'),
  http2optional('HTTP2Optional'),
  http2preferred('HTTP2Preferred'),
  none('None');

  const AlbListenerAlpnPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Alb Listener enum for `protocol`.
enum AlbListenerProtocol implements TerraformEnum {
  http('HTTP'),
  https('HTTPS'),
  tcp('TCP'),
  tls('TLS'),
  udp('UDP'),
  tcpUdp('TCP_UDP'),
  geneve('GENEVE'),
  quic('QUIC'),
  tcpQuic('TCP_QUIC');

  const AlbListenerProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_action` block of
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerDefaultAction {
  const AlbListenerDefaultAction({
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

  final TfArg<AlbListenerType> type;

  final AlbListenerAuthenticateCognito? authenticateCognito;

  final AlbListenerAuthenticateOidc? authenticateOidc;

  final AlbListenerFixedResponse? fixedResponse;

  final AlbListenerForward? forward;

  final AlbListenerJwtValidation? jwtValidation;

  final AlbListenerRedirect? redirect;

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
enum AlbListenerType implements TerraformEnum {
  forward('forward'),
  authenticateOidc('authenticate-oidc'),
  authenticateCognito('authenticate-cognito'),
  redirect('redirect'),
  fixedResponse('fixed-response'),
  jwtValidation('jwt-validation');

  const AlbListenerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_action.authenticate_cognito` block of
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerAuthenticateCognito {
  const AlbListenerAuthenticateCognito({
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

  final TfArg<AlbListenerOnUnauthenticatedRequest>? onUnauthenticatedRequest;

  final TfArg<String>? scope;

  final TfArg<String>? sessionCookieName;

  final TfArg<num>? sessionTimeout;

  final TfArg<String> userPoolArn;

  final TfArg<String> userPoolClientId;

  final TfArg<String> userPoolDomain;

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
enum AlbListenerOnUnauthenticatedRequest implements TerraformEnum {
  deny('deny'),
  allow('allow'),
  authenticate('authenticate');

  const AlbListenerOnUnauthenticatedRequest(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_action.authenticate_oidc` block of
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerAuthenticateOidc {
  const AlbListenerAuthenticateOidc({
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

  final TfArg<String> clientSecret;

  final TfArg<String> issuer;

  final TfArg<AlbListenerOnUnauthenticatedRequest>? onUnauthenticatedRequest;

  final TfArg<String>? scope;

  final TfArg<String>? sessionCookieName;

  final TfArg<num>? sessionTimeout;

  final TfArg<String> tokenEndpoint;

  final TfArg<String> userInfoEndpoint;

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
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerFixedResponse {
  const AlbListenerFixedResponse({
    required this.contentType,
    this.messageBody,
    this.statusCode,
  });

  final TfArg<AlbListenerContentType> contentType;

  final TfArg<String>? messageBody;

  final TfArg<String>? statusCode;

  Map<String, Object?> encode() => {
    'content_type': contentType.toTfJson(),
    'message_body': ?messageBody?.toTfJson(),
    'status_code': ?statusCode?.toTfJson(),
  };
}

/// `content_type` — derived from the provider schema description.
enum AlbListenerContentType implements TerraformEnum {
  textPlain('text/plain'),
  textCss('text/css'),
  textHtml('text/html'),
  applicationJavascript('application/javascript'),
  applicationJson('application/json');

  const AlbListenerContentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_action.forward` block of
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerForward {
  const AlbListenerForward({this.stickiness, required this.targetGroup});

  final AlbListenerStickiness? stickiness;

  final List<AlbListenerTargetGroup> targetGroup;

  Map<String, Object?> encode() => {
    'stickiness': ?stickiness?.encode(),
    'target_group': [for (final e in targetGroup) e.encode()],
  };
}

/// Typed helper for the `default_action.forward.stickiness` block of
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerStickiness {
  const AlbListenerStickiness({required this.duration, this.enabled});

  final TfArg<num> duration;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
  };
}

/// Typed helper for the `default_action.forward.target_group` block of
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerTargetGroup {
  const AlbListenerTargetGroup({required this.arn, this.weight});

  final TfArg<String> arn;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `default_action.jwt_validation` block of
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerJwtValidation {
  const AlbListenerJwtValidation({
    required this.issuer,
    required this.jwksEndpoint,
    this.additionalClaim,
  });

  final TfArg<String> issuer;

  final TfArg<String> jwksEndpoint;

  final List<AlbListenerAdditionalClaim>? additionalClaim;

  Map<String, Object?> encode() => {
    'issuer': issuer.toTfJson(),
    'jwks_endpoint': jwksEndpoint.toTfJson(),
    if (additionalClaim != null)
      'additional_claim': [for (final e in additionalClaim!) e.encode()],
  };
}

/// Typed helper for the `default_action.jwt_validation.additional_claim` block of
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerAdditionalClaim {
  const AlbListenerAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  final TfArg<AlbListenerFormat> format;

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `format` — derived from the provider schema description.
enum AlbListenerFormat implements TerraformEnum {
  singleString('single-string'),
  stringArray('string-array'),
  spaceSeparatedValues('space-separated-values');

  const AlbListenerFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_action.redirect` block of
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerRedirect {
  const AlbListenerRedirect({
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

  final TfArg<AlbListenerRedirectProtocol>? protocol;

  final TfArg<String>? query;

  final TfArg<AlbListenerStatusCode> statusCode;

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
enum AlbListenerRedirectProtocol implements TerraformEnum {
  protocol('#{protocol}'),
  http('HTTP'),
  https('HTTPS');

  const AlbListenerRedirectProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// `status_code` — derived from the provider schema description.
enum AlbListenerStatusCode implements TerraformEnum {
  http301('HTTP_301'),
  http302('HTTP_302');

  const AlbListenerStatusCode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `mutual_authentication` block of
/// `aws_alb_listener` (derived from provider schema).
@immutable
final class AlbListenerMutualAuthentication {
  const AlbListenerMutualAuthentication({
    this.advertiseTrustStoreCaNames,
    this.ignoreClientCertificateExpiry,
    required this.mode,
    this.trustStoreArn,
  });

  final TfArg<AlbListenerAdvertiseTrustStoreCaNames>?
  advertiseTrustStoreCaNames;

  final TfArg<bool>? ignoreClientCertificateExpiry;

  final TfArg<AlbListenerMode> mode;

  final TfArg<String>? trustStoreArn;

  Map<String, Object?> encode() => {
    'advertise_trust_store_ca_names': ?advertiseTrustStoreCaNames?.toTfJson(),
    'ignore_client_certificate_expiry': ?ignoreClientCertificateExpiry
        ?.toTfJson(),
    'mode': mode.toTfJson(),
    'trust_store_arn': ?trustStoreArn?.toTfJson(),
  };
}

/// `advertise_trust_store_ca_names` — derived from the provider schema description.
enum AlbListenerAdvertiseTrustStoreCaNames implements TerraformEnum {
  on('on'),
  off('off');

  const AlbListenerAdvertiseTrustStoreCaNames(this.terraformValue);
  @override
  final String terraformValue;
}

/// `mode` — derived from the provider schema description.
enum AlbListenerMode implements TerraformEnum {
  off('off'),
  verify('verify'),
  passthrough('passthrough');

  const AlbListenerMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_alb_listener`.
final class AwsAlbListener extends Resource {
  static const String tfType = 'aws_alb_listener';

  AwsAlbListener({
    required super.localName,
    TfArg<AlbListenerAlpnPolicy>? alpnPolicy,
    TfArg<String>? certificateArn,
    required TfArg<String> loadBalancerArn,
    TfArg<num>? port,
    TfArg<AlbListenerProtocol>? protocol,
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
    required List<AlbListenerDefaultAction> defaultAction,
    AlbListenerMutualAuthentication? mutualAuthentication,
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
  Set<String> get sensitiveFields => _awsAlbListenerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAlbListener>`.
  RefTo<AwsAlbListener> get ref => RefTo.of(this);

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
