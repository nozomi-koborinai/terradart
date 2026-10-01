// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_data_pipeline_pipeline`.
const Set<String> _googleDataPipelinePipelineSensitive = <String>{};

/// Data Pipeline Pipeline enum for `state`.
enum DataPipelinePipelineState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  stateResuming('STATE_RESUMING'),
  stateActive('STATE_ACTIVE'),
  stateStopping('STATE_STOPPING'),
  stateArchived('STATE_ARCHIVED'),
  statePaused('STATE_PAUSED');

  const DataPipelinePipelineState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Data Pipeline Pipeline enum for `type`.
enum DataPipelinePipelineType implements TerraformEnum {
  pipelineTypeUnspecified('PIPELINE_TYPE_UNSPECIFIED'),
  pipelineTypeBatch('PIPELINE_TYPE_BATCH'),
  pipelineTypeStreaming('PIPELINE_TYPE_STREAMING');

  const DataPipelinePipelineType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `schedule_info` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineScheduleInfo {
  const DataPipelinePipelineScheduleInfo({this.schedule, this.timeZone});

  final TfArg<String>? schedule;

  final TfArg<String>? timeZone;

  Map<String, Object?> encode() => {
    'schedule': ?schedule?.toTfJson(),
    'time_zone': ?timeZone?.toTfJson(),
  };
}

/// Typed helper for the `workload` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineWorkload {
  const DataPipelinePipelineWorkload({
    this.dataflowFlexTemplateRequest,
    this.dataflowLaunchTemplateRequest,
  });

  final DataPipelinePipelineDataflowFlexTemplateRequest?
  dataflowFlexTemplateRequest;

  final DataPipelinePipelineDataflowLaunchTemplateRequest?
  dataflowLaunchTemplateRequest;

  Map<String, Object?> encode() => {
    'dataflow_flex_template_request': ?dataflowFlexTemplateRequest?.encode(),
    'dataflow_launch_template_request': ?dataflowLaunchTemplateRequest
        ?.encode(),
  };
}

/// Typed helper for the `workload.dataflow_flex_template_request` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineDataflowFlexTemplateRequest {
  const DataPipelinePipelineDataflowFlexTemplateRequest({
    required this.location,
    required this.projectId,
    this.validateOnly,
    required this.launchParameter,
  });

  final TfArg<String> location;

  final TfArg<String> projectId;

  final TfArg<bool>? validateOnly;

  final DataPipelinePipelineLaunchParameter launchParameter;

  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'project_id': projectId.toTfJson(),
    'validate_only': ?validateOnly?.toTfJson(),
    'launch_parameter': launchParameter.encode(),
  };
}

/// Typed helper for the `workload.dataflow_flex_template_request.launch_parameter` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineLaunchParameter {
  const DataPipelinePipelineLaunchParameter({
    this.containerSpecGcsPath,
    required this.jobName,
    this.launchOptions,
    this.parameters,
    this.transformNameMappings,
    this.update,
    this.environment,
  });

  final TfArg<String>? containerSpecGcsPath;

  final TfArg<String> jobName;

  final TfArg<Map<String, String>>? launchOptions;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<Map<String, String>>? transformNameMappings;

  final TfArg<bool>? update;

  final DataPipelinePipelineLaunchParameterEnvironment? environment;

  Map<String, Object?> encode() => {
    'container_spec_gcs_path': ?containerSpecGcsPath?.toTfJson(),
    'job_name': jobName.toTfJson(),
    'launch_options': ?launchOptions?.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'transform_name_mappings': ?transformNameMappings?.toTfJson(),
    'update': ?update?.toTfJson(),
    'environment': ?environment?.encode(),
  };
}

