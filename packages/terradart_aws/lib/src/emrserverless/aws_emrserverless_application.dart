// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_emrserverless_application`.
const Set<String> _awsEmrserverlessApplicationSensitive = <String>{};

/// Emrserverless Application enum for `architecture`.
enum EmrserverlessApplicationArchitecture implements TerraformEnum {
  arm64('ARM64'),
  x8664('X86_64');

  const EmrserverlessApplicationArchitecture(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `auto_start_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationAutoStartConfiguration {
  const EmrserverlessApplicationAutoStartConfiguration({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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
    'enabled': ?enabled?.toTfJson(),
    'idle_timeout_minutes': ?idleTimeoutMinutes?.toTfJson(),
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

  final EmrserverlessApplicationInitialCapacityConfig? initialCapacityConfig;

  Map<String, Object?> encode() => {
    'initial_capacity_type': initialCapacityType.toTfJson(),
    'initial_capacity_config': ?initialCapacityConfig?.encode(),
  };
}

/// Typed helper for the `initial_capacity.initial_capacity_config` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationInitialCapacityConfig {
  const EmrserverlessApplicationInitialCapacityConfig({
    required this.workerCount,
    this.workerConfiguration,
  });

  final TfArg<num> workerCount;

  final EmrserverlessApplicationWorkerConfiguration? workerConfiguration;

  Map<String, Object?> encode() => {
    'worker_count': workerCount.toTfJson(),
    'worker_configuration': ?workerConfiguration?.encode(),
  };
}

/// Typed helper for the `initial_capacity.initial_capacity_config.worker_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationWorkerConfiguration {
  const EmrserverlessApplicationWorkerConfiguration({
    required this.cpu,
    this.disk,
    required this.memory,
  });

  final TfArg<String> cpu;

  final TfArg<String>? disk;

  final TfArg<String> memory;

  Map<String, Object?> encode() => {
    'cpu': cpu.toTfJson(),
    'disk': ?disk?.toTfJson(),
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
    'livy_endpoint_enabled': ?livyEndpointEnabled?.toTfJson(),
    'studio_enabled': ?studioEnabled?.toTfJson(),
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

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
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
    'disk': ?disk?.toTfJson(),
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

  final EmrserverlessApplicationCloudwatchLoggingConfiguration?
  cloudwatchLoggingConfiguration;

  final EmrserverlessApplicationManagedPersistenceMonitoringConfiguration?
  managedPersistenceMonitoringConfiguration;

  final EmrserverlessApplicationPrometheusMonitoringConfiguration?
  prometheusMonitoringConfiguration;

  final EmrserverlessApplicationS3MonitoringConfiguration?
  s3MonitoringConfiguration;

  Map<String, Object?> encode() => {
    'cloudwatch_logging_configuration': ?cloudwatchLoggingConfiguration
        ?.encode(),
    'managed_persistence_monitoring_configuration':
        ?managedPersistenceMonitoringConfiguration?.encode(),
    'prometheus_monitoring_configuration': ?prometheusMonitoringConfiguration
        ?.encode(),
    's3_monitoring_configuration': ?s3MonitoringConfiguration?.encode(),
  };
}

/// Typed helper for the `monitoring_configuration.cloudwatch_logging_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationCloudwatchLoggingConfiguration {
  const EmrserverlessApplicationCloudwatchLoggingConfiguration({
    required this.enabled,
    this.encryptionKeyArn,
    this.logGroupName,
    this.logStreamNamePrefix,
    this.logTypes,
  });

  final TfArg<bool> enabled;

  final RefTo<AwsKmsKey>? encryptionKeyArn;

  final RefTo<AwsCloudwatchLogGroup>? logGroupName;

  final TfArg<String>? logStreamNamePrefix;

  final List<EmrserverlessApplicationLogTypes>? logTypes;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'encryption_key_arn': ?encryptionKeyArn?.encodeAs('arn').toTfJson(),
    'log_group_name': ?logGroupName?.encodeAs('name').toTfJson(),
    'log_stream_name_prefix': ?logStreamNamePrefix?.toTfJson(),
    if (logTypes != null) 'log_types': [for (final e in logTypes!) e.encode()],
  };
}

/// Typed helper for the `monitoring_configuration.cloudwatch_logging_configuration.log_types` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationLogTypes {
  const EmrserverlessApplicationLogTypes({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `monitoring_configuration.managed_persistence_monitoring_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationManagedPersistenceMonitoringConfiguration {
  const EmrserverlessApplicationManagedPersistenceMonitoringConfiguration({
    this.enabled,
    this.encryptionKeyArn,
  });

  final TfArg<bool>? enabled;

  final RefTo<AwsKmsKey>? encryptionKeyArn;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'encryption_key_arn': ?encryptionKeyArn?.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `monitoring_configuration.prometheus_monitoring_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationPrometheusMonitoringConfiguration {
  const EmrserverlessApplicationPrometheusMonitoringConfiguration({
    this.remoteWriteUrl,
  });

  final TfArg<String>? remoteWriteUrl;

  Map<String, Object?> encode() => {
    'remote_write_url': ?remoteWriteUrl?.toTfJson(),
  };
}

/// Typed helper for the `monitoring_configuration.s3_monitoring_configuration` block of
/// `aws_emrserverless_application` (derived from provider schema).
@immutable
final class EmrserverlessApplicationS3MonitoringConfiguration {
  const EmrserverlessApplicationS3MonitoringConfiguration({
    this.encryptionKeyArn,
    this.logUri,
  });

  final RefTo<AwsKmsKey>? encryptionKeyArn;

  final TfArg<String>? logUri;

  Map<String, Object?> encode() => {
    'encryption_key_arn': ?encryptionKeyArn?.encodeAs('arn').toTfJson(),
    'log_uri': ?logUri?.toTfJson(),
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

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>>? subnetIds;

  Map<String, Object?> encode() => {
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': ?subnetIds?.encodeAs('id').toTfJson(),
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
    'properties': ?properties?.toTfJson(),
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
    'max_concurrent_runs': ?maxConcurrentRuns?.toTfJson(),
    'queue_timeout_minutes': ?queueTimeoutMinutes?.toTfJson(),
  };
}

/// Factory wrapper for `aws_emrserverless_application`.
final class AwsEmrserverlessApplication extends Resource {
  static const String tfType = 'aws_emrserverless_application';

  AwsEmrserverlessApplication({
    required super.localName,
    TfArg<EmrserverlessApplicationArchitecture>? architecture,
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
           'architecture': ?architecture,
           'name': name,
           'region': ?region,
           'release_label': releaseLabel,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEmrserverlessApplication>`.
  RefTo<AwsEmrserverlessApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `architecture` attribute.
  TfRef<String> get architectureRef =>
      TfRef.attribute<String>(this, 'architecture');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `release_label` attribute.
  TfRef<String> get releaseLabelRef =>
      TfRef.attribute<String>(this, 'release_label');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
