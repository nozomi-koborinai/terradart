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

  final List<
    VertexAiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpecs
  >?
  autoscalingMetricSpecs;

  final VertexAiDeploymentResourcePoolDedicatedResourcesMachineSpec machineSpec;

  Map<String, Object?> encode() => {
    if (maxReplicaCount != null)
      'max_replica_count': maxReplicaCount!.toTfJson(),
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
final class VertexAiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpecs {
  const VertexAiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpecs({
    required this.metricName,
    this.target,
  });

  final TfArg<String> metricName;

  final TfArg<num>? target;

  Map<String, Object?> encode() => {
    'metric_name': metricName.toTfJson(),
    if (target != null) 'target': target!.toTfJson(),
  };
}

/// Typed helper for the `dedicated_resources.machine_spec` block of
/// `google_vertex_ai_deployment_resource_pool` (derived from provider schema).
@immutable
final class VertexAiDeploymentResourcePoolDedicatedResourcesMachineSpec {
  const VertexAiDeploymentResourcePoolDedicatedResourcesMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
  });

  final TfArg<num>? acceleratorCount;

  final TfArg<String>? acceleratorType;

  final TfArg<String>? machineType;

  Map<String, Object?> encode() => {
    if (acceleratorCount != null)
      'accelerator_count': acceleratorCount!.toTfJson(),
    if (acceleratorType != null)
      'accelerator_type': acceleratorType!.toTfJson(),
    if (machineType != null) 'machine_type': machineType!.toTfJson(),
  };
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
///   localName: 'pool',
///   name: TfArg.literal('terradart-pool'),
///   region: TfArg.literal('us-central1'),
///   dedicatedResources: VertexAiDeploymentResourcePoolDedicatedResources(
///     minReplicaCount: TfArg.literal(1),
///     machineSpec: VertexAiDeploymentResourcePoolDedicatedResourcesMachineSpec(
///       machineType: TfArg.literal('n1-standard-2'),
///     ),
///   ),
/// );
/// ```
final class GoogleVertexAiDeploymentResourcePool extends Resource {
  static const String tfType = 'google_vertex_ai_deployment_resource_pool';

  GoogleVertexAiDeploymentResourcePool({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    VertexAiDeploymentResourcePoolDedicatedResources? dedicatedResources,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (dedicatedResources != null)
             'dedicated_resources': TfArg.literal(dedicatedResources.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleVertexAiDeploymentResourcePoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