/// Typed helper for the `workload.dataflow_flex_template_request.launch_parameter.environment` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineLaunchParameterEnvironment {
  const DataPipelinePipelineLaunchParameterEnvironment({
    this.additionalExperiments,
    this.additionalUserLabels,
    this.enableStreamingEngine,
    this.flexrsGoal,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.subnetwork,
    this.tempLocation,
    this.workerRegion,
    this.workerZone,
    this.zone,
  });

  final TfArg<List<String>>? additionalExperiments;

  final TfArg<Map<String, String>>? additionalUserLabels;

  final TfArg<bool>? enableStreamingEngine;

  final TfArg<DataPipelinePipelineFlexrsGoal>? flexrsGoal;

  final TfArg<DataPipelinePipelineIpConfiguration>? ipConfiguration;

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<String>? machineType;

  final TfArg<num>? maxWorkers;

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<num>? numWorkers;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<String>? tempLocation;

  final TfArg<String>? workerRegion;

  final TfArg<String>? workerZone;

  final TfArg<String>? zone;

  Map<String, Object?> encode() => {
    'additional_experiments': ?additionalExperiments?.toTfJson(),
    'additional_user_labels': ?additionalUserLabels?.toTfJson(),
    'enable_streaming_engine': ?enableStreamingEngine?.toTfJson(),
    'flexrs_goal': ?flexrsGoal?.toTfJson(),
    'ip_configuration': ?ipConfiguration?.toTfJson(),
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'max_workers': ?maxWorkers?.toTfJson(),
    'network': ?network?.encodeAs('name').toTfJson(),
    'num_workers': ?numWorkers?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('self_link').toTfJson(),
    'temp_location': ?tempLocation?.toTfJson(),
    'worker_region': ?workerRegion?.toTfJson(),
    'worker_zone': ?workerZone?.toTfJson(),
    'zone': ?zone?.toTfJson(),
  };
}

/// `flexrs_goal` — derived from the provider schema description.
enum DataPipelinePipelineFlexrsGoal implements TerraformEnum {
  flexrsUnspecified('FLEXRS_UNSPECIFIED'),
  flexrsSpeedOptimized('FLEXRS_SPEED_OPTIMIZED'),
  flexrsCostOptimized('FLEXRS_COST_OPTIMIZED');

