// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_association`.
const Set<String> _awsSsmAssociationSensitive = <String>{};

/// Typed helper for the `output_location` block of
/// `aws_ssm_association` (derived from provider schema).
@immutable
final class SsmAssociationOutputLocation {
  const SsmAssociationOutputLocation({
    required this.s3BucketName,
    this.s3KeyPrefix,
    this.s3Region,
  });

  final TfArg<String> s3BucketName;

  final TfArg<String>? s3KeyPrefix;

  final TfArg<String>? s3Region;

  Map<String, Object?> encode() => {
    's3_bucket_name': s3BucketName.toTfJson(),
    if (s3KeyPrefix != null) 's3_key_prefix': s3KeyPrefix!.toTfJson(),
    if (s3Region != null) 's3_region': s3Region!.toTfJson(),
  };
}

/// Typed helper for the `targets` block of
/// `aws_ssm_association` (derived from provider schema).
@immutable
final class SsmAssociationTargets {
  const SsmAssociationTargets({required this.key, required this.values});

  final TfArg<String> key;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssm_association`.
final class AwsSsmAssociation extends Resource {
  static const String tfType = 'aws_ssm_association';

  AwsSsmAssociation({
    required super.localName,
    TfArg<bool>? applyOnlyAtCronInterval,
    TfArg<String>? associationName,
    TfArg<String>? automationTargetParameterName,
    TfArg<List<String>>? calendarNames,
    TfArg<String>? complianceSeverity,
    TfArg<String>? documentVersion,
    TfArg<String>? maxConcurrency,
    TfArg<String>? maxErrors,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? region,
    TfArg<String>? scheduleExpression,
    TfArg<String>? syncCompliance,
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
           if (applyOnlyAtCronInterval != null)
             'apply_only_at_cron_interval': applyOnlyAtCronInterval,
           if (associationName != null) 'association_name': associationName,
           if (automationTargetParameterName != null)
             'automation_target_parameter_name': automationTargetParameterName,
           if (calendarNames != null) 'calendar_names': calendarNames,
           if (complianceSeverity != null)
             'compliance_severity': complianceSeverity,
           if (documentVersion != null) 'document_version': documentVersion,
           if (maxConcurrency != null) 'max_concurrency': maxConcurrency,
           if (maxErrors != null) 'max_errors': maxErrors,
           'name': name,
           if (parameters != null) 'parameters': parameters,
           if (region != null) 'region': region,
           if (scheduleExpression != null)
             'schedule_expression': scheduleExpression,
           if (syncCompliance != null) 'sync_compliance': syncCompliance,
           if (tags != null) 'tags': tags,
           if (waitForSuccessTimeoutSeconds != null)
             'wait_for_success_timeout_seconds': waitForSuccessTimeoutSeconds,
           if (outputLocation != null)
             'output_location': TfArg.literal(outputLocation.encode()),
           if (targets != null)
             'targets': TfArg.literal([for (final e in targets) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmAssociationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');
}
