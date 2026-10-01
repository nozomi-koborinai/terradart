// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_cloudtrail`.
const Set<String> _awsCloudtrailSensitive = <String>{};

/// At most one of `advanced_event_selector`, `event_selector` on `aws_cloudtrail`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.advancedEventSelector(...)`.
sealed class CloudtrailSelectors {
  const CloudtrailSelectors();

  /// Sets `advanced_event_selector`.
  const factory CloudtrailSelectors.advancedEventSelector(
    List<CloudtrailAdvancedEventSelector> advancedEventSelector,
  ) = CloudtrailSelectorsAdvancedEventSelector;

  /// Sets `event_selector`.
  const factory CloudtrailSelectors.eventSelector(
    List<CloudtrailEventSelector> eventSelector,
  ) = CloudtrailSelectorsEventSelector;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudtrailSelectors.advancedEventSelector] choice: sets `advanced_event_selector`.
final class CloudtrailSelectorsAdvancedEventSelector
    extends CloudtrailSelectors {
  const CloudtrailSelectorsAdvancedEventSelector(this.advancedEventSelector);

  final List<CloudtrailAdvancedEventSelector> advancedEventSelector;

  @override
  String get blockKey => 'advanced_event_selector';

  @override
  Map<String, Object?> encode() => {
    'advanced_event_selector': [
      for (final e in advancedEventSelector) e.encode(),
    ],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'advanced_event_selector': TfArg.literal([
      for (final e in advancedEventSelector) e.encode(),
    ]),
  };
}

/// The [CloudtrailSelectors.eventSelector] choice: sets `event_selector`.
final class CloudtrailSelectorsEventSelector extends CloudtrailSelectors {
  const CloudtrailSelectorsEventSelector(this.eventSelector);

  final List<CloudtrailEventSelector> eventSelector;

  @override
  String get blockKey => 'event_selector';

  @override
  Map<String, Object?> encode() => {
    'event_selector': [for (final e in eventSelector) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'event_selector': TfArg.literal([
      for (final e in eventSelector) e.encode(),
    ]),
  };
}

/// Typed helper for the `advanced_event_selector` block of
/// `aws_cloudtrail` (derived from provider schema).
@immutable
final class CloudtrailAdvancedEventSelector {
  const CloudtrailAdvancedEventSelector({
    this.name,
    required this.fieldSelector,
  });

  final TfArg<String>? name;

  final List<CloudtrailFieldSelector> fieldSelector;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'field_selector': [for (final e in fieldSelector) e.encode()],
  };
}

/// Typed helper for the `advanced_event_selector.field_selector` block of
/// `aws_cloudtrail` (derived from provider schema).
@immutable
final class CloudtrailFieldSelector {
  const CloudtrailFieldSelector({
    this.endsWith,
    this.equals,
    required this.field,
    this.notEndsWith,
    this.notEquals,
    this.notStartsWith,
    this.startsWith,
  });

  final TfArg<List<String>>? endsWith;

  final TfArg<List<String>>? equals;

  final TfArg<CloudtrailField> field;

  final TfArg<List<String>>? notEndsWith;

  final TfArg<List<String>>? notEquals;

  final TfArg<List<String>>? notStartsWith;

  final TfArg<List<String>>? startsWith;

  Map<String, Object?> encode() => {
    'ends_with': ?endsWith?.toTfJson(),
    'equals': ?equals?.toTfJson(),
    'field': field.toTfJson(),
    'not_ends_with': ?notEndsWith?.toTfJson(),
    'not_equals': ?notEquals?.toTfJson(),
    'not_starts_with': ?notStartsWith?.toTfJson(),
    'starts_with': ?startsWith?.toTfJson(),
  };
}

/// `field` — derived from the provider schema description.
enum CloudtrailField implements TerraformEnum {
  errorcode('errorCode'),
  eventcategory('eventCategory'),
  eventname('eventName'),
  eventsource('eventSource'),
  eventtype('eventType'),
  readonly('readOnly'),
  resourcesArn('resources.ARN'),
  resourcesType('resources.type'),
  sessioncredentialfromconsole('sessionCredentialFromConsole'),
  useridentityArn('userIdentity.arn'),
  vpcendpointid('vpcEndpointId');

