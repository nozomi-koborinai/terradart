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
extension type const CloudwatchEventConnectionAuthorizationType._(
  TfArg<String> _
) implements TfArg<String> {
  CloudwatchEventConnectionAuthorizationType.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchEventConnectionAuthorizationType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchEventConnectionAuthorizationType.arg(TfArg<String> arg)
    : this._(arg);

  static const basic = CloudwatchEventConnectionAuthorizationType._(
    TfArgLiteral('BASIC'),
  );
  static const oauthClientCredentials =
      CloudwatchEventConnectionAuthorizationType._(
        TfArgLiteral('OAUTH_CLIENT_CREDENTIALS'),
      );
  static const apiKey = CloudwatchEventConnectionAuthorizationType._(
    TfArgLiteral('API_KEY'),
  );

  static const List<CloudwatchEventConnectionAuthorizationType> values = [
    basic,
    oauthClientCredentials,
    apiKey,
  ];
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

  final CloudwatchEventConnectionAuth auth;

  final CloudwatchEventConnectionConnectivityParameters? connectivityParameters;

  final CloudwatchEventConnectionInvocationHttpParameters?
  invocationHttpParameters;

  @internal
  Map<String, Object?> encode() => {
    ...auth.encode(),
    'connectivity_parameters': ?connectivityParameters?.encode(),
    'invocation_http_parameters': ?invocationHttpParameters?.encode(),
  };
}

/// Exactly one of `api_key`, `basic`, `oauth` on the `auth_parameters` block of `aws_cloudwatch_event_connection`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.apiKey(...)`.
sealed class CloudwatchEventConnectionAuth {
  const CloudwatchEventConnectionAuth();

  /// Sets `api_key`.
  const factory CloudwatchEventConnectionAuth.apiKey(
    CloudwatchEventConnectionApiKey apiKey,
  ) = CloudwatchEventConnectionAuthApiKey;

  /// Sets `basic`.
  const factory CloudwatchEventConnectionAuth.basic(
    CloudwatchEventConnectionBasic basic,
  ) = CloudwatchEventConnectionAuthBasic;

