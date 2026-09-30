// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_vertex_ai_endpoint_with_model_garden_deployment`.
const Set<String> _googleVertexAiEndpointWithModelGardenDeploymentSensitive =
    <String>{};

// ===========================================================================
// VertexAiEndpointWithModelGardenDeploymentModel — sealed (Publisher | HF)
// ===========================================================================

/// Model identity for [GoogleVertexAiEndpointWithModelGardenDeployment].
/// Sealed so the MM `exactly_one_of` (`publisher_model_name` /
/// `hugging_face_model_id`) is exhaustive at the type level.
sealed class VertexAiEndpointWithModelGardenDeploymentModel {
  const VertexAiEndpointWithModelGardenDeploymentModel();

  /// Model Garden publisher model path (`publishers/{publisher}/models/{model}@{version}`).
  const factory VertexAiEndpointWithModelGardenDeploymentModel.publisherModel({
    required TfArg<String> publisherModelName,
  }) = VertexAiEndpointWithModelGardenDeploymentPublisherModel;

  /// Hugging Face model id (e.g.
  const factory VertexAiEndpointWithModelGardenDeploymentModel.huggingFaceModel({
    required TfArg<String> huggingFaceModelId,
  }) = VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel;

  /// Terraform attribute key (`publisher_model_name` or
  /// `hugging_face_model_id`).
  String get blockKey;

  /// Scalar value written under [blockKey].
  TfArg<String> get value;

  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// Model Garden publisher model path
/// (`publishers/{publisher}/models/{model}@{version}`).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentPublisherModel
    extends VertexAiEndpointWithModelGardenDeploymentModel {
  const VertexAiEndpointWithModelGardenDeploymentPublisherModel({
    required this.publisherModelName,
  });

  final TfArg<String> publisherModelName;

  @override
  String get blockKey => 'publisher_model_name';

  @override
  TfArg<String> get value => publisherModelName;
}

/// Hugging Face model id (e.g. `google/gemma-2-2b-it`).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel
    extends VertexAiEndpointWithModelGardenDeploymentModel {
  const VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel({
    required this.huggingFaceModelId,
  });

  final TfArg<String> huggingFaceModelId;

  @override
  String get blockKey => 'hugging_face_model_id';

  @override
  TfArg<String> get value => huggingFaceModelId;
}

/// Typed helper for the `deploy_config` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentDeployConfig {
  const VertexAiEndpointWithModelGardenDeploymentDeployConfig({
    this.fastTryoutEnabled,
    this.systemLabels,
    this.dedicatedResources,
  });

  final TfArg<bool>? fastTryoutEnabled;

  final TfArg<Map<String, String>>? systemLabels;

  final VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources?
  dedicatedResources;

  Map<String, Object?> encode() => {
    'fast_tryout_enabled': ?fastTryoutEnabled?.toTfJson(),
    'system_labels': ?systemLabels?.toTfJson(),
    'dedicated_resources': ?dedicatedResources?.encode(),
  };
}

/// Typed helper for the `deploy_config.dedicated_resources` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources {
  const VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources({
    this.maxReplicaCount,
    required this.minReplicaCount,
    this.requiredReplicaCount,
    this.spot,
    this.autoscalingMetricSpecs,
    required this.machineSpec,
  });

  final TfArg<num>? maxReplicaCount;

  final TfArg<num> minReplicaCount;

  final TfArg<num>? requiredReplicaCount;

  final TfArg<bool>? spot;

  final List<
    VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpecs
  >?
  autoscalingMetricSpecs;

  final VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec
  machineSpec;

  Map<String, Object?> encode() => {
    'max_replica_count': ?maxReplicaCount?.toTfJson(),
    'min_replica_count': minReplicaCount.toTfJson(),
    'required_replica_count': ?requiredReplicaCount?.toTfJson(),
    'spot': ?spot?.toTfJson(),
    if (autoscalingMetricSpecs != null)
      'autoscaling_metric_specs': [
        for (final e in autoscalingMetricSpecs!) e.encode(),
      ],
    'machine_spec': machineSpec.encode(),
  };
}

/// Typed helper for the `deploy_config.dedicated_resources.autoscaling_metric_specs` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpecs {
  const VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpecs({
    required this.metricName,
    this.target,
  });

  final TfArg<String> metricName;

  final TfArg<num>? target;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'target': ?target?.toTfJson(),
  };
}

/// Typed helper for the `deploy_config.dedicated_resources.machine_spec` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec {
  const VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
    this.multihostGpuNodeCount,
    this.tpuTopology,
    this.reservationAffinity,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  final TfArg<String>? machineType;

  final TfArg<num>? multihostGpuNodeCount;

  final TfArg<String>? tpuTopology;

  final VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity?
  reservationAffinity;

  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'multihost_gpu_node_count': ?multihostGpuNodeCount?.toTfJson(),
    'tpu_topology': ?tpuTopology?.toTfJson(),
    'reservation_affinity': ?reservationAffinity?.encode(),
  };
}

