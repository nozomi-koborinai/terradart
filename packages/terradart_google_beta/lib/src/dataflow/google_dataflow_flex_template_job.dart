// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataflow_flex_template_job`.
const Set<String> _googleDataflowFlexTemplateJobSensitive = <String>{};

/// Factory wrapper for `google_dataflow_flex_template_job`.
final class GoogleDataflowFlexTemplateJob extends Resource {
  static const String tfType = 'google_dataflow_flex_template_job';

  GoogleDataflowFlexTemplateJob({
    required super.localName,
    TfArg<List<String>>? additionalExperiments,
    TfArg<List<String>>? additionalPipelineOptions,
    TfArg<String>? autoscalingAlgorithm,
    required TfArg<String> containerSpecGcsPath,
    TfArg<bool>? createIgnoreAlreadyExists,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? enableStreamingEngine,
    TfArg<String>? ipConfiguration,
    TfArg<String>? kmsKeyName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? launcherMachineType,
    TfArg<String>? machineType,
    TfArg<num>? maxWorkers,
    required TfArg<String> name,
    TfArg<String>? network,
    TfArg<num>? numWorkers,
    TfArg<String>? onDelete,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? sdkContainerImage,
    TfArg<String>? serviceAccountEmail,
    TfArg<bool>? skipWaitOnJobTermination,
    TfArg<String>? stagingLocation,
    TfArg<String>? subnetwork,
    TfArg<String>? tempLocation,
    TfArg<Map<String, String>>? transformNameMapping,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (additionalExperiments != null)
             'additional_experiments': additionalExperiments,
           if (additionalPipelineOptions != null)
             'additional_pipeline_options': additionalPipelineOptions,
           if (autoscalingAlgorithm != null)
             'autoscaling_algorithm': autoscalingAlgorithm,
           'container_spec_gcs_path': containerSpecGcsPath,
           if (createIgnoreAlreadyExists != null)
             'create_ignore_already_exists': createIgnoreAlreadyExists,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (enableStreamingEngine != null)
             'enable_streaming_engine': enableStreamingEngine,
           if (ipConfiguration != null) 'ip_configuration': ipConfiguration,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
           if (labels != null) 'labels': labels,
           if (launcherMachineType != null)
             'launcher_machine_type': launcherMachineType,
           if (machineType != null) 'machine_type': machineType,
           if (maxWorkers != null) 'max_workers': maxWorkers,
           'name': name,
           if (network != null) 'network': network,
           if (numWorkers != null) 'num_workers': numWorkers,
           if (onDelete != null) 'on_delete': onDelete,
           if (parameters != null) 'parameters': parameters,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (sdkContainerImage != null)
             'sdk_container_image': sdkContainerImage,
           if (serviceAccountEmail != null)
             'service_account_email': serviceAccountEmail,
           if (skipWaitOnJobTermination != null)
             'skip_wait_on_job_termination': skipWaitOnJobTermination,
           if (stagingLocation != null) 'staging_location': stagingLocation,
           if (subnetwork != null) 'subnetwork': subnetwork,
           if (tempLocation != null) 'temp_location': tempLocation,
           if (transformNameMapping != null)
             'transform_name_mapping': transformNameMapping,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataflowFlexTemplateJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataflowFlexTemplateJob>`.
  RefTo<GoogleDataflowFlexTemplateJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `job_id` attribute.
  TfRef<String> get jobId => TfRef.attribute<String>(this, 'job_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
