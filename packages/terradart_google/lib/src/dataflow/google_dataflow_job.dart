// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_dataflow_job`.
const Set<String> _googleDataflowJobSensitive = <String>{};

/// Factory wrapper for `google_dataflow_job`.
///
/// Cloud Dataflow **job** — launches a batch or streaming pipeline from a
/// classic template (`template_gcs_path`).
///
/// **Cost / apply:** gcp-cost: Cloud Dataflow `57D6-8E6B-2DE0` vCPU Time
/// Batch Iowa (us-central1) SKU `A613-4169-2E08` **$0.056/h** per vCPU
/// (plus RAM/disk/GPU/Streaming Engine SKUs when used). billing-behavior:
/// creating the job starts workers that bill while the job runs; destroy /
/// cancel stops worker charges. Too expensive for apply-smoke even once —
/// debt-only on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `dataflow.googleapis.com` before apply. [tempGcsLocation] and
/// [templateGcsPath] must be GCS URLs the job can read/write.
final class GoogleDataflowJob extends Resource {
  static const String tfType = 'google_dataflow_job';

  GoogleDataflowJob(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> templateGcsPath,
    required TfArg<String> tempGcsLocation,
    TfArg<String>? region,
    TfArg<String>? zone,
    TfArg<num>? maxWorkers,
    TfArg<String>? machineType,
    RefTo<GoogleComputeNetwork>? network,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
    TfArg<String>? ipConfiguration,
    RefTo<GoogleServiceAccount>? serviceAccountEmail,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<bool>? enableStreamingEngine,
    TfArg<Map<String, String>>? parameters,
    TfArg<Map<String, String>>? transformNameMapping,
    TfArg<List<String>>? additionalExperiments,
    TfArg<String>? onDelete,
    TfArg<bool>? skipWaitOnJobTermination,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'template_gcs_path': templateGcsPath,
           'temp_gcs_location': tempGcsLocation,
           'region': ?region,
           'zone': ?zone,
           'max_workers': ?maxWorkers,
           'machine_type': ?machineType,
           'network': ?network?.encodeAs('name'),
           'subnetwork': ?subnetwork?.encodeAs('self_link'),
           'ip_configuration': ?ipConfiguration,
           'service_account_email': ?serviceAccountEmail?.encodeAs('email'),
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'enable_streaming_engine': ?enableStreamingEngine,
           'parameters': ?parameters,
           'transform_name_mapping': ?transformNameMapping,
           'additional_experiments': ?additionalExperiments,
           'on_delete': ?onDelete,
           'skip_wait_on_job_termination': ?skipWaitOnJobTermination,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataflowJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataflowJob>`.
  RefTo<GoogleDataflowJob> get ref => RefTo.of(this);

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

  /// Reference to `machine_type` attribute.
  TfRef<String> get machineType =>
      TfRef.attribute<String>(this, 'machine_type');

  /// Reference to `max_workers` attribute.
  TfRef<num> get maxWorkers => TfRef.attribute<num>(this, 'max_workers');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `on_delete` attribute.
  TfRef<String> get onDelete => TfRef.attribute<String>(this, 'on_delete');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_account_email` attribute.
  TfRef<String> get serviceAccountEmail =>
      TfRef.attribute<String>(this, 'service_account_email');

  /// Reference to `skip_wait_on_job_termination` attribute.
  TfRef<bool> get skipWaitOnJobTermination =>
      TfRef.attribute<bool>(this, 'skip_wait_on_job_termination');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `temp_gcs_location` attribute.
  TfRef<String> get tempGcsLocation =>
      TfRef.attribute<String>(this, 'temp_gcs_location');

  /// Reference to `template_gcs_path` attribute.
  TfRef<String> get templateGcsPath =>
      TfRef.attribute<String>(this, 'template_gcs_path');

  /// Reference to `transform_name_mapping` attribute.
  TfRef<Map<String, String>> get transformNameMapping =>
      TfRef.attribute<Map<String, String>>(this, 'transform_name_mapping');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