  const CloudtrailField(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `event_selector` block of
/// `aws_cloudtrail` (derived from provider schema).
@immutable
final class CloudtrailEventSelector {
  const CloudtrailEventSelector({
    this.excludeManagementEventSources,
    this.includeManagementEvents,
    this.readWriteType,
    this.dataResource,
  });

  final TfArg<List<String>>? excludeManagementEventSources;

  final TfArg<bool>? includeManagementEvents;

  final TfArg<CloudtrailReadWriteType>? readWriteType;

  final List<CloudtrailDataResource>? dataResource;

  Map<String, Object?> encode() => {
    'exclude_management_event_sources': ?excludeManagementEventSources
        ?.toTfJson(),
    'include_management_events': ?includeManagementEvents?.toTfJson(),
    'read_write_type': ?readWriteType?.toTfJson(),
    if (dataResource != null)
      'data_resource': [for (final e in dataResource!) e.encode()],
  };
}

/// `read_write_type` — derived from the provider schema description.
enum CloudtrailReadWriteType implements TerraformEnum {
  readonly('ReadOnly'),
  writeonly('WriteOnly'),
  all('All');

  const CloudtrailReadWriteType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `event_selector.data_resource` block of
/// `aws_cloudtrail` (derived from provider schema).
@immutable
final class CloudtrailDataResource {
  const CloudtrailDataResource({required this.type, required this.values});

  final TfArg<CloudtrailType> type;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum CloudtrailType implements TerraformEnum {
  awsDynamodbTable('AWS::DynamoDB::Table'),
  awsLambdaFunction('AWS::Lambda::Function'),
  awsS3Object('AWS::S3::Object');

  const CloudtrailType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `insight_selector` block of
/// `aws_cloudtrail` (derived from provider schema).
@immutable
final class CloudtrailInsightSelector {
  const CloudtrailInsightSelector({required this.insightType});

  final TfArg<CloudtrailInsightType> insightType;

  Map<String, Object?> encode() => {'insight_type': insightType.toTfJson()};
}

/// `insight_type` — derived from the provider schema description.
enum CloudtrailInsightType implements TerraformEnum {
  apicallrateinsight('ApiCallRateInsight'),
  apierrorrateinsight('ApiErrorRateInsight');

  const CloudtrailInsightType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudtrail`.
final class AwsCloudtrail extends Resource {
  static const String tfType = 'aws_cloudtrail';

  AwsCloudtrail({
    required super.localName,
    TfArg<String>? cloudWatchLogsGroupArn,
    TfArg<String>? cloudWatchLogsRoleArn,
    TfArg<bool>? enableLogFileValidation,
    TfArg<bool>? enableLogging,
    TfArg<bool>? includeGlobalServiceEvents,
    TfArg<bool>? isMultiRegionTrail,
    TfArg<bool>? isOrganizationTrail,
    RefTo<AwsKmsKey>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    required RefTo<AwsS3Bucket> s3BucketName,
    TfArg<String>? s3KeyPrefix,
    TfArg<String>? snsTopicName,
    TfArg<Map<String, String>>? tags,
    CloudtrailSelectors? selectors,
    List<CloudtrailInsightSelector>? insightSelector,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_watch_logs_group_arn': ?cloudWatchLogsGroupArn,
           'cloud_watch_logs_role_arn': ?cloudWatchLogsRoleArn,
           'enable_log_file_validation': ?enableLogFileValidation,
           'enable_logging': ?enableLogging,
           'include_global_service_events': ?includeGlobalServiceEvents,
           'is_multi_region_trail': ?isMultiRegionTrail,
           'is_organization_trail': ?isOrganizationTrail,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           's3_bucket_name': s3BucketName.encodeAs('id'),
           's3_key_prefix': ?s3KeyPrefix,
           'sns_topic_name': ?snsTopicName,
           'tags': ?tags,
           ...?selectors?.argMap,
           if (insightSelector != null)
             'insight_selector': TfArg.literal([
               for (final e in insightSelector) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudtrailSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudtrail>`.
  RefTo<AwsCloudtrail> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `home_region` attribute.
  TfRef<String> get homeRegion => TfRef.attribute<String>(this, 'home_region');

  /// Reference to `sns_topic_arn` attribute.
  TfRef<String> get snsTopicArn =>
      TfRef.attribute<String>(this, 'sns_topic_arn');

  /// Reference to `cloud_watch_logs_group_arn` attribute.
  TfRef<String> get cloudWatchLogsGroupArnRef =>
      TfRef.attribute<String>(this, 'cloud_watch_logs_group_arn');

  /// Reference to `cloud_watch_logs_role_arn` attribute.
  TfRef<String> get cloudWatchLogsRoleArnRef =>
      TfRef.attribute<String>(this, 'cloud_watch_logs_role_arn');

  /// Reference to `enable_log_file_validation` attribute.
  TfRef<bool> get enableLogFileValidationRef =>
      TfRef.attribute<bool>(this, 'enable_log_file_validation');

  /// Reference to `enable_logging` attribute.
  TfRef<bool> get enableLoggingRef =>
      TfRef.attribute<bool>(this, 'enable_logging');

  /// Reference to `include_global_service_events` attribute.
  TfRef<bool> get includeGlobalServiceEventsRef =>
      TfRef.attribute<bool>(this, 'include_global_service_events');

  /// Reference to `is_multi_region_trail` attribute.
  TfRef<bool> get isMultiRegionTrailRef =>
      TfRef.attribute<bool>(this, 'is_multi_region_trail');

  /// Reference to `is_organization_trail` attribute.
  TfRef<bool> get isOrganizationTrailRef =>
      TfRef.attribute<bool>(this, 'is_organization_trail');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_bucket_name` attribute.
  TfRef<String> get s3BucketNameRef =>
      TfRef.attribute<String>(this, 's3_bucket_name');

  /// Reference to `s3_key_prefix` attribute.
  TfRef<String> get s3KeyPrefixRef =>
      TfRef.attribute<String>(this, 's3_key_prefix');

  /// Reference to `sns_topic_name` attribute.
  TfRef<String> get snsTopicNameRef =>
      TfRef.attribute<String>(this, 'sns_topic_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
