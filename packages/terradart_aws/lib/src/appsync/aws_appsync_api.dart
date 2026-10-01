// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_api`.
const Set<String> _awsAppsyncApiSensitive = <String>{};

/// Typed helper for the `event_config` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiEventConfig {
  const AppsyncApiEventConfig({
    this.authProvider,
    this.connectionAuthMode,
    this.defaultPublishAuthMode,
    this.defaultSubscribeAuthMode,
    this.logConfig,
  });

  final List<AppsyncApiAuthProvider>? authProvider;

  final List<AppsyncApiConnectionAuthMode>? connectionAuthMode;

  final List<AppsyncApiDefaultPublishAuthMode>? defaultPublishAuthMode;

  final List<AppsyncApiDefaultSubscribeAuthMode>? defaultSubscribeAuthMode;

  final List<AppsyncApiLogConfig>? logConfig;

  @internal
  Map<String, Object?> encode() => {
    if (authProvider != null)
      'auth_provider': [for (final e in authProvider!) e.encode()],
    if (connectionAuthMode != null)
      'connection_auth_mode': [for (final e in connectionAuthMode!) e.encode()],
    if (defaultPublishAuthMode != null)
      'default_publish_auth_mode': [
        for (final e in defaultPublishAuthMode!) e.encode(),
      ],
    if (defaultSubscribeAuthMode != null)
      'default_subscribe_auth_mode': [
        for (final e in defaultSubscribeAuthMode!) e.encode(),
      ],
    if (logConfig != null)
      'log_config': [for (final e in logConfig!) e.encode()],
  };
}

/// Typed helper for the `event_config.auth_provider` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiAuthProvider {
  const AppsyncApiAuthProvider({
    required this.authType,
    this.cognitoConfig,
    this.lambdaAuthorizerConfig,
    this.openidConnectConfig,
  });

  final AppsyncApiAuthType authType;

  final List<AppsyncApiCognitoConfig>? cognitoConfig;

  final List<AppsyncApiLambdaAuthorizerConfig>? lambdaAuthorizerConfig;

  final List<AppsyncApiOpenidConnectConfig>? openidConnectConfig;

  @internal
  Map<String, Object?> encode() => {
    'auth_type': authType.toTfJson(),
    if (cognitoConfig != null)
      'cognito_config': [for (final e in cognitoConfig!) e.encode()],
    if (lambdaAuthorizerConfig != null)
      'lambda_authorizer_config': [
        for (final e in lambdaAuthorizerConfig!) e.encode(),
      ],
    if (openidConnectConfig != null)
      'openid_connect_config': [
        for (final e in openidConnectConfig!) e.encode(),
      ],
  };
}

/// `auth_type` — derived from the provider schema description.
extension type const AppsyncApiAuthType._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncApiAuthType.variable(String name) : this._(TfArg.variable(name));
  AppsyncApiAuthType.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncApiAuthType.arg(TfArg<String> arg) : this._(arg);

  static const apiKey = AppsyncApiAuthType._(TfArgLiteral('API_KEY'));
  static const awsIam = AppsyncApiAuthType._(TfArgLiteral('AWS_IAM'));
  static const amazonCognitoUserPools = AppsyncApiAuthType._(
    TfArgLiteral('AMAZON_COGNITO_USER_POOLS'),
  );
  static const openidConnect = AppsyncApiAuthType._(
    TfArgLiteral('OPENID_CONNECT'),
  );
  static const awsLambda = AppsyncApiAuthType._(TfArgLiteral('AWS_LAMBDA'));

  static const List<AppsyncApiAuthType> values = [
    apiKey,
    awsIam,
    amazonCognitoUserPools,
    openidConnect,
    awsLambda,
  ];
}

/// Typed helper for the `event_config.auth_provider.cognito_config` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiCognitoConfig {
  const AppsyncApiCognitoConfig({
    this.appIdClientRegex,
    required this.awsRegion,
    required this.userPoolId,
  });

  final TfArg<String>? appIdClientRegex;

  final TfArg<String> awsRegion;

  final TfArg<String> userPoolId;

  @internal
  Map<String, Object?> encode() => {
    'app_id_client_regex': ?appIdClientRegex?.toTfJson(),
    'aws_region': awsRegion.toTfJson(),
    'user_pool_id': userPoolId.toTfJson(),
  };
}

