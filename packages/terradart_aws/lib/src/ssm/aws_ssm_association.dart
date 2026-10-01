// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_ssm_association`.
const Set<String> _awsSsmAssociationSensitive = <String>{};

/// Ssm Association Compliance enum for `compliance_severity`.
enum SsmAssociationComplianceSeverity implements TerraformEnum {
  critical('CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW'),
  informational('INFORMATIONAL'),
  unspecified('UNSPECIFIED');

  const SsmAssociationComplianceSeverity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ssm Association Sync enum for `sync_compliance`.
enum SsmAssociationSyncCompliance implements TerraformEnum {
  auto('AUTO'),
  manual('MANUAL');

  const SsmAssociationSyncCompliance(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `output_location` block of
/// `aws_ssm_association` (derived from provider schema).
@immutable
final class SsmAssociationOutputLocation {
  const SsmAssociationOutputLocation({
    required this.s3BucketName,
    this.s3KeyPrefix,
    this.s3Region,
  });

  final RefTo<AwsS3Bucket> s3BucketName;

  final TfArg<String>? s3KeyPrefix;

  final TfArg<String>? s3Region;

  Map<String, Object?> encode() => {
    's3_bucket_name': s3BucketName.encodeAs('id').toTfJson(),
    's3_key_prefix': ?s3KeyPrefix?.toTfJson(),
    's3_region': ?s3Region?.toTfJson(),
  };
}

/// Typed helper for the `targets` block of
/// `aws_ssm_association` (derived from provider schema).
@immutable
final class SsmAssociationTargets {
  const SsmAssociationTargets({required this.key, required this.values});

  final TfArg<String> key;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssm_association`.
final class AwsSsmAssociation extends Resource {
  static const String tfType = 'aws_ssm_association';

  AwsSsmAssociation(
    super.localName, {
    TfArg<bool>? applyOnlyAtCronInterval,
    TfArg<String>? associationName,
    TfArg<String>? automationTargetParameterName,
    TfArg<List<String>>? calendarNames,
    TfArg<SsmAssociationComplianceSeverity>? complianceSeverity,
    TfArg<String>? documentVersion,
    TfArg<String>? maxConcurrency,
    TfArg<String>? maxErrors,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    TfArg<String>? scheduleExpression,
    TfArg<SsmAssociationSyncCompliance>? syncCompliance,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? waitForSuccessTimeoutSeconds,
    SsmAssociationOutputLocation? outputLocation,
    List<SsmAssociationTargets>? targets,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'apply_only_at_cron_interval': ?applyOnlyAtCronInterval,
           'association_name': ?associationName,
           'automation_target_parameter_name': ?automationTargetParameterName,
           'calendar_names': ?calendarNames,
           'compliance_severity': ?complianceSeverity,
           'document_version': ?documentVersion,
           'max_concurrency': ?maxConcurrency,
           'max_errors': ?maxErrors,
           'name': name,
           'parameters': ?parameters,
           'region': ?region,
           'schedule_expression': ?scheduleExpression,
           'sync_compliance': ?syncCompliance,
           'tags': ?tags,
           'wait_for_success_timeout_seconds': ?waitForSuccessTimeoutSeconds,
           if (outputLocation != null)
             'output_location': TfArg.literal(outputLocation.encode()),
           if (targets != null)
             'targets': TfArg.literal([for (final e in targets) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmAssociation>`.
  RefTo<AwsSsmAssociation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');

  /// Reference to `apply_only_at_cron_interval` attribute.
  TfRef<bool> get applyOnlyAtCronInterval =>
      TfRef.attribute<bool>(this, 'apply_only_at_cron_interval');

  /// Reference to `association_name` attribute.
  TfRef<String> get associationName =>
      TfRef.attribute<String>(this, 'association_name');

  /// Reference to `automation_target_parameter_name` attribute.
  TfRef<String> get automationTargetParameterName =>
      TfRef.attribute<String>(this, 'automation_target_parameter_name');

  /// Reference to `calendar_names` attribute.
  TfRef<List<String>> get calendarNames =>
      TfRef.attribute<List<String>>(this, 'calendar_names');

  /// Reference to `compliance_severity` attribute.
  TfRef<String> get complianceSeverity =>
      TfRef.attribute<String>(this, 'compliance_severity');

  /// Reference to `document_version` attribute.
  TfRef<String> get documentVersion =>
      TfRef.attribute<String>(this, 'document_version');

  /// Reference to `max_concurrency` attribute.
  TfRef<String> get maxConcurrency =>
      TfRef.attribute<String>(this, 'max_concurrency');

  /// Reference to `max_errors` attribute.
  TfRef<String> get maxErrors => TfRef.attribute<String>(this, 'max_errors');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `schedule_expression` attribute.
  TfRef<String> get scheduleExpression =>
      TfRef.attribute<String>(this, 'schedule_expression');

  /// Reference to `sync_compliance` attribute.
  TfRef<String> get syncCompliance =>
      TfRef.attribute<String>(this, 'sync_compliance');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `wait_for_success_timeout_seconds` attribute.
  TfRef<num> get waitForSuccessTimeoutSeconds =>
      TfRef.attribute<num>(this, 'wait_for_success_timeout_seconds');
}
