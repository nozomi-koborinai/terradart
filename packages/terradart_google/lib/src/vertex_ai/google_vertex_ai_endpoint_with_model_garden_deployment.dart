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
  const factory VertexAiEndpointWithModelGardenDeploymentModel.publisherModel(
    TfArg<String> publisherModelName,
  ) = VertexAiEndpointWithModelGardenDeploymentPublisherModel;

  /// Hugging Face model id (e.g.
  const factory VertexAiEndpointWithModelGardenDeploymentModel.huggingFaceModel(
    TfArg<String> huggingFaceModelId,
  ) = VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel;

  /// Terraform attribute key (`publisher_model_name` or
  /// `hugging_face_model_id`).
  @internal
  String get blockKey;

  /// Scalar value written under [blockKey].
  TfArg<String> get value;

  @internal
  Map<String, Object?> encode() => {blockKey: value.toTfJson()};
}

/// Model Garden publisher model path
/// (`publishers/{publisher}/models/{model}@{version}`).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentPublisherModel
    extends VertexAiEndpointWithModelGardenDeploymentModel {
  const VertexAiEndpointWithModelGardenDeploymentPublisherModel(
    this.publisherModelName,
  );

  final TfArg<String> publisherModelName;

  @override
  @internal
  String get blockKey => 'publisher_model_name';

  @override
  TfArg<String> get value => publisherModelName;
}

/// Hugging Face model id (e.g. `google/gemma-2-2b-it`).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel
    extends VertexAiEndpointWithModelGardenDeploymentModel {
  const VertexAiEndpointWithModelGardenDeploymentHuggingFaceModel(
    this.huggingFaceModelId,
  );

  final TfArg<String> huggingFaceModelId;

  @override
  @internal
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

  final VertexAiEndpointWithModelGardenDeploymentDedicatedResources?
  dedicatedResources;

  @internal
  Map<String, Object?> encode() => {
    'fast_tryout_enabled': ?fastTryoutEnabled?.toTfJson(),
    'system_labels': ?systemLabels?.toTfJson(),
    'dedicated_resources': ?dedicatedResources?.encode(),
  };
}

/// Typed helper for the `deploy_config.dedicated_resources` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentDedicatedResources {
  const VertexAiEndpointWithModelGardenDeploymentDedicatedResources({
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

  final List<VertexAiEndpointWithModelGardenDeploymentAutoscalingMetricSpecs>?
  autoscalingMetricSpecs;

  final VertexAiEndpointWithModelGardenDeploymentMachineSpec machineSpec;

  @internal
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
final class VertexAiEndpointWithModelGardenDeploymentAutoscalingMetricSpecs {
  const VertexAiEndpointWithModelGardenDeploymentAutoscalingMetricSpecs({
    required this.metricName,
    this.target,
  });

  final TfArg<String> metricName;

  final TfArg<num>? target;

  @internal
  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    'target': ?target?.toTfJson(),
  };
}

/// Typed helper for the `deploy_config.dedicated_resources.machine_spec` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentMachineSpec {
  const VertexAiEndpointWithModelGardenDeploymentMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
    this.multihostGpuNodeCount,
    this.tpuTopology,
    this.reservationAffinity,
  });

  final TfArg<num>? acceleratorCount;

  final VertexAiEndpointWithModelGardenDeploymentAcceleratorType?
  acceleratorType;

  final TfArg<String>? machineType;

  final TfArg<num>? multihostGpuNodeCount;

  final TfArg<String>? tpuTopology;

  final VertexAiEndpointWithModelGardenDeploymentReservationAffinity?
  reservationAffinity;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
    'multihost_gpu_node_count': ?multihostGpuNodeCount?.toTfJson(),
    'tpu_topology': ?tpuTopology?.toTfJson(),
    'reservation_affinity': ?reservationAffinity?.encode(),
  };
}

