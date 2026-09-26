// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_listener`.
const Set<String> _awsLbListenerSensitive = <String>{
  'default_action.authenticate_oidc.client_secret',
};

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

  final TfArg<String> type;

  final LbListenerDefaultActionAuthenticateCognito? authenticateCognito;

  final LbListenerDefaultActionAuthenticateOidc? authenticateOidc;

  final LbListenerDefaultActionFixedResponse? fixedResponse;

  final LbListenerDefaultActionForward? forward;

  final LbListenerDefaultActionJwtValidation? jwtValidation;

  final LbListenerDefaultActionRedirect? redirect;

  Map<String, Object?> encode() => {
    if (order != null) 'order': order!.toTfJson(),
    if (targetGroupArn != null) 'target_group_arn': targetGroupArn!.toTfJson(),
    'type': type.toTfJson(),
    if (authenticateCognito != null)
      'authenticate_cognito': authenticateCognito!.encode(),
    if (authenticateOidc != null)
      'authenticate_oidc': authenticateOidc!.encode(),
    if (fixedResponse != null) 'fixed_response': fixedResponse!.encode(),
    if (forward != null) 'forward': forward!.encode(),
    if (jwtValidation != null) 'jwt_validation': jwtValidation!.encode(),
    if (redirect != null) 'redirect': redirect!.encode(),
  };
}

/// Typed helper for the `default_action.authenticate_cognito` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerDefaultActionAuthenticateCognito {
  const LbListenerDefaultActionAuthenticateCognito({
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

  final TfArg<String>? onUnauthenticatedRequest;

  final TfArg<String>? scope;

  final TfArg<String>? sessionCookieName;

  final TfArg<num>? sessionTimeout;

  final TfArg<String> userPoolArn;

  final TfArg<String> userPoolClientId;

  final TfArg<String> userPoolDomain;

  Map<String, Object?> encode() => {
    if (authenticationRequestExtraParams != null)
      'authentication_request_extra_params': authenticationRequestExtraParams!
          .toTfJson(),
    if (onUnauthenticatedRequest != null)
      'on_unauthenticated_request': onUnauthenticatedRequest!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (sessionCookieName != null)
      'session_cookie_name': sessionCookieName!.toTfJson(),
    if (sessionTimeout != null) 'session_timeout': sessionTimeout!.toTfJson(),
    'user_pool_arn': userPoolArn.toTfJson(),
    'user_pool_client_id': userPoolClientId.toTfJson(),
    'user_pool_domain': userPoolDomain.toTfJson(),
  };
}

/// Typed helper for the `default_action.authenticate_oidc` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerDefaultActionAuthenticateOidc {
  const LbListenerDefaultActionAuthenticateOidc({
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

  final TfArg<String>? onUnauthenticatedRequest;

  final TfArg<String>? scope;

  final TfArg<String>? sessionCookieName;

  final TfArg<num>? sessionTimeout;

  final TfArg<String> tokenEndpoint;

  final TfArg<String> userInfoEndpoint;

  Map<String, Object?> encode() => {
    if (authenticationRequestExtraParams != null)
      'authentication_request_extra_params': authenticationRequestExtraParams!
          .toTfJson(),
    'authorization_endpoint': authorizationEndpoint.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'issuer': issuer.toTfJson(),
    if (onUnauthenticatedRequest != null)
      'on_unauthenticated_request': onUnauthenticatedRequest!.toTfJson(),
    if (scope != null) 'scope': scope!.toTfJson(),
    if (sessionCookieName != null)
      'session_cookie_name': sessionCookieName!.toTfJson(),
    if (sessionTimeout != null) 'session_timeout': sessionTimeout!.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
    'user_info_endpoint': userInfoEndpoint.toTfJson(),
  };
}

/// Typed helper for the `default_action.fixed_response` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerDefaultActionFixedResponse {
  const LbListenerDefaultActionFixedResponse({
    required this.contentType,
    this.messageBody,
    this.statusCode,
  });

  final TfArg<String> contentType;

  final TfArg<String>? messageBody;

  final TfArg<String>? statusCode;

  Map<String, Object?> encode() => {
    'content_type': contentType.toTfJson(),
    if (messageBody != null) 'message_body': messageBody!.toTfJson(),
    if (statusCode != null) 'status_code': statusCode!.toTfJson(),
  };
}

/// Typed helper for the `default_action.forward` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerDefaultActionForward {
  const LbListenerDefaultActionForward({
    this.stickiness,
    required this.targetGroup,
  });

  final LbListenerDefaultActionForwardStickiness? stickiness;

  final List<LbListenerDefaultActionForwardTargetGroup> targetGroup;

  Map<String, Object?> encode() => {
    if (stickiness != null) 'stickiness': stickiness!.encode(),
    'target_group': [for (final e in targetGroup) e.encode()],
  };
}

