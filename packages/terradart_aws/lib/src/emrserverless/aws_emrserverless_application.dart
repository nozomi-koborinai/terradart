// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_emrserverless_application`.
const Set<String> _awsEmrserverlessApplicationSensitive = <String>{};

/// Typed helper for the `auto_start_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationAutoStartConfiguration {
  const EmrserverlessApplicationAutoStartConfiguration({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `auto_stop_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationAutoStopConfiguration {
  const EmrserverlessApplicationAutoStopConfiguration({
    this.enabled,
    this.idleTimeoutMinutes,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? idleTimeoutMinutes;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (idleTimeoutMinutes != null)
      'idle_timeout_minutes': idleTimeoutMinutes!.toTfJson(),
  };
}

/// Typed helper for the `image_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationImageConfiguration {
  const EmrserverlessApplicationImageConfiguration({required this.imageUri});

  final TfArg<String> imageUri;

  Map<String, Object?> encode() => {'image_uri': imageUri.toTfJson()};
}

/// Typed helper for the `initial_capacity` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationInitialCapacity {
  const EmrserverlessApplicationInitialCapacity({
    required this.initialCapacityType,
    this.initialCapacityConfig,
  });

  final TfArg<String> initialCapacityType;

  final EmrserverlessApplicationInitialCapacityInitialCapacityConfig?
  initialCapacityConfig;

  Map<String, Object?> encode() => {
    'initial_capacity_type': initialCapacityType.toTfJson(),
    if (initialCapacityConfig != null)
      'initial_capacity_config': initialCapacityConfig!.encode(),
  };
}

/// Typed helper for the `initial_capacity.initial_capacity_config` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationInitialCapacityInitialCapacityConfig {
  const EmrserverlessApplicationInitialCapacityInitialCapacityConfig({
    required this.workerCount,
    this.workerConfiguration,
  });

  final TfArg<num> workerCount;

  final EmrserverlessApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration?
  workerConfiguration;

  Map<String, Object?> encode() => {
    'worker_count': workerCount.toTfJson(),
    if (workerConfiguration != null)
      'worker_configuration': workerConfiguration!.encode(),
  };
}

/// Typed helper for the `initial_capacity.initial_capacity_config.worker_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration {
  const EmrserverlessApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration({
    required this.cpu,
    this.disk,
    required this.memory,
  });

  final TfArg<String> cpu;

  final TfArg<String>? disk;

  final TfArg<String> memory;

  Map<String, Object?> encode() => {
    'cpu': cpu.toTfJson(),
    if (disk != null) 'disk': disk!.toTfJson(),
    'memory': memory.toTfJson(),
  };
}

/// Typed helper for the `interactive_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationInteractiveConfiguration {
  const EmrserverlessApplicationInteractiveConfiguration({
    this.livyEndpointEnabled,
    this.studioEnabled,
  });

  final TfArg<bool>? livyEndpointEnabled;

  final TfArg<bool>? studioEnabled;

  Map<String, Object?> encode() => {
    if (livyEndpointEnabled != null)
      'livy_endpoint_enabled': livyEndpointEnabled!.toTfJson(),
    if (studioEnabled != null) 'studio_enabled': studioEnabled!.toTfJson(),
  };
}

