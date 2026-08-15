// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (schedule != null) 'schedule': schedule!.toTfJson(),
    if (timeZone != null) 'time_zone': timeZone!.toTfJson(),
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

  final DataPipelinePipelineWorkloadDataflowFlexTemplateRequest?
  dataflowFlexTemplateRequest;

  final DataPipelinePipelineWorkloadDataflowLaunchTemplateRequest?
  dataflowLaunchTemplateRequest;

  Map<String, Object?> encode() => {
    if (dataflowFlexTemplateRequest != null)
      'dataflow_flex_template_request': dataflowFlexTemplateRequest!.encode(),
    if (dataflowLaunchTemplateRequest != null)
      'dataflow_launch_template_request': dataflowLaunchTemplateRequest!
          .encode(),
  };
}

/// Typed helper for the `workload.dataflow_flex_template_request` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineWorkloadDataflowFlexTemplateRequest {
  const DataPipelinePipelineWorkloadDataflowFlexTemplateRequest({
    required this.location,
    required this.projectId,
    this.validateOnly,
    required this.launchParameter,
  });

  final TfArg<String> location;

  final TfArg<String> projectId;

  final TfArg<bool>? validateOnly;

  final DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameter
  launchParameter;

  Map<String, Object?> encode() => {
    'location': location.toTfJson(),
    'project_id': projectId.toTfJson(),
    if (validateOnly != null) 'validate_only': validateOnly!.toTfJson(),
    'launch_parameter': launchParameter.encode(),
  };
}