/// Typed helper for the `deploy_config.dedicated_resources.machine_spec.reservation_affinity` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity {
  const VertexAiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity({
    this.key,
    required this.reservationAffinityType,
    this.values,
  });

  final TfArg<String>? key;

  final TfArg<String> reservationAffinityType;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'reservation_affinity_type': reservationAffinityType.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `endpoint_config` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentEndpointConfig {
  const VertexAiEndpointWithModelGardenDeploymentEndpointConfig({
    this.dedicatedEndpointEnabled,
    this.endpointDisplayName,
    this.privateServiceConnectConfig,
  });

  final TfArg<bool>? dedicatedEndpointEnabled;

  final TfArg<String>? endpointDisplayName;

  final VertexAiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig?
  privateServiceConnectConfig;

  Map<String, Object?> encode() => {
    'dedicated_endpoint_enabled': ?dedicatedEndpointEnabled?.toTfJson(),
    'endpoint_display_name': ?endpointDisplayName?.toTfJson(),
    'private_service_connect_config': ?privateServiceConnectConfig?.encode(),
  };
}

/// Typed helper for the `endpoint_config.private_service_connect_config` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig {
  const VertexAiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlist,
    this.pscAutomationConfigs,
  });

  final TfArg<bool> enablePrivateServiceConnect;

  final TfArg<List<String>>? projectAllowlist;

  final VertexAiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs?
  pscAutomationConfigs;

  Map<String, Object?> encode() => {
    'enable_private_service_connect': enablePrivateServiceConnect.toTfJson(),
    'project_allowlist': ?projectAllowlist?.toTfJson(),
    'psc_automation_configs': ?pscAutomationConfigs?.encode(),
  };
}

/// Typed helper for the `endpoint_config.private_service_connect_config.psc_automation_configs` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs {
  const VertexAiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs({
    required this.network,
    required this.projectId,
  });

  final RefTo<GoogleComputeNetwork> network;

  final TfArg<String> projectId;

  Map<String, Object?> encode() => {
    'network': network.encodeAs('id').toTfJson(),
    'project_id': projectId.toTfJson(),
  };
}

/// Typed helper for the `model_config` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfig {
  const VertexAiEndpointWithModelGardenDeploymentModelConfig({
    this.acceptEula,
    this.huggingFaceAccessToken,
    this.huggingFaceCacheEnabled,
    this.modelDisplayName,
    this.containerSpec,
  });

  final TfArg<bool>? acceptEula;

  final TfArg<String>? huggingFaceAccessToken;

  final TfArg<bool>? huggingFaceCacheEnabled;

  final TfArg<String>? modelDisplayName;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpec?
  containerSpec;

  Map<String, Object?> encode() => {
    'accept_eula': ?acceptEula?.toTfJson(),
    'hugging_face_access_token': ?huggingFaceAccessToken?.toTfJson(),
    'hugging_face_cache_enabled': ?huggingFaceCacheEnabled?.toTfJson(),
    'model_display_name': ?modelDisplayName?.toTfJson(),
    'container_spec': ?containerSpec?.encode(),
  };
}

/// Typed helper for the `model_config.container_spec` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpec {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpec({
    this.args,
    this.command,
    this.deploymentTimeout,
    this.healthRoute,
    required this.imageUri,
    this.predictRoute,
    this.sharedMemorySizeMb,
    this.env,
    this.grpcPorts,
    this.healthProbe,
    this.livenessProbe,
    this.ports,
    this.startupProbe,
  });

  final TfArg<List<String>>? args;

  final TfArg<List<String>>? command;

  final TfArg<String>? deploymentTimeout;

  final TfArg<String>? healthRoute;

  final TfArg<String> imageUri;

  final TfArg<String>? predictRoute;

  final TfArg<String>? sharedMemorySizeMb;

  final List<
    VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecEnv
  >?
  env;

  final List<
    VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPorts
  >?
  grpcPorts;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe?
  healthProbe;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe?
  livenessProbe;

  final List<
    VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecPorts
  >?
  ports;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe?
  startupProbe;

  Map<String, Object?> encode() => {
    'args': ?args?.toTfJson(),
    'command': ?command?.toTfJson(),
    'deployment_timeout': ?deploymentTimeout?.toTfJson(),
    'health_route': ?healthRoute?.toTfJson(),
    'image_uri': imageUri.toTfJson(),
    'predict_route': ?predictRoute?.toTfJson(),
    'shared_memory_size_mb': ?sharedMemorySizeMb?.toTfJson(),
    if (env != null) 'env': [for (final e in env!) e.encode()],
    if (grpcPorts != null)
      'grpc_ports': [for (final e in grpcPorts!) e.encode()],
    'health_probe': ?healthProbe?.encode(),
    'liveness_probe': ?livenessProbe?.encode(),
    if (ports != null) 'ports': [for (final e in ports!) e.encode()],
    'startup_probe': ?startupProbe?.encode(),
  };
}

