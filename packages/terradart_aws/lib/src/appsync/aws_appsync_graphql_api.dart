// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appsync_graphql_api`.
const Set<String> _awsAppsyncGraphqlApiSensitive = <String>{};

/// Appsync Graphql Api enum for `api_type`.
extension type const AppsyncGraphqlApiType._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncGraphqlApiType.variable(String name) : this._(TfArg.variable(name));
  AppsyncGraphqlApiType.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncGraphqlApiType.arg(TfArg<String> arg) : this._(arg);

  static const graphql = AppsyncGraphqlApiType._(TfArgLiteral('GRAPHQL'));
  static const merged = AppsyncGraphqlApiType._(TfArgLiteral('MERGED'));

  static const List<AppsyncGraphqlApiType> values = [graphql, merged];
}

/// Appsync Graphql Api Authentication enum for `authentication_type`.
extension type const AppsyncGraphqlApiAuthenticationType._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncGraphqlApiAuthenticationType.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncGraphqlApiAuthenticationType.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncGraphqlApiAuthenticationType.arg(TfArg<String> arg)
    : this._(arg);

  static const apiKey = AppsyncGraphqlApiAuthenticationType._(
    TfArgLiteral('API_KEY'),
  );
  static const awsIam = AppsyncGraphqlApiAuthenticationType._(
    TfArgLiteral('AWS_IAM'),
  );
  static const amazonCognitoUserPools = AppsyncGraphqlApiAuthenticationType._(
    TfArgLiteral('AMAZON_COGNITO_USER_POOLS'),
  );
  static const openidConnect = AppsyncGraphqlApiAuthenticationType._(
    TfArgLiteral('OPENID_CONNECT'),
  );
  static const awsLambda = AppsyncGraphqlApiAuthenticationType._(
    TfArgLiteral('AWS_LAMBDA'),
  );

  static const List<AppsyncGraphqlApiAuthenticationType> values = [
    apiKey,
    awsIam,
    amazonCognitoUserPools,
    openidConnect,
    awsLambda,
  ];
}

/// Appsync Graphql Api Introspection enum for `introspection_config`.
extension type const AppsyncGraphqlApiIntrospectionConfig._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncGraphqlApiIntrospectionConfig.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncGraphqlApiIntrospectionConfig.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncGraphqlApiIntrospectionConfig.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = AppsyncGraphqlApiIntrospectionConfig._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = AppsyncGraphqlApiIntrospectionConfig._(
    TfArgLiteral('DISABLED'),
  );

  static const List<AppsyncGraphqlApiIntrospectionConfig> values = [
    enabled,
    disabled,
  ];
}

/// Appsync Graphql Api enum for `visibility`.
extension type const AppsyncGraphqlApiVisibility._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncGraphqlApiVisibility.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncGraphqlApiVisibility.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncGraphqlApiVisibility.arg(TfArg<String> arg) : this._(arg);

  static const global = AppsyncGraphqlApiVisibility._(TfArgLiteral('GLOBAL'));
  static const private = AppsyncGraphqlApiVisibility._(TfArgLiteral('PRIVATE'));

  static const List<AppsyncGraphqlApiVisibility> values = [global, private];
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

  final AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType
  authenticationType;

  final AppsyncGraphqlApiLambdaAuthorizerConfig? lambdaAuthorizerConfig;

  final AppsyncGraphqlApiOpenidConnectConfig? openidConnectConfig;

  final AppsyncGraphqlApiAdditionalAuthenticationProviderUserPoolConfig?
  userPoolConfig;

  @internal
  Map<String, Object?> encode() => {
    'authentication_type': authenticationType.toTfJson(),
    'lambda_authorizer_config': ?lambdaAuthorizerConfig?.encode(),
    'openid_connect_config': ?openidConnectConfig?.encode(),
    'user_pool_config': ?userPoolConfig?.encode(),
  };
}

