// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_vertex_ai_pipeline_job`.
const Set<String> _googleVertexAiPipelineJobSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_pipeline_job` (derived from provider schema).
@immutable
final class VertexAiPipelineJobEncryptionSpec {
  const VertexAiPipelineJobEncryptionSpec({required this.kmsKeyName});

  final RefTo<GoogleKmsCryptoKey> kmsKeyName;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_name': kmsKeyName.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `psc_interface_config` block of
/// `google_vertex_ai_pipeline_job` (derived from provider schema).
@immutable
final class VertexAiPipelineJobPscInterfaceConfig {
  const VertexAiPipelineJobPscInterfaceConfig({
    this.networkAttachment,
    this.dnsPeeringConfigs,
  });

  final TfArg<String>? networkAttachment;

  final List<VertexAiPipelineJobDnsPeeringConfigs>? dnsPeeringConfigs;

  @internal
  Map<String, Object?> encode() => {
    'network_attachment': ?networkAttachment?.toTfJson(),
    if (dnsPeeringConfigs != null)
      'dns_peering_configs': [for (final e in dnsPeeringConfigs!) e.encode()],
  };
}

/// Typed helper for the `psc_interface_config.dns_peering_configs` block of
/// `google_vertex_ai_pipeline_job` (derived from provider schema).
@immutable
final class VertexAiPipelineJobDnsPeeringConfigs {
  const VertexAiPipelineJobDnsPeeringConfigs({
    required this.domain,
    required this.targetNetwork,
    required this.targetProject,
  });

  final TfArg<String> domain;

  final TfArg<String> targetNetwork;

  final TfArg<String> targetProject;

  @internal
  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    'target_network': targetNetwork.toTfJson(),
    'target_project': targetProject.toTfJson(),
  };
}

/// Typed helper for the `runtime_config` block of
/// `google_vertex_ai_pipeline_job` (derived from provider schema).
@immutable
final class VertexAiPipelineJobRuntimeConfig {
  const VertexAiPipelineJobRuntimeConfig({
    this.failurePolicy,
    required this.gcsOutputDirectory,
    this.parameterValues,
    this.inputArtifacts,
  });

  final VertexAiPipelineJobFailurePolicy? failurePolicy;

  final TfArg<String> gcsOutputDirectory;

  final TfArg<Map<String, String>>? parameterValues;

  final List<VertexAiPipelineJobInputArtifacts>? inputArtifacts;

  @internal
  Map<String, Object?> encode() => {
    'failure_policy': ?failurePolicy?.toTfJson(),
    'gcs_output_directory': gcsOutputDirectory.toTfJson(),
    'parameter_values': ?parameterValues?.toTfJson(),
    if (inputArtifacts != null)
      'input_artifacts': [for (final e in inputArtifacts!) e.encode()],
  };
}

/// `failure_policy` — derived from the provider schema description.
extension type const VertexAiPipelineJobFailurePolicy._(TfArg<String> _)
    implements TfArg<String> {
  VertexAiPipelineJobFailurePolicy.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiPipelineJobFailurePolicy.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiPipelineJobFailurePolicy.arg(TfArg<String> arg) : this._(arg);

  static const pipelineFailurePolicyFailSlow =
      VertexAiPipelineJobFailurePolicy._(
        TfArgLiteral('PIPELINE_FAILURE_POLICY_FAIL_SLOW'),
      );
  static const pipelineFailurePolicyFailFast =
      VertexAiPipelineJobFailurePolicy._(
        TfArgLiteral('PIPELINE_FAILURE_POLICY_FAIL_FAST'),
      );

  static const List<VertexAiPipelineJobFailurePolicy> values = [
    pipelineFailurePolicyFailSlow,
    pipelineFailurePolicyFailFast,
  ];
}

/// Typed helper for the `runtime_config.input_artifacts` block of
/// `google_vertex_ai_pipeline_job` (derived from provider schema).
@immutable
final class VertexAiPipelineJobInputArtifacts {
  const VertexAiPipelineJobInputArtifacts({
    required this.artifactId,
    required this.artifactKey,
  });

  final TfArg<String> artifactId;

  final TfArg<String> artifactKey;

  @internal
  Map<String, Object?> encode() => {
    'artifact_id': artifactId.toTfJson(),
    'artifact_key': artifactKey.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_pipeline_job`.
///
/// An instance of a machine learning PipelineJob. A PipelineJob runs a pipeline
/// created using Kubeflow Pipelines or Vertex AI Pipelines.
final class GoogleVertexAiPipelineJob extends Resource {
  static const String tfType = 'google_vertex_ai_pipeline_job';

  GoogleVertexAiPipelineJob(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    RefTo<GoogleComputeNetwork>? network,
    TfArg<String>? pipelineJobId,
    TfArg<String>? pipelineSpec,
    TfArg<bool>? preflightValidations,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<List<String>>? reservedIpRanges,
    RefTo<GoogleServiceAccount>? serviceAccount,
    TfArg<String>? templateUri,
    VertexAiPipelineJobEncryptionSpec? encryptionSpec,
    VertexAiPipelineJobPscInterfaceConfig? pscInterfaceConfig,
    VertexAiPipelineJobRuntimeConfig? runtimeConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'labels': ?labels,
           'network': ?network?.encodeAs('id'),
           'pipeline_job_id': ?pipelineJobId,
           'pipeline_spec': ?pipelineSpec,
           'preflight_validations': ?preflightValidations,
           'project': ?project,
           'region': ?region,
           'reserved_ip_ranges': ?reservedIpRanges,
           'service_account': ?serviceAccount?.encodeAs('email'),
           'template_uri': ?templateUri,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (pscInterfaceConfig != null)
             'psc_interface_config': TfArg.literal(pscInterfaceConfig.encode()),
           if (runtimeConfig != null)
             'runtime_config': TfArg.literal(runtimeConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiPipelineJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiPipelineJob>`.
  RefTo<GoogleVertexAiPipelineJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `end_time` attribute.
  TfRef<String> get endTime => TfRef.attribute<String>(this, 'end_time');

  /// Reference to `error` attribute.
  TfRef<List<Map<String, Object?>>> get error =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'error');

  /// Reference to `job_detail` attribute.
  TfRef<List<Map<String, Object?>>> get jobDetail =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'job_detail');

  /// Reference to `schedule_name` attribute.
  TfRef<String> get scheduleName =>
      TfRef.attribute<String>(this, 'schedule_name');

  /// Reference to `start_time` attribute.
  TfRef<String> get startTime => TfRef.attribute<String>(this, 'start_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `template_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get templateMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'template_metadata');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `pipeline_job_id` attribute.
  TfRef<String> get pipelineJobId =>
      TfRef.attribute<String>(this, 'pipeline_job_id');

  /// Reference to `pipeline_spec` attribute.
  TfRef<String> get pipelineSpec =>
      TfRef.attribute<String>(this, 'pipeline_spec');

  /// Reference to `preflight_validations` attribute.
  TfRef<bool> get preflightValidations =>
      TfRef.attribute<bool>(this, 'preflight_validations');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `reserved_ip_ranges` attribute.
  TfRef<List<String>> get reservedIpRanges =>
      TfRef.attribute<List<String>>(this, 'reserved_ip_ranges');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `template_uri` attribute.
  TfRef<String> get templateUri =>
      TfRef.attribute<String>(this, 'template_uri');
}
