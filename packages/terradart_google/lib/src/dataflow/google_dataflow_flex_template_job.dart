// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_dataflow_flex_template_job`.
const Set<String> _googleDataflowFlexTemplateJobSensitive = <String>{};

/// Dataflow Flex Template Job Autoscaling enum for `autoscaling_algorithm`.
extension type const DataflowFlexTemplateJobAutoscalingAlgorithm._(
  TfArg<String> _
)
    implements TfArg<String> {
  DataflowFlexTemplateJobAutoscalingAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  DataflowFlexTemplateJobAutoscalingAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const DataflowFlexTemplateJobAutoscalingAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const autoscalingAlgorithmUnknown =
      DataflowFlexTemplateJobAutoscalingAlgorithm._(
        TfArgLiteral('AUTOSCALING_ALGORITHM_UNKNOWN'),
      );
  static const autoscalingAlgorithmNone =
      DataflowFlexTemplateJobAutoscalingAlgorithm._(
        TfArgLiteral('AUTOSCALING_ALGORITHM_NONE'),
      );
  static const autoscalingAlgorithmBasic =
      DataflowFlexTemplateJobAutoscalingAlgorithm._(
        TfArgLiteral('AUTOSCALING_ALGORITHM_BASIC'),
      );

  static const List<DataflowFlexTemplateJobAutoscalingAlgorithm> values = [
    autoscalingAlgorithmUnknown,
    autoscalingAlgorithmNone,
    autoscalingAlgorithmBasic,
  ];
}

/// Dataflow Flex Template Job Ip enum for `ip_configuration`.
extension type const DataflowFlexTemplateJobIpConfiguration._(TfArg<String> _)
    implements TfArg<String> {
  DataflowFlexTemplateJobIpConfiguration.variable(String name)
    : this._(TfArg.variable(name));
  DataflowFlexTemplateJobIpConfiguration.expression(String template)
    : this._(TfArg.expression(template));
  const DataflowFlexTemplateJobIpConfiguration.arg(TfArg<String> arg)
    : this._(arg);

  static const workerIpPublic = DataflowFlexTemplateJobIpConfiguration._(
    TfArgLiteral('WORKER_IP_PUBLIC'),
  );
  static const workerIpPrivate = DataflowFlexTemplateJobIpConfiguration._(
    TfArgLiteral('WORKER_IP_PRIVATE'),
  );

  static const List<DataflowFlexTemplateJobIpConfiguration> values = [
    workerIpPublic,
    workerIpPrivate,
  ];
}

/// Factory wrapper for `google_dataflow_flex_template_job`.
final class GoogleDataflowFlexTemplateJob extends Resource {
  static const String tfType = 'google_dataflow_flex_template_job';

  GoogleDataflowFlexTemplateJob(
    super.localName, {
    TfArg<List<String>>? additionalExperiments,
    TfArg<List<String>>? additionalPipelineOptions,
    DataflowFlexTemplateJobAutoscalingAlgorithm? autoscalingAlgorithm,
    required TfArg<String> containerSpecGcsPath,
    TfArg<bool>? createIgnoreAlreadyExists,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? enableStreamingEngine,
    DataflowFlexTemplateJobIpConfiguration? ipConfiguration,
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `additional_experiments` attribute.
  TfRef<List<String>> get additionalExperiments =>
      TfRef.attribute<List<String>>(this, 'additional_experiments');

  /// Reference to `additional_pipeline_options` attribute.
  TfRef<List<String>> get additionalPipelineOptions =>
      TfRef.attribute<List<String>>(this, 'additional_pipeline_options');

  /// Reference to `autoscaling_algorithm` attribute.
  TfRef<String> get autoscalingAlgorithm =>
      TfRef.attribute<String>(this, 'autoscaling_algorithm');

  /// Reference to `container_spec_gcs_path` attribute.
  TfRef<String> get containerSpecGcsPath =>
      TfRef.attribute<String>(this, 'container_spec_gcs_path');

  /// Reference to `create_ignore_already_exists` attribute.
  TfRef<bool> get createIgnoreAlreadyExists =>
      TfRef.attribute<bool>(this, 'create_ignore_already_exists');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `enable_streaming_engine` attribute.
  TfRef<bool> get enableStreamingEngine =>
      TfRef.attribute<bool>(this, 'enable_streaming_engine');

  /// Reference to `ip_configuration` attribute.
  TfRef<String> get ipConfiguration =>
      TfRef.attribute<String>(this, 'ip_configuration');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `launcher_machine_type` attribute.
  TfRef<String> get launcherMachineType =>
      TfRef.attribute<String>(this, 'launcher_machine_type');

  /// Reference to `machine_type` attribute.
  TfRef<String> get machineType =>
      TfRef.attribute<String>(this, 'machine_type');

  /// Reference to `max_workers` attribute.
  TfRef<num> get maxWorkers => TfRef.attribute<num>(this, 'max_workers');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `num_workers` attribute.
  TfRef<num> get numWorkers => TfRef.attribute<num>(this, 'num_workers');

  /// Reference to `on_delete` attribute.
  TfRef<String> get onDelete => TfRef.attribute<String>(this, 'on_delete');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sdk_container_image` attribute.
  TfRef<String> get sdkContainerImage =>
      TfRef.attribute<String>(this, 'sdk_container_image');

  /// Reference to `service_account_email` attribute.
  TfRef<String> get serviceAccountEmail =>
      TfRef.attribute<String>(this, 'service_account_email');

  /// Reference to `skip_wait_on_job_termination` attribute.
  TfRef<bool> get skipWaitOnJobTermination =>
      TfRef.attribute<bool>(this, 'skip_wait_on_job_termination');

  /// Reference to `staging_location` attribute.
  TfRef<String> get stagingLocation =>
      TfRef.attribute<String>(this, 'staging_location');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `temp_location` attribute.
  TfRef<String> get tempLocation =>
      TfRef.attribute<String>(this, 'temp_location');

  /// Reference to `transform_name_mapping` attribute.
  TfRef<Map<String, String>> get transformNameMapping =>
      TfRef.attribute<Map<String, String>>(this, 'transform_name_mapping');
}