/// `authentication_type` — derived from the provider schema description.
extension type const AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType._(
  TfArg<String> _
) implements TfArg<String> {
  AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const apiKey =
      AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType._(
        TfArgLiteral('API_KEY'),
      );
  static const awsIam =
      AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType._(
        TfArgLiteral('AWS_IAM'),
      );
  static const amazonCognitoUserPools =
      AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType._(
        TfArgLiteral('AMAZON_COGNITO_USER_POOLS'),
      );
  static const openidConnect =
      AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType._(
        TfArgLiteral('OPENID_CONNECT'),
      );
  static const awsLambda =
      AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType._(
        TfArgLiteral('AWS_LAMBDA'),
      );

  static const List<
    AppsyncGraphqlApiAdditionalAuthenticationProviderAuthenticationType
  >
  values = [apiKey, awsIam, amazonCognitoUserPools, openidConnect, awsLambda];
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

  @internal
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

  @internal
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

  @internal
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

  final AppsyncGraphqlApiDataSourceLevelMetricsBehavior
  dataSourceLevelMetricsBehavior;

  final AppsyncGraphqlApiOperationLevelMetricsConfig
  operationLevelMetricsConfig;

  final AppsyncGraphqlApiResolverLevelMetricsBehavior
  resolverLevelMetricsBehavior;

  @internal
  Map<String, Object?> encode() => {
    'data_source_level_metrics_behavior': dataSourceLevelMetricsBehavior
        .toTfJson(),
    'operation_level_metrics_config': operationLevelMetricsConfig.toTfJson(),
    'resolver_level_metrics_behavior': resolverLevelMetricsBehavior.toTfJson(),
  };
}

/// `data_source_level_metrics_behavior` — derived from the provider schema description.
extension type const AppsyncGraphqlApiDataSourceLevelMetricsBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  AppsyncGraphqlApiDataSourceLevelMetricsBehavior.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncGraphqlApiDataSourceLevelMetricsBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncGraphqlApiDataSourceLevelMetricsBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const fullRequestDataSourceMetrics =
      AppsyncGraphqlApiDataSourceLevelMetricsBehavior._(
        TfArgLiteral('FULL_REQUEST_DATA_SOURCE_METRICS'),
      );
  static const perDataSourceMetrics =
      AppsyncGraphqlApiDataSourceLevelMetricsBehavior._(
        TfArgLiteral('PER_DATA_SOURCE_METRICS'),
      );

  static const List<AppsyncGraphqlApiDataSourceLevelMetricsBehavior> values = [
    fullRequestDataSourceMetrics,
    perDataSourceMetrics,
  ];
}

/// `operation_level_metrics_config` — derived from the provider schema description.
extension type const AppsyncGraphqlApiOperationLevelMetricsConfig._(
  TfArg<String> _
) implements TfArg<String> {
  AppsyncGraphqlApiOperationLevelMetricsConfig.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncGraphqlApiOperationLevelMetricsConfig.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncGraphqlApiOperationLevelMetricsConfig.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = AppsyncGraphqlApiOperationLevelMetricsConfig._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = AppsyncGraphqlApiOperationLevelMetricsConfig._(
    TfArgLiteral('DISABLED'),
  );

  static const List<AppsyncGraphqlApiOperationLevelMetricsConfig> values = [
    enabled,
    disabled,
  ];
}

/// `resolver_level_metrics_behavior` — derived from the provider schema description.
extension type const AppsyncGraphqlApiResolverLevelMetricsBehavior._(
  TfArg<String> _
) implements TfArg<String> {
  AppsyncGraphqlApiResolverLevelMetricsBehavior.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncGraphqlApiResolverLevelMetricsBehavior.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncGraphqlApiResolverLevelMetricsBehavior.arg(TfArg<String> arg)
    : this._(arg);

  static const fullRequestResolverMetrics =
      AppsyncGraphqlApiResolverLevelMetricsBehavior._(
        TfArgLiteral('FULL_REQUEST_RESOLVER_METRICS'),
      );
  static const perResolverMetrics =
      AppsyncGraphqlApiResolverLevelMetricsBehavior._(
        TfArgLiteral('PER_RESOLVER_METRICS'),
      );

  static const List<AppsyncGraphqlApiResolverLevelMetricsBehavior> values = [
    fullRequestResolverMetrics,
    perResolverMetrics,
  ];
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

  final AppsyncGraphqlApiFieldLogLevel fieldLogLevel;

  @internal
  Map<String, Object?> encode() => {
    'cloudwatch_logs_role_arn': cloudwatchLogsRoleArn.toTfJson(),
    'exclude_verbose_content': ?excludeVerboseContent?.toTfJson(),
    'field_log_level': fieldLogLevel.toTfJson(),
  };
}