  /// Sets `oauth`.
  const factory CloudwatchEventConnectionAuth.oauth(
    CloudwatchEventConnectionOauth oauth,
  ) = CloudwatchEventConnectionAuthOauth;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [CloudwatchEventConnectionAuth.apiKey] choice: sets `api_key`.
final class CloudwatchEventConnectionAuthApiKey
    extends CloudwatchEventConnectionAuth {
  const CloudwatchEventConnectionAuthApiKey(this.apiKey);

  final CloudwatchEventConnectionApiKey apiKey;

  @internal
  @override
  String get blockKey => 'api_key';

  @internal
  @override
  Map<String, Object?> encode() => {'api_key': apiKey.encode()};
}

/// The [CloudwatchEventConnectionAuth.basic] choice: sets `basic`.
final class CloudwatchEventConnectionAuthBasic
    extends CloudwatchEventConnectionAuth {
  const CloudwatchEventConnectionAuthBasic(this.basic);

  final CloudwatchEventConnectionBasic basic;

  @internal
  @override
  String get blockKey => 'basic';

  @internal
  @override
  Map<String, Object?> encode() => {'basic': basic.encode()};
}

/// The [CloudwatchEventConnectionAuth.oauth] choice: sets `oauth`.
final class CloudwatchEventConnectionAuthOauth
    extends CloudwatchEventConnectionAuth {
  const CloudwatchEventConnectionAuthOauth(this.oauth);

  final CloudwatchEventConnectionOauth oauth;

  @internal
  @override
  String get blockKey => 'oauth';

  @internal
  @override
  Map<String, Object?> encode() => {'oauth': oauth.encode()};
}

/// Typed helper for the `auth_parameters.api_key` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionApiKey {
  const CloudwatchEventConnectionApiKey({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final Sensitive<String> value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.basic` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionBasic {
  const CloudwatchEventConnectionBasic({
    required this.password,
    required this.username,
  });

  final Sensitive<String> password;

  final TfArg<String> username;

  @internal
  Map<String, Object?> encode() => {
    'password': password.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.connectivity_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionConnectivityParameters {
  const CloudwatchEventConnectionConnectivityParameters({
    required this.resourceParameters,
  });

  final CloudwatchEventConnectionResourceParameters resourceParameters;

  @internal
  Map<String, Object?> encode() => {
    'resource_parameters': resourceParameters.encode(),
  };
}

/// Typed helper for the `invocation_connectivity_parameters.resource_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudwatchEventConnectionResourceParameters {
  const CloudwatchEventConnectionResourceParameters({
    required this.resourceConfigurationArn,
  });

  final TfArg<String> resourceConfigurationArn;

  @internal
  Map<String, Object?> encode() => {
    'resource_configuration_arn': resourceConfigurationArn.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.invocation_http_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionInvocationHttpParameters {
  const CloudwatchEventConnectionInvocationHttpParameters({
    this.body,
    this.header,
    this.queryString,
  });

  final List<CloudwatchEventConnectionBody>? body;

  final List<CloudwatchEventConnectionHeader>? header;

  final List<CloudwatchEventConnectionQueryString>? queryString;

  @internal
  Map<String, Object?> encode() => {
    if (body != null) 'body': [for (final e in body!) e.encode()],
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (queryString != null)
      'query_string': [for (final e in queryString!) e.encode()],
  };
}

/// Typed helper for the `auth_parameters.invocation_http_parameters.body` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudwatchEventConnectionBody {
  const CloudwatchEventConnectionBody({
    this.isValueSecret,
    this.key,
    this.value,
  });

  final TfArg<bool>? isValueSecret;

  final TfArg<String>? key;

  final Sensitive<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'is_value_secret': ?isValueSecret?.toTfJson(),
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.invocation_http_parameters.header` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudwatchEventConnectionHeader {
  const CloudwatchEventConnectionHeader({
    this.isValueSecret,
    this.key,
    this.value,
  });

  final TfArg<bool>? isValueSecret;

  final TfArg<String>? key;

  final Sensitive<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'is_value_secret': ?isValueSecret?.toTfJson(),
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.invocation_http_parameters.query_string` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CloudwatchEventConnectionQueryString {
  const CloudwatchEventConnectionQueryString({
    this.isValueSecret,
    this.key,
    this.value,
  });

  final TfArg<bool>? isValueSecret;

  final TfArg<String>? key;

  final Sensitive<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'is_value_secret': ?isValueSecret?.toTfJson(),
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.oauth` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionOauth {
  const CloudwatchEventConnectionOauth({
    required this.authorizationEndpoint,
    required this.httpMethod,
    this.clientParameters,
    required this.oauthHttpParameters,
  });

  final TfArg<String> authorizationEndpoint;

  final CloudwatchEventConnectionHttpMethod httpMethod;

  final CloudwatchEventConnectionClientParameters? clientParameters;

  final CloudwatchEventConnectionOauthHttpParameters oauthHttpParameters;

  @internal
  Map<String, Object?> encode() => {
    'authorization_endpoint': authorizationEndpoint.toTfJson(),
    'http_method': httpMethod.toTfJson(),
    'client_parameters': ?clientParameters?.encode(),
    'oauth_http_parameters': oauthHttpParameters.encode(),
  };
}

/// `http_method` — derived from the provider schema description.
extension type const CloudwatchEventConnectionHttpMethod._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchEventConnectionHttpMethod.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchEventConnectionHttpMethod.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchEventConnectionHttpMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const get = CloudwatchEventConnectionHttpMethod._(TfArgLiteral('GET'));
  static const post = CloudwatchEventConnectionHttpMethod._(
    TfArgLiteral('POST'),
  );
  static const put = CloudwatchEventConnectionHttpMethod._(TfArgLiteral('PUT'));

  static const List<CloudwatchEventConnectionHttpMethod> values = [
    get,
    post,
    put,
  ];
}

/// Typed helper for the `auth_parameters.oauth.client_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionClientParameters {
  const CloudwatchEventConnectionClientParameters({
    required this.clientId,
    required this.clientSecret,
  });

  final TfArg<String> clientId;

  final Sensitive<String> clientSecret;

  @internal
  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
  };
}

/// Typed helper for the `auth_parameters.oauth.oauth_http_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionOauthHttpParameters {
  const CloudwatchEventConnectionOauthHttpParameters({
    this.body,
    this.header,
    this.queryString,
  });

  final List<CloudwatchEventConnectionBody>? body;

  final List<CloudwatchEventConnectionHeader>? header;

  final List<CloudwatchEventConnectionQueryString>? queryString;

  @internal
  Map<String, Object?> encode() => {
    if (body != null) 'body': [for (final e in body!) e.encode()],
    if (header != null) 'header': [for (final e in header!) e.encode()],
    if (queryString != null)
      'query_string': [for (final e in queryString!) e.encode()],
  };
}

/// Typed helper for the `invocation_connectivity_parameters` block of
/// `aws_cloudwatch_event_connection` (derived from provider schema).
@immutable
final class CloudwatchEventConnectionInvocationConnectivityParameters {
  const CloudwatchEventConnectionInvocationConnectivityParameters({
    required this.resourceParameters,
  });

  final CloudwatchEventConnectionResourceParameters resourceParameters;

  @internal
  Map<String, Object?> encode() => {
    'resource_parameters': resourceParameters.encode(),
  };
}

/// Factory wrapper for `aws_cloudwatch_event_connection`.
final class AwsCloudwatchEventConnection extends Resource {
  static const String tfType = 'aws_cloudwatch_event_connection';

  AwsCloudwatchEventConnection(
    super.localName, {
    required CloudwatchEventConnectionAuthorizationType authorizationType,
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
           'description': ?description,
           'kms_key_identifier': ?kmsKeyIdentifier?.encodeAs('arn'),
           'name': name,
           'region': ?region,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArn => TfRef.attribute<String>(this, 'secret_arn');

  /// Reference to `authorization_type` attribute.
  TfRef<String> get authorizationType =>
      TfRef.attribute<String>(this, 'authorization_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_identifier` attribute.
  TfRef<String> get kmsKeyIdentifier =>
      TfRef.attribute<String>(this, 'kms_key_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
