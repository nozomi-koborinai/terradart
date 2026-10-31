// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_deployment_resource_pool`.
const Set<String> _googleVertexAiDeploymentResourcePoolSensitive = <String>{};

/// Typed helper for the `dedicated_resources` block of
/// `google_vertex_ai_deployment_resource_pool` (derived from provider schema).
@immutable
final class VertexAiDeploymentResourcePoolDedicatedResources {
  const VertexAiDeploymentResourcePoolDedicatedResources({
    this.maxReplicaCount,
    required this.minReplicaCount,
    this.autoscalingMetricSpecs,
    required this.machineSpec,
  });

  final TfArg<num>? maxReplicaCount;

  final TfArg<num> minReplicaCount;

  final List<VertexAiDeploymentResourcePoolAutoscalingMetricSpecs>?
  autoscalingMetricSpecs;

  final VertexAiDeploymentResourcePoolMachineSpec machineSpec;

  @internal
  Map<String, Object?> encode() => {
    'max_replica_count': ?maxReplicaCount?.toTfJson(),
    'min_replica_count': minReplicaCount.toTfJson(),
    if (autoscalingMetricSpecs != null)
      'autoscaling_metric_specs': [
        for (final e in autoscalingMetricSpecs!) e.encode(),
      ],
    'machine_spec': machineSpec.encode(),
  };
}

/// Typed helper for the `dedicated_resources.autoscaling_metric_specs` block of
/// `google_vertex_ai_deployment_resource_pool` (derived from provider schema).
@immutable
final class VertexAiDeploymentResourcePoolAutoscalingMetricSpecs {
  const VertexAiDeploymentResourcePoolAutoscalingMetricSpecs({
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

/// Typed helper for the `dedicated_resources.machine_spec` block of
/// `google_vertex_ai_deployment_resource_pool` (derived from provider schema).
@immutable
final class VertexAiDeploymentResourcePoolMachineSpec {
  const VertexAiDeploymentResourcePoolMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
  });

  final TfArg<num>? acceleratorCount;

  final VertexAiDeploymentResourcePoolAcceleratorType? acceleratorType;

  final TfArg<String>? machineType;

  @internal
  Map<String, Object?> encode() => {
    'accelerator_count': ?acceleratorCount?.toTfJson(),
    'accelerator_type': ?acceleratorType?.toTfJson(),
    'machine_type': ?machineType?.toTfJson(),
  };
}

/// `accelerator_type` — derived from the provider schema description.
extension type const VertexAiDeploymentResourcePoolAcceleratorType._(
  TfArg<String> _
) implements TfArg<String> {
  VertexAiDeploymentResourcePoolAcceleratorType.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiDeploymentResourcePoolAcceleratorType.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiDeploymentResourcePoolAcceleratorType.arg(TfArg<String> arg)
    : this._(arg);

  static const nvidiaTeslaK80 = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_K80'),
  );
  static const nvidiaTeslaP100 =
      VertexAiDeploymentResourcePoolAcceleratorType._(
        TfArgLiteral('NVIDIA_TESLA_P100'),
      );
  static const nvidiaTeslaV100 =
      VertexAiDeploymentResourcePoolAcceleratorType._(
        TfArgLiteral('NVIDIA_TESLA_V100'),
      );
  static const nvidiaTeslaP4 = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_P4'),
  );
  static const nvidiaTeslaT4 = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('NVIDIA_TESLA_T4'),
  );
  static const nvidiaTeslaA100 =
      VertexAiDeploymentResourcePoolAcceleratorType._(
        TfArgLiteral('NVIDIA_TESLA_A100'),
      );
  static const nvidiaA10080gb = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('NVIDIA_A100_80GB'),
  );
  static const nvidiaL4 = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('NVIDIA_L4'),
  );
  static const nvidiaH10080gb = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('NVIDIA_H100_80GB'),
  );
  static const nvidiaH100Mega80gb =
      VertexAiDeploymentResourcePoolAcceleratorType._(
        TfArgLiteral('NVIDIA_H100_MEGA_80GB'),
      );
  static const nvidiaH200141gb =
      VertexAiDeploymentResourcePoolAcceleratorType._(
        TfArgLiteral('NVIDIA_H200_141GB'),
      );
  static const nvidiaB200 = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('NVIDIA_B200'),
  );
  static const nvidiaGb200 = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('NVIDIA_GB200'),
  );
  static const nvidiaRtxPro6000 =
      VertexAiDeploymentResourcePoolAcceleratorType._(
        TfArgLiteral('NVIDIA_RTX_PRO_6000'),
      );
  static const tpuV2 = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('TPU_V2'),
  );
  static const tpuV3 = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('TPU_V3'),
  );
  static const tpuV4Pod = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('TPU_V4_POD'),
  );
  static const tpuV5Litepod = VertexAiDeploymentResourcePoolAcceleratorType._(
    TfArgLiteral('TPU_V5_LITEPOD'),
  );

  static const List<VertexAiDeploymentResourcePoolAcceleratorType> values = [
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

/// Factory wrapper for `google_vertex_ai_deployment_resource_pool`.
///
/// 'DeploymentResourcePool can be shared by multiple deployed models, whose
/// underlying specification consists of dedicated resources.'
///
/// Vertex AI **deployment resource pool** — shared dedicated prediction
/// capacity that multiple deployed models can attach to.
///
/// **Cost:** Creating a pool with [dedicatedResources] (required
/// `min_replica_count` ≥ 1) reserves Online/Batch Prediction machine
/// capacity while the pool exists. Cloud Billing Catalog service
/// `C7E2-9256-1C43` bills those node-hours (Americas N1 Predefined
/// Instance Core SKU `84D9-B3FA-0886` **$0.036/h**, plus management-fee
/// SKUs such as us-central1 N1 Core `7267-F2A5-DA1E` **$0.0046957/h**).
/// Destroy deletes the pool and stops reservation charges. Too expensive
/// for apply-smoke — factories ship without a quickstart.
///
/// Requires [name] and [dedicatedResources] (`machineSpec` +
/// `minReplicaCount`). Enable `aiplatform.googleapis.com` via
/// [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleVertexAiDeploymentResourcePool(
///   'pool',
///   name: TfArg.literal('terradart-pool'),
///   region: TfArg.literal('us-central1'),
///   dedicatedResources: VertexAiDeploymentResourcePoolDedicatedResources(
///     minReplicaCount: TfArg.literal(1),
///     machineSpec: .new(
///       machineType: TfArg.literal('n1-standard-2'),
///     ),
///   ),
/// );
/// ```
final class GoogleVertexAiDeploymentResourcePool extends Resource {
  static const String tfType = 'google_vertex_ai_deployment_resource_pool';

  GoogleVertexAiDeploymentResourcePool(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    VertexAiDeploymentResourcePoolDedicatedResources? dedicatedResources,
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
           'region': ?region,
           if (dedicatedResources != null)
             'dedicated_resources': TfArg.literal(dedicatedResources.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiDeploymentResourcePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiDeploymentResourcePool>`.
  RefTo<GoogleVertexAiDeploymentResourcePool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