/// Typed helper for the `event_config.auth_provider.lambda_authorizer_config` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiLambdaAuthorizerConfig {
  const AppsyncApiLambdaAuthorizerConfig({
    this.authorizerResultTtlInSeconds,
    required this.authorizerUri,
    this.identityValidationExpression,
  });

  final TfArg<num>? authorizerResultTtlInSeconds;

  final TfArg<String> authorizerUri;

  final TfArg<String>? identityValidationExpression;

  @internal
  Map<String, Object?> encode() => {
    'authorizer_result_ttl_in_seconds': ?authorizerResultTtlInSeconds
        ?.toTfJson(),
    'authorizer_uri': authorizerUri.toTfJson(),
    'identity_validation_expression': ?identityValidationExpression?.toTfJson(),
  };
}

/// Typed helper for the `event_config.auth_provider.openid_connect_config` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiOpenidConnectConfig {
  const AppsyncApiOpenidConnectConfig({
    this.authTtl,
    this.clientId,
    this.iatTtl,
    required this.issuer,
  });

  final TfArg<num>? authTtl;

  final TfArg<String>? clientId;

  final TfArg<num>? iatTtl;

  final TfArg<String> issuer;

  @internal
  Map<String, Object?> encode() => {
    'auth_ttl': ?authTtl?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'iat_ttl': ?iatTtl?.toTfJson(),
    'issuer': issuer.toTfJson(),
  };
}

/// Typed helper for the `event_config.connection_auth_mode` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiConnectionAuthMode {
  const AppsyncApiConnectionAuthMode({required this.authType});

  final AppsyncApiAuthType authType;

  @internal
  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// Typed helper for the `event_config.default_publish_auth_mode` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiDefaultPublishAuthMode {
  const AppsyncApiDefaultPublishAuthMode({required this.authType});

  final AppsyncApiAuthType authType;

  @internal
  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// Typed helper for the `event_config.default_subscribe_auth_mode` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiDefaultSubscribeAuthMode {
  const AppsyncApiDefaultSubscribeAuthMode({required this.authType});

  final AppsyncApiAuthType authType;

  @internal
  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// Typed helper for the `event_config.log_config` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiLogConfig {
  const AppsyncApiLogConfig({
    required this.cloudwatchLogsRoleArn,
    required this.logLevel,
  });

  final TfArg<String> cloudwatchLogsRoleArn;

  final AppsyncApiLogLevel logLevel;

  @internal
  Map<String, Object?> encode() => {
    'cloudwatch_logs_role_arn': cloudwatchLogsRoleArn.toTfJson(),
    'log_level': logLevel.toTfJson(),
  };
}

/// `log_level` — derived from the provider schema description.
extension type const AppsyncApiLogLevel._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncApiLogLevel.variable(String name) : this._(TfArg.variable(name));
  AppsyncApiLogLevel.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncApiLogLevel.arg(TfArg<String> arg) : this._(arg);

  static const none = AppsyncApiLogLevel._(TfArgLiteral('NONE'));
  static const error = AppsyncApiLogLevel._(TfArgLiteral('ERROR'));
  static const all = AppsyncApiLogLevel._(TfArgLiteral('ALL'));
  static const info = AppsyncApiLogLevel._(TfArgLiteral('INFO'));
  static const debug = AppsyncApiLogLevel._(TfArgLiteral('DEBUG'));

  static const List<AppsyncApiLogLevel> values = [
    none,
    error,
    all,
    info,
    debug,
  ];
}

/// Factory wrapper for `aws_appsync_api`.
final class AwsAppsyncApi extends Resource {
  static const String tfType = 'aws_appsync_api';

  AwsAppsyncApi(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? ownerContact,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AppsyncApiEventConfig>? eventConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'owner_contact': ?ownerContact,
           'region': ?region,
           'tags': ?tags,
           if (eventConfig != null)
             'event_config': TfArg.literal([
               for (final e in eventConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncApiSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncApi>`.
  RefTo<AwsAppsyncApi> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `api_arn` attribute.
  TfRef<String> get apiArn => TfRef.attribute<String>(this, 'api_arn');

  /// Reference to `api_id` attribute.
  TfRef<String> get apiId => TfRef.attribute<String>(this, 'api_id');

  /// Reference to `dns` attribute.
  TfRef<Map<String, String>> get dns =>
      TfRef.attribute<Map<String, String>>(this, 'dns');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `waf_web_acl_arn` attribute.
  TfRef<String> get wafWebAclArn =>
      TfRef.attribute<String>(this, 'waf_web_acl_arn');

  /// Reference to `xray_enabled` attribute.
  TfRef<bool> get xrayEnabled => TfRef.attribute<bool>(this, 'xray_enabled');

  /// Reference to `owner_contact` attribute.
  TfRef<String> get ownerContact =>
      TfRef.attribute<String>(this, 'owner_contact');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