/// Typed helper for the `model_config.container_spec.env` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecEnv {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecEnv({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.grpc_ports` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPorts {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPorts({
    this.containerPort,
  });

  final TfArg<num>? containerPort;

  Map<String, Object?> encode() => {
    'container_port': ?containerPort?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.health_probe` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
    this.exec,
    this.grpc,
    this.httpGet,
    this.tcpSocket,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? successThreshold;

  final TfArg<num>? timeoutSeconds;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeExec?
  exec;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeGrpc?
  grpc;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet?
  httpGet;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket?
  tcpSocket;

  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'success_threshold': ?successThreshold?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'exec': ?exec?.encode(),
    'grpc': ?grpc?.encode(),
    'http_get': ?httpGet?.encode(),
    'tcp_socket': ?tcpSocket?.encode(),
  };
}

/// Typed helper for the `model_config.container_spec.health_probe.exec` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeExec {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeExec({
    this.command,
  });

  final TfArg<List<String>>? command;

  Map<String, Object?> encode() => {'command': ?command?.toTfJson()};
}

/// Typed helper for the `model_config.container_spec.health_probe.grpc` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeGrpc {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeGrpc({
    this.port,
    this.service,
  });

  final TfArg<num>? port;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.health_probe.http_get` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGet({
    this.host,
    this.path,
    this.port,
    this.scheme,
    this.httpHeaders,
  });

  final TfArg<String>? host;

  final TfArg<String>? path;

  final TfArg<num>? port;

  final TfArg<String>? scheme;

  final List<
    VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeaders
  >?
  httpHeaders;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'scheme': ?scheme?.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// Typed helper for the `model_config.container_spec.health_probe.http_get.http_headers` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeaders {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeaders({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.health_probe.tcp_socket` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket({
    this.host,
    this.port,
  });

  final TfArg<String>? host;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.liveness_probe` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
    this.exec,
    this.grpc,
    this.httpGet,
    this.tcpSocket,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? successThreshold;

  final TfArg<num>? timeoutSeconds;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeExec?
  exec;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc?
  grpc;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet?
  httpGet;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket?
  tcpSocket;

  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'success_threshold': ?successThreshold?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'exec': ?exec?.encode(),
    'grpc': ?grpc?.encode(),
    'http_get': ?httpGet?.encode(),
    'tcp_socket': ?tcpSocket?.encode(),
  };
}

/// Typed helper for the `model_config.container_spec.liveness_probe.exec` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeExec {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeExec({
    this.command,
  });

  final TfArg<List<String>>? command;

  Map<String, Object?> encode() => {'command': ?command?.toTfJson()};
}

/// Typed helper for the `model_config.container_spec.liveness_probe.grpc` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeGrpc({
    this.port,
    this.service,
  });

  final TfArg<num>? port;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.liveness_probe.http_get` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGet({
    this.host,
    this.path,
    this.port,
    this.scheme,
    this.httpHeaders,
  });

  final TfArg<String>? host;

  final TfArg<String>? path;

  final TfArg<num>? port;

  final TfArg<String>? scheme;

  final List<
    VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeaders
  >?
  httpHeaders;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'scheme': ?scheme?.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// Typed helper for the `model_config.container_spec.liveness_probe.http_get.http_headers` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeaders {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeaders({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.liveness_probe.tcp_socket` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket({
    this.host,
    this.port,
  });

  final TfArg<String>? host;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.ports` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecPorts {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecPorts({
    this.containerPort,
  });

  final TfArg<num>? containerPort;

  Map<String, Object?> encode() => {
    'container_port': ?containerPort?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.startup_probe` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe({
    this.failureThreshold,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
    this.exec,
    this.grpc,
    this.httpGet,
    this.tcpSocket,
  });

  final TfArg<num>? failureThreshold;

  final TfArg<num>? initialDelaySeconds;

  final TfArg<num>? periodSeconds;

  final TfArg<num>? successThreshold;

  final TfArg<num>? timeoutSeconds;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec?
  exec;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc?
  grpc;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGet?
  httpGet;

  final VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket?
  tcpSocket;

  Map<String, Object?> encode() => {
    'failure_threshold': ?failureThreshold?.toTfJson(),
    'initial_delay_seconds': ?initialDelaySeconds?.toTfJson(),
    'period_seconds': ?periodSeconds?.toTfJson(),
    'success_threshold': ?successThreshold?.toTfJson(),
    'timeout_seconds': ?timeoutSeconds?.toTfJson(),
    'exec': ?exec?.encode(),
    'grpc': ?grpc?.encode(),
    'http_get': ?httpGet?.encode(),
    'tcp_socket': ?tcpSocket?.encode(),
  };
}

