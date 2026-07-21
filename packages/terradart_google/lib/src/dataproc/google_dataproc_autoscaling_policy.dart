// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataproc_autoscaling_policy`.
const Set<String> _googleDataprocAutoscalingPolicySensitive = <String>{};

/// Typed helper for the `basic_algorithm` block of
/// `google_dataproc_autoscaling_policy` (derived from provider schema).
@immutable
final class DataprocAutoscalingPolicyBasicAlgorithm {
  const DataprocAutoscalingPolicyBasicAlgorithm({
    this.cooldownPeriod,
    required this.yarnConfig,
  });

  final TfArg<String>? cooldownPeriod;

  final DataprocAutoscalingPolicyBasicAlgorithmYarnConfig yarnConfig;

  Map<String, Object?> encode() => {
    if (cooldownPeriod != null) 'cooldown_period': cooldownPeriod!.toTfJson(),
    'yarn_config': yarnConfig.encode(),
  };
}

/// Typed helper for the `basic_algorithm.yarn_config` block of
/// `google_dataproc_autoscaling_policy` (derived from provider schema).
@immutable
final class DataprocAutoscalingPolicyBasicAlgorithmYarnConfig {
  const DataprocAutoscalingPolicyBasicAlgorithmYarnConfig({
    required this.gracefulDecommissionTimeout,
    required this.scaleDownFactor,
    this.scaleDownMinWorkerFraction,
    required this.scaleUpFactor,
    this.scaleUpMinWorkerFraction,
  });

  final TfArg<String> gracefulDecommissionTimeout;

  final TfArg<num> scaleDownFactor;

  final TfArg<num>? scaleDownMinWorkerFraction;

  final TfArg<num> scaleUpFactor;

  final TfArg<num>? scaleUpMinWorkerFraction;

  Map<String, Object?> encode() => {
    'graceful_decommission_timeout': gracefulDecommissionTimeout.toTfJson(),
    'scale_down_factor': scaleDownFactor.toTfJson(),
    if (scaleDownMinWorkerFraction != null)
      'scale_down_min_worker_fraction': scaleDownMinWorkerFraction!.toTfJson(),
    'scale_up_factor': scaleUpFactor.toTfJson(),
    if (scaleUpMinWorkerFraction != null)
      'scale_up_min_worker_fraction': scaleUpMinWorkerFraction!.toTfJson(),
  };
}

/// Typed helper for the `secondary_worker_config` block of
/// `google_dataproc_autoscaling_policy` (derived from provider schema).
@immutable
final class DataprocAutoscalingPolicySecondaryWorkerConfig {
  const DataprocAutoscalingPolicySecondaryWorkerConfig({
    this.maxInstances,
    this.minInstances,
    this.weight,
  });

  final TfArg<num>? maxInstances;

  final TfArg<num>? minInstances;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    if (maxInstances != null) 'max_instances': maxInstances!.toTfJson(),
    if (minInstances != null) 'min_instances': minInstances!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Typed helper for the `worker_config` block of
/// `google_dataproc_autoscaling_policy` (derived from provider schema).
@immutable
final class DataprocAutoscalingPolicyWorkerConfig {
  const DataprocAutoscalingPolicyWorkerConfig({
    required this.maxInstances,
    this.minInstances,
    this.weight,
  });

  final TfArg<num> maxInstances;

  final TfArg<num>? minInstances;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'max_instances': maxInstances.toTfJson(),
    if (minInstances != null) 'min_instances': minInstances!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
  };
}

/// Factory wrapper for `google_dataproc_autoscaling_policy`.
///
/// Describes an autoscaling policy for Dataproc cluster autoscaler.
///
/// Dataproc **autoscaling policy** — a reusable YARN autoscaler document
/// clusters can attach via `cluster_config.autoscaling_config.policy_uri`.
///
/// Creating a policy alone does not provision VMs. Prefer a thin smoke
/// stack with [policyId], [location], [workerConfig], and
/// [basicAlgorithm].`yarnConfig` (no sibling cluster).
///
/// Enable `dataproc.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleDataprocAutoscalingPolicy(
///   localName: 'asp',
///   policyId: TfArg.literal('terradart-asp'),
///   location: TfArg.literal('us-central1'),
///   workerConfig: DataprocAutoscalingPolicyWorkerConfig(
///     maxInstances: TfArg.literal(3),
///   ),
///   basicAlgorithm: DataprocAutoscalingPolicyBasicAlgorithm(
///     yarnConfig: DataprocAutoscalingPolicyBasicAlgorithmYarnConfig(
///       gracefulDecommissionTimeout: TfArg.literal('30s'),
///       scaleUpFactor: TfArg.literal(0.5),
///       scaleDownFactor: TfArg.literal(0.5),
///     ),
///   ),
/// );
/// ```
final class GoogleDataprocAutoscalingPolicy extends Resource {
  static const String tfType = 'google_dataproc_autoscaling_policy';

  GoogleDataprocAutoscalingPolicy({
    required super.localName,
    required TfArg<String> policyId,
    TfArg<String>? location,
    DataprocAutoscalingPolicyWorkerConfig? workerConfig,
    DataprocAutoscalingPolicySecondaryWorkerConfig? secondaryWorkerConfig,
    DataprocAutoscalingPolicyBasicAlgorithm? basicAlgorithm,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_id': policyId,
           if (location != null) 'location': location,
           if (workerConfig != null)
             'worker_config': TfArg.literal(workerConfig.encode()),
           if (secondaryWorkerConfig != null)
             'secondary_worker_config': TfArg.literal(
               secondaryWorkerConfig.encode(),
             ),
           if (basicAlgorithm != null)
             'basic_algorithm': TfArg.literal(basicAlgorithm.encode()),
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataprocAutoscalingPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