/// `field_log_level` — derived from the provider schema description.
extension type const AppsyncGraphqlApiFieldLogLevel._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncGraphqlApiFieldLogLevel.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncGraphqlApiFieldLogLevel.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncGraphqlApiFieldLogLevel.arg(TfArg<String> arg) : this._(arg);

  static const none = AppsyncGraphqlApiFieldLogLevel._(TfArgLiteral('NONE'));
  static const error = AppsyncGraphqlApiFieldLogLevel._(TfArgLiteral('ERROR'));
  static const all = AppsyncGraphqlApiFieldLogLevel._(TfArgLiteral('ALL'));
  static const info = AppsyncGraphqlApiFieldLogLevel._(TfArgLiteral('INFO'));
  static const debug = AppsyncGraphqlApiFieldLogLevel._(TfArgLiteral('DEBUG'));

  static const List<AppsyncGraphqlApiFieldLogLevel> values = [
    none,
    error,
    all,
    info,
    debug,
  ];
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

  final AppsyncGraphqlApiDefaultAction defaultAction;

  final TfArg<String> userPoolId;

  @internal
  Map<String, Object?> encode() => {
    'app_id_client_regex': ?appIdClientRegex?.toTfJson(),
    'aws_region': ?awsRegion?.toTfJson(),
    'default_action': defaultAction.toTfJson(),
    'user_pool_id': userPoolId.toTfJson(),
  };
}

/// `default_action` — derived from the provider schema description.
extension type const AppsyncGraphqlApiDefaultAction._(TfArg<String> _)
    implements TfArg<String> {
  AppsyncGraphqlApiDefaultAction.variable(String name)
    : this._(TfArg.variable(name));
  AppsyncGraphqlApiDefaultAction.expression(String template)
    : this._(TfArg.expression(template));
  const AppsyncGraphqlApiDefaultAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = AppsyncGraphqlApiDefaultAction._(TfArgLiteral('ALLOW'));
  static const deny = AppsyncGraphqlApiDefaultAction._(TfArgLiteral('DENY'));

  static const List<AppsyncGraphqlApiDefaultAction> values = [allow, deny];
}

/// Factory wrapper for `aws_appsync_graphql_api`.
final class AwsAppsyncGraphqlApi extends Resource {
  static const String tfType = 'aws_appsync_graphql_api';

  AwsAppsyncGraphqlApi(
    super.localName, {
    AppsyncGraphqlApiType? apiType,
    required AppsyncGraphqlApiAuthenticationType authenticationType,
    AppsyncGraphqlApiIntrospectionConfig? introspectionConfig,
    TfArg<String>? mergedApiExecutionRoleArn,
    required TfArg<String> name,
    TfArg<num>? queryDepthLimit,
    TfArg<String>? region,
    TfArg<num>? resolverCountLimit,
    TfArg<String>? schema,
    TfArg<Map<String, String>>? tags,
    AppsyncGraphqlApiVisibility? visibility,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uris` attribute.
  TfRef<Map<String, String>> get uris =>
      TfRef.attribute<Map<String, String>>(this, 'uris');

  /// Reference to `api_type` attribute.
  TfRef<String> get apiType => TfRef.attribute<String>(this, 'api_type');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `introspection_config` attribute.
  TfRef<String> get introspectionConfig =>
      TfRef.attribute<String>(this, 'introspection_config');

  /// Reference to `merged_api_execution_role_arn` attribute.
  TfRef<String> get mergedApiExecutionRoleArn =>
      TfRef.attribute<String>(this, 'merged_api_execution_role_arn');

  /// Reference to `query_depth_limit` attribute.
  TfRef<num> get queryDepthLimit =>
      TfRef.attribute<num>(this, 'query_depth_limit');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resolver_count_limit` attribute.
  TfRef<num> get resolverCountLimit =>
      TfRef.attribute<num>(this, 'resolver_count_limit');

  /// Reference to `schema` attribute.
  TfRef<String> get schema => TfRef.attribute<String>(this, 'schema');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `visibility` attribute.
  TfRef<String> get visibility => TfRef.attribute<String>(this, 'visibility');

  /// Reference to `xray_enabled` attribute.
  TfRef<bool> get xrayEnabled => TfRef.attribute<bool>(this, 'xray_enabled');
}
