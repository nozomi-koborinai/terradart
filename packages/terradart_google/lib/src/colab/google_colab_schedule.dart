// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

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

/// Exactly one of `create_notebook_execution_job_request`, `create_pipeline_job_request` on `google_colab_schedule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.createNotebookExecutionJobRequest(...)`.
sealed class ColabScheduleRequest {
  const ColabScheduleRequest();

  /// Sets `create_notebook_execution_job_request`.
  const factory ColabScheduleRequest.createNotebookExecutionJobRequest(
    ColabScheduleCreateNotebookExecutionJobRequest
    createNotebookExecutionJobRequest,
  ) = ColabScheduleCreateNotebookExecutionJobRequestChoice;

  /// Sets `create_pipeline_job_request`.
  const factory ColabScheduleRequest.createPipelineJobRequest(
    ColabScheduleCreatePipelineJobRequest createPipelineJobRequest,
  ) = ColabScheduleCreatePipelineJobRequestChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ColabScheduleRequest.createNotebookExecutionJobRequest] choice: sets `create_notebook_execution_job_request`.
final class ColabScheduleCreateNotebookExecutionJobRequestChoice
    extends ColabScheduleRequest {
  const ColabScheduleCreateNotebookExecutionJobRequestChoice(
    this.createNotebookExecutionJobRequest,
  );

  final ColabScheduleCreateNotebookExecutionJobRequest
  createNotebookExecutionJobRequest;

  @override
  String get blockKey => 'create_notebook_execution_job_request';

  @override
  Map<String, Object?> encode() => {
    'create_notebook_execution_job_request': createNotebookExecutionJobRequest
        .encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'create_notebook_execution_job_request': TfArg.literal(
      createNotebookExecutionJobRequest.encode(),
    ),
  };
}

/// The [ColabScheduleRequest.createPipelineJobRequest] choice: sets `create_pipeline_job_request`.
final class ColabScheduleCreatePipelineJobRequestChoice
    extends ColabScheduleRequest {
  const ColabScheduleCreatePipelineJobRequestChoice(
    this.createPipelineJobRequest,
  );

  final ColabScheduleCreatePipelineJobRequest createPipelineJobRequest;

  @override
  String get blockKey => 'create_pipeline_job_request';

  @override
  Map<String, Object?> encode() => {
    'create_pipeline_job_request': createPipelineJobRequest.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'create_pipeline_job_request': TfArg.literal(
      createPipelineJobRequest.encode(),
    ),
  };
}

/// Typed helper for the `create_notebook_execution_job_request` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleCreateNotebookExecutionJobRequest {
  const ColabScheduleCreateNotebookExecutionJobRequest({
    this.parent,
    required this.notebookExecutionJob,
  });

  final TfArg<String>? parent;

  final ColabScheduleNotebookExecutionJob notebookExecutionJob;

  Map<String, Object?> encode() => {
    'parent': ?parent?.toTfJson(),
    'notebook_execution_job': notebookExecutionJob.encode(),
  };
}

/// Typed helper for the `create_notebook_execution_job_request.notebook_execution_job` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleNotebookExecutionJob {
  const ColabScheduleNotebookExecutionJob({
    required this.displayName,
    this.executionTimeout,
    required this.identity,
    required this.gcsOutputUri,
    this.kernelName,
    this.labels,
    required this.compute,
    required this.source,
    this.encryptionSpec,
    this.workbenchRuntime,
  });

  final TfArg<String> displayName;

  final TfArg<String>? executionTimeout;

  final ColabScheduleIdentity identity;

  final TfArg<String> gcsOutputUri;

  final TfArg<String>? kernelName;

  final TfArg<Map<String, String>>? labels;

  final ColabScheduleCompute compute;

  final ColabScheduleSource source;

  final ColabScheduleEncryptionSpec? encryptionSpec;

  final ColabScheduleWorkbenchRuntime? workbenchRuntime;

  Map<String, Object?> encode() => {
    'display_name': displayName.toTfJson(),
    'execution_timeout': ?executionTimeout?.toTfJson(),
    ...identity.encode(),
    'gcs_output_uri': gcsOutputUri.toTfJson(),
    'kernel_name': ?kernelName?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    ...compute.encode(),
    ...source.encode(),
    'encryption_spec': ?encryptionSpec?.encode(),
    'workbench_runtime': ?workbenchRuntime?.encode(),
  };
}

/// Exactly one of `dataform_repository_source`, `gcs_notebook_source` on the `create_notebook_execution_job_request.notebook_execution_job` block of `google_colab_schedule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.dataformRepositorySource(...)`.
sealed class ColabScheduleSource {
  const ColabScheduleSource();

