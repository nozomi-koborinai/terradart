// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_graphql_api`.
const Set<String> _awsAppsyncGraphqlApiSensitive = <String>{};

/// Appsync Graphql Api Api enum for `api_type`.
enum AppsyncGraphqlApiApiType implements TerraformEnum {
  graphql('GRAPHQL'),
  merged('MERGED');

  const AppsyncGraphqlApiApiType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Appsync Graphql Api Authentication enum for `authentication_type`.
enum AppsyncGraphqlApiAuthenticationType implements TerraformEnum {
  apiKey('API_KEY'),
  awsIam('AWS_IAM'),
  amazonCognitoUserPools('AMAZON_COGNITO_USER_POOLS'),
  openidConnect('OPENID_CONNECT'),
  awsLambda('AWS_LAMBDA');

  const AppsyncGraphqlApiAuthenticationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Appsync Graphql Api Introspection enum for `introspection_config`.
enum AppsyncGraphqlApiIntrospectionConfig implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const AppsyncGraphqlApiIntrospectionConfig(this.terraformValue);
  @override
  final String terraformValue;
}

/// Appsync Graphql Api enum for `visibility`.
enum AppsyncGraphqlApiVisibility implements TerraformEnum {
  global('GLOBAL'),
  private('PRIVATE');

  const AppsyncGraphqlApiVisibility(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<
    AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType
  >
  authenticationType;

  final AppsyncGraphqlApiLambdaAuthorizerConfig? lambdaAuthorizerConfig;

  final AppsyncGraphqlApiOpenidConnectConfig? openidConnectConfig;

  final AppsyncGraphqlApiAdditionalAuthenticationProviderUserPoolConfig?
  userPoolConfig;

  Map<String, Object?> encode() => {
    'authentication_type': authenticationType.toTfJson(),
    'lambda_authorizer_config': ?lambdaAuthorizerConfig?.encode(),
    'openid_connect_config': ?openidConnectConfig?.encode(),
    'user_pool_config': ?userPoolConfig?.encode(),
  };
}

/// `authentication_type` — derived from the provider schema description.
enum AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType
    implements TerraformEnum {
  apiKey('API_KEY'),
  awsIam('AWS_IAM'),
  amazonCognitoUserPools('AMAZON_COGNITO_USER_POOLS'),
  openidConnect('OPENID_CONNECT'),
  awsLambda('AWS_LAMBDA');

  const AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `lambda_authorizer_config` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
/// Shared by every block of this shape in the resource.
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
    'authorizer_result_ttl_in_seconds': ?authorizerResultTtlInSeconds
        ?.toTfJson(),
    'authorizer_uri': authorizerUri.toTfJson(),
    'identity_validation_expression': ?identityValidationExpression?.toTfJson(),
  };
}

/// Typed helper for the `openid_connect_config` block of
/// `aws_appsync_graphql_api` (derived from provider schema).
/// Shared by every block of this shape in the resource.
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
    'auth_ttl': ?authTtl?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'iat_ttl': ?iatTtl?.toTfJson(),
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
    'app_id_client_regex': ?appIdClientRegex?.toTfJson(),
    'aws_region': ?awsRegion?.toTfJson(),
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

  final TfArg<AppsyncGraphqlApiDataSourceLevelMetricsBehavior>
  dataSourceLevelMetricsBehavior;

  final TfArg<AppsyncGraphqlApiOperationLevelMetricsConfig>
  operationLevelMetricsConfig;

  final TfArg<AppsyncGraphqlApiResolverLevelMetricsBehavior>
  resolverLevelMetricsBehavior;

  Map<String, Object?> encode() => {
    'data_source_level_metrics_behavior': dataSourceLevelMetricsBehavior
        .toTfJson(),
    'operation_level_metrics_config': operationLevelMetricsConfig.toTfJson(),
    'resolver_level_metrics_behavior': resolverLevelMetricsBehavior.toTfJson(),
  };
}

/// `data_source_level_metrics_behavior` — derived from the provider schema description.
enum AppsyncGraphqlApiDataSourceLevelMetricsBehavior implements TerraformEnum {
  fullRequestDataSourceMetrics('FULL_REQUEST_DATA_SOURCE_METRICS'),
  perDataSourceMetrics('PER_DATA_SOURCE_METRICS');

  const AppsyncGraphqlApiDataSourceLevelMetricsBehavior(this.terraformValue);
  @override
  final String terraformValue;
}

/// `operation_level_metrics_config` — derived from the provider schema description.
enum AppsyncGraphqlApiOperationLevelMetricsConfig implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const AppsyncGraphqlApiOperationLevelMetricsConfig(this.terraformValue);
  @override
  final String terraformValue;
}