  const DataPipelinePipelineFlexrsGoal(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ip_configuration` — derived from the provider schema description.
enum DataPipelinePipelineIpConfiguration implements TerraformEnum {
  workerIpUnspecified('WORKER_IP_UNSPECIFIED'),
  workerIpPublic('WORKER_IP_PUBLIC'),
  workerIpPrivate('WORKER_IP_PRIVATE');

  const DataPipelinePipelineIpConfiguration(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `workload.dataflow_launch_template_request` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineDataflowLaunchTemplateRequest {
  const DataPipelinePipelineDataflowLaunchTemplateRequest({
    this.gcsPath,
    this.location,
    required this.projectId,
    this.validateOnly,
    this.launchParameters,
  });

  final TfArg<String>? gcsPath;

  final TfArg<String>? location;

  final TfArg<String> projectId;

  final TfArg<bool>? validateOnly;

  final DataPipelinePipelineLaunchParameters? launchParameters;

  Map<String, Object?> encode() => {
    'gcs_path': ?gcsPath?.toTfJson(),
    'location': ?location?.toTfJson(),
    'project_id': projectId.toTfJson(),
    'validate_only': ?validateOnly?.toTfJson(),
    'launch_parameters': ?launchParameters?.encode(),
  };
}

/// Typed helper for the `workload.dataflow_launch_template_request.launch_parameters` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineLaunchParameters {
  const DataPipelinePipelineLaunchParameters({
    required this.jobName,
    this.parameters,
    this.transformNameMapping,
    this.update,
    this.environment,
  });

  final TfArg<String> jobName;

  final TfArg<Map<String, String>>? parameters;

  final TfArg<Map<String, String>>? transformNameMapping;

  final TfArg<bool>? update;

  final DataPipelinePipelineLaunchParametersEnvironment? environment;

  Map<String, Object?> encode() => {
    'job_name': jobName.toTfJson(),
    'parameters': ?parameters?.toTfJson(),
    'transform_name_mapping': ?transformNameMapping?.toTfJson(),
    'update': ?update?.toTfJson(),
    'environment': ?environment?.encode(),
  };
}

/// Typed helper for the `workload.dataflow_launch_template_request.launch_parameters.environment` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineLaunchParametersEnvironment {
  const DataPipelinePipelineLaunchParametersEnvironment({
    this.additionalExperiments,
    this.additionalUserLabels,
    this.bypassTempDirValidation,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.subnetwork,
    this.tempLocation,
    this.workerRegion,
    this.workerZone,
    this.zone,
  });

  final TfArg<List<String>>? additionalExperiments;

  final TfArg<Map<String, String>>? additionalUserLabels;

  final TfArg<bool>? bypassTempDirValidation;

  final TfArg<bool>? enableStreamingEngine;

  final TfArg<DataPipelinePipelineIpConfiguration>? ipConfiguration;

  final RefTo<GoogleKmsCryptoKey>? kmsKeyName;

  final TfArg<String>? machineType;

  final TfArg<num>? maxWorkers;

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<num>? numWorkers;

  final RefTo<GoogleServiceAccount>? serviceAccountEmail;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  final TfArg<String>? tempLocation;

  final TfArg<String>? workerRegion;

  final TfArg<String>? workerZone;

  final TfArg<String>? zone;

  Map<String, Object?> encode() => {
    'additional_experiments': ?additionalExperiments?.toTfJson(),
    'additional_user_labels': ?additionalUserLabels?.toTfJson(),
    'bypass_temp_dir_validation': ?bypassTempDirValidation?.toTfJson(),
    'enable_streaming_engine': ?enableStreamingEngine?.toTfJson(),
    'ip_configuration': ?ipConfiguration?.toTfJson(),
    'kms_key_name': ?kmsKeyName?.encodeAs('id').toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'max_workers': ?maxWorkers?.toTfJson(),
    'network': ?network?.encodeAs('name').toTfJson(),
    'num_workers': ?numWorkers?.toTfJson(),
    'service_account_email': ?serviceAccountEmail?.encodeAs('email').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('self_link').toTfJson(),
    'temp_location': ?tempLocation?.toTfJson(),
    'worker_region': ?workerRegion?.toTfJson(),
    'worker_zone': ?workerZone?.toTfJson(),
    'zone': ?zone?.toTfJson(),
  };
}

/// Factory wrapper for `google_data_pipeline_pipeline`.
///
/// The main pipeline entity and all the necessary metadata for launching and
/// managing linked jobs.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDataPipelinePipeline extends Resource {
  static const String tfType = 'google_data_pipeline_pipeline';

  GoogleDataPipelinePipeline({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? pipelineSources,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? schedulerServiceAccountEmail,
    required TfArg<DataPipelinePipelineState> state,
    required TfArg<DataPipelinePipelineType> type,
    DataPipelinePipelineScheduleInfo? scheduleInfo,
    DataPipelinePipelineWorkload? workload,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'name': name,
           'pipeline_sources': ?pipelineSources,
           'project': ?project,
           'region': ?region,
           'scheduler_service_account_email': ?schedulerServiceAccountEmail,
           'state': state,
           'type': type,
           if (scheduleInfo != null)
             'schedule_info': TfArg.literal(scheduleInfo.encode()),
           if (workload != null) 'workload': TfArg.literal(workload.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataPipelinePipelineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataPipelinePipeline>`.
  RefTo<GoogleDataPipelinePipeline> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `job_count` attribute.
  TfRef<num> get jobCount => TfRef.attribute<num>(this, 'job_count');

  /// Reference to `last_update_time` attribute.
  TfRef<String> get lastUpdateTime =>
      TfRef.attribute<String>(this, 'last_update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `pipeline_sources` attribute.
  TfRef<Map<String, String>> get pipelineSources =>
      TfRef.attribute<Map<String, String>>(this, 'pipeline_sources');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `scheduler_service_account_email` attribute.
  TfRef<String> get schedulerServiceAccountEmail =>
      TfRef.attribute<String>(this, 'scheduler_service_account_email');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