  /// Sets `dataform_repository_source`.
  const factory ColabScheduleSource.dataformRepositorySource(
    ColabScheduleDataformRepositorySource dataformRepositorySource,
  ) = ColabScheduleDataformRepositorySourceChoice;

  /// Sets `gcs_notebook_source`.
  const factory ColabScheduleSource.gcsNotebookSource(
    ColabScheduleGcsNotebookSource gcsNotebookSource,
  ) = ColabScheduleGcsNotebookSourceChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ColabScheduleSource.dataformRepositorySource] choice: sets `dataform_repository_source`.
final class ColabScheduleDataformRepositorySourceChoice
    extends ColabScheduleSource {
  const ColabScheduleDataformRepositorySourceChoice(
    this.dataformRepositorySource,
  );

  final ColabScheduleDataformRepositorySource dataformRepositorySource;

  @override
  String get blockKey => 'dataform_repository_source';

  @override
  Map<String, Object?> encode() => {
    'dataform_repository_source': dataformRepositorySource.encode(),
  };
}

/// The [ColabScheduleSource.gcsNotebookSource] choice: sets `gcs_notebook_source`.
final class ColabScheduleGcsNotebookSourceChoice extends ColabScheduleSource {
  const ColabScheduleGcsNotebookSourceChoice(this.gcsNotebookSource);

  final ColabScheduleGcsNotebookSource gcsNotebookSource;

  @override
  String get blockKey => 'gcs_notebook_source';

  @override
  Map<String, Object?> encode() => {
    'gcs_notebook_source': gcsNotebookSource.encode(),
  };
}

/// Exactly one of `notebook_runtime_template_resource_name`, `custom_environment_spec` on the `create_notebook_execution_job_request.notebook_execution_job` block of `google_colab_schedule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.notebookRuntimeTemplateResourceName(...)`.
sealed class ColabScheduleCompute {
  const ColabScheduleCompute();

  /// Sets `notebook_runtime_template_resource_name`.
  const factory ColabScheduleCompute.notebookRuntimeTemplateResourceName(
    TfArg<String> notebookRuntimeTemplateResourceName,
  ) = ColabScheduleComputeNotebookRuntimeTemplateResourceName;

  /// Sets `custom_environment_spec`.
  const factory ColabScheduleCompute.customEnvironmentSpec(
    ColabScheduleCustomEnvironmentSpec customEnvironmentSpec,
  ) = ColabScheduleComputeCustomEnvironmentSpec;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ColabScheduleCompute.notebookRuntimeTemplateResourceName] choice: sets `notebook_runtime_template_resource_name`.
final class ColabScheduleComputeNotebookRuntimeTemplateResourceName
    extends ColabScheduleCompute {
  const ColabScheduleComputeNotebookRuntimeTemplateResourceName(
    this.notebookRuntimeTemplateResourceName,
  );

  final TfArg<String> notebookRuntimeTemplateResourceName;

  @override
  String get blockKey => 'notebook_runtime_template_resource_name';

  @override
  Map<String, Object?> encode() => {
    'notebook_runtime_template_resource_name':
        notebookRuntimeTemplateResourceName.toTfJson(),
  };
}

/// The [ColabScheduleCompute.customEnvironmentSpec] choice: sets `custom_environment_spec`.
final class ColabScheduleComputeCustomEnvironmentSpec
    extends ColabScheduleCompute {
  const ColabScheduleComputeCustomEnvironmentSpec(this.customEnvironmentSpec);

  final ColabScheduleCustomEnvironmentSpec customEnvironmentSpec;

  @override
  String get blockKey => 'custom_environment_spec';

  @override
  Map<String, Object?> encode() => {
    'custom_environment_spec': customEnvironmentSpec.encode(),
  };
}

/// Exactly one of `execution_user`, `service_account` on the `create_notebook_execution_job_request.notebook_execution_job` block of `google_colab_schedule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.executionUser(...)`.
sealed class ColabScheduleIdentity {
  const ColabScheduleIdentity();

  /// Sets `execution_user`.
  const factory ColabScheduleIdentity.executionUser(
    TfArg<String> executionUser,
  ) = ColabScheduleIdentityExecutionUser;

  /// Sets `service_account`.
  const factory ColabScheduleIdentity.serviceAccount(
    RefTo<GoogleServiceAccount> serviceAccount,
  ) = ColabScheduleIdentityServiceAccount;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ColabScheduleIdentity.executionUser] choice: sets `execution_user`.
final class ColabScheduleIdentityExecutionUser extends ColabScheduleIdentity {
  const ColabScheduleIdentityExecutionUser(this.executionUser);

  final TfArg<String> executionUser;

  @override
  String get blockKey => 'execution_user';

  @override
  Map<String, Object?> encode() => {'execution_user': executionUser.toTfJson()};
}

