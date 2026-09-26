// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudtrail`.
const Set<String> _awsCloudtrailSensitive = <String>{};

/// Typed helper for the `advanced_event_selector` block of
/// `aws_cloudtrail` (derived from provider schema).
@immutable
final class CloudtrailAdvancedEventSelector {
  const CloudtrailAdvancedEventSelector({
    this.name,
    required this.fieldSelector,
  });

  final TfArg<String>? name;

  final List<CloudtrailAdvancedEventSelectorFieldSelector> fieldSelector;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    'field_selector': [for (final e in fieldSelector) e.encode()],
  };
}

/// Typed helper for the `advanced_event_selector.field_selector` block of
/// `aws_cloudtrail` (derived from provider schema).
@immutable
final class CloudtrailAdvancedEventSelectorFieldSelector {
  const CloudtrailAdvancedEventSelectorFieldSelector({
    this.endsWith,
    this.equals,
    required this.field,
    this.notEndsWith,
    this.notEquals,
    this.notStartsWith,
    this.startsWith,
  });

  final TfArg<List<Object?>>? endsWith;

  final TfArg<List<Object?>>? equals;

  final TfArg<String> field;

  final TfArg<List<Object?>>? notEndsWith;

  final TfArg<List<Object?>>? notEquals;

  final TfArg<List<Object?>>? notStartsWith;

  final TfArg<List<Object?>>? startsWith;

  Map<String, Object?> encode() => {
    if (endsWith != null) 'ends_with': endsWith!.toTfJson(),
    if (equals != null) 'equals': equals!.toTfJson(),
    'field': field.toTfJson(),
    if (notEndsWith != null) 'not_ends_with': notEndsWith!.toTfJson(),
    if (notEquals != null) 'not_equals': notEquals!.toTfJson(),
    if (notStartsWith != null) 'not_starts_with': notStartsWith!.toTfJson(),
    if (startsWith != null) 'starts_with': startsWith!.toTfJson(),
  };
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

  final TfArg<List<Object?>>? excludeManagementEventSources;

  final TfArg<bool>? includeManagementEvents;

  final TfArg<String>? readWriteType;

  final List<CloudtrailEventSelectorDataResource>? dataResource;

  Map<String, Object?> encode() => {
    if (excludeManagementEventSources != null)
      'exclude_management_event_sources': excludeManagementEventSources!
          .toTfJson(),
    if (includeManagementEvents != null)
      'include_management_events': includeManagementEvents!.toTfJson(),
    if (readWriteType != null) 'read_write_type': readWriteType!.toTfJson(),
    if (dataResource != null)
      'data_resource': [for (final e in dataResource!) e.encode()],
  };
}

/// Typed helper for the `event_selector.data_resource` block of
/// `aws_cloudtrail` (derived from provider schema).
@immutable
final class CloudtrailEventSelectorDataResource {
  const CloudtrailEventSelectorDataResource({
    required this.type,
    required this.values,
  });

  final TfArg<String> type;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `insight_selector` block of
/// `aws_cloudtrail` (derived from provider schema).
@immutable
final class CloudtrailInsightSelector {
  const CloudtrailInsightSelector({required this.insightType});

  final TfArg<String> insightType;

  Map<String, Object?> encode() => {'insight_type': insightType.toTfJson()};
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
    TfArg<String>? kmsKeyId,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> s3BucketName,
    TfArg<String>? s3KeyPrefix,
    TfArg<String>? snsTopicName,
    TfArg<Map<String, String>>? tags,
    List<CloudtrailAdvancedEventSelector>? advancedEventSelector,
    List<CloudtrailEventSelector>? eventSelector,
    List<CloudtrailInsightSelector>? insightSelector,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cloudWatchLogsGroupArn != null)
             'cloud_watch_logs_group_arn': cloudWatchLogsGroupArn,
           if (cloudWatchLogsRoleArn != null)
             'cloud_watch_logs_role_arn': cloudWatchLogsRoleArn,
           if (enableLogFileValidation != null)
             'enable_log_file_validation': enableLogFileValidation,
           if (enableLogging != null) 'enable_logging': enableLogging,
           if (includeGlobalServiceEvents != null)
             'include_global_service_events': includeGlobalServiceEvents,
           if (isMultiRegionTrail != null)
             'is_multi_region_trail': isMultiRegionTrail,
           if (isOrganizationTrail != null)
             'is_organization_trail': isOrganizationTrail,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           'name': name,
           if (region != null) 'region': region,
           's3_bucket_name': s3BucketName,
           if (s3KeyPrefix != null) 's3_key_prefix': s3KeyPrefix,
           if (snsTopicName != null) 'sns_topic_name': snsTopicName,
           if (tags != null) 'tags': tags,
           if (advancedEventSelector != null)
             'advanced_event_selector': TfArg.literal([
               for (final e in advancedEventSelector) e.encode(),
             ]),
           if (eventSelector != null)
             'event_selector': TfArg.literal([
               for (final e in eventSelector) e.encode(),
             ]),
           if (insightSelector != null)
             'insight_selector': TfArg.literal([
               for (final e in insightSelector) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudtrailSensitive;

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
}