/// `accelerator_type` — derived from the provider schema description.
extension type const VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
  TfArg<String> _
) implements TfArg<String> {
  VertexAiEndpointWithModelGardenDeploymentAcceleratorType.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiEndpointWithModelGardenDeploymentAcceleratorType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VertexAiEndpointWithModelGardenDeploymentAcceleratorType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const nvidiaTeslaK80 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_TESLA_K80'),
      );
  static const nvidiaTeslaP100 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_TESLA_P100'),
      );
  static const nvidiaTeslaV100 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_TESLA_V100'),
      );
  static const nvidiaTeslaP4 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_TESLA_P4'),
      );
  static const nvidiaTeslaT4 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_TESLA_T4'),
      );
  static const nvidiaTeslaA100 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_TESLA_A100'),
      );
  static const nvidiaA10080gb =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_A100_80GB'),
      );
  static const nvidiaL4 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_L4'),
      );
  static const nvidiaH10080gb =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_H100_80GB'),
      );
  static const nvidiaH100Mega80gb =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_H100_MEGA_80GB'),
      );
  static const nvidiaH200141gb =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_H200_141GB'),
      );
  static const nvidiaB200 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_B200'),
      );
  static const nvidiaGb200 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_GB200'),
      );
  static const nvidiaRtxPro6000 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('NVIDIA_RTX_PRO_6000'),
      );
  static const tpuV2 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('TPU_V2'),
      );
  static const tpuV3 =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('TPU_V3'),
      );
  static const tpuV4Pod =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('TPU_V4_POD'),
      );
  static const tpuV5Litepod =
      VertexAiEndpointWithModelGardenDeploymentAcceleratorType._(
        TfArgLiteral('TPU_V5_LITEPOD'),
      );

  static const List<VertexAiEndpointWithModelGardenDeploymentAcceleratorType>
  values = [
    nvidiaTeslaK80,
    nvidiaTeslaP100,
    nvidiaTeslaV100,
    nvidiaTeslaP4,
    nvidiaTeslaT4,
    nvidiaTeslaA100,
    nvidiaA10080gb,
    nvidiaL4,
    nvidiaH10080gb,
    nvidiaH100Mega80gb,
    nvidiaH200141gb,
    nvidiaB200,
    nvidiaGb200,
    nvidiaRtxPro6000,
    tpuV2,
    tpuV3,
    tpuV4Pod,
    tpuV5Litepod,
  ];
}

/// Typed helper for the `deploy_config.dedicated_resources.machine_spec.reservation_affinity` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentReservationAffinity {
  const VertexAiEndpointWithModelGardenDeploymentReservationAffinity({
    this.key,
    required this.reservationAffinityType,
    this.values,
  });

  final TfArg<String>? key;

  final VertexAiEndpointWithModelGardenDeploymentReservationAffinityType
  reservationAffinityType;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'reservation_affinity_type': reservationAffinityType.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `reservation_affinity_type` — derived from the provider schema description.
extension type const VertexAiEndpointWithModelGardenDeploymentReservationAffinityType._(
  TfArg<String> _
) implements TfArg<String> {
  VertexAiEndpointWithModelGardenDeploymentReservationAffinityType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  VertexAiEndpointWithModelGardenDeploymentReservationAffinityType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const VertexAiEndpointWithModelGardenDeploymentReservationAffinityType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const noReservation =
      VertexAiEndpointWithModelGardenDeploymentReservationAffinityType._(
        TfArgLiteral('NO_RESERVATION'),
      );
  static const anyReservation =
      VertexAiEndpointWithModelGardenDeploymentReservationAffinityType._(
        TfArgLiteral('ANY_RESERVATION'),
      );
  static const specificReservation =
      VertexAiEndpointWithModelGardenDeploymentReservationAffinityType._(
        TfArgLiteral('SPECIFIC_RESERVATION'),
      );

  static const List<
    VertexAiEndpointWithModelGardenDeploymentReservationAffinityType
  >
  values = [noReservation, anyReservation, specificReservation];
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

  final VertexAiEndpointWithModelGardenDeploymentPrivateServiceConnectConfig?
  privateServiceConnectConfig;

  @internal
  Map<String, Object?> encode() => {
    'dedicated_endpoint_enabled': ?dedicatedEndpointEnabled?.toTfJson(),
    'endpoint_display_name': ?endpointDisplayName?.toTfJson(),
    'private_service_connect_config': ?privateServiceConnectConfig?.encode(),
  };
}

