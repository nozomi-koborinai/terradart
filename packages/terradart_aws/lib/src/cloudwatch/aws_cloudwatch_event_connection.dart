// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_cloudwatch_event_connection`.
const Set<String> _awsCloudwatchEventConnectionSensitive = <String>{
  'auth_parameters.api_key.value',
  'auth_parameters.basic.password',
  'auth_parameters.invocation_http_parameters.body.value',
  'auth_parameters.invocation_http_parameters.header.value',
  'auth_parameters.invocation_http_parameters.query_string.value',
  'auth_parameters.oauth.client_parameters.client_secret',
  'auth_parameters.oauth.oauth_http_parameters.body.value',
  'auth_parameters.oauth.oauth_http_parameters.header.value',
  'auth_parameters.oauth.oauth_http_parameters.query_string.value',
};

/// Cloudwatch Event Connection Authorization enum for `authorization_type`.
enum CloudwatchEventConnectionAuthorizationType implements TerraformEnum {
  basic('BASIC'),
  oauthClientCredentials('OAUTH_CLIENT_CREDENTIALS'),
  apiKey('API_KEY');

  const CloudwatchEventConnectionAuthorizationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `auth_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParameters {
  const CloudwatchEventConnectionAuthParameters({
    required this.auth,
    this.connectivityParameters,
    this.invocationHttpParameters,
  });

  final CloudwatchEventConnectionAuthParametersAuth auth;

  final CloudwatchEventConnectionAuthParametersConnectivityParameters?
  connectivityParameters;

  final CloudwatchEventConnectionAuthParametersInvocationHttpParameters?
  invocationHttpParameters;

  Map<String, Object?> encode() => {
    ...auth.encode(),
    if (connectivityParameters != null)
      'connectivity_parameters': connectivityParameters!.encode(),
    if (invocationHttpParameters != null)
      'invocation_http_parameters': invocationHttpParameters!.encode(),
  };
}

/// Exactly one of `api_key`, `basic`, `oauth` on the `auth_parameters` block of `aws_cloudwatch_event_connection`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.apiKey(...)`.
sealed class CloudwatchEventConnectionAuthParametersAuth {
  const CloudwatchEventConnectionAuthParametersAuth();

  /// Sets `api_key`.
  const factory CloudwatchEventConnectionAuthParametersAuth.apiKey(
    CloudwatchEventConnectionAuthParametersApiKey apiKey,
  ) = CloudwatchEventConnectionAuthParametersAuthApiKey;

  /// Sets `basic`.
  const factory CloudwatchEventConnectionAuthParametersAuth.basic(
    CloudwatchEventConnectionAuthParametersBasic basic,
  ) = CloudwatchEventConnectionAuthParametersAuthBasic;