/// Typed helper for the `workload.dataflow_flex_template_request.launch_parameter` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameter {
  const DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameter({
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

  final DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironment?
  environment;

  Map<String, Object?> encode() => {
    if (containerSpecGcsPath != null)
      'container_spec_gcs_path': containerSpecGcsPath!.toTfJson(),
    'job_name': jobName.toTfJson(),
    if (launchOptions != null) 'launch_options': launchOptions!.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (transformNameMappings != null)
      'transform_name_mappings': transformNameMappings!.toTfJson(),
    if (update != null) 'update': update!.toTfJson(),
    if (environment != null) 'environment': environment!.encode(),
  };
}

/// Typed helper for the `workload.dataflow_flex_template_request.launch_parameter.environment` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironment {
  const DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironment({
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

  final TfArg<List<Object?>>? additionalExperiments;

  final TfArg<Map<String, String>>? additionalUserLabels;

  final TfArg<bool>? enableStreamingEngine;

  final TfArg<
    DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironmentFlexrsGoal
  >?
  flexrsGoal;

  final TfArg<
    DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironmentIpConfiguration
  >?
  ipConfiguration;

  final TfArg<String>? kmsKeyName;

  final TfArg<String>? machineType;

  final TfArg<num>? maxWorkers;

  final TfArg<String>? network;

  final TfArg<num>? numWorkers;

  final TfArg<String>? serviceAccountEmail;

  final TfArg<String>? subnetwork;

  final TfArg<String>? tempLocation;

  final TfArg<String>? workerRegion;

  final TfArg<String>? workerZone;

  final TfArg<String>? zone;

  Map<String, Object?> encode() => {
    if (additionalExperiments != null)
      'additional_experiments': additionalExperiments!.toTfJson(),
    if (additionalUserLabels != null)
      'additional_user_labels': additionalUserLabels!.toTfJson(),
    if (enableStreamingEngine != null)
      'enable_streaming_engine': enableStreamingEngine!.toTfJson(),
    if (flexrsGoal != null) 'flexrs_goal': flexrsGoal!.toTfJson(),
    if (ipConfiguration != null)
      'ip_configuration': ipConfiguration!.toTfJson(),
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (maxWorkers != null) 'max_workers': maxWorkers!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (numWorkers != null) 'num_workers': numWorkers!.toTfJson(),
    if (serviceAccountEmail != null)
      'service_account_email': serviceAccountEmail!.toTfJson(),
    if (subnetwork != null) 'subnetwork': subnetwork!.toTfJson(),
    if (tempLocation != null) 'temp_location': tempLocation!.toTfJson(),
    if (workerRegion != null) 'worker_region': workerRegion!.toTfJson(),
    if (workerZone != null) 'worker_zone': workerZone!.toTfJson(),
    if (zone != null) 'zone': zone!.toTfJson(),
  };
}

/// `flexrs_goal` — derived from the provider schema description.
enum DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironmentFlexrsGoal
    implements TerraformEnum {
  flexrsUnspecified('FLEXRS_UNSPECIFIED'),
  flexrsSpeedOptimized('FLEXRS_SPEED_OPTIMIZED'),
  flexrsCostOptimized('FLEXRS_COST_OPTIMIZED');

  const DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironmentFlexrsGoal(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `ip_configuration` — derived from the provider schema description.
enum DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironmentIpConfiguration
    implements TerraformEnum {
  workerIpUnspecified('WORKER_IP_UNSPECIFIED'),
  workerIpPublic('WORKER_IP_PUBLIC'),
  workerIpPrivate('WORKER_IP_PRIVATE');

  const DataPipelinePipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironmentIpConfiguration(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `workload.dataflow_launch_template_request` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineWorkloadDataflowLaunchTemplateRequest {
  const DataPipelinePipelineWorkloadDataflowLaunchTemplateRequest({
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

  final DataPipelinePipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters?
  launchParameters;

  Map<String, Object?> encode() => {
    if (gcsPath != null) 'gcs_path': gcsPath!.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    'project_id': projectId.toTfJson(),
    if (validateOnly != null) 'validate_only': validateOnly!.toTfJson(),
    if (launchParameters != null)
      'launch_parameters': launchParameters!.encode(),
  };
}

/// Typed helper for the `workload.dataflow_launch_template_request.launch_parameters` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters {
  const DataPipelinePipelineWorkloadDataflowLaunchTemplateRequestLaunchParameters({
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

  final DataPipelinePipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironment?
  environment;

  Map<String, Object?> encode() => {
    'job_name': jobName.toTfJson(),
    if (parameters != null) 'parameters': parameters!.toTfJson(),
    if (transformNameMapping != null)
      'transform_name_mapping': transformNameMapping!.toTfJson(),
    if (update != null) 'update': update!.toTfJson(),
    if (environment != null) 'environment': environment!.encode(),
  };
}

/// Typed helper for the `workload.dataflow_launch_template_request.launch_parameters.environment` block of
/// `google_data_pipeline_pipeline` (derived from provider schema).
@immutable
final class DataPipelinePipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironment {
  const DataPipelinePipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironment({
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

  final TfArg<List<Object?>>? additionalExperiments;

  final TfArg<Map<String, String>>? additionalUserLabels;

  final TfArg<bool>? bypassTempDirValidation;

  final TfArg<bool>? enableStreamingEngine;

  final TfArg<
    DataPipelinePipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironmentIpConfiguration
  >?
  ipConfiguration;

  final TfArg<String>? kmsKeyName;

  final TfArg<String>? machineType;

  final TfArg<num>? maxWorkers;

  final TfArg<String>? network;

  final TfArg<num>? numWorkers;

  final TfArg<String>? serviceAccountEmail;

  final TfArg<String>? subnetwork;

  final TfArg<String>? tempLocation;

  final TfArg<String>? workerRegion;

  final TfArg<String>? workerZone;

  final TfArg<String>? zone;

  Map<String, Object?> encode() => {
    if (additionalExperiments != null)
      'additional_experiments': additionalExperiments!.toTfJson(),
    if (additionalUserLabels != null)
      'additional_user_labels': additionalUserLabels!.toTfJson(),
    if (bypassTempDirValidation != null)
      'bypass_temp_dir_validation': bypassTempDirValidation!.toTfJson(),
    if (enableStreamingEngine != null)
      'enable_streaming_engine': enableStreamingEngine!.toTfJson(),
    if (ipConfiguration != null)
      'ip_configuration': ipConfiguration!.toTfJson(),
    if (kmsKeyName != null) 'kms_key_name': kmsKeyName!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
    if (maxWorkers != null) 'max_workers': maxWorkers!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (numWorkers != null) 'num_workers': numWorkers!.toTfJson(),
    if (serviceAccountEmail != null)
      'service_account_email': serviceAccountEmail!.toTfJson(),
    if (subnetwork != null) 'subnetwork': subnetwork!.toTfJson(),
    if (tempLocation != null) 'temp_location': tempLocation!.toTfJson(),
    if (workerRegion != null) 'worker_region': workerRegion!.toTfJson(),
    if (workerZone != null) 'worker_zone': workerZone!.toTfJson(),
    if (zone != null) 'zone': zone!.toTfJson(),
  };
}

/// `ip_configuration` — derived from the provider schema description.
enum DataPipelinePipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironmentIpConfiguration
    implements TerraformEnum {
  workerIpUnspecified('WORKER_IP_UNSPECIFIED'),
  workerIpPublic('WORKER_IP_PUBLIC'),
  workerIpPrivate('WORKER_IP_PRIVATE');

  const DataPipelinePipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironmentIpConfiguration(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           'name': name,
           if (pipelineSources != null) 'pipeline_sources': pipelineSources,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (schedulerServiceAccountEmail != null)
             'scheduler_service_account_email': schedulerServiceAccountEmail,
           'state': state,
           'type': type,
           if (scheduleInfo != null)
             'schedule_info': TfArg.literal(scheduleInfo.encode()),
           if (workload != null) 'workload': TfArg.literal(workload.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataPipelinePipelineSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `job_count` attribute.
  TfRef<num> get jobCount => TfRef.attribute<num>(this, 'job_count');

  /// Reference to `last_update_time` attribute.
  TfRef<String> get lastUpdateTime =>
      TfRef.attribute<String>(this, 'last_update_time');
}