/// Typed helper for the `endpoint_config.private_service_connect_config` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentPrivateServiceConnectConfig {
  const VertexAiEndpointWithModelGardenDeploymentPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlist,
    this.pscAutomationConfigs,
  });

  final TfArg<bool> enablePrivateServiceConnect;

  final TfArg<List<String>>? projectAllowlist;

  final VertexAiEndpointWithModelGardenDeploymentPscAutomationConfigs?
  pscAutomationConfigs;

  @internal
  Map<String, Object?> encode() => {
    'enable_private_service_connect': enablePrivateServiceConnect.toTfJson(),
    'project_allowlist': ?projectAllowlist?.toTfJson(),
    'psc_automation_configs': ?pscAutomationConfigs?.encode(),
  };
}

/// Typed helper for the `endpoint_config.private_service_connect_config.psc_automation_configs` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentPscAutomationConfigs {
  const VertexAiEndpointWithModelGardenDeploymentPscAutomationConfigs({
    required this.network,
    required this.projectId,
  });

  final RefTo<GoogleComputeNetwork> network;

  final TfArg<String> projectId;

  @internal
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

  final VertexAiEndpointWithModelGardenDeploymentContainerSpec? containerSpec;

  @internal
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
final class VertexAiEndpointWithModelGardenDeploymentContainerSpec {
  const VertexAiEndpointWithModelGardenDeploymentContainerSpec({
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

  final List<VertexAiEndpointWithModelGardenDeploymentEnv>? env;

  final List<VertexAiEndpointWithModelGardenDeploymentGrpcPorts>? grpcPorts;

  final VertexAiEndpointWithModelGardenDeploymentHealthProbe? healthProbe;

  final VertexAiEndpointWithModelGardenDeploymentLivenessProbe? livenessProbe;

  final List<VertexAiEndpointWithModelGardenDeploymentPorts>? ports;

  final VertexAiEndpointWithModelGardenDeploymentStartupProbe? startupProbe;

  @internal
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
final class VertexAiEndpointWithModelGardenDeploymentEnv {
  const VertexAiEndpointWithModelGardenDeploymentEnv({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.grpc_ports` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentGrpcPorts {
  const VertexAiEndpointWithModelGardenDeploymentGrpcPorts({
    this.containerPort,
  });

  final TfArg<num>? containerPort;

  @internal
  Map<String, Object?> encode() => {
    'container_port': ?containerPort?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.health_probe` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentHealthProbe {
  const VertexAiEndpointWithModelGardenDeploymentHealthProbe({
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

  final VertexAiEndpointWithModelGardenDeploymentExec? exec;

  final VertexAiEndpointWithModelGardenDeploymentGrpc? grpc;

  final VertexAiEndpointWithModelGardenDeploymentHttpGet? httpGet;

  final VertexAiEndpointWithModelGardenDeploymentTcpSocket? tcpSocket;

  @internal
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
/// Shared by every block of this shape in the resource.
@immutable
final class VertexAiEndpointWithModelGardenDeploymentExec {
  const VertexAiEndpointWithModelGardenDeploymentExec({this.command});

  final TfArg<List<String>>? command;

  @internal
  Map<String, Object?> encode() => {'command': ?command?.toTfJson()};
}

/// Typed helper for the `model_config.container_spec.health_probe.grpc` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VertexAiEndpointWithModelGardenDeploymentGrpc {
  const VertexAiEndpointWithModelGardenDeploymentGrpc({
    this.port,
    this.service,
  });

  final TfArg<num>? port;

  final TfArg<String>? service;

  @internal
  Map<String, Object?> encode() => {
    'port': ?port?.toTfJson(),
    'service': ?service?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.health_probe.http_get` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VertexAiEndpointWithModelGardenDeploymentHttpGet {
  const VertexAiEndpointWithModelGardenDeploymentHttpGet({
    this.host,
    this.path,
    this.port,
    this.scheme,
    this.httpHeaders,
  });

  final TfArg<String>? host;

  final TfArg<String>? path;

  final TfArg<num>? port;

  final VertexAiEndpointWithModelGardenDeploymentScheme? scheme;

  final List<VertexAiEndpointWithModelGardenDeploymentHttpHeaders>? httpHeaders;

  @internal
  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'path': ?path?.toTfJson(),
    'port': ?port?.toTfJson(),
    'scheme': ?scheme?.toTfJson(),
    if (httpHeaders != null)
      'http_headers': [for (final e in httpHeaders!) e.encode()],
  };
}

/// `scheme` — derived from the provider schema description.
extension type const VertexAiEndpointWithModelGardenDeploymentScheme._(
  TfArg<String> _
) implements TfArg<String> {
  VertexAiEndpointWithModelGardenDeploymentScheme.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiEndpointWithModelGardenDeploymentScheme.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiEndpointWithModelGardenDeploymentScheme.arg(TfArg<String> arg)
    : this._(arg);

  static const http = VertexAiEndpointWithModelGardenDeploymentScheme._(
    TfArgLiteral('HTTP'),
  );
  static const https = VertexAiEndpointWithModelGardenDeploymentScheme._(
    TfArgLiteral('HTTPS'),
  );

  static const List<VertexAiEndpointWithModelGardenDeploymentScheme> values = [
    http,
    https,
  ];
}

/// Typed helper for the `model_config.container_spec.health_probe.http_get.http_headers` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VertexAiEndpointWithModelGardenDeploymentHttpHeaders {
  const VertexAiEndpointWithModelGardenDeploymentHttpHeaders({
    this.name,
    this.value,
  });

  final TfArg<String>? name;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.health_probe.tcp_socket` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VertexAiEndpointWithModelGardenDeploymentTcpSocket {
  const VertexAiEndpointWithModelGardenDeploymentTcpSocket({
    this.host,
    this.port,
  });

  final TfArg<String>? host;

  final TfArg<num>? port;

  @internal
  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'port': ?port?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.liveness_probe` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentLivenessProbe {
  const VertexAiEndpointWithModelGardenDeploymentLivenessProbe({
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

  final VertexAiEndpointWithModelGardenDeploymentExec? exec;

  final VertexAiEndpointWithModelGardenDeploymentGrpc? grpc;

  final VertexAiEndpointWithModelGardenDeploymentHttpGet? httpGet;

  final VertexAiEndpointWithModelGardenDeploymentTcpSocket? tcpSocket;

  @internal
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

/// Typed helper for the `model_config.container_spec.ports` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentPorts {
  const VertexAiEndpointWithModelGardenDeploymentPorts({this.containerPort});

  final TfArg<num>? containerPort;

  @internal
  Map<String, Object?> encode() => {
    'container_port': ?containerPort?.toTfJson(),
  };
}

/// Typed helper for the `model_config.container_spec.startup_probe` block of
/// `google_vertex_ai_endpoint_with_model_garden_deployment` (derived from provider schema).
@immutable
final class VertexAiEndpointWithModelGardenDeploymentStartupProbe {
  const VertexAiEndpointWithModelGardenDeploymentStartupProbe({
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

  final VertexAiEndpointWithModelGardenDeploymentExec? exec;

  final VertexAiEndpointWithModelGardenDeploymentGrpc? grpc;

  final VertexAiEndpointWithModelGardenDeploymentHttpGet? httpGet;

  final VertexAiEndpointWithModelGardenDeploymentTcpSocket? tcpSocket;

  @internal
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
///   'garden',
///   location: TfArg.literal('us-central1'),
///   model: VertexAiEndpointWithModelGardenDeploymentPublisherModel(
///     TfArg.literal(
///       'publishers/google/models/gemma-2-2b-it@001',
///     ),
///   ),
/// );
/// ```
final class GoogleVertexAiEndpointWithModelGardenDeployment extends Resource {
  static const String tfType =
      'google_vertex_ai_endpoint_with_model_garden_deployment';

  GoogleVertexAiEndpointWithModelGardenDeployment(
    super.localName, {
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
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `hugging_face_model_id` attribute.
  TfRef<String> get huggingFaceModelId =>
      TfRef.attribute<String>(this, 'hugging_face_model_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `publisher_model_name` attribute.
  TfRef<String> get publisherModelName =>
      TfRef.attribute<String>(this, 'publisher_model_name');
}
