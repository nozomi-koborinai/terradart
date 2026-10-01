// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../spanner/google_spanner_instance.dart' show GoogleSpannerInstance;
import '../spanner/google_spanner_instance_config.dart'
    show GoogleSpannerInstanceConfig;

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
sealed class SpannerInstancePartitionCapacity {
  const SpannerInstancePartitionCapacity();

  /// Sets `node_count`.
  const factory SpannerInstancePartitionCapacity.nodeCount(
    TfArg<num> nodeCount,
  ) = SpannerInstancePartitionCapacityNodeCount;

  /// Sets `processing_units`.
  const factory SpannerInstancePartitionCapacity.processingUnits(
    TfArg<num> processingUnits,
  ) = SpannerInstancePartitionCapacityProcessingUnits;

  /// Sets `autoscaling_config`.
  const factory SpannerInstancePartitionCapacity.autoscalingConfig(
    SpannerInstancePartitionAutoscalingConfig autoscalingConfig,
  ) = SpannerInstancePartitionCapacityAutoscalingConfig;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SpannerInstancePartitionCapacity.nodeCount] choice: sets `node_count`.
final class SpannerInstancePartitionCapacityNodeCount
    extends SpannerInstancePartitionCapacity {
  const SpannerInstancePartitionCapacityNodeCount(this.nodeCount);

  final TfArg<num> nodeCount;

  @override
  String get blockKey => 'node_count';

  @override
  Map<String, Object?> encode() => {'node_count': nodeCount.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'node_count': nodeCount};
}

/// The [SpannerInstancePartitionCapacity.processingUnits] choice: sets `processing_units`.
final class SpannerInstancePartitionCapacityProcessingUnits
    extends SpannerInstancePartitionCapacity {
  const SpannerInstancePartitionCapacityProcessingUnits(this.processingUnits);

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

/// The [SpannerInstancePartitionCapacity.autoscalingConfig] choice: sets `autoscaling_config`.
final class SpannerInstancePartitionCapacityAutoscalingConfig
    extends SpannerInstancePartitionCapacity {
  const SpannerInstancePartitionCapacityAutoscalingConfig(
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

  final SpannerInstancePartitionAutoscalingLimits? autoscalingLimits;

  final SpannerInstancePartitionAutoscalingTargets? autoscalingTargets;

  Map<String, Object?> encode() => {
    'autoscaling_limits': ?autoscalingLimits?.encode(),
    'autoscaling_targets': ?autoscalingTargets?.encode(),
  };
}

/// Typed helper for the `autoscaling_config.autoscaling_limits` block of
/// `google_spanner_instance_partition` (derived from provider schema).
@immutable
final class SpannerInstancePartitionAutoscalingLimits {
  const SpannerInstancePartitionAutoscalingLimits({
    required this.maxCapacity,
    required this.minCapacity,
  });

  final SpannerInstancePartitionMaxCapacity maxCapacity;

  final SpannerInstancePartitionMinCapacity minCapacity;

  Map<String, Object?> encode() => {
    ...maxCapacity.encode(),
    ...minCapacity.encode(),
  };
}

/// Exactly one of `min_processing_units`, `min_nodes` on the `autoscaling_config.autoscaling_limits` block of `google_spanner_instance_partition`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.minProcessingUnits(...)`.
sealed class SpannerInstancePartitionMinCapacity {
  const SpannerInstancePartitionMinCapacity();

  /// Sets `min_processing_units`.
  const factory SpannerInstancePartitionMinCapacity.minProcessingUnits(
    TfArg<num> minProcessingUnits,
  ) = SpannerInstancePartitionMinCapacityMinProcessingUnits;

  /// Sets `min_nodes`.
  const factory SpannerInstancePartitionMinCapacity.minNodes(
    TfArg<num> minNodes,
  ) = SpannerInstancePartitionMinCapacityMinNodes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstancePartitionMinCapacity.minProcessingUnits] choice: sets `min_processing_units`.
final class SpannerInstancePartitionMinCapacityMinProcessingUnits
    extends SpannerInstancePartitionMinCapacity {
  const SpannerInstancePartitionMinCapacityMinProcessingUnits(
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

/// The [SpannerInstancePartitionMinCapacity.minNodes] choice: sets `min_nodes`.
final class SpannerInstancePartitionMinCapacityMinNodes
    extends SpannerInstancePartitionMinCapacity {
  const SpannerInstancePartitionMinCapacityMinNodes(this.minNodes);

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
sealed class SpannerInstancePartitionMaxCapacity {
  const SpannerInstancePartitionMaxCapacity();

  /// Sets `max_processing_units`.
  const factory SpannerInstancePartitionMaxCapacity.maxProcessingUnits(
    TfArg<num> maxProcessingUnits,
  ) = SpannerInstancePartitionMaxCapacityMaxProcessingUnits;

  /// Sets `max_nodes`.
  const factory SpannerInstancePartitionMaxCapacity.maxNodes(
    TfArg<num> maxNodes,
  ) = SpannerInstancePartitionMaxCapacityMaxNodes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SpannerInstancePartitionMaxCapacity.maxProcessingUnits] choice: sets `max_processing_units`.
final class SpannerInstancePartitionMaxCapacityMaxProcessingUnits
    extends SpannerInstancePartitionMaxCapacity {
  const SpannerInstancePartitionMaxCapacityMaxProcessingUnits(
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

/// The [SpannerInstancePartitionMaxCapacity.maxNodes] choice: sets `max_nodes`.
final class SpannerInstancePartitionMaxCapacityMaxNodes
    extends SpannerInstancePartitionMaxCapacity {
  const SpannerInstancePartitionMaxCapacityMaxNodes(this.maxNodes);

  final TfArg<num> maxNodes;

  @override
  String get blockKey => 'max_nodes';

  @override
  Map<String, Object?> encode() => {'max_nodes': maxNodes.toTfJson()};
}

/// Typed helper for the `autoscaling_config.autoscaling_targets` block of
/// `google_spanner_instance_partition` (derived from provider schema).
@immutable
final class SpannerInstancePartitionAutoscalingTargets {
  const SpannerInstancePartitionAutoscalingTargets({
    this.highPriorityCpuUtilizationPercent,
    this.storageUtilizationPercent,
    this.totalCpuUtilizationPercent,
  });

  final TfArg<num>? highPriorityCpuUtilizationPercent;

  final TfArg<num>? storageUtilizationPercent;

  final TfArg<num>? totalCpuUtilizationPercent;

  Map<String, Object?> encode() => {
    'high_priority_cpu_utilization_percent': ?highPriorityCpuUtilizationPercent
        ?.toTfJson(),
    'storage_utilization_percent': ?storageUtilizationPercent?.toTfJson(),
    'total_cpu_utilization_percent': ?totalCpuUtilizationPercent?.toTfJson(),
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

  GoogleSpannerInstancePartition(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleSpannerInstance> instance,
    required RefTo<GoogleSpannerInstanceConfig> config,
    required TfArg<String> displayName,
    required SpannerInstancePartitionCapacity capacity,
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
           'instance': instance.encodeAs('name'),
           'config': config.encodeAs('name'),
           'display_name': displayName,
           ...capacity.argMap,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerInstancePartitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSpannerInstancePartition>`.
  RefTo<GoogleSpannerInstancePartition> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `config` attribute.
  TfRef<String> get config => TfRef.attribute<String>(this, 'config');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `processing_units` attribute.
  TfRef<num> get processingUnits =>
      TfRef.attribute<num>(this, 'processing_units');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