/// Typed helper for the `job_level_cost_allocation_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationJobLevelCostAllocationConfiguration {
  const EmrserverlessApplicationJobLevelCostAllocationConfiguration({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `maximum_capacity` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationMaximumCapacity {
  const EmrserverlessApplicationMaximumCapacity({
    required this.cpu,
    this.disk,
    required this.memory,
  });

  final TfArg<String> cpu;

  final TfArg<String>? disk;

  final TfArg<String> memory;

  Map<String, Object?> encode() => {
    'cpu': cpu.toTfJson(),
    if (disk != null) 'disk': disk!.toTfJson(),
    'memory': memory.toTfJson(),
  };
}

/// Typed helper for the `monitoring_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationMonitoringConfiguration {
  const EmrserverlessApplicationMonitoringConfiguration({
    this.cloudwatchLoggingConfiguration,
    this.managedPersistenceMonitoringConfiguration,
    this.prometheusMonitoringConfiguration,
    this.s3MonitoringConfiguration,
  });

  final EmrserverlessApplicationMonitoringConfigurationCloudwatchLoggingConfiguration?
  cloudwatchLoggingConfiguration;

  final EmrserverlessApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration?
  managedPersistenceMonitoringConfiguration;

  final EmrserverlessApplicationMonitoringConfigurationPrometheusMonitoringConfiguration?
  prometheusMonitoringConfiguration;

  final EmrserverlessApplicationMonitoringConfigurationS3MonitoringConfiguration?
  s3MonitoringConfiguration;

  Map<String, Object?> encode() => {
    if (cloudwatchLoggingConfiguration != null)
      'cloudwatch_logging_configuration': cloudwatchLoggingConfiguration!
          .encode(),
    if (managedPersistenceMonitoringConfiguration != null)
      'managed_persistence_monitoring_configuration':
          managedPersistenceMonitoringConfiguration!.encode(),
    if (prometheusMonitoringConfiguration != null)
      'prometheus_monitoring_configuration': prometheusMonitoringConfiguration!
          .encode(),
    if (s3MonitoringConfiguration != null)
      's3_monitoring_configuration': s3MonitoringConfiguration!.encode(),
  };
}

/// Typed helper for the `monitoring_configuration.cloudwatch_logging_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationMonitoringConfigurationCloudwatchLoggingConfiguration {
  const EmrserverlessApplicationMonitoringConfigurationCloudwatchLoggingConfiguration({
    required this.enabled,
    this.encryptionKeyArn,
    this.logGroupName,
    this.logStreamNamePrefix,
    this.logTypes,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? encryptionKeyArn;

  final TfArg<String>? logGroupName;

  final TfArg<String>? logStreamNamePrefix;

  final List<
    EmrserverlessApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypes
  >?
  logTypes;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (encryptionKeyArn != null)
      'encryption_key_arn': encryptionKeyArn!.toTfJson(),
    if (logGroupName != null) 'log_group_name': logGroupName!.toTfJson(),
    if (logStreamNamePrefix != null)
      'log_stream_name_prefix': logStreamNamePrefix!.toTfJson(),
    if (logTypes != null) 'log_types': [for (final e in logTypes!) e.encode()],
  };
}

/// Typed helper for the `monitoring_configuration.cloudwatch_logging_configuration.log_types` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypes {
  const EmrserverlessApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogTypes({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `monitoring_configuration.managed_persistence_monitoring_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration {
  const EmrserverlessApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration({
    this.enabled,
    this.encryptionKeyArn,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? encryptionKeyArn;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (encryptionKeyArn != null)
      'encryption_key_arn': encryptionKeyArn!.toTfJson(),
  };
}

/// Typed helper for the `monitoring_configuration.prometheus_monitoring_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationMonitoringConfigurationPrometheusMonitoringConfiguration {
  const EmrserverlessApplicationMonitoringConfigurationPrometheusMonitoringConfiguration({
    this.remoteWriteUrl,
  });

  final TfArg<String>? remoteWriteUrl;

  Map<String, Object?> encode() => {
    if (remoteWriteUrl != null) 'remote_write_url': remoteWriteUrl!.toTfJson(),
  };
}

/// Typed helper for the `monitoring_configuration.s3_monitoring_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationMonitoringConfigurationS3MonitoringConfiguration {
  const EmrserverlessApplicationMonitoringConfigurationS3MonitoringConfiguration({
    this.encryptionKeyArn,
    this.logUri,
  });

  final TfArg<String>? encryptionKeyArn;

  final TfArg<String>? logUri;

  Map<String, Object?> encode() => {
    if (encryptionKeyArn != null)
      'encryption_key_arn': encryptionKeyArn!.toTfJson(),
    if (logUri != null) 'log_uri': logUri!.toTfJson(),
  };
}

/// Typed helper for the `network_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationNetworkConfiguration {
  const EmrserverlessApplicationNetworkConfiguration({
    this.securityGroupIds,
    this.subnetIds,
  });

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>>? subnetIds;

  Map<String, Object?> encode() => {
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (subnetIds != null) 'subnet_ids': subnetIds!.toTfJson(),
  };
}

/// Typed helper for the `runtime_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationRuntimeConfiguration {
  const EmrserverlessApplicationRuntimeConfiguration({
    required this.classification,
    this.properties,
  });

  final TfArg<String> classification;

  final TfArg<Map<String, String>>? properties;

  Map<String, Object?> encode() => {
    'classification': classification.toTfJson(),
    if (properties != null) 'properties': properties!.toTfJson(),
  };
}

