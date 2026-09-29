// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// AWS Lambda.
library;

export 'src/lambda/aws_lambda_alias.dart'
    show AwsLambdaAlias, LambdaAliasRoutingConfig;
export 'src/lambda/aws_lambda_capacity_provider.dart'
    show
        AwsLambdaCapacityProvider,
        LambdaCapacityProviderPermissionsConfig,
        LambdaCapacityProviderVpcConfig;
export 'src/lambda/aws_lambda_code_signing_config.dart'
    show
        AwsLambdaCodeSigningConfig,
        LambdaCodeSigningConfigAllowedPublishers,
        LambdaCodeSigningConfigPolicies,
        LambdaCodeSigningConfigPoliciesUntrustedArtifactOnDeployment;
export 'src/lambda/aws_lambda_event_source_mapping.dart'
    show
        AwsLambdaEventSourceMapping,
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfig,
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfig,
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfigAmazonManagedKafkaEventSourceConfig,
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigOrSelfManagedKafkaEventSourceConfigSelfManagedKafkaEventSourceConfig,
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfig,
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig,
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfigType,
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigEventRecordFormat,
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig,
        LambdaEventSourceMappingAmazonManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfigAttribute,
        LambdaEventSourceMappingDestinationConfig,
        LambdaEventSourceMappingDestinationConfigOnFailure,
        LambdaEventSourceMappingDocumentDbEventSourceConfig,
        LambdaEventSourceMappingDocumentDbEventSourceConfigFullDocument,
        LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSource,
        LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSourceEventSourceArn,
        LambdaEventSourceMappingEventSourceArnOrSelfManagedEventSourceSelfManagedEventSource,
        LambdaEventSourceMappingFilterCriteria,
        LambdaEventSourceMappingFilterCriteriaFilter,
        LambdaEventSourceMappingFunctionResponseTypes,
        LambdaEventSourceMappingMetricsConfig,
        LambdaEventSourceMappingMetricsConfigMetrics,
        LambdaEventSourceMappingProvisionedPollerConfig,
        LambdaEventSourceMappingScalingConfig,
        LambdaEventSourceMappingSelfManagedEventSource,
        LambdaEventSourceMappingSelfManagedKafkaEventSourceConfig,
        LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfig,
        LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfig,
        LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigAccessConfigType,
        LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigEventRecordFormat,
        LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfig,
        LambdaEventSourceMappingSelfManagedKafkaEventSourceConfigSchemaRegistryConfigSchemaValidationConfigAttribute,
        LambdaEventSourceMappingSourceAccessConfiguration,
        LambdaEventSourceMappingSourceAccessConfigurationType,
        LambdaEventSourceMappingStartingPosition;
export 'src/lambda/aws_lambda_function.dart'
    show
        AwsLambdaFunction,
        LambdaFunctionArchitectures,
        LambdaFunctionCapacityProviderConfig,
        LambdaFunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfig,
        LambdaFunctionDeadLetterConfig,
        LambdaFunctionDurableConfig,
        LambdaFunctionEnvironment,
        LambdaFunctionEphemeralStorage,
        LambdaFunctionFileSystemConfig,
        LambdaFunctionFilenameOrImageUriOrS3Bucket,
        LambdaFunctionFilenameOrImageUriOrS3BucketFilename,
        LambdaFunctionFilenameOrImageUriOrS3BucketImageUri,
        LambdaFunctionFilenameOrImageUriOrS3BucketS3Bucket,
        LambdaFunctionImageConfig,
        LambdaFunctionLoggingConfig,
        LambdaFunctionLoggingConfigApplicationLogLevel,
        LambdaFunctionLoggingConfigLogFormat,
        LambdaFunctionLoggingConfigSystemLogLevel,
        LambdaFunctionPackageType,
        LambdaFunctionPublishTo,
        LambdaFunctionRuntime,
        LambdaFunctionSnapStart,
        LambdaFunctionSnapStartApplyOn,
        LambdaFunctionTenancyConfig,
        LambdaFunctionTenancyConfigTenantIsolationMode,
        LambdaFunctionTracingConfig,
        LambdaFunctionTracingConfigMode,
        LambdaFunctionVpcConfig;
export 'src/lambda/aws_lambda_function_event_invoke_config.dart'
    show
        AwsLambdaFunctionEventInvokeConfig,
        LambdaFunctionEventInvokeConfigDestinationConfig,
        LambdaFunctionEventInvokeConfigDestinationConfigOnFailure,
        LambdaFunctionEventInvokeConfigDestinationConfigOnSuccess;
export 'src/lambda/aws_lambda_function_recursion_config.dart'
    show
        AwsLambdaFunctionRecursionConfig,
        LambdaFunctionRecursionConfigRecursiveLoop;
export 'src/lambda/aws_lambda_function_scaling_config.dart'
    show
        AwsLambdaFunctionScalingConfig,
        LambdaFunctionScalingConfigFunctionScalingConfig;
export 'src/lambda/aws_lambda_function_url.dart'
    show
        AwsLambdaFunctionUrl,
        LambdaFunctionUrlAuthorizationType,
        LambdaFunctionUrlCors,
        LambdaFunctionUrlInvokeMode;
export 'src/lambda/aws_lambda_invocation.dart'
    show AwsLambdaInvocation, LambdaInvocationLifecycleScope;
export 'src/lambda/aws_lambda_layer_version.dart'
    show
        AwsLambdaLayerVersion,
        LambdaLayerVersionCompatibleArchitectures,
        LambdaLayerVersionCompatibleRuntimes;
export 'src/lambda/aws_lambda_layer_version_permission.dart'
    show AwsLambdaLayerVersionPermission;
export 'src/lambda/aws_lambda_permission.dart'
    show
        AwsLambdaPermission,
        LambdaPermissionFunctionUrlAuthType,
        LambdaPermissionStatementIdOrStatementIdPrefix,
        LambdaPermissionStatementIdOrStatementIdPrefixStatementId,
        LambdaPermissionStatementIdOrStatementIdPrefixStatementIdPrefix;
export 'src/lambda/aws_lambda_provisioned_concurrency_config.dart'
    show AwsLambdaProvisionedConcurrencyConfig;
export 'src/lambda/aws_lambda_resource_policy.dart'
    show AwsLambdaResourcePolicy;
export 'src/lambda/aws_lambda_runtime_management_config.dart'
    show
        AwsLambdaRuntimeManagementConfig,
        LambdaRuntimeManagementConfigUpdateRuntimeOn;
