// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_endpoint`.
const Set<String> _googleVertexAiEndpointSensitive = <String>{};

/// Typed helper for the `encryption_spec` block of
/// `google_vertex_ai_endpoint` (derived from provider schema).
@immutable
final class VertexAiEndpointEncryptionSpec {
  const VertexAiEndpointEncryptionSpec({required this.kmsKeyName});

  final TfArg<String> kmsKeyName;

  Map<String, Object?> encode() => {'kms_key_name': kmsKeyName.toTfJson()};
}

/// Typed helper for the `predict_request_response_logging_config` block of
/// `google_vertex_ai_endpoint` (derived from provider schema).
@immutable
final class VertexAiEndpointPredictRequestResponseLoggingConfig {
  const VertexAiEndpointPredictRequestResponseLoggingConfig({
    this.enabled,
    this.samplingRate,
    this.bigqueryDestination,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? samplingRate;

  final VertexAiEndpointPredictRequestResponseLoggingConfigBigqueryDestination?
  bigqueryDestination;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (samplingRate != null) 'sampling_rate': samplingRate!.toTfJson(),
    if (bigqueryDestination != null)
      'bigquery_destination': bigqueryDestination!.encode(),
  };
}

/// Typed helper for the `predict_request_response_logging_config.bigquery_destination` block of
/// `google_vertex_ai_endpoint` (derived from provider schema).
@immutable
final class VertexAiEndpointPredictRequestResponseLoggingConfigBigqueryDestination {
  const VertexAiEndpointPredictRequestResponseLoggingConfigBigqueryDestination({
    this.outputUri,
  });

  final TfArg<String>? outputUri;

  Map<String, Object?> encode() => {
    if (outputUri != null) 'output_uri': outputUri!.toTfJson(),
  };
}

/// Typed helper for the `private_service_connect_config` block of
/// `google_vertex_ai_endpoint` (derived from provider schema).
@immutable
final class VertexAiEndpointPrivateServiceConnectConfig {
  const VertexAiEndpointPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlist,
    this.pscAutomationConfigs,
  });

  final TfArg<bool> enablePrivateServiceConnect;

  final TfArg<List<Object?>>? projectAllowlist;

  final List<VertexAiEndpointPrivateServiceConnectConfigPscAutomationConfigs>?
  pscAutomationConfigs;

  Map<String, Object?> encode() => {
    'enable_private_service_connect': enablePrivateServiceConnect.toTfJson(),
    if (projectAllowlist != null)
      'project_allowlist': projectAllowlist!.toTfJson(),
    if (pscAutomationConfigs != null)
      'psc_automation_configs': [
        for (final e in pscAutomationConfigs!) e.encode(),
      ],
  };
}

/// Typed helper for the `private_service_connect_config.psc_automation_configs` block of
/// `google_vertex_ai_endpoint` (derived from provider schema).
@immutable
final class VertexAiEndpointPrivateServiceConnectConfigPscAutomationConfigs {
  const VertexAiEndpointPrivateServiceConnectConfigPscAutomationConfigs({
    required this.network,
    required this.projectId,
  });

  final TfArg<String> network;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'network': network.toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_endpoint`.
///
/// Models are deployed into it, and afterwards Endpoint is called to obtain
/// predictions and explanations.
///
/// Vertex AI **endpoint** — online prediction endpoint that can host
/// deployed models (`EndpointService.DeployModel`).
///
/// **Cost:** Cloud Billing Catalog service `C7E2-9256-1C43` has **no
/// endpoint-shell SKU** after MCP `list_skus` (keyword `Endpoint` → 0).
/// **Online/Batch Prediction** node-hours start only when a model is
/// deployed (Americas N1 Predefined Instance Core SKU `84D9-B3FA-0886`
/// **$0.036/h**, plus management-fee SKUs such as us-central1 N1 Core
/// `7267-F2A5-DA1E` **$0.0046957/h**). Creating the endpoint alone does
/// not start prediction charges.
///
/// Deferred without an apply-smoke quickstart — a real deploy would bill
/// prediction capacity. Enable `aiplatform.googleapis.com` via
/// [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiEndpoint(
///   localName: 'ep',
///   name: TfArg.literal('1234567890'),
///   displayName: TfArg.literal('terradart-ep'),
///   location: TfArg.literal('us-central1'),
/// );
/// ```
final class GoogleVertexAiEndpoint extends Resource {
  static const String tfType = 'google_vertex_ai_endpoint';

  GoogleVertexAiEndpoint({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> displayName,
    required TfArg<String> location,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<String>? network,
    TfArg<bool>? dedicatedEndpointEnabled,
    TfArg<String>? trafficSplit,
    VertexAiEndpointEncryptionSpec? encryptionSpec,
    VertexAiEndpointPrivateServiceConnectConfig? privateServiceConnectConfig,
    VertexAiEndpointPredictRequestResponseLoggingConfig?
    predictRequestResponseLoggingConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'display_name': displayName,
           'location': location,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (network != null) 'network': network,
           if (dedicatedEndpointEnabled != null)
             'dedicated_endpoint_enabled': dedicatedEndpointEnabled,
           if (trafficSplit != null) 'traffic_split': trafficSplit,
           if (encryptionSpec != null)
             'encryption_spec': TfArg.literal(encryptionSpec.encode()),
           if (privateServiceConnectConfig != null)
             'private_service_connect_config': TfArg.literal(
               privateServiceConnectConfig.encode(),
             ),
           if (predictRequestResponseLoggingConfig != null)
             'predict_request_response_logging_config': TfArg.literal(
               predictRequestResponseLoggingConfig.encode(),
             ),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `dedicated_endpoint_dns` attribute.
  TfRef<String> get dedicatedEndpointDns =>
      TfRef.attribute<String>(this, 'dedicated_endpoint_dns');

  /// Reference to `deployed_models` attribute.
  TfRef<List<Map<String, Object?>>> get deployedModels =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'deployed_models');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `model_deployment_monitoring_job` attribute.
  TfRef<String> get modelDeploymentMonitoringJob =>
      TfRef.attribute<String>(this, 'model_deployment_monitoring_job');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
