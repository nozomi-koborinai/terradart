// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_graphql_api`.
const Set<String> _awsAppsyncGraphqlApiSensitive = <String>{};

/// Typed helper for the `additional_authentication_provider` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
@immutable
final class AppsyncGraphqlApiAdditionalAuthenticationProvider {
  const AppsyncGraphqlApiAdditionalAuthenticationProvider({
    required this.authenticationType,
    this.lambdaAuthorizerConfig,
    this.openidConnectConfig,
    this.userPoolConfig,
  });

  final TfArg<String> authenticationType;

  final AppsyncGraphqlApiAdditionalAuthenticationProviderLambdaAuthorizerConfig?
  lambdaAuthorizerConfig;

  final AppsyncGraphqlApiAdditionalAuthenticationProviderOpenidConnectConfig?
  openidConnectConfig;

  final AppsyncGraphqlApiAdditionalAuthenticationProviderUserPoolConfig?
  userPoolConfig;

  Map<String, Object?> encode() => {
    'authentication_type': authenticationType.toTfJson(),
    if (lambdaAuthorizerConfig != null)
      'lambda_authorizer_config': lambdaAuthorizerConfig!.encode(),
    if (openidConnectConfig != null)
      'openid_connect_config': openidConnectConfig!.encode(),
    if (userPoolConfig != null) 'user_pool_config': userPoolConfig!.encode(),
  };
}