  /// Sets `oauth`.
  const factory CloudwatchEventConnectionAuthParametersAuth.oauth(
    CloudwatchEventConnectionAuthParametersOauth oauth,
  ) = CloudwatchEventConnectionAuthParametersAuthOauth;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudwatchEventConnectionAuthParametersAuth.apiKey] choice: sets `api_key`.
final class CloudwatchEventConnectionAuthParametersAuthApiKey
    extends CloudwatchEventConnectionAuthParametersAuth {
  const CloudwatchEventConnectionAuthParametersAuthApiKey(this.apiKey);

  final CloudwatchEventConnectionAuthParametersApiKey apiKey;

  @override
  String get blockKey => 'api_key';

  @override
  Map<String, Object?> encode() => {'api_key': apiKey.encode()};
}

/// The [CloudwatchEventConnectionAuthParametersAuth.basic] choice: sets `basic`.
final class CloudwatchEventConnectionAuthParametersAuthBasic
    extends CloudwatchEventConnectionAuthParametersAuth {
  const CloudwatchEventConnectionAuthParametersAuthBasic(this.basic);

  final CloudwatchEventConnectionAuthParametersBasic basic;

  @override
  String get blockKey => 'basic';

  @override
  Map<String, Object?> encode() => {'basic': basic.encode()};
}

/// The [CloudwatchEventConnectionAuthParametersAuth.oauth] choice: sets `oauth`.
final class CloudwatchEventConnectionAuthParametersAuthOauth
    extends CloudwatchEventConnectionAuthParametersAuth {
  const CloudwatchEventConnectionAuthParametersAuthOauth(this.oauth);

  final CloudwatchEventConnectionAuthParametersOauth oauth;

  @override
  String get blockKey => 'oauth';

  @override
  Map<String, Object?> encode() => {'oauth': oauth.encode()};
}

/// Typed helper for the `auth_parameters.api_key` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersApiKey {
  const CloudwatchEventConnectionAuthParametersApiKey({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.basic` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersBasic {
  const CloudwatchEventConnectionAuthParametersBasic({
    required this.password,
    required this.username,
  });

  final TfArg<String> password;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.connectivity_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersConnectivityParameters {
  const CloudwatchEventConnectionAuthParametersConnectivityParameters({
    required this.resourceParameters,
  });

  final CloudwatchEventConnectionAuthParametersConnectivityParametersResourceParameters
  resourceParameters;

  Map<String, Object?> encode() => {
    'resource_parameters': resourceParameters.encode(),
  };
}

/// Typed helper for the `auth_parameters.connectivity_parameters.resource_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersConnectivityParametersResourceParameters {
  const CloudwatchEventConnectionAuthParametersConnectivityParametersResourceParameters({
    required this.resourceConfigurationArn,
  });

  final TfArg<String> resourceConfigurationArn;

  Map<String, Object?> encode() => {
    'resource_configuration_arn': resourceConfigurationArn.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.invocation_http_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersInvocationHttpParameters {
  const CloudwatchEventConnectionAuthParametersInvocationHttpParameters({
    this.body,
    this.header,
    this.queryString,
  });

  final List<
    CloudwatchEventConnectionAuthParametersInvocationHttpParametersBody
  >?
  body;

  final List<
    CloudwatchEventConnectionAuthParametersInvocationHttpParametersHeader
  >?
  header;

  final List<
    CloudwatchEventConnectionAuthParametersInvocationHttpParametersQueryString
  >?
  queryString;

  Map<String, Object?> encode() => {
    if (body != null) 'body': [for (final e in body!) e.encode()],
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (queryString != null)
      'query_string': [for (final e in queryString!) e.encode()],
  };
}

/// Typed helper for the `auth_parameters.invocation_http_parameters.body` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersInvocationHttpParametersBody {
  const CloudwatchEventConnectionAuthParametersInvocationHttpParametersBody({
    this.isValueSecret,
    this.key,
    this.value,
  });

  final TfArg<bool>? isValueSecret;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (isValueSecret != null) 'is_value_secret': isValueSecret!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.invocation_http_parameters.header` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersInvocationHttpParametersHeader {
  const CloudwatchEventConnectionAuthParametersInvocationHttpParametersHeader({
    this.isValueSecret,
    this.key,
    this.value,
  });

  final TfArg<bool>? isValueSecret;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (isValueSecret != null) 'is_value_secret': isValueSecret!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.invocation_http_parameters.query_string` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersInvocationHttpParametersQueryString {
  const CloudwatchEventConnectionAuthParametersInvocationHttpParametersQueryString({
    this.isValueSecret,
    this.key,
    this.value,
  });

  final TfArg<bool>? isValueSecret;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (isValueSecret != null) 'is_value_secret': isValueSecret!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.oauth` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersOauth {
  const CloudwatchEventConnectionAuthParametersOauth({
    required this.authorizationEndpoint,
    required this.httpMethod,
    this.clientParameters,
    required this.oauthHttpParameters,
  });

  final TfArg<String> authorizationEndpoint;

  final TfArg<CloudwatchEventConnectionAuthParametersOauthHttpMethod>
  httpMethod;

  final CloudwatchEventConnectionAuthParametersOauthClientParameters?
  clientParameters;

  final CloudwatchEventConnectionAuthParametersOauthOauthHttpParameters
  oauthHttpParameters;

  Map<String, Object?> encode() => {
    'authorization_endpoint': authorizationEndpoint.toTfJson(),
    'http_method': httpMethod.toTfJson(),
    if (clientParameters != null)
      'client_parameters': clientParameters!.encode(),
    'oauth_http_parameters': oauthHttpParameters.encode(),
  };
}

/// `http_method` — derived from the provider schema description.
enum CloudwatchEventConnectionAuthParametersOauthHttpMethod
    implements TerraformEnum {
  get('GET'),
  post('POST'),
  put('PUT');

  const CloudwatchEventConnectionAuthParametersOauthHttpMethod(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `auth_parameters.oauth.client_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersOauthClientParameters {
  const CloudwatchEventConnectionAuthParametersOauthClientParameters({
    required this.clientId,
    required this.clientSecret,
  });

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.oauth.oauth_http_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersOauthOauthHttpParameters {
  const CloudwatchEventConnectionAuthParametersOauthOauthHttpParameters({
    this.body,
    this.header,
    this.queryString,
  });

  final List<
    CloudwatchEventConnectionAuthParametersOauthOauthHttpParametersBody
  >?
  body;

  final List<
    CloudwatchEventConnectionAuthParametersOauthOauthHttpParametersHeader
  >?
  header;

  final List<
    CloudwatchEventConnectionAuthParametersOauthOauthHttpParametersQueryString
  >?
  queryString;

  Map<String, Object?> encode() => {
    if (body != null) 'body': [for (final e in body!) e.encode()],
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (queryString != null)
      'query_string': [for (final e in queryString!) e.encode()],
  };
}

/// Typed helper for the `auth_parameters.oauth.oauth_http_parameters.body` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersOauthOauthHttpParametersBody {
  const CloudwatchEventConnectionAuthParametersOauthOauthHttpParametersBody({
    this.isValueSecret,
    this.key,
    this.value,
  });

  final TfArg<bool>? isValueSecret;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (isValueSecret != null) 'is_value_secret': isValueSecret!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.oauth.oauth_http_parameters.header` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersOauthOauthHttpParametersHeader {
  const CloudwatchEventConnectionAuthParametersOauthOauthHttpParametersHeader({
    this.isValueSecret,
    this.key,
    this.value,
  });

  final TfArg<bool>? isValueSecret;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (isValueSecret != null) 'is_value_secret': isValueSecret!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.oauth.oauth_http_parameters.query_string` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionAuthParametersOauthOauthHttpParametersQueryString {
  const CloudwatchEventConnectionAuthParametersOauthOauthHttpParametersQueryString({
    this.isValueSecret,
    this.key,
    this.value,
  });

  final TfArg<bool>? isValueSecret;

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (isValueSecret != null) 'is_value_secret': isValueSecret!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `invocation_connectivity_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionInvocationConnectivityParameters {
  const CloudwatchEventConnectionInvocationConnectivityParameters({
    required this.resourceParameters,
  });

  final CloudwatchEventConnectionInvocationConnectivityParametersResourceParameters
  resourceParameters;

  Map<String, Object?> encode() => {
    'resource_parameters': resourceParameters.encode(),
  };
}

/// Typed helper for the `invocation_connectivity_parameters.resource_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionInvocationConnectivityParametersResourceParameters {
  const CloudwatchEventConnectionInvocationConnectivityParametersResourceParameters({
    required this.resourceConfigurationArn,
  });

  final TfArg<String> resourceConfigurationArn;

  Map<String, Object?> encode() => {
    'resource_configuration_arn': resourceConfigurationArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_event_connection`.
final class AwsCloudwatchEventConnection extends Resource {
  static const String tfType = 'aws_cloudwatch_event_connection';

  AwsCloudwatchEventConnection({
    required super.localName,
    required TfArg<CloudwatchEventConnectionAuthorizationType>
    authorizationType,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyIdentifier,
    required TfArg<String> name,
    TfArg<String>? region,
    required CloudwatchEventConnectionAuthParameters authParameters,
    CloudwatchEventConnectionInvocationConnectivityParameters?
    invocationConnectivityParameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorization_type': authorizationType,
           if (description != null) 'description': description,
           if (kmsKeyIdentifier != null)
             'kms_key_identifier': kmsKeyIdentifier.encodeAs('arn'),
           'name': name,
           if (region != null) 'region': region,
           'auth_parameters': TfArg.literal(authParameters.encode()),
           if (invocationConnectivityParameters != null)
             'invocation_connectivity_parameters': TfArg.literal(
               invocationConnectivityParameters.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchEventConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchEventConnection>`.
  RefTo<AwsCloudwatchEventConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');
}
