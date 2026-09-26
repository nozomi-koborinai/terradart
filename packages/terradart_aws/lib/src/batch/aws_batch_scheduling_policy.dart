// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_batch_scheduling_policy`.
const Set<String> _awsBatchSchedulingPolicySensitive = <String>{};

/// Typed helper for the `fair_share_policy` block of
/// `aws_batch_scheduling_policy` (derived from provider schema).
@immutable
final class BatchSchedulingPolicyFairSharePolicy {
  const BatchSchedulingPolicyFairSharePolicy({
    this.computeReservation,
    this.shareDecaySeconds,
    this.shareDistribution,
  });

  final TfArg<num>? computeReservation;

  final TfArg<num>? shareDecaySeconds;

  final List<BatchSchedulingPolicyFairSharePolicyShareDistribution>?
  shareDistribution;

  Map<String, Object?> encode() => {
    if (computeReservation != null)
      'compute_reservation': computeReservation!.toTfJson(),
    if (shareDecaySeconds != null)
      'share_decay_seconds': shareDecaySeconds!.toTfJson(),
    if (shareDistribution != null)
      'share_distribution': [for (final e in shareDistribution!) e.encode()],
  };
}

/// Typed helper for the `fair_share_policy.share_distribution` block of
/// `aws_batch_scheduling_policy` (derived from provider schema).
@immutable
final class BatchSchedulingPolicyFairSharePolicyShareDistribution {
  const BatchSchedulingPolicyFairSharePolicyShareDistribution({
    required this.shareIdentifier,
    this.weightFactor,
  });

  final TfArg<String> shareIdentifier;

  final TfArg<num>? weightFactor;

  Map<String, Object?> encode() => {
    'share_identifier': shareIdentifier.toTfJson(),
    if (weightFactor != null) 'weight_factor': weightFactor!.toTfJson(),
  };
}

/// Factory wrapper for `aws_batch_scheduling_policy`.
final class AwsBatchSchedulingPolicy extends Resource {
  static const String tfType = 'aws_batch_scheduling_policy';

  AwsBatchSchedulingPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    BatchSchedulingPolicyFairSharePolicy? fairSharePolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (fairSharePolicy != null)
             'fair_share_policy': TfArg.literal(fairSharePolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBatchSchedulingPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
