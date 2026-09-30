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
    'compute_reservation': ?computeReservation?.toTfJson(),
    'share_decay_seconds': ?shareDecaySeconds?.toTfJson(),
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
    'weight_factor': ?weightFactor?.toTfJson(),
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
           'region': ?region,
           'tags': ?tags,
           if (fairSharePolicy != null)
             'fair_share_policy': TfArg.literal(fairSharePolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBatchSchedulingPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBatchSchedulingPolicy>`.
  RefTo<AwsBatchSchedulingPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
