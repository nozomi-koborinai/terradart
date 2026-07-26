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
    this.maxNodes,
    this.maxProcessingUnits,
    this.minNodes,
    this.minProcessingUnits,
  });

  final TfArg<num>? maxNodes;

  final TfArg<num>? maxProcessingUnits;

  final TfArg<num>? minNodes;

  final TfArg<num>? minProcessingUnits;

  Map<String, Object?> encode() => {
    if (maxNodes != null) 'max_nodes': maxNodes!.toTfJson(),
    if (maxProcessingUnits != null)
      'max_processing_units': maxProcessingUnits!.toTfJson(),
    if (minNodes != null) 'min_nodes': minNodes!.toTfJson(),
    if (minProcessingUnits != null)
      'min_processing_units': minProcessingUnits!.toTfJson(),
  };
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
    TfArg<num>? nodeCount,
    TfArg<num>? processingUnits,
    SpannerInstancePartitionAutoscalingConfig? autoscalingConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'instance': instance,
           'config': config,
           'display_name': displayName,
           if (nodeCount != null) 'node_count': nodeCount,
           if (processingUnits != null) 'processing_units': processingUnits,
           if (autoscalingConfig != null)
             'autoscaling_config': TfArg.literal(autoscalingConfig.encode()),
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
