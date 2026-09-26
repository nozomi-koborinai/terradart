// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<List<Object?>>? startAfter;

  final List<FisExperimentTemplateActionParameter>? parameter;

  final FisExperimentTemplateActionTarget? target;

  Map<String, Object?> encode() => {
    'action_id': actionId.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (startAfter != null) 'start_after': startAfter!.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
    if (target != null) 'target': target!.encode(),
  };
}

/// Typed helper for the `action.parameter` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateActionParameter {
  const FisExperimentTemplateActionParameter({
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

  final TfArg<String>? accountTargeting;

  final TfArg<String>? emptyTargetResolutionMode;

  Map<String, Object?> encode() => {
    if (accountTargeting != null)
      'account_targeting': accountTargeting!.toTfJson(),
    if (emptyTargetResolutionMode != null)
      'empty_target_resolution_mode': emptyTargetResolutionMode!.toTfJson(),
  };
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

  final FisExperimentTemplateExperimentReportConfigurationDataSources?
  dataSources;

  final FisExperimentTemplateExperimentReportConfigurationOutputs? outputs;

  Map<String, Object?> encode() => {
    if (postExperimentDuration != null)
      'post_experiment_duration': postExperimentDuration!.toTfJson(),
    if (preExperimentDuration != null)
      'pre_experiment_duration': preExperimentDuration!.toTfJson(),
    if (dataSources != null) 'data_sources': dataSources!.encode(),
    if (outputs != null) 'outputs': outputs!.encode(),
  };
}

/// Typed helper for the `experiment_report_configuration.data_sources` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateExperimentReportConfigurationDataSources {
  const FisExperimentTemplateExperimentReportConfigurationDataSources({
    this.cloudwatchDashboard,
  });

  final List<
    FisExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard
  >?
  cloudwatchDashboard;

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
final class FisExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard {
  const FisExperimentTemplateExperimentReportConfigurationDataSourcesCloudwatchDashboard({
    this.dashboardArn,
  });

  final TfArg<String>? dashboardArn;

  Map<String, Object?> encode() => {
    if (dashboardArn != null) 'dashboard_arn': dashboardArn!.toTfJson(),
  };
}

/// Typed helper for the `experiment_report_configuration.outputs` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateExperimentReportConfigurationOutputs {
  const FisExperimentTemplateExperimentReportConfigurationOutputs({
    this.s3Configuration,
  });

  final FisExperimentTemplateExperimentReportConfigurationOutputsS3Configuration?
  s3Configuration;

  Map<String, Object?> encode() => {
    if (s3Configuration != null) 's3_configuration': s3Configuration!.encode(),
  };
}

/// Typed helper for the `experiment_report_configuration.outputs.s3_configuration` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateExperimentReportConfigurationOutputsS3Configuration {
  const FisExperimentTemplateExperimentReportConfigurationOutputsS3Configuration({
    required this.bucketName,
    this.prefix,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
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

  final FisExperimentTemplateLogConfigurationCloudwatchLogsConfiguration?
  cloudwatchLogsConfiguration;

  final FisExperimentTemplateLogConfigurationS3Configuration? s3Configuration;

  Map<String, Object?> encode() => {
    'log_schema_version': logSchemaVersion.toTfJson(),
    if (cloudwatchLogsConfiguration != null)
      'cloudwatch_logs_configuration': cloudwatchLogsConfiguration!.encode(),
    if (s3Configuration != null) 's3_configuration': s3Configuration!.encode(),
  };
}

/// Typed helper for the `log_configuration.cloudwatch_logs_configuration` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateLogConfigurationCloudwatchLogsConfiguration {
  const FisExperimentTemplateLogConfigurationCloudwatchLogsConfiguration({
    required this.logGroupArn,
  });

  final TfArg<String> logGroupArn;

  Map<String, Object?> encode() => {'log_group_arn': logGroupArn.toTfJson()};
}

/// Typed helper for the `log_configuration.s3_configuration` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateLogConfigurationS3Configuration {
  const FisExperimentTemplateLogConfigurationS3Configuration({
    required this.bucketName,
    this.prefix,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? prefix;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
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
    if (value != null) 'value': value!.toTfJson(),
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

  final TfArg<List<Object?>>? resourceArns;

  final TfArg<String> resourceType;

  final TfArg<String> selectionMode;

  final List<FisExperimentTemplateTargetFilter>? filter;

  final List<FisExperimentTemplateTargetResourceTag>? resourceTag;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (resourceArns != null) 'resource_arns': resourceArns!.toTfJson(),
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
final class FisExperimentTemplateTargetFilter {
  const FisExperimentTemplateTargetFilter({
    required this.path,
    required this.values,
  });

  final TfArg<String> path;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'path': path.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `target.resource_tag` block of
/// `aws_fis_experiment_template` (derived from provider schema).
@immutable
final class FisExperimentTemplateTargetResourceTag {
  const FisExperimentTemplateTargetResourceTag({
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
    required TfArg<String> roleArn,
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
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
