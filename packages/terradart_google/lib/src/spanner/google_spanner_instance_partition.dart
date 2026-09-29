// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_instance_partition`.
const Set<String> _googleSpannerInstancePartitionSensitive = <String>{};

/// Spanner Instance Partition enum for `state`.
enum SpannerInstancePartitionState implements TerraformEnum {
  creating('CREATING'),
  ready('READY');

  const SpannerInstancePartitionState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `node_count`, `processing_units`, `autoscaling_config` on `google_spanner_instance_partition`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.nodeCount(...)`.
sealed class SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig {
  const SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig();

  /// Sets `node_count`.
  const factory SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig.nodeCount(
    TfArg<num> nodeCount,
  ) = SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfigNodeCount;

  /// Sets `processing_units`.
  const factory SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig.processingUnits(
    TfArg<num> processingUnits,
  ) = SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfigProcessingUnits;

  /// Sets `autoscaling_config`.
  const factory SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig.autoscalingConfig(
    SpannerInstancePartitionAutoscalingConfig autoscalingConfig,
  ) = SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfigAutoscalingConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig.nodeCount] choice: sets `node_count`.
final class SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfigNodeCount
    extends
        SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig {
  const SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfigNodeCount(
    this.nodeCount,
  );

  final TfArg<num> nodeCount;

  @override
  String get blockKey => 'node_count';

  @override
  Map<String, Object?> encode() => {'node_count': nodeCount.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'node_count': nodeCount};
}

/// The [SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig.processingUnits] choice: sets `processing_units`.
final class SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfigProcessingUnits
    extends
        SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig {
  const SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfigProcessingUnits(
    this.processingUnits,
  );

  final TfArg<num> processingUnits;

  @override
  String get blockKey => 'processing_units';

  @override
  Map<String, Object?> encode() => {
    'processing_units': processingUnits.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'processing_units': processingUnits,
  };
}

/// The [SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig.autoscalingConfig] choice: sets `autoscaling_config`.
final class SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfigAutoscalingConfig
    extends
        SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig {
  const SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfigAutoscalingConfig(
    this.autoscalingConfig,
  );

  final SpannerInstancePartitionAutoscalingConfig autoscalingConfig;

  @override
  String get blockKey => 'autoscaling_config';

  @override
  Map<String, Object?> encode() => {
    'autoscaling_config': autoscalingConfig.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'autoscaling_config': TfArg.literal(autoscalingConfig.encode()),
  };
}

/// Typed helper for the `autoscaling_config` block of
/// `google_spanner_instance_partition` (derived from provider schema).
@immutable
final class SpannerInstancePartitionAutoscalingConfig {
  const SpannerInstancePartitionAutoscalingConfig({
    this.autoscalingLimits,
    this.autoscalingTargets,
  });

  final SpannerInstancePartitionAutoscalingConfigAutoscalingLimits?
  autoscalingLimits;

  final SpannerInstancePartitionAutoscalingConfigAutoscalingTargets?
  autoscalingTargets;

  Map<String, Object?> encode() => {
    if (autoscalingLimits != null)
      'autoscaling_limits': autoscalingLimits!.encode(),
    if (autoscalingTargets != null)
      'autoscaling_targets': autoscalingTargets!.encode(),
  };
}

/// Typed helper for the `autoscaling_config.autoscaling_limits` block of
/// `google_spanner_instance_partition` (derived from provider schema).
@immutable
final class SpannerInstancePartitionAutoscalingConfigAutoscalingLimits {
  const SpannerInstancePartitionAutoscalingConfigAutoscalingLimits({
    required this.maxProcessingUnitsOrMaxNodes,
    required this.minProcessingUnitsOrMinNodes,
  });

  final SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodes
  maxProcessingUnitsOrMaxNodes;

  final SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodes
  minProcessingUnitsOrMinNodes;

  Map<String, Object?> encode() => {
    ...maxProcessingUnitsOrMaxNodes.encode(),
    ...minProcessingUnitsOrMinNodes.encode(),
  };
}

/// Exactly one of `min_processing_units`, `min_nodes` on the `autoscaling_config.autoscaling_limits` block of `google_spanner_instance_partition`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.minProcessingUnits(...)`.
sealed class SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodes {
  const SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodes();

  /// Sets `min_processing_units`.
  const factory SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodes.minProcessingUnits(
    TfArg<num> minProcessingUnits,
  ) = SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodesMinProcessingUnits;

