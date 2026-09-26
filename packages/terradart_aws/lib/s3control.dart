// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// AWS S3 Control (account-level S3).
library;

export 'src/s3control/aws_s3control_access_grant.dart'
    show
        AwsS3controlAccessGrant,
        S3controlAccessGrantAccessGrantsLocationConfiguration,
        S3controlAccessGrantGrantee;
export 'src/s3control/aws_s3control_access_grants_instance.dart'
    show AwsS3controlAccessGrantsInstance;
export 'src/s3control/aws_s3control_access_grants_instance_resource_policy.dart'
    show AwsS3controlAccessGrantsInstanceResourcePolicy;
export 'src/s3control/aws_s3control_access_grants_location.dart'
    show AwsS3controlAccessGrantsLocation;
export 'src/s3control/aws_s3control_access_point_policy.dart'
    show AwsS3controlAccessPointPolicy;
export 'src/s3control/aws_s3control_bucket.dart' show AwsS3controlBucket;
export 'src/s3control/aws_s3control_bucket_lifecycle_configuration.dart'
    show
        AwsS3controlBucketLifecycleConfiguration,
        S3controlBucketLifecycleConfigurationRule,
        S3controlBucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload,
        S3controlBucketLifecycleConfigurationRuleExpiration,
        S3controlBucketLifecycleConfigurationRuleFilter;
export 'src/s3control/aws_s3control_bucket_policy.dart'
    show AwsS3controlBucketPolicy;
export 'src/s3control/aws_s3control_directory_bucket_access_point_scope.dart'
    show
        AwsS3controlDirectoryBucketAccessPointScope,
        S3controlDirectoryBucketAccessPointScopeScope;
export 'src/s3control/aws_s3control_multi_region_access_point.dart'
    show
        AwsS3controlMultiRegionAccessPoint,
        S3controlMultiRegionAccessPointDetails,
        S3controlMultiRegionAccessPointDetailsPublicAccessBlock,
        S3controlMultiRegionAccessPointDetailsRegion;
export 'src/s3control/aws_s3control_multi_region_access_point_policy.dart'
    show
        AwsS3controlMultiRegionAccessPointPolicy,
        S3controlMultiRegionAccessPointPolicyDetails;
export 'src/s3control/aws_s3control_multi_region_access_point_routes.dart'
    show
        AwsS3controlMultiRegionAccessPointRoutes,
        S3controlMultiRegionAccessPointRoutesRoute;
export 'src/s3control/aws_s3control_object_lambda_access_point.dart'
    show
        AwsS3controlObjectLambdaAccessPoint,
        S3controlObjectLambdaAccessPointConfiguration,
        S3controlObjectLambdaAccessPointConfigurationTransformationConfiguration,
        S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation,
        S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda;
export 'src/s3control/aws_s3control_object_lambda_access_point_policy.dart'
    show AwsS3controlObjectLambdaAccessPointPolicy;
export 'src/s3control/aws_s3control_storage_lens_configuration.dart'
    show
        AwsS3controlStorageLensConfiguration,
        S3controlStorageLensConfigurationStorageLensConfiguration,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevel,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelActivityMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedCostOptimizationMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedDataProtectionMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelAdvancedPerformanceMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedCostOptimizationMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedDataProtectionMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelAdvancedPerformanceMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelDetailedStatusCodeMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevel,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelPrefixLevelStorageMetricsSelectionCriteria,
        S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationAwsOrg,
        S3controlStorageLensConfigurationStorageLensConfigurationDataExport,
        S3controlStorageLensConfigurationStorageLensConfigurationDataExportCloudWatchMetrics,
        S3controlStorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestination,
        S3controlStorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryption,
        S3controlStorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseKms,
        S3controlStorageLensConfigurationStorageLensConfigurationDataExportS3BucketDestinationEncryptionSseS3,
        S3controlStorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestination,
        S3controlStorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryption,
        S3controlStorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryptionSseKms,
        S3controlStorageLensConfigurationStorageLensConfigurationDataExportStorageLensTableDestinationEncryptionSseS3,
        S3controlStorageLensConfigurationStorageLensConfigurationExclude,
        S3controlStorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExport,
        S3controlStorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestination,
        S3controlStorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryption,
        S3controlStorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryptionSseKms,
        S3controlStorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportS3BucketDestinationEncryptionSseS3,
        S3controlStorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestination,
        S3controlStorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryption,
        S3controlStorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryptionSseKms,
        S3controlStorageLensConfigurationStorageLensConfigurationExpandedPrefixesDataExportStorageLensTableDestinationEncryptionSseS3,
        S3controlStorageLensConfigurationStorageLensConfigurationInclude;