/// Typed helper for the `default_action.forward.stickiness` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerDefaultActionForwardStickiness {
  const LbListenerDefaultActionForwardStickiness({
    required this.duration,
    this.enabled,
  });

  final TfArg<num> duration;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `default_action.forward.target_group` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerDefaultActionForwardTargetGroup {
  const LbListenerDefaultActionForwardTargetGroup({
    required this.arn,
    this.weight,
  });

  final TfArg<String> arn;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'arn': arn.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Typed helper for the `default_action.jwt_validation` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerDefaultActionJwtValidation {
  const LbListenerDefaultActionJwtValidation({
    required this.issuer,
    required this.jwksEndpoint,
    this.additionalClaim,
  });

  final TfArg<String> issuer;

  final TfArg<String> jwksEndpoint;

  final List<LbListenerDefaultActionJwtValidationAdditionalClaim>?
  additionalClaim;

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
final class LbListenerDefaultActionJwtValidationAdditionalClaim {
  const LbListenerDefaultActionJwtValidationAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  final TfArg<String> format;

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'format': format.toTfJson(),
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `default_action.redirect` block of
/// `aws_lb_listener` (derived from provider schema).
@immutable
final class LbListenerDefaultActionRedirect {
  const LbListenerDefaultActionRedirect({
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

  final TfArg<String>? protocol;

  final TfArg<String>? query;

  final TfArg<String> statusCode;

  Map<String, Object?> encode() => {
    if (host != null) 'host': host!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (query != null) 'query': query!.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
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

  final TfArg<String>? advertiseTrustStoreCaNames;

  final TfArg<bool>? ignoreClientCertificateExpiry;

  final TfArg<String> mode;

  final TfArg<String>? trustStoreArn;

  Map<String, Object?> encode() => {
    if (advertiseTrustStoreCaNames != null)
      'advertise_trust_store_ca_names': advertiseTrustStoreCaNames!.toTfJson(),
    if (ignoreClientCertificateExpiry != null)
      'ignore_client_certificate_expiry': ignoreClientCertificateExpiry!
          .toTfJson(),
    'mode': mode.toTfJson(),
    if (trustStoreArn != null) 'trust_store_arn': trustStoreArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_lb_listener`.
final class AwsLbListener extends Resource {
  static const String tfType = 'aws_lb_listener';

  AwsLbListener({
    required super.localName,
    TfArg<String>? alpnPolicy,
    TfArg<String>? certificateArn,
    required TfArg<String> loadBalancerArn,
    TfArg<num>? port,
    TfArg<String>? protocol,
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
           if (alpnPolicy != null) 'alpn_policy': alpnPolicy,
           if (certificateArn != null) 'certificate_arn': certificateArn,
           'load_balancer_arn': loadBalancerArn,
           if (port != null) 'port': port,
           if (protocol != null) 'protocol': protocol,
           if (region != null) 'region': region,
           if (routingHttpRequestXAmznMtlsClientcertHeaderName != null)
             'routing_http_request_x_amzn_mtls_clientcert_header_name':
                 routingHttpRequestXAmznMtlsClientcertHeaderName,
           if (routingHttpRequestXAmznMtlsClientcertIssuerHeaderName != null)
             'routing_http_request_x_amzn_mtls_clientcert_issuer_header_name':
                 routingHttpRequestXAmznMtlsClientcertIssuerHeaderName,
           if (routingHttpRequestXAmznMtlsClientcertLeafHeaderName != null)
             'routing_http_request_x_amzn_mtls_clientcert_leaf_header_name':
                 routingHttpRequestXAmznMtlsClientcertLeafHeaderName,
           if (routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName !=
               null)
             'routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name':
                 routingHttpRequestXAmznMtlsClientcertSerialNumberHeaderName,
           if (routingHttpRequestXAmznMtlsClientcertSubjectHeaderName != null)
             'routing_http_request_x_amzn_mtls_clientcert_subject_header_name':
                 routingHttpRequestXAmznMtlsClientcertSubjectHeaderName,
           if (routingHttpRequestXAmznMtlsClientcertValidityHeaderName != null)
             'routing_http_request_x_amzn_mtls_clientcert_validity_header_name':
                 routingHttpRequestXAmznMtlsClientcertValidityHeaderName,
           if (routingHttpRequestXAmznTlsCipherSuiteHeaderName != null)
             'routing_http_request_x_amzn_tls_cipher_suite_header_name':
                 routingHttpRequestXAmznTlsCipherSuiteHeaderName,
           if (routingHttpRequestXAmznTlsVersionHeaderName != null)
             'routing_http_request_x_amzn_tls_version_header_name':
                 routingHttpRequestXAmznTlsVersionHeaderName,
           if (routingHttpResponseAccessControlAllowCredentialsHeaderValue !=
               null)
             'routing_http_response_access_control_allow_credentials_header_value':
                 routingHttpResponseAccessControlAllowCredentialsHeaderValue,
           if (routingHttpResponseAccessControlAllowHeadersHeaderValue != null)
             'routing_http_response_access_control_allow_headers_header_value':
                 routingHttpResponseAccessControlAllowHeadersHeaderValue,
           if (routingHttpResponseAccessControlAllowMethodsHeaderValue != null)
             'routing_http_response_access_control_allow_methods_header_value':
                 routingHttpResponseAccessControlAllowMethodsHeaderValue,
           if (routingHttpResponseAccessControlAllowOriginHeaderValue != null)
             'routing_http_response_access_control_allow_origin_header_value':
                 routingHttpResponseAccessControlAllowOriginHeaderValue,
           if (routingHttpResponseAccessControlExposeHeadersHeaderValue != null)
             'routing_http_response_access_control_expose_headers_header_value':
                 routingHttpResponseAccessControlExposeHeadersHeaderValue,
           if (routingHttpResponseAccessControlMaxAgeHeaderValue != null)
             'routing_http_response_access_control_max_age_header_value':
                 routingHttpResponseAccessControlMaxAgeHeaderValue,
           if (routingHttpResponseContentSecurityPolicyHeaderValue != null)
             'routing_http_response_content_security_policy_header_value':
                 routingHttpResponseContentSecurityPolicyHeaderValue,
           if (routingHttpResponseServerEnabled != null)
             'routing_http_response_server_enabled':
                 routingHttpResponseServerEnabled,
           if (routingHttpResponseStrictTransportSecurityHeaderValue != null)
             'routing_http_response_strict_transport_security_header_value':
                 routingHttpResponseStrictTransportSecurityHeaderValue,
           if (routingHttpResponseXContentTypeOptionsHeaderValue != null)
             'routing_http_response_x_content_type_options_header_value':
                 routingHttpResponseXContentTypeOptionsHeaderValue,
           if (routingHttpResponseXFrameOptionsHeaderValue != null)
             'routing_http_response_x_frame_options_header_value':
                 routingHttpResponseXFrameOptionsHeaderValue,
           if (sslPolicy != null) 'ssl_policy': sslPolicy,
           if (tags != null) 'tags': tags,
           if (tcpIdleTimeoutSeconds != null)
             'tcp_idle_timeout_seconds': tcpIdleTimeoutSeconds,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