  /// Sets `min_nodes`.
  const factory SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodes.minNodes(
    TfArg<num> minNodes,
  ) = SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodesMinNodes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodes.minProcessingUnits] choice: sets `min_processing_units`.
final class SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodesMinProcessingUnits
    extends
        SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodes {
  const SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodesMinProcessingUnits(
    this.minProcessingUnits,
  );

  final TfArg<num> minProcessingUnits;

  @override
  String get blockKey => 'min_processing_units';

  @override
  Map<String, Object?> encode() => {
    'min_processing_units': minProcessingUnits.toTfJson(),
  };
}

/// The [SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodes.minNodes] choice: sets `min_nodes`.
final class SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodesMinNodes
    extends
        SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodes {
  const SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMinProcessingUnitsOrMinNodesMinNodes(
    this.minNodes,
  );

  final TfArg<num> minNodes;

  @override
  String get blockKey => 'min_nodes';

  @override
  Map<String, Object?> encode() => {'min_nodes': minNodes.toTfJson()};
}

/// Exactly one of `max_processing_units`, `max_nodes` on the `autoscaling_config.autoscaling_limits` block of `google_spanner_instance_partition`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.maxProcessingUnits(...)`.
sealed class SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodes {
  const SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodes();

  /// Sets `max_processing_units`.
  const factory SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodes.maxProcessingUnits(
    TfArg<num> maxProcessingUnits,
  ) = SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodesMaxProcessingUnits;

  /// Sets `max_nodes`.
  const factory SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodes.maxNodes(
    TfArg<num> maxNodes,
  ) = SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodesMaxNodes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodes.maxProcessingUnits] choice: sets `max_processing_units`.
final class SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodesMaxProcessingUnits
    extends
        SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodes {
  const SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodesMaxProcessingUnits(
    this.maxProcessingUnits,
  );

  final TfArg<num> maxProcessingUnits;

  @override
  String get blockKey => 'max_processing_units';

  @override
  Map<String, Object?> encode() => {
    'max_processing_units': maxProcessingUnits.toTfJson(),
  };
}

/// The [SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodes.maxNodes] choice: sets `max_nodes`.
final class SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodesMaxNodes
    extends
        SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodes {
  const SpannerInstancePartitionAutoscalingConfigAutoscalingLimitsMaxProcessingUnitsOrMaxNodesMaxNodes(
    this.maxNodes,
  );

  final TfArg<num> maxNodes;

  @override
  String get blockKey => 'max_nodes';

  @override
  Map<String, Object?> encode() => {'max_nodes': maxNodes.toTfJson()};
}

/// Typed helper for the `autoscaling_config.autoscaling_targets` block of
/// `google_spanner_instance_partition` (derived from provider schema).
@immutable
final class SpannerInstancePartitionAutoscalingConfigAutoscalingTargets {
  const SpannerInstancePartitionAutoscalingConfigAutoscalingTargets({
    this.highPriorityCpuUtilizationPercent,
    this.storageUtilizationPercent,
    this.totalCpuUtilizationPercent,
  });

  final TfArg<num>? highPriorityCpuUtilizationPercent;

  final TfArg<num>? storageUtilizationPercent;

  final TfArg<num>? totalCpuUtilizationPercent;

  Map<String, Object?> encode() => {
    if (highPriorityCpuUtilizationPercent != null)
      'high_priority_cpu_utilization_percent':
          highPriorityCpuUtilizationPercent!.toTfJson(),
    if (storageUtilizationPercent != null)
      'storage_utilization_percent': storageUtilizationPercent!.toTfJson(),
    if (totalCpuUtilizationPercent != null)
      'total_cpu_utilization_percent': totalCpuUtilizationPercent!.toTfJson(),
  };
}

/// Factory wrapper for `google_spanner_instance_partition`.
///
/// A Cloud Spanner instance partition is a unit of Cloud Spanner database
/// capacity that can be used to partition data and processing capacity within
/// an instance.
///
/// Cloud Spanner **instance partition** — dedicated compute capacity
/// (nodes / processing units) carved out of a parent instance.
///
/// **Cost / apply:** gcp-cost: Cloud Spanner `CC63-0873-48FD` Read-Write
/// Replica Enterprise Edition Iowa SKU `1D9F-E99D-5CBD` **$0.41/h**
/// (regional Server Node Zurich `07AA-3267-AE40` **$1.17/h**).
/// billing-behavior: [nodeCount] / [processingUnits] /
/// [autoscalingConfig] reserve Spanner compute while the partition
/// exists (one node ≈ 1000 PUs); destroy stops the charge. **Never**
/// wire into apply-smoke.
///
/// Provide exactly one of [nodeCount], [processingUnits], or
/// [autoscalingConfig].
final class GoogleSpannerInstancePartition extends Resource {
  static const String tfType = 'google_spanner_instance_partition';

  GoogleSpannerInstancePartition({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> instance,
    required TfArg<String> config,
    required TfArg<String> displayName,
    required SpannerInstancePartitionNodeCountOrProcessingUnitsOrAutoscalingConfig
    nodeCountOrProcessingUnitsOrAutoscalingConfig,
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
           'instance': instance,
           'config': config,
           'display_name': displayName,
           ...nodeCountOrProcessingUnitsOrAutoscalingConfig.argMap,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerInstancePartitionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
