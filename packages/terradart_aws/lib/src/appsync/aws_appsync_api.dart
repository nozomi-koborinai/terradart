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

  final List<AppsyncApiEventConfigAuthProvider>? authProvider;

  final List<AppsyncApiEventConfigConnectionAuthMode>? connectionAuthMode;

  final List<AppsyncApiEventConfigDefaultPublishAuthMode>?
  defaultPublishAuthMode;

  final List<AppsyncApiEventConfigDefaultSubscribeAuthMode>?
  defaultSubscribeAuthMode;

  final List<AppsyncApiEventConfigLogConfig>? logConfig;

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
final class AppsyncApiEventConfigAuthProvider {
  const AppsyncApiEventConfigAuthProvider({
    required this.authType,
    this.cognitoConfig,
    this.lambdaAuthorizerConfig,
    this.openidConnectConfig,
  });

  final TfArg<String> authType;

  final List<AppsyncApiEventConfigAuthProviderCognitoConfig>? cognitoConfig;

  final List<AppsyncApiEventConfigAuthProviderLambdaAuthorizerConfig>?
  lambdaAuthorizerConfig;

  final List<AppsyncApiEventConfigAuthProviderOpenidConnectConfig>?
  openidConnectConfig;

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

/// Typed helper for the `event_config.auth_provider.cognito_config` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiEventConfigAuthProviderCognitoConfig {
  const AppsyncApiEventConfigAuthProviderCognitoConfig({
    this.appIdClientRegex,
    required this.awsRegion,
    required this.userPoolId,
  });

  final TfArg<String>? appIdClientRegex;

  final TfArg<String> awsRegion;

  final TfArg<String> userPoolId;

  Map<String, Object?> encode() => {
    if (appIdClientRegex != null)
      'app_id_client_regex': appIdClientRegex!.toTfJson(),
    'aws_region': awsRegion.toTfJson(),
    'user_pool_id': userPoolId.toTfJson(),
  };
}

/// Typed helper for the `event_config.auth_provider.lambda_authorizer_config` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiEventConfigAuthProviderLambdaAuthorizerConfig {
  const AppsyncApiEventConfigAuthProviderLambdaAuthorizerConfig({
    this.authorizerResultTtlInSeconds,
    required this.authorizerUri,
    this.identityValidationExpression,
  });

  final TfArg<num>? authorizerResultTtlInSeconds;

  final TfArg<String> authorizerUri;

  final TfArg<String>? identityValidationExpression;

  Map<String, Object?> encode() => {
    if (authorizerResultTtlInSeconds != null)
      'authorizer_result_ttl_in_seconds': authorizerResultTtlInSeconds!
          .toTfJson(),
    'authorizer_uri': authorizerUri.toTfJson(),
    if (identityValidationExpression != null)
      'identity_validation_expression': identityValidationExpression!
          .toTfJson(),
  };
}

/// Typed helper for the `event_config.auth_provider.openid_connect_config` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiEventConfigAuthProviderOpenidConnectConfig {
  const AppsyncApiEventConfigAuthProviderOpenidConnectConfig({
    this.authTtl,
    this.clientId,
    this.iatTtl,
    required this.issuer,
  });

  final TfArg<num>? authTtl;

  final TfArg<String>? clientId;

  final TfArg<num>? iatTtl;

  final TfArg<String> issuer;

  Map<String, Object?> encode() => {
    if (authTtl != null) 'auth_ttl': authTtl!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (iatTtl != null) 'iat_ttl': iatTtl!.toTfJson(),
    'issuer': issuer.toTfJson(),
  };
}

/// Typed helper for the `event_config.connection_auth_mode` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiEventConfigConnectionAuthMode {
  const AppsyncApiEventConfigConnectionAuthMode({required this.authType});

  final TfArg<String> authType;

  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// Typed helper for the `event_config.default_publish_auth_mode` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiEventConfigDefaultPublishAuthMode {
  const AppsyncApiEventConfigDefaultPublishAuthMode({required this.authType});

  final TfArg<String> authType;

  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// Typed helper for the `event_config.default_subscribe_auth_mode` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiEventConfigDefaultSubscribeAuthMode {
  const AppsyncApiEventConfigDefaultSubscribeAuthMode({required this.authType});

  final TfArg<String> authType;

  Map<String, Object?> encode() => {'auth_type': authType.toTfJson()};
}

/// Typed helper for the `event_config.log_config` block of
/// `aws_appsync_api` (derived from provider schema).
@immutable
final class AppsyncApiEventConfigLogConfig {
  const AppsyncApiEventConfigLogConfig({
    required this.cloudwatchLogsRoleArn,
    required this.logLevel,
  });

  final TfArg<String> cloudwatchLogsRoleArn;

  final TfArg<String> logLevel;

  Map<String, Object?> encode() => {
    'cloudwatch_logs_role_arn': cloudwatchLogsRoleArn.toTfJson(),
    'log_level': logLevel.toTfJson(),
  };
}

/// Factory wrapper for `aws_appsync_api`.
final class AwsAppsyncApi extends Resource {
  static const String tfType = 'aws_appsync_api';

  AwsAppsyncApi({
    required super.localName,
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
           if (ownerContact != null) 'owner_contact': ownerContact,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (eventConfig != null)
             'event_config': TfArg.literal([
               for (final e in eventConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncApiSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
