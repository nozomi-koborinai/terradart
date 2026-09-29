// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_emrcontainers_job_template`.
const Set<String> _awsEmrcontainersJobTemplateSensitive = <String>{};

/// Typed helper for the `job_template_data` block of
/// `aws_emrcontainers_job_template` (derived from provider schema).
@immutable
final class EmrcontainersJobTemplateJobTemplateData {
  const EmrcontainersJobTemplateJobTemplateData({
    required this.executionRoleArn,
    this.jobTags,
    required this.releaseLabel,
    this.configurationOverrides,
    required this.jobDriver,
  });

  final RefTo<AwsIamRole> executionRoleArn;

  final TfArg<Map<String, String>>? jobTags;

  final TfArg<String> releaseLabel;

  final EmrcontainersJobTemplateJobTemplateDataConfigurationOverrides?
  configurationOverrides;

  final EmrcontainersJobTemplateJobTemplateDataJobDriver jobDriver;

  Map<String, Object?> encode() => {
    'execution_role_arn': executionRoleArn.encodeAs('arn').toTfJson(),
    'job_tags': ?jobTags?.toTfJson(),
    'release_label': releaseLabel.toTfJson(),
    'configuration_overrides': ?configurationOverrides?.encode(),
    'job_driver': jobDriver.encode(),
  };
}

/// Typed helper for the `job_template_data.configuration_overrides` block of
/// `aws_emrcontainers_job_template` (derived from provider schema).
@immutable
final class EmrcontainersJobTemplateJobTemplateDataConfigurationOverrides {
  const EmrcontainersJobTemplateJobTemplateDataConfigurationOverrides({
    this.applicationConfiguration,
    this.monitoringConfiguration,
  });

  final List<
    EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration
  >?
  applicationConfiguration;

  final EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration?
  monitoringConfiguration;

  Map<String, Object?> encode() => {
    if (applicationConfiguration != null)
      'application_configuration': [
        for (final e in applicationConfiguration!) e.encode(),
      ],
    'monitoring_configuration': ?monitoringConfiguration?.encode(),
  };
}

/// Typed helper for the `job_template_data.configuration_overrides.application_configuration` block of
/// `aws_emrcontainers_job_template` (derived from provider schema).
@immutable
final class EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration {
  const EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration({
    required this.classification,
    this.properties,
    this.configurations,
  });

  final TfArg<String> classification;

  final TfArg<Map<String, String>>? properties;

  final List<
    EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfigurations
  >?
  configurations;

  Map<String, Object?> encode() => {
    'classification': classification.toTfJson(),
    'properties': ?properties?.toTfJson(),
    if (configurations != null)
      'configurations': [for (final e in configurations!) e.encode()],
  };
}

/// Typed helper for the `job_template_data.configuration_overrides.application_configuration.configurations` block of
/// `aws_emrcontainers_job_template` (derived from provider schema).
@immutable
final class EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfigurations {
  const EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesApplicationConfigurationConfigurations({
    this.classification,
    this.properties,
  });

  final TfArg<String>? classification;

  final TfArg<Map<String, String>>? properties;

  Map<String, Object?> encode() => {
    'classification': ?classification?.toTfJson(),
    'properties': ?properties?.toTfJson(),
  };
}

/// Typed helper for the `job_template_data.configuration_overrides.monitoring_configuration` block of
/// `aws_emrcontainers_job_template` (derived from provider schema).
@immutable
final class EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration {
  const EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration({
    this.persistentAppUi,
    this.cloudWatchMonitoringConfiguration,
    this.s3MonitoringConfiguration,
  });

  final TfArg<
    EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationPersistentAppUi
  >?
  persistentAppUi;

  final EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration?
  cloudWatchMonitoringConfiguration;

  final EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration?
  s3MonitoringConfiguration;

  Map<String, Object?> encode() => {
    'persistent_app_ui': ?persistentAppUi?.toTfJson(),
    'cloud_watch_monitoring_configuration': ?cloudWatchMonitoringConfiguration
        ?.encode(),
    's3_monitoring_configuration': ?s3MonitoringConfiguration?.encode(),
  };
}

