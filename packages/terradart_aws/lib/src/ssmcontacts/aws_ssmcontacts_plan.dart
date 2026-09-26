// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssmcontacts_plan`.
const Set<String> _awsSsmcontactsPlanSensitive = <String>{};

/// Typed helper for the `stage` block of
/// `aws_ssmcontacts_plan` (derived from provider schema).
@immutable
final class SsmcontactsPlanStage {
  const SsmcontactsPlanStage({required this.durationInMinutes, this.target});

  final TfArg<num> durationInMinutes;

  final List<SsmcontactsPlanStageTarget>? target;

  Map<String, Object?> encode() => {
    'duration_in_minutes': durationInMinutes.toTfJson(),
    if (target != null) 'target': [for (final e in target!) e.encode()],
  };
}

/// Typed helper for the `stage.target` block of
/// `aws_ssmcontacts_plan` (derived from provider schema).
@immutable
final class SsmcontactsPlanStageTarget {
  const SsmcontactsPlanStageTarget({
    this.channelTargetInfo,
    this.contactTargetInfo,
  });

  final SsmcontactsPlanStageTargetChannelTargetInfo? channelTargetInfo;

  final SsmcontactsPlanStageTargetContactTargetInfo? contactTargetInfo;

  Map<String, Object?> encode() => {
    if (channelTargetInfo != null)
      'channel_target_info': channelTargetInfo!.encode(),
    if (contactTargetInfo != null)
      'contact_target_info': contactTargetInfo!.encode(),
  };
}

/// Typed helper for the `stage.target.channel_target_info` block of
/// `aws_ssmcontacts_plan` (derived from provider schema).
@immutable
final class SsmcontactsPlanStageTargetChannelTargetInfo {
  const SsmcontactsPlanStageTargetChannelTargetInfo({
    required this.contactChannelId,
    this.retryIntervalInMinutes,
  });

  final TfArg<String> contactChannelId;

  final TfArg<num>? retryIntervalInMinutes;

  Map<String, Object?> encode() => {
    'contact_channel_id': contactChannelId.toTfJson(),
    if (retryIntervalInMinutes != null)
      'retry_interval_in_minutes': retryIntervalInMinutes!.toTfJson(),
  };
}

/// Typed helper for the `stage.target.contact_target_info` block of
/// `aws_ssmcontacts_plan` (derived from provider schema).
@immutable
final class SsmcontactsPlanStageTargetContactTargetInfo {
  const SsmcontactsPlanStageTargetContactTargetInfo({
    this.contactId,
    required this.isEssential,
  });

  final TfArg<String>? contactId;

  final TfArg<bool> isEssential;

  Map<String, Object?> encode() => {
    if (contactId != null) 'contact_id': contactId!.toTfJson(),
    'is_essential': isEssential.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssmcontacts_plan`.
final class AwsSsmcontactsPlan extends Resource {
  static const String tfType = 'aws_ssmcontacts_plan';

  AwsSsmcontactsPlan({
    required super.localName,
    required TfArg<String> contactId,
    TfArg<String>? region,
    required List<SsmcontactsPlanStage> stage,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'contact_id': contactId,
           if (region != null) 'region': region,
           'stage': TfArg.literal([for (final e in stage) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmcontactsPlanSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
