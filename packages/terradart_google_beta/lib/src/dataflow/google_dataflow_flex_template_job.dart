// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/terradart_google.dart'
    show
        GoogleComputeNetwork,
        GoogleComputeSubnetwork,
        GoogleKmsCryptoKey,
        GoogleServiceAccount;

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
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? launcherMachineType,
    TfArg<String>? machineType,
    TfArg<num>? maxWorkers,
    required TfArg<String> name,
    RefTo<GoogleComputeNetwork>? network,
    TfArg<num>? numWorkers,
    TfArg<String>? onDelete,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? sdkContainerImage,
    RefTo<GoogleServiceAccount>? serviceAccountEmail,
    TfArg<bool>? skipWaitOnJobTermination,
    TfArg<String>? stagingLocation,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
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
           'additional_experiments': ?additionalExperiments,
           'additional_pipeline_options': ?additionalPipelineOptions,
           'autoscaling_algorithm': ?autoscalingAlgorithm,
           'container_spec_gcs_path': containerSpecGcsPath,
           'create_ignore_already_exists': ?createIgnoreAlreadyExists,
           'deletion_policy': ?deletionPolicy,
           'enable_streaming_engine': ?enableStreamingEngine,
           'ip_configuration': ?ipConfiguration,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'labels': ?labels,
           'launcher_machine_type': ?launcherMachineType,
           'machine_type': ?machineType,
           'max_workers': ?maxWorkers,
           'name': name,
           'network': ?network?.encodeAs('name'),
           'num_workers': ?numWorkers,
           'on_delete': ?onDelete,
           'parameters': ?parameters,
           'project': ?project,
           'region': ?region,
           'sdk_container_image': ?sdkContainerImage,
           'service_account_email': ?serviceAccountEmail?.encodeAs('email'),
           'skip_wait_on_job_termination': ?skipWaitOnJobTermination,
           'staging_location': ?stagingLocation,
           'subnetwork': ?subnetwork?.encodeAs('self_link'),
           'temp_location': ?tempLocation,
           'transform_name_mapping': ?transformNameMapping,
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