/// The [ColabScheduleIdentity.serviceAccount] choice: sets `service_account`.
final class ColabScheduleIdentityServiceAccount extends ColabScheduleIdentity {
  const ColabScheduleIdentityServiceAccount(this.serviceAccount);

  final RefTo<GoogleServiceAccount> serviceAccount;

  @override
  String get blockKey => 'service_account';

  @override
  Map<String, Object?> encode() => {
    'service_account': serviceAccount.encodeAs('email').toTfJson(),
  };
}

/// Typed helper for the `create_notebook_execution_job_request.notebook_execution_job.custom_environment_spec` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleCustomEnvironmentSpec {
  const ColabScheduleCustomEnvironmentSpec({
    this.machineSpec,
    this.networkSpec,
    this.persistentDiskSpec,
  });

  final ColabScheduleMachineSpec? machineSpec;

  final ColabScheduleNetworkSpec? networkSpec;

  final ColabSchedulePersistentDiskSpec? persistentDiskSpec;

  Map<String, Object?> encode() => {
    'machine_spec': ?machineSpec?.encode(),
    'network_spec': ?networkSpec?.encode(),
    'persistent_disk_spec': ?persistentDiskSpec?.encode(),
  };
}

/// Typed helper for the `create_notebook_execution_job_request.notebook_execution_job.custom_environment_spec.machine_spec` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleMachineSpec {
  const ColabScheduleMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.gpuPartitionSize,
    this.machineType,
    this.tpuTopology,
    this.reservationAffinity,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  final TfArg<String>? gpuPartitionSize;

  final TfArg<String>? machineType;

  final TfArg<String>? tpuTopology;

  final ColabScheduleReservationAffinity? reservationAffinity;

  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'gpu_partition_size': ?gpuPartitionSize?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'tpu_topology': ?tpuTopology?.toTfJson(),
    'reservation_affinity': ?reservationAffinity?.encode(),
  };
}