/// Typed helper for the `model_config.container_spec.startup_probe.exec` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeExec({
    this.command,
  });

  final TfArg<List<String>>? command;

  Map<String, Object?> encode() => {'command': ?command?.toTfJson()};
}

/// Typed helper for the `model_config.container_spec.startup_probe.grpc` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc({
    this.port,
    this.service,
  });

  final TfArg<num>? port;

  final TfArg<String>? service;

  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.startup_probe.http_get` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGet {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGet({
    this.host,
    this.path,
    this.port,
    this.scheme,
    this.httpHeaders,
  });

  final TfArg<String>? host;

  final TfArg<String>? path;

  final TfArg<num>? port;

  final TfArg<String>? scheme;

  final List<
    VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGetHttpHeaders
  >?
  httpHeaders;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'scheme': ?scheme?.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// Typed helper for the `model_config.container_spec.startup_probe.http_get.http_headers` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGetHttpHeaders {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeHttpGetHttpHeaders({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.startup_probe.tcp_socket` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket {
  const VertexAiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeTcpSocket({
    this.host,
    this.port,
  });

  final TfArg<String>? host;

  final TfArg<num>? port;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Factory wrapper for `google_vertex_ai_endpoint_with_model_garden_deployment`.
///
/// Create an Endpoint and deploy a Model Garden model to it.
///
/// Vertex AI **Endpoint with Model Garden deployment** — one-shot deploy of
/// a Model Garden or Hugging Face model onto a prediction endpoint.
///
/// Choose exactly one [VertexAiEndpointWithModelGardenDeploymentModel]:
/// - [VertexAiEndpointWithModelGardenDeploymentPublisherModel]
/// - [VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel]
///
/// **Cost:** Deploying starts Online/Batch Prediction capacity (and Model
/// Garden token/fine-tuning SKUs when invoked). Cloud Billing Catalog
/// service `C7E2-9256-1C43` bills prediction node-hours (e.g. Americas N1
/// Core `84D9-B3FA-0886` **$0.036/h**) once replicas are up;
/// `deploy_config.dedicated_resources.min_replica_count` is required when
/// that block is set. Too expensive for apply-smoke — factory ships
/// without a quickstart.
///
/// Enable `aiplatform.googleapis.com` via [GoogleProjectService] before
/// apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiEndpointWithModelGardenDeployment(
///   localName: 'garden',
///   location: TfArg.literal('us-central1'),
///   model: VertexAiEndpointWithModelGardenDeploymentPublisherModel(
///     publisherModelName: TfArg.literal(
///       'publishers/google/models/gemma-2-2b-it@001',
///     ),
///   ),
/// );
/// ```
final class GoogleVertexAiEndpointWithModelGardenDeployment extends Resource {
  static const String tfType =
      'google_vertex_ai_endpoint_with_model_garden_deployment';

  GoogleVertexAiEndpointWithModelGardenDeployment({
    required super.localName,
    required TfArg<String> location,
    required VertexAiEndpointWithModelGardenDeploymentModel model,
    VertexAiEndpointWithModelGardenDeploymentModelConfig? modelConfig,
    VertexAiEndpointWithModelGardenDeploymentEndpointConfig? endpointConfig,
    VertexAiEndpointWithModelGardenDeploymentDeployConfig? deployConfig,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (modelConfig != null)
             'model_config': TfArg.literal(modelConfig.encode()),
           if (endpointConfig != null)
             'endpoint_config': TfArg.literal(endpointConfig.encode()),
           if (deployConfig != null)
             'deploy_config': TfArg.literal(deployConfig.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
           model.blockKey: model.value,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiEndpointWithModelGardenDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiEndpointWithModelGardenDeployment>`.
  RefTo<GoogleVertexAiEndpointWithModelGardenDeployment> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deployed_model_display_name` attribute.
  TfRef<String> get deployedModelDisplayName =>
      TfRef.attribute<String>(this, 'deployed_model_display_name');

  /// Reference to `deployed_model_id` attribute.
  TfRef<String> get deployedModelId =>
      TfRef.attribute<String>(this, 'deployed_model_id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `hugging_face_model_id` attribute.
  TfRef<String> get huggingFaceModelIdRef =>
      TfRef.attribute<String>(this, 'hugging_face_model_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `publisher_model_name` attribute.
  TfRef<String> get publisherModelNameRef =>
      TfRef.attribute<String>(this, 'publisher_model_name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpointRef => TfRef.attribute<String>(this, 'endpoint');
}
