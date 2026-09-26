// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rbin_rule`.
const Set<String> _awsRbinRuleSensitive = <String>{};

/// Typed helper for the `exclude_resource_tags` block of
/// `aws_rbin_rule` (derived from provider schema).
@immutable
final class RbinRuleExcludeResourceTags {
  const RbinRuleExcludeResourceTags({
    required this.resourceTagKey,
    this.resourceTagValue,
  });

  final TfArg<String> resourceTagKey;

  final TfArg<String>? resourceTagValue;

  Map<String, Object?> encode() => {
    'resource_tag_key': resourceTagKey.toTfJson(),
    if (resourceTagValue != null)
      'resource_tag_value': resourceTagValue!.toTfJson(),
  };
}

/// Typed helper for the `lock_configuration` block of
/// `aws_rbin_rule` (derived from provider schema).
@immutable
final class RbinRuleLockConfiguration {
  const RbinRuleLockConfiguration({required this.unlockDelay});

  final RbinRuleLockConfigurationUnlockDelay unlockDelay;

  Map<String, Object?> encode() => {'unlock_delay': unlockDelay.encode()};
}

/// Typed helper for the `lock_configuration.unlock_delay` block of
/// `aws_rbin_rule` (derived from provider schema).
@immutable
final class RbinRuleLockConfigurationUnlockDelay {
  const RbinRuleLockConfigurationUnlockDelay({
    required this.unlockDelayUnit,
    required this.unlockDelayValue,
  });

  final TfArg<String> unlockDelayUnit;

  final TfArg<num> unlockDelayValue;

  Map<String, Object?> encode() => {
    'unlock_delay_unit': unlockDelayUnit.toTfJson(),
    'unlock_delay_value': unlockDelayValue.toTfJson(),
  };
}

/// Typed helper for the `resource_tags` block of
/// `aws_rbin_rule` (derived from provider schema).
@immutable
final class RbinRuleResourceTags {
  const RbinRuleResourceTags({
    required this.resourceTagKey,
    this.resourceTagValue,
  });

  final TfArg<String> resourceTagKey;

  final TfArg<String>? resourceTagValue;

  Map<String, Object?> encode() => {
    'resource_tag_key': resourceTagKey.toTfJson(),
    if (resourceTagValue != null)
      'resource_tag_value': resourceTagValue!.toTfJson(),
  };
}

/// Typed helper for the `retention_period` block of
/// `aws_rbin_rule` (derived from provider schema).
@immutable
final class RbinRuleRetentionPeriod {
  const RbinRuleRetentionPeriod({
    required this.retentionPeriodUnit,
    required this.retentionPeriodValue,
  });

  final TfArg<String> retentionPeriodUnit;

  final TfArg<num> retentionPeriodValue;

  Map<String, Object?> encode() => {
    'retention_period_unit': retentionPeriodUnit.toTfJson(),
    'retention_period_value': retentionPeriodValue.toTfJson(),
  };
}

/// Factory wrapper for `aws_rbin_rule`.
final class AwsRbinRule extends Resource {
  static const String tfType = 'aws_rbin_rule';

  AwsRbinRule({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? region,
    required TfArg<String> resourceType,
    TfArg<Map<String, String>>? tags,
    List<RbinRuleExcludeResourceTags>? excludeResourceTags,
    RbinRuleLockConfiguration? lockConfiguration,
    List<RbinRuleResourceTags>? resourceTags,
    required RbinRuleRetentionPeriod retentionPeriod,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           'resource_type': resourceType,
           if (tags != null) 'tags': tags,
           if (excludeResourceTags != null)
             'exclude_resource_tags': TfArg.literal([
               for (final e in excludeResourceTags) e.encode(),
             ]),
           if (lockConfiguration != null)
             'lock_configuration': TfArg.literal(lockConfiguration.encode()),
           if (resourceTags != null)
             'resource_tags': TfArg.literal([
               for (final e in resourceTags) e.encode(),
             ]),
           'retention_period': TfArg.literal(retentionPeriod.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRbinRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `lock_end_time` attribute.
  TfRef<String> get lockEndTime =>
      TfRef.attribute<String>(this, 'lock_end_time');

  /// Reference to `lock_state` attribute.
  TfRef<String> get lockState => TfRef.attribute<String>(this, 'lock_state');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
