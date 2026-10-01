// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rbin_rule`.
const Set<String> _awsRbinRuleSensitive = <String>{};

/// Rbin Rule Resource enum for `resource_type`.
enum RbinRuleResourceType implements TerraformEnum {
  ebsSnapshot('EBS_SNAPSHOT'),
  ec2Image('EC2_IMAGE'),
  ebsVolume('EBS_VOLUME');

  const RbinRuleResourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `exclude_resource_tags`, `resource_tags` on `aws_rbin_rule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.excludeResourceTags(...)`.
sealed class RbinRuleTagFilter {
  const RbinRuleTagFilter();

  /// Sets `exclude_resource_tags`.
  const factory RbinRuleTagFilter.excludeResourceTags(
    List<RbinRuleExcludeResourceTags> excludeResourceTags,
  ) = RbinRuleTagFilterExcludeResourceTags;

  /// Sets `resource_tags`.
  const factory RbinRuleTagFilter.resourceTags(
    List<RbinRuleResourceTags> resourceTags,
  ) = RbinRuleTagFilterResourceTags;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RbinRuleTagFilter.excludeResourceTags] choice: sets `exclude_resource_tags`.
final class RbinRuleTagFilterExcludeResourceTags extends RbinRuleTagFilter {
  const RbinRuleTagFilterExcludeResourceTags(this.excludeResourceTags);

  final List<RbinRuleExcludeResourceTags> excludeResourceTags;

  @override
  String get blockKey => 'exclude_resource_tags';

  @override
  Map<String, Object?> encode() => {
    'exclude_resource_tags': [for (final e in excludeResourceTags) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'exclude_resource_tags': TfArg.literal([
      for (final e in excludeResourceTags) e.encode(),
    ]),
  };
}

/// The [RbinRuleTagFilter.resourceTags] choice: sets `resource_tags`.
final class RbinRuleTagFilterResourceTags extends RbinRuleTagFilter {
  const RbinRuleTagFilterResourceTags(this.resourceTags);

  final List<RbinRuleResourceTags> resourceTags;

  @override
  String get blockKey => 'resource_tags';

  @override
  Map<String, Object?> encode() => {
    'resource_tags': [for (final e in resourceTags) e.encode()],
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'resource_tags': TfArg.literal([for (final e in resourceTags) e.encode()]),
  };
}

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
    'resource_tag_value': ?resourceTagValue?.toTfJson(),
  };
}

/// Typed helper for the `lock_configuration` block of
/// `aws_rbin_rule` (derived from provider schema).
@immutable
final class RbinRuleLockConfiguration {
  const RbinRuleLockConfiguration({required this.unlockDelay});

  final RbinRuleUnlockDelay unlockDelay;

  Map<String, Object?> encode() => {'unlock_delay': unlockDelay.encode()};
}

/// Typed helper for the `lock_configuration.unlock_delay` block of
/// `aws_rbin_rule` (derived from provider schema).
@immutable
final class RbinRuleUnlockDelay {
  const RbinRuleUnlockDelay({
    required this.unlockDelayUnit,
    required this.unlockDelayValue,
  });

  final TfArg<RbinRuleUnlockDelayUnit> unlockDelayUnit;

  final TfArg<num> unlockDelayValue;

  Map<String, Object?> encode() => {
    'unlock_delay_unit': unlockDelayUnit.toTfJson(),
    'unlock_delay_value': unlockDelayValue.toTfJson(),
  };
}

/// `unlock_delay_unit` — derived from the provider schema description.
enum RbinRuleUnlockDelayUnit implements TerraformEnum {
  days('DAYS');

  const RbinRuleUnlockDelayUnit(this.terraformValue);
  @override
  final String terraformValue;
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
    'resource_tag_value': ?resourceTagValue?.toTfJson(),
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

  final TfArg<RbinRuleRetentionPeriodUnit> retentionPeriodUnit;

  final TfArg<num> retentionPeriodValue;

  Map<String, Object?> encode() => {
    'retention_period_unit': retentionPeriodUnit.toTfJson(),
    'retention_period_value': retentionPeriodValue.toTfJson(),
  };
}

/// `retention_period_unit` — derived from the provider schema description.
enum RbinRuleRetentionPeriodUnit implements TerraformEnum {
  days('DAYS');

  const RbinRuleRetentionPeriodUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_rbin_rule`.
final class AwsRbinRule extends Resource {
  static const String tfType = 'aws_rbin_rule';

  AwsRbinRule({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? region,
    required TfArg<RbinRuleResourceType> resourceType,
    TfArg<Map<String, String>>? tags,
    RbinRuleTagFilter? tagFilter,
    RbinRuleLockConfiguration? lockConfiguration,
    required RbinRuleRetentionPeriod retentionPeriod,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'region': ?region,
           'resource_type': resourceType,
           'tags': ?tags,
           ...?tagFilter?.argMap,
           if (lockConfiguration != null)
             'lock_configuration': TfArg.literal(lockConfiguration.encode()),
           'retention_period': TfArg.literal(retentionPeriod.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRbinRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRbinRule>`.
  RefTo<AwsRbinRule> get ref => RefTo.of(this);

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