/// Typed helper for the `scheduler_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationSchedulerConfiguration {
  const EmrserverlessApplicationSchedulerConfiguration({
    this.maxConcurrentRuns,
    this.queueTimeoutMinutes,
  });

  final TfArg<num>? maxConcurrentRuns;

  final TfArg<num>? queueTimeoutMinutes;

  Map<String, Object?> encode() => {
    if (maxConcurrentRuns != null)
      'max_concurrent_runs': maxConcurrentRuns!.toTfJson(),
    if (queueTimeoutMinutes != null)
      'queue_timeout_minutes': queueTimeoutMinutes!.toTfJson(),
  };
}

/// Factory wrapper for `aws_emrserverless_application`.
final class AwsEmrserverlessApplication extends Resource {
  static const String tfType = 'aws_emrserverless_application';

  AwsEmrserverlessApplication({
    required super.localName,
    TfArg<String>? architecture,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> releaseLabel,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    EmrserverlessApplicationAutoStartConfiguration? autoStartConfiguration,
    EmrserverlessApplicationAutoStopConfiguration? autoStopConfiguration,
    EmrserverlessApplicationImageConfiguration? imageConfiguration,
    List<EmrserverlessApplicationInitialCapacity>? initialCapacity,
    EmrserverlessApplicationInteractiveConfiguration? interactiveConfiguration,
    EmrserverlessApplicationJobLevelCostAllocationConfiguration?
    jobLevelCostAllocationConfiguration,
    EmrserverlessApplicationMaximumCapacity? maximumCapacity,
    EmrserverlessApplicationMonitoringConfiguration? monitoringConfiguration,
    EmrserverlessApplicationNetworkConfiguration? networkConfiguration,
    List<EmrserverlessApplicationRuntimeConfiguration>? runtimeConfiguration,
    EmrserverlessApplicationSchedulerConfiguration? schedulerConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (architecture != null) 'architecture': architecture,
           'name': name,
           if (region != null) 'region': region,
           'release_label': releaseLabel,
           if (tags != null) 'tags': tags,
           'type': type,
           if (autoStartConfiguration != null)
             'auto_start_configuration': TfArg.literal(
               autoStartConfiguration.encode(),
             ),
           if (autoStopConfiguration != null)
             'auto_stop_configuration': TfArg.literal(
               autoStopConfiguration.encode(),
             ),
           if (imageConfiguration != null)
             'image_configuration': TfArg.literal(imageConfiguration.encode()),
           if (initialCapacity != null)
             'initial_capacity': TfArg.literal([
               for (final e in initialCapacity) e.encode(),
             ]),
           if (interactiveConfiguration != null)
             'interactive_configuration': TfArg.literal(
               interactiveConfiguration.encode(),
             ),
           if (jobLevelCostAllocationConfiguration != null)
             'job_level_cost_allocation_configuration': TfArg.literal(
               jobLevelCostAllocationConfiguration.encode(),
             ),
           if (maximumCapacity != null)
             'maximum_capacity': TfArg.literal(maximumCapacity.encode()),
           if (monitoringConfiguration != null)
             'monitoring_configuration': TfArg.literal(
               monitoringConfiguration.encode(),
             ),
           if (networkConfiguration != null)
             'network_configuration': TfArg.literal(
               networkConfiguration.encode(),
             ),
           if (runtimeConfiguration != null)
             'runtime_configuration': TfArg.literal([
               for (final e in runtimeConfiguration) e.encode(),
             ]),
           if (schedulerConfiguration != null)
             'scheduler_configuration': TfArg.literal(
               schedulerConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEmrserverlessApplicationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