/// Typed helper for the `additional_authentication_provider.lambda_authorizer_config` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
@immutable
final class AppsyncGraphqlApiAdditionalAuthenticationProviderLambdaAuthorizerConfig {
  const AppsyncGraphqlApiAdditionalAuthenticationProviderLambdaAuthorizerConfig({
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

/// Typed helper for the `additional_authentication_provider.openid_connect_config` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
@immutable
final class AppsyncGraphqlApiAdditionalAuthenticationProviderOpenidConnectConfig {
  const AppsyncGraphqlApiAdditionalAuthenticationProviderOpenidConnectConfig({
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

/// Typed helper for the `additional_authentication_provider.user_pool_config` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
@immutable
final class AppsyncGraphqlApiAdditionalAuthenticationProviderUserPoolConfig {
  const AppsyncGraphqlApiAdditionalAuthenticationProviderUserPoolConfig({
    this.appIdClientRegex,
    this.awsRegion,
    required this.userPoolId,
  });

  final TfArg<String>? appIdClientRegex;

  final TfArg<String>? awsRegion;

  final TfArg<String> userPoolId;

  Map<String, Object?> encode() => {
    if (appIdClientRegex != null)
      'app_id_client_regex': appIdClientRegex!.toTfJson(),
    if (awsRegion != null) 'aws_region': awsRegion!.toTfJson(),
    'user_pool_id': userPoolId.toTfJson(),
  };
}

/// Typed helper for the `enhanced_metrics_config` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
@immutable
final class AppsyncGraphqlApiEnhancedMetricsConfig {
  const AppsyncGraphqlApiEnhancedMetricsConfig({
    required this.dataSourceLevelMetricsBehavior,
    required this.operationLevelMetricsConfig,
    required this.resolverLevelMetricsBehavior,
  });

  final TfArg<String> dataSourceLevelMetricsBehavior;

  final TfArg<String> operationLevelMetricsConfig;

  final TfArg<String> resolverLevelMetricsBehavior;

  Map<String, Object?> encode() => {
    'data_source_level_metrics_behavior': dataSourceLevelMetricsBehavior
        .toTfJson(),
    'operation_level_metrics_config': operationLevelMetricsConfig.toTfJson(),
    'resolver_level_metrics_behavior': resolverLevelMetricsBehavior.toTfJson(),
  };
}

/// Typed helper for the `lambda_authorizer_config` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
@immutable
final class AppsyncGraphqlApiLambdaAuthorizerConfig {
  const AppsyncGraphqlApiLambdaAuthorizerConfig({
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

/// Typed helper for the `log_config` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
@immutable
final class AppsyncGraphqlApiLogConfig {
  const AppsyncGraphqlApiLogConfig({
    required this.cloudwatchLogsRoleArn,
    this.excludeVerboseContent,
    required this.fieldLogLevel,
  });

  final TfArg<String> cloudwatchLogsRoleArn;

  final TfArg<bool>? excludeVerboseContent;

  final TfArg<String> fieldLogLevel;

  Map<String, Object?> encode() => {
    'cloudwatch_logs_role_arn': cloudwatchLogsRoleArn.toTfJson(),
    if (excludeVerboseContent != null)
      'exclude_verbose_content': excludeVerboseContent!.toTfJson(),
    'field_log_level': fieldLogLevel.toTfJson(),
  };
}

/// Typed helper for the `openid_connect_config` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
@immutable
final class AppsyncGraphqlApiOpenidConnectConfig {
  const AppsyncGraphqlApiOpenidConnectConfig({
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

/// Typed helper for the `user_pool_config` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
@immutable
final class AppsyncGraphqlApiUserPoolConfig {
  const AppsyncGraphqlApiUserPoolConfig({
    this.appIdClientRegex,
    this.awsRegion,
    required this.defaultAction,
    required this.userPoolId,
  });

  final TfArg<String>? appIdClientRegex;

  final TfArg<String>? awsRegion;

  final TfArg<String> defaultAction;

  final TfArg<String> userPoolId;

  Map<String, Object?> encode() => {
    if (appIdClientRegex != null)
      'app_id_client_regex': appIdClientRegex!.toTfJson(),
    if (awsRegion != null) 'aws_region': awsRegion!.toTfJson(),
    'default_action': defaultAction.toTfJson(),
    'user_pool_id': userPoolId.toTfJson(),
  };
}

/// Factory wrapper for `aws_appsync_graphql_api`.
final class AwsAppsyncGraphqlApi extends Resource {
  static const String tfType = 'aws_appsync_graphql_api';

  AwsAppsyncGraphqlApi({
    required super.localName,
    TfArg<String>? apiType,
    required TfArg<String> authenticationType,
    TfArg<String>? introspectionConfig,
    TfArg<String>? mergedApiExecutionRoleArn,
    required TfArg<String> name,
    TfArg<num>? queryDepthLimit,
    TfArg<String>? region,
    TfArg<num>? resolverCountLimit,
    TfArg<String>? schema,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? visibility,
    TfArg<bool>? xrayEnabled,
    List<AppsyncGraphqlApiAdditionalAuthenticationProvider>?
    additionalAuthenticationProvider,
    AppsyncGraphqlApiEnhancedMetricsConfig? enhancedMetricsConfig,
    AppsyncGraphqlApiLambdaAuthorizerConfig? lambdaAuthorizerConfig,
    AppsyncGraphqlApiLogConfig? logConfig,
    AppsyncGraphqlApiOpenidConnectConfig? openidConnectConfig,
    AppsyncGraphqlApiUserPoolConfig? userPoolConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (apiType != null) 'api_type': apiType,
           'authentication_type': authenticationType,
           if (introspectionConfig != null)
             'introspection_config': introspectionConfig,
           if (mergedApiExecutionRoleArn != null)
             'merged_api_execution_role_arn': mergedApiExecutionRoleArn,
           'name': name,
           if (queryDepthLimit != null) 'query_depth_limit': queryDepthLimit,
           if (region != null) 'region': region,
           if (resolverCountLimit != null)
             'resolver_count_limit': resolverCountLimit,
           if (schema != null) 'schema': schema,
           if (tags != null) 'tags': tags,
           if (visibility != null) 'visibility': visibility,
           if (xrayEnabled != null) 'xray_enabled': xrayEnabled,
           if (additionalAuthenticationProvider != null)
             'additional_authentication_provider': TfArg.literal([
               for (final e in additionalAuthenticationProvider) e.encode(),
             ]),
           if (enhancedMetricsConfig != null)
             'enhanced_metrics_config': TfArg.literal(
               enhancedMetricsConfig.encode(),
             ),
           if (lambdaAuthorizerConfig != null)
             'lambda_authorizer_config': TfArg.literal(
               lambdaAuthorizerConfig.encode(),
             ),
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
           if (openidConnectConfig != null)
             'openid_connect_config': TfArg.literal(
               openidConnectConfig.encode(),
             ),
           if (userPoolConfig != null)
             'user_pool_config': TfArg.literal(userPoolConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppsyncGraphqlApiSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uris` attribute.
  TfRef<Map<String, String>> get uris =>
      TfRef.attribute<Map<String, String>>(this, 'uris');
}
