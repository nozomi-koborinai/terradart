// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_colab_schedule`.
const Set<String> _googleColabScheduleSensitive = <String>{};

/// Terraform `desired_state` for [GoogleColabSchedule].
enum ColabScheduleDesiredState implements TerraformEnum {
  active('ACTIVE'),
  paused('PAUSED');

  const ColabScheduleDesiredState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `create_pipeline_job_request` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleCreatePipelineJobRequest {
  const ColabScheduleCreatePipelineJobRequest({
    this.parent,
    required this.pipelineJob,
  });

  final TfArg<String>? parent;

  final ColabScheduleCreatePipelineJobRequestPipelineJob pipelineJob;

  Map<String, Object?> encode() => {
    if (parent != null) 'parent': parent!.toTfJson(),
    'pipeline_job': pipelineJob.encode(),
  };
}

/// Typed helper for the `create_pipeline_job_request.pipeline_job` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleCreatePipelineJobRequestPipelineJob {
  const ColabScheduleCreatePipelineJobRequestPipelineJob({
    this.displayName,
    this.labels,
    this.network,
    this.pipelineSpec,
    this.preflightValidations,
    this.reservedIpRanges,
    this.serviceAccount,
    this.templateUri,
    this.encryptionSpec,
    this.pscInterfaceConfig,
    this.runtimeConfig,
  });

  final TfArg<String>? displayName;

  final TfArg<Map<String, String>>? labels;

  final TfArg<String>? network;

  final TfArg<String>? pipelineSpec;

  final TfArg<bool>? preflightValidations;

  final TfArg<List<Object?>>? reservedIpRanges;

  final TfArg<String>? serviceAccount;

  final TfArg<String>? templateUri;

  final ColabScheduleCreatePipelineJobRequestPipelineJobEncryptionSpec?
  encryptionSpec;

  final ColabScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig?
  pscInterfaceConfig;

  final ColabScheduleCreatePipelineJobRequestPipelineJobRuntimeConfig?
  runtimeConfig;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (network != null) 'network': network!.toTfJson(),
    if (pipelineSpec != null) 'pipeline_spec': pipelineSpec!.toTfJson(),
    if (preflightValidations != null)
      'preflight_validations': preflightValidations!.toTfJson(),
    if (reservedIpRanges != null)
      'reserved_ip_ranges': reservedIpRanges!.toTfJson(),
    if (serviceAccount != null) 'service_account': serviceAccount!.toTfJson(),
    if (templateUri != null) 'template_uri': templateUri!.toTfJson(),
    if (encryptionSpec != null) 'encryption_spec': encryptionSpec!.encode(),
    if (pscInterfaceConfig != null)
      'psc_interface_config': pscInterfaceConfig!.encode(),
    if (runtimeConfig != null) 'runtime_config': runtimeConfig!.encode(),
  };
}

/// Typed helper for the `create_pipeline_job_request.pipeline_job.encryption_spec` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleCreatePipelineJobRequestPipelineJobEncryptionSpec {
  const ColabScheduleCreatePipelineJobRequestPipelineJobEncryptionSpec({
    required this.kmsKeyName,
  });

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// Typed helper for the `create_pipeline_job_request.pipeline_job.psc_interface_config` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig {
  const ColabScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfig({
    this.networkAttachment,
    this.dnsPeeringConfigs,
  });

  final TfArg<String>? networkAttachment;

  final List<
    ColabScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfigs
  >?
  dnsPeeringConfigs;

  Map<String, Object?> encode() => {
    if (networkAttachment != null)
      'network_attachment': networkAttachment!.toTfJson(),
    if (dnsPeeringConfigs != null)
      'dns_peering_configs': [for (final e in dnsPeeringConfigs!) e.encode()],
  };
}

/// Typed helper for the `create_pipeline_job_request.pipeline_job.psc_interface_config.dns_peering_configs` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfigs {
  const ColabScheduleCreatePipelineJobRequestPipelineJobPscInterfaceConfigDnsPeeringConfigs({
    required this.domain,
    required this.targetNetwork,
    required this.targetProject,
  });

  final TfArg<String> domain;

  final TfArg<String> targetNetwork;

  final TfArg<String> targetProject;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'target_network': targetNetwork.toTfJson(),
    'target_project': targetProject.toTfJson(),
  };
}

/// Typed helper for the `create_pipeline_job_request.pipeline_job.runtime_config` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleCreatePipelineJobRequestPipelineJobRuntimeConfig {
  const ColabScheduleCreatePipelineJobRequestPipelineJobRuntimeConfig({
    this.failurePolicy,
    required this.gcsOutputDirectory,
    this.parameterValues,
  });

  final TfArg<String>? failurePolicy;

  final TfArg<String> gcsOutputDirectory;

  final TfArg<Map<String, String>>? parameterValues;

  Map<String, Object?> encode() => {
    if (failurePolicy != null) 'failure_policy': failurePolicy!.toTfJson(),
    'gcs_output_directory': gcsOutputDirectory.toTfJson(),
    if (parameterValues != null)
      'parameter_values': parameterValues!.toTfJson(),
  };
}

/// Factory wrapper for `google_colab_schedule`.
///
/// 'Colab Enterprise Notebook Execution Schedules.'
///
/// Colab Enterprise notebook execution schedule.
///
/// Prefer [desiredState] `PAUSED` in examples so apply does not start
/// Vertex Colab VMs. Enable `aiplatform.googleapis.com` before apply.
/// [createNotebookExecutionJobRequest] is a nested-block Map
/// (`notebook_execution_job` → GCS notebook source + template + output).
final class GoogleColabSchedule extends Resource {
  static const String tfType = 'google_colab_schedule';

  GoogleColabSchedule({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> displayName,
    required TfArg<String> cron,
    required TfArg<String> maxConcurrentRunCount,
    TfArg<Map<String, dynamic>>? createNotebookExecutionJobRequest,
    TfArg<ColabScheduleDesiredState>? desiredState,
    TfArg<bool>? allowQueueing,
    TfArg<String>? maxRunCount,
    TfArg<String>? startTime,
    TfArg<String>? endTime,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'display_name': displayName,
           'cron': cron,
           'max_concurrent_run_count': maxConcurrentRunCount,
           if (createNotebookExecutionJobRequest != null)
             'create_notebook_execution_job_request':
                 createNotebookExecutionJobRequest,
           if (desiredState != null) 'desired_state': desiredState,
           if (allowQueueing != null) 'allow_queueing': allowQueueing,
           if (maxRunCount != null) 'max_run_count': maxRunCount,
           if (startTime != null) 'start_time': startTime,
           if (endTime != null) 'end_time': endTime,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleColabScheduleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `catch_up` attribute.
  TfRef<bool> get catchUp => TfRef.attribute<bool>(this, 'catch_up');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `last_pause_time` attribute.
  TfRef<String> get lastPauseTime =>
      TfRef.attribute<String>(this, 'last_pause_time');

  /// Reference to `last_resume_time` attribute.
  TfRef<String> get lastResumeTime =>
      TfRef.attribute<String>(this, 'last_resume_time');

  /// Reference to `last_scheduled_run_response` attribute.
  TfRef<List<Map<String, Object?>>> get lastScheduledRunResponse =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'last_scheduled_run_response',
      );

  /// Reference to `next_run_time` attribute.
  TfRef<String> get nextRunTime =>
      TfRef.attribute<String>(this, 'next_run_time');

  /// Reference to `started_run_count` attribute.
  TfRef<String> get startedRunCount =>
      TfRef.attribute<String>(this, 'started_run_count');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