/// Typed helper for the `create_notebook_execution_job_request.notebook_execution_job.custom_environment_spec.machine_spec.reservation_affinity` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleReservationAffinity {
  const ColabScheduleReservationAffinity({
    this.key,
    required this.reservationAffinityType,
    this.useReservationPool,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<String> reservationAffinityType;

  final TfArg<bool>? useReservationPool;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'reservation_affinity_type': reservationAffinityType.toTfJson(),
    'use_reservation_pool': ?useReservationPool?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `create_notebook_execution_job_request.notebook_execution_job.custom_environment_spec.network_spec` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleNetworkSpec {
  const ColabScheduleNetworkSpec({
    this.enableInternetAccess,
    this.network,
    this.subnetwork,
  });

  final TfArg<bool>? enableInternetAccess;

  final RefTo<GoogleComputeNetwork>? network;

  final RefTo<GoogleComputeSubnetwork>? subnetwork;

  Map<String, Object?> encode() => {
    'enable_internet_access': ?enableInternetAccess?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'subnetwork': ?subnetwork?.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `create_notebook_execution_job_request.notebook_execution_job.custom_environment_spec.persistent_disk_spec` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabSchedulePersistentDiskSpec {
  const ColabSchedulePersistentDiskSpec({this.diskSizeGb, this.diskType});

  final TfArg<String>? diskSizeGb;

  final TfArg<String>? diskType;

  Map<String, Object?> encode() => {
    'disk_size_gb': ?diskSizeGb?.toTfJson(),
    'disk_type': ?diskType?.toTfJson(),
  };
}

/// Typed helper for the `create_notebook_execution_job_request.notebook_execution_job.dataform_repository_source` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleDataformRepositorySource {
  const ColabScheduleDataformRepositorySource({
    this.commitSha,
    required this.dataformRepositoryResourceName,
  });

  final TfArg<String>? commitSha;

  final TfArg<String> dataformRepositoryResourceName;

  Map<String, Object?> encode() => {
    'commit_sha': ?commitSha?.toTfJson(),
    'dataform_repository_resource_name': dataformRepositoryResourceName
        .toTfJson(),
  };
}

/// Typed helper for the `create_notebook_execution_job_request.notebook_execution_job.encryption_spec` block of
/// `google_colab_schedule` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ColabScheduleEncryptionSpec {
  const ColabScheduleEncryptionSpec({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `create_notebook_execution_job_request.notebook_execution_job.gcs_notebook_source` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleGcsNotebookSource {
  const ColabScheduleGcsNotebookSource({this.generation, required this.uri});

  final TfArg<String>? generation;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'generation': ?generation?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `create_notebook_execution_job_request.notebook_execution_job.workbench_runtime` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleWorkbenchRuntime {
  const ColabScheduleWorkbenchRuntime();

  Map<String, Object?> encode() => {};
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

  final ColabSchedulePipelineJob pipelineJob;

  Map<String, Object?> encode() => {
    'parent': ?parent?.toTfJson(),
    'pipeline_job': pipelineJob.encode(),
  };
}

/// Typed helper for the `create_pipeline_job_request.pipeline_job` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabSchedulePipelineJob {
  const ColabSchedulePipelineJob({
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

  final RefTo<GoogleComputeNetwork>? network;

  final TfArg<String>? pipelineSpec;

  final TfArg<bool>? preflightValidations;

  final TfArg<List<String>>? reservedIpRanges;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  final TfArg<String>? templateUri;

  final ColabScheduleEncryptionSpec? encryptionSpec;

  final ColabSchedulePscInterfaceConfig? pscInterfaceConfig;

  final ColabScheduleRuntimeConfig? runtimeConfig;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'network': ?network?.encodeAs('id').toTfJson(),
    'pipeline_spec': ?pipelineSpec?.toTfJson(),
    'preflight_validations': ?preflightValidations?.toTfJson(),
    'reserved_ip_ranges': ?reservedIpRanges?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
    'template_uri': ?templateUri?.toTfJson(),
    'encryption_spec': ?encryptionSpec?.encode(),
    'psc_interface_config': ?pscInterfaceConfig?.encode(),
    'runtime_config': ?runtimeConfig?.encode(),
  };
}

/// Typed helper for the `create_pipeline_job_request.pipeline_job.psc_interface_config` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabSchedulePscInterfaceConfig {
  const ColabSchedulePscInterfaceConfig({
    this.networkAttachment,
    this.dnsPeeringConfigs,
  });

  final TfArg<String>? networkAttachment;

  final List<ColabScheduleDnsPeeringConfigs>? dnsPeeringConfigs;

  Map<String, Object?> encode() => {
    'network_attachment': ?networkAttachment?.toTfJson(),
    if (dnsPeeringConfigs != null)
      'dns_peering_configs': [for (final e in dnsPeeringConfigs!) e.encode()],
  };
}

/// Typed helper for the `create_pipeline_job_request.pipeline_job.psc_interface_config.dns_peering_configs` block of
/// `google_colab_schedule` (derived from provider schema).
@immutable
final class ColabScheduleDnsPeeringConfigs {
  const ColabScheduleDnsPeeringConfigs({
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
final class ColabScheduleRuntimeConfig {
  const ColabScheduleRuntimeConfig({
    this.failurePolicy,
    required this.gcsOutputDirectory,
    this.parameterValues,
  });

  final TfArg<String>? failurePolicy;

  final TfArg<String> gcsOutputDirectory;

  final TfArg<Map<String, String>>? parameterValues;

  Map<String, Object?> encode() => {
    'failure_policy': ?failurePolicy?.toTfJson(),
    'gcs_output_directory': gcsOutputDirectory.toTfJson(),
    'parameter_values': ?parameterValues?.toTfJson(),
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

  GoogleColabSchedule(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> displayName,
    required TfArg<String> cron,
    required TfArg<String> maxConcurrentRunCount,
    required ColabScheduleRequest request,
    TfArg<ColabScheduleDesiredState>? desiredState,
    TfArg<bool>? allowQueueing,
    TfArg<String>? maxRunCount,
    TfArg<String>? startTime,
    TfArg<String>? endTime,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<String>? maxConcurrentActiveRunCount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'display_name': displayName,
           'cron': cron,
           'max_concurrent_run_count': maxConcurrentRunCount,
           ...request.argMap,
           'desired_state': ?desiredState,
           'allow_queueing': ?allowQueueing,
           'max_run_count': ?maxRunCount,
           'start_time': ?startTime,
           'end_time': ?endTime,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'max_concurrent_active_run_count': ?maxConcurrentActiveRunCount,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleColabScheduleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleColabSchedule>`.
  RefTo<GoogleColabSchedule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `allow_queueing` attribute.
  TfRef<bool> get allowQueueing =>
      TfRef.attribute<bool>(this, 'allow_queueing');

  /// Reference to `cron` attribute.
  TfRef<String> get cron => TfRef.attribute<String>(this, 'cron');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `desired_state` attribute.
  TfRef<String> get desiredState =>
      TfRef.attribute<String>(this, 'desired_state');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_concurrent_active_run_count` attribute.
  TfRef<String> get maxConcurrentActiveRunCount =>
      TfRef.attribute<String>(this, 'max_concurrent_active_run_count');

  /// Reference to `max_concurrent_run_count` attribute.
  TfRef<String> get maxConcurrentRunCount =>
      TfRef.attribute<String>(this, 'max_concurrent_run_count');

  /// Reference to `max_run_count` attribute.
  TfRef<String> get maxRunCount =>
      TfRef.attribute<String>(this, 'max_run_count');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');
}