/// `resolver_level_metrics_behavior` — derived from the provider schema description.
enum AppsyncGraphqlApiResolverLevelMetricsBehavior implements TerraformEnum {
  fullRequestResolverMetrics('FULL_REQUEST_RESOLVER_METRICS'),
  perResolverMetrics('PER_RESOLVER_METRICS');

  const AppsyncGraphqlApiResolverLevelMetricsBehavior(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<AppsyncGraphqlApiFieldLogLevel> fieldLogLevel;

  Map<String, Object?> encode() => {
    'cloudwatch_logs_role_arn': cloudwatchLogsRoleArn.toTfJson(),
    'exclude_verbose_content': ?excludeVerboseContent?.toTfJson(),
    'field_log_level': fieldLogLevel.toTfJson(),
  };
}

/// `field_log_level` — derived from the provider schema description.
enum AppsyncGraphqlApiFieldLogLevel implements TerraformEnum {
  none('NONE'),
  error('ERROR'),
  all('ALL'),
  info('INFO'),
  debug('DEBUG');

  const AppsyncGraphqlApiFieldLogLevel(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<AppsyncGraphqlApiDefaultAction> defaultAction;

  final TfArg<String> userPoolId;

  Map<String, Object?> encode() => {
    'app_id_client_regex': ?appIdClientRegex?.toTfJson(),
    'aws_region': ?awsRegion?.toTfJson(),
    'default_action': defaultAction.toTfJson(),
    'user_pool_id': userPoolId.toTfJson(),
  };
}

/// `default_action` — derived from the provider schema description.
enum AppsyncGraphqlApiDefaultAction implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const AppsyncGraphqlApiDefaultAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_appsync_graphql_api`.
final class AwsAppsyncGraphqlApi extends Resource {
  static const String tfType = 'aws_appsync_graphql_api';

  AwsAppsyncGraphqlApi({
    required super.localName,
    TfArg<AppsyncGraphqlApiApiType>? apiType,
    required TfArg<AppsyncGraphqlApiAuthenticationType> authenticationType,
    TfArg<AppsyncGraphqlApiIntrospectionConfig>? introspectionConfig,
    TfArg<String>? mergedApiExecutionRoleArn,
    required TfArg<String> name,
    TfArg<num>? queryDepthLimit,
    TfArg<String>? region,
    TfArg<num>? resolverCountLimit,
    TfArg<String>? schema,
    TfArg<Map<String, String>>? tags,
    TfArg<AppsyncGraphqlApiVisibility>? visibility,
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
           'api_type': ?apiType,
           'authentication_type': authenticationType,
           'introspection_config': ?introspectionConfig,
           'merged_api_execution_role_arn': ?mergedApiExecutionRoleArn,
           'name': name,
           'query_depth_limit': ?queryDepthLimit,
           'region': ?region,
           'resolver_count_limit': ?resolverCountLimit,
           'schema': ?schema,
           'tags': ?tags,
           'visibility': ?visibility,
           'xray_enabled': ?xrayEnabled,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppsyncGraphqlApi>`.
  RefTo<AwsAppsyncGraphqlApi> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uris` attribute.
  TfRef<Map<String, String>> get uris =>
      TfRef.attribute<Map<String, String>>(this, 'uris');

  /// Reference to `api_type` attribute.
  TfRef<String> get apiTypeRef => TfRef.attribute<String>(this, 'api_type');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationTypeRef =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `introspection_config` attribute.
  TfRef<String> get introspectionConfigRef =>
      TfRef.attribute<String>(this, 'introspection_config');

  /// Reference to `merged_api_execution_role_arn` attribute.
  TfRef<String> get mergedApiExecutionRoleArnRef =>
      TfRef.attribute<String>(this, 'merged_api_execution_role_arn');

  /// Reference to `query_depth_limit` attribute.
  TfRef<num> get queryDepthLimitRef =>
      TfRef.attribute<num>(this, 'query_depth_limit');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resolver_count_limit` attribute.
  TfRef<num> get resolverCountLimitRef =>
      TfRef.attribute<num>(this, 'resolver_count_limit');

  /// Reference to `schema` attribute.
  TfRef<String> get schemaRef => TfRef.attribute<String>(this, 'schema');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibilityRef =>
      TfRef.attribute<String>(this, 'visibility');

  /// Reference to `xray_enabled` attribute.
  TfRef<bool> get xrayEnabledRef => TfRef.attribute<bool>(this, 'xray_enabled');
}