/// `persistent_app_ui` — derived from the provider schema description.
enum EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationPersistentAppUi
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationPersistentAppUi(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `job_template_data.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration` block of
/// `aws_emrcontainers_job_template` (derived from provider schema).
@immutable
final class EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration {
  const EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration({
    required this.logGroupName,
    this.logStreamNamePrefix,
  });

  final RefTo<AwsCloudwatchLogGroup> logGroupName;

  final TfArg<String>? logStreamNamePrefix;

  Map<String, Object?> encode() => {
    'log_group_name': logGroupName.encodeAs('name').toTfJson(),
    'log_stream_name_prefix': ?logStreamNamePrefix?.toTfJson(),
  };
}

/// Typed helper for the `job_template_data.configuration_overrides.monitoring_configuration.s3_monitoring_configuration` block of
/// `aws_emrcontainers_job_template` (derived from provider schema).
@immutable
final class EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration {
  const EmrcontainersJobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration({
    required this.logUri,
  });

  final TfArg<String> logUri;

  Map<String, Object?> encode() => {'log_uri': logUri.toTfJson()};
}

/// Typed helper for the `job_template_data.job_driver` block of
/// `aws_emrcontainers_job_template` (derived from provider schema).
@immutable
final class EmrcontainersJobTemplateJobTemplateDataJobDriver {
  const EmrcontainersJobTemplateJobTemplateDataJobDriver({required this.spark});

  final EmrcontainersJobTemplateJobTemplateDataJobDriverSpark spark;

  Map<String, Object?> encode() => {...spark.encode()};
}

/// Exactly one of `spark_sql_job_driver`, `spark_submit_job_driver` on the `job_template_data.job_driver` block of `aws_emrcontainers_job_template`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sparkSqlJobDriver(...)`.
sealed class EmrcontainersJobTemplateJobTemplateDataJobDriverSpark {
  const EmrcontainersJobTemplateJobTemplateDataJobDriverSpark();

  /// Sets `spark_sql_job_driver`.
  const factory EmrcontainersJobTemplateJobTemplateDataJobDriverSpark.sparkSqlJobDriver(
    EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSqlJobDriver
    sparkSqlJobDriver,
  ) = EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSparkSqlJobDriver;

  /// Sets `spark_submit_job_driver`.
  const factory EmrcontainersJobTemplateJobTemplateDataJobDriverSpark.sparkSubmitJobDriver(
    EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver
    sparkSubmitJobDriver,
  ) = EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSparkSubmitJobDriver;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [EmrcontainersJobTemplateJobTemplateDataJobDriverSpark.sparkSqlJobDriver] choice: sets `spark_sql_job_driver`.
final class EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSparkSqlJobDriver
    extends EmrcontainersJobTemplateJobTemplateDataJobDriverSpark {
  const EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSparkSqlJobDriver(
    this.sparkSqlJobDriver,
  );

  final EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSqlJobDriver
  sparkSqlJobDriver;

  @override
  String get blockKey => 'spark_sql_job_driver';

  @override
  Map<String, Object?> encode() => {
    'spark_sql_job_driver': sparkSqlJobDriver.encode(),
  };
}

/// The [EmrcontainersJobTemplateJobTemplateDataJobDriverSpark.sparkSubmitJobDriver] choice: sets `spark_submit_job_driver`.
final class EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSparkSubmitJobDriver
    extends EmrcontainersJobTemplateJobTemplateDataJobDriverSpark {
  const EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSparkSubmitJobDriver(
    this.sparkSubmitJobDriver,
  );

  final EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver
  sparkSubmitJobDriver;

  @override
  String get blockKey => 'spark_submit_job_driver';

  @override
  Map<String, Object?> encode() => {
    'spark_submit_job_driver': sparkSubmitJobDriver.encode(),
  };
}

/// Typed helper for the `job_template_data.job_driver.spark_sql_job_driver` block of
/// `aws_emrcontainers_job_template` (derived from provider schema).
@immutable
final class EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSqlJobDriver {
  const EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSqlJobDriver({
    this.entryPoint,
    this.sparkSqlParameters,
  });

  final TfArg<String>? entryPoint;

  final TfArg<String>? sparkSqlParameters;

  Map<String, Object?> encode() => {
    'entry_point': ?entryPoint?.toTfJson(),
    'spark_sql_parameters': ?sparkSqlParameters?.toTfJson(),
  };
}

/// Typed helper for the `job_template_data.job_driver.spark_submit_job_driver` block of
/// `aws_emrcontainers_job_template` (derived from provider schema).
@immutable
final class EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver {
  const EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSubmitJobDriver({
    required this.entryPoint,
    this.entryPointArguments,
    this.sparkSubmitParameters,
  });

  final TfArg<String> entryPoint;

  final TfArg<List<Object?>>? entryPointArguments;

  final TfArg<String>? sparkSubmitParameters;

  Map<String, Object?> encode() => {
    'entry_point': entryPoint.toTfJson(),
    'entry_point_arguments': ?entryPointArguments?.toTfJson(),
    'spark_submit_parameters': ?sparkSubmitParameters?.toTfJson(),
  };
}

/// Factory wrapper for `aws_emrcontainers_job_template`.
final class AwsEmrcontainersJobTemplate extends Resource {
  static const String tfType = 'aws_emrcontainers_job_template';

  AwsEmrcontainersJobTemplate({
    required super.localName,
    RefTo<AwsKmsKey>? kmsKeyArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required EmrcontainersJobTemplateJobTemplateData jobTemplateData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'job_template_data': TfArg.literal(jobTemplateData.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrcontainersJobTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrcontainersJobTemplate>`.
  RefTo<AwsEmrcontainersJobTemplate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
