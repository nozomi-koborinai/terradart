// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_fis_experiment_template`.
const Set<String> _awsFisExperimentTemplateSensitive = <String>{};

/// Typed helper for the `action` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateAction {
  const FisExperimentTemplateAction({
    required this.actionId,
    this.description,
    required this.name,
    this.startAfter,
    this.parameter,
    this.target,
  });

  final TfArg<String> actionId;

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<List<String>>? startAfter;

  final List<FisExperimentTemplateParameter>? parameter;

  final FisExperimentTemplateActionTarget? target;

  Map<String, Object?> encode() => {
    'action_id': actionId.toTfJson(),
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'start_after': ?startAfter?.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
    'target': ?target?.encode(),
  };
}

/// Typed helper for the `action.parameter` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateParameter {
  const FisExperimentTemplateParameter({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `action.target` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateActionTarget {
  const FisExperimentTemplateActionTarget({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `experiment_options` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateExperimentOptions {
  const FisExperimentTemplateExperimentOptions({
    this.accountTargeting,
    this.emptyTargetResolutionMode,
  });

  final TfArg<FisExperimentTemplateAccountTargeting>? accountTargeting;

  final TfArg<FisExperimentTemplateEmptyTargetResolutionMode>?
  emptyTargetResolutionMode;

  Map<String, Object?> encode() => {
    'account_targeting': ?accountTargeting?.toTfJson(),
    'empty_target_resolution_mode': ?emptyTargetResolutionMode?.toTfJson(),
  };
}

/// `account_targeting` — derived from the provider schema description.
enum FisExperimentTemplateAccountTargeting implements TerraformEnum {
  singleAccount('single-account'),
  multiAccount('multi-account');

  const FisExperimentTemplateAccountTargeting(this.terraformValue);
  @override
  final String terraformValue;
}

/// `empty_target_resolution_mode` — derived from the provider schema description.
enum FisExperimentTemplateEmptyTargetResolutionMode implements TerraformEnum {
  fail('fail'),
  skip('skip');

  const FisExperimentTemplateEmptyTargetResolutionMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `experiment_report_configuration` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateExperimentReportConfiguration {
  const FisExperimentTemplateExperimentReportConfiguration({
    this.postExperimentDuration,
    this.preExperimentDuration,
    this.dataSources,
    this.outputs,
  });

  final TfArg<String>? postExperimentDuration;

  final TfArg<String>? preExperimentDuration;

  final FisExperimentTemplateDataSources? dataSources;

  final FisExperimentTemplateOutputs? outputs;

  Map<String, Object?> encode() => {
    'post_experiment_duration': ?postExperimentDuration?.toTfJson(),
    'pre_experiment_duration': ?preExperimentDuration?.toTfJson(),
    'data_sources': ?dataSources?.encode(),
    'outputs': ?outputs?.encode(),
  };
}

/// Typed helper for the `experiment_report_configuration.data_sources` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateDataSources {
  const FisExperimentTemplateDataSources({this.cloudwatchDashboard});

  final List<FisExperimentTemplateCloudwatchDashboard>? cloudwatchDashboard;

  Map<String, Object?> encode() => {
    if (cloudwatchDashboard != null)
      'cloudwatch_dashboard': [
        for (final e in cloudwatchDashboard!) e.encode(),
      ],
  };
}

/// Typed helper for the `experiment_report_configuration.data_sources.cloudwatch_dashboard` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateCloudwatchDashboard {
  const FisExperimentTemplateCloudwatchDashboard({this.dashboardArn});

  final TfArg<String>? dashboardArn;

  Map<String, Object?> encode() => {'dashboard_arn': ?dashboardArn?.toTfJson()};
}

/// Typed helper for the `experiment_report_configuration.outputs` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateOutputs {
  const FisExperimentTemplateOutputs({this.s3Configuration});

  final FisExperimentTemplateS3Configuration? s3Configuration;

  Map<String, Object?> encode() => {
    's3_configuration': ?s3Configuration?.encode(),
  };
}

/// Typed helper for the `log_configuration.s3_configuration` block of
/// `aws_fis_experiment_template` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class FisExperimentTemplateS3Configuration {
  const FisExperimentTemplateS3Configuration({
    required this.bucketName,
    this.prefix,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
  };
}

/// Typed helper for the `log_configuration` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateLogConfiguration {
  const FisExperimentTemplateLogConfiguration({
    required this.logSchemaVersion,
    this.cloudwatchLogsConfiguration,
    this.s3Configuration,
  });

  final TfArg<num> logSchemaVersion;

  final FisExperimentTemplateCloudwatchLogsConfiguration?
  cloudwatchLogsConfiguration;

  final FisExperimentTemplateS3Configuration? s3Configuration;

  Map<String, Object?> encode() => {
    'log_schema_version': logSchemaVersion.toTfJson(),
    'cloudwatch_logs_configuration': ?cloudwatchLogsConfiguration?.encode(),
    's3_configuration': ?s3Configuration?.encode(),
  };
}

/// Typed helper for the `log_configuration.cloudwatch_logs_configuration` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateCloudwatchLogsConfiguration {
  const FisExperimentTemplateCloudwatchLogsConfiguration({
    required this.logGroupArn,
  });

  final RefTo<AwsCloudwatchLogGroup> logGroupArn;

  Map<String, Object?> encode() => {
    'log_group_arn': logGroupArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `stop_condition` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateStopCondition {
  const FisExperimentTemplateStopCondition({required this.source, this.value});

  final TfArg<String> source;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'source': source.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `target` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateTarget {
  const FisExperimentTemplateTarget({
    required this.name,
    this.parameters,
    this.resourceArns,
    required this.resourceType,
    required this.selectionMode,
    this.filter,
    this.resourceTag,
  });

  final TfArg<String> name;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<List<String>>? resourceArns;

  final TfArg<String> resourceType;

  final TfArg<String> selectionMode;

  final List<FisExperimentTemplateFilter>? filter;

  final List<FisExperimentTemplateResourceTag>? resourceTag;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'resource_arns': ?resourceArns?.toTfJson(),
    'resource_type': resourceType.toTfJson(),
    'selection_mode': selectionMode.toTfJson(),
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
    if (resourceTag != null)
      'resource_tag': [for (final e in resourceTag!) e.encode()],
  };
}

/// Typed helper for the `target.filter` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateFilter {
  const FisExperimentTemplateFilter({required this.path, required this.values});

  final TfArg<String> path;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `target.resource_tag` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateResourceTag {
  const FisExperimentTemplateResourceTag({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_fis_experiment_template`.
final class AwsFisExperimentTemplate extends Resource {
  static const String tfType = 'aws_fis_experiment_template';

  AwsFisExperimentTemplate({
    required super.localName,
    required TfArg<String> description,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required List<FisExperimentTemplateAction> action,
    FisExperimentTemplateExperimentOptions? experimentOptions,
    FisExperimentTemplateExperimentReportConfiguration?
    experimentReportConfiguration,
    FisExperimentTemplateLogConfiguration? logConfiguration,
    required List<FisExperimentTemplateStopCondition> stopCondition,
    List<FisExperimentTemplateTarget>? target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': description,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'action': TfArg.literal([for (final e in action) e.encode()]),
           if (experimentOptions != null)
             'experiment_options': TfArg.literal(experimentOptions.encode()),
           if (experimentReportConfiguration != null)
             'experiment_report_configuration': TfArg.literal(
               experimentReportConfiguration.encode(),
             ),
           if (logConfiguration != null)
             'log_configuration': TfArg.literal(logConfiguration.encode()),
           'stop_condition': TfArg.literal([
             for (final e in stopCondition) e.encode(),
           ]),
           if (target != null)
             'target': TfArg.literal([for (final e in target) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFisExperimentTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFisExperimentTemplate>`.
  RefTo<AwsFisExperimentTemplate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
