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

  final List<SsmcontactsPlanTarget>? target;

  Map<String, Object?> encode() => {
    'duration_in_minutes': durationInMinutes.toTfJson(),
    if (target != null) 'target': [for (final e in target!) e.encode()],
  };
}

/// Typed helper for the `stage.target` block of
/// `aws_ssmcontacts_plan` (derived from provider schema).
@immutable
final class SsmcontactsPlanTarget {
  const SsmcontactsPlanTarget({this.channelTargetInfo, this.contactTargetInfo});

  final SsmcontactsPlanChannelTargetInfo? channelTargetInfo;

  final SsmcontactsPlanContactTargetInfo? contactTargetInfo;

  Map<String, Object?> encode() => {
    'channel_target_info': ?channelTargetInfo?.encode(),
    'contact_target_info': ?contactTargetInfo?.encode(),
  };
}

/// Typed helper for the `stage.target.channel_target_info` block of
/// `aws_ssmcontacts_plan` (derived from provider schema).
@immutable
final class SsmcontactsPlanChannelTargetInfo {
  const SsmcontactsPlanChannelTargetInfo({
    required this.contactChannelId,
    this.retryIntervalInMinutes,
  });

  final TfArg<String> contactChannelId;

  final TfArg<num>? retryIntervalInMinutes;

  Map<String, Object?> encode() => {
    'contact_channel_id': contactChannelId.toTfJson(),
    'retry_interval_in_minutes': ?retryIntervalInMinutes?.toTfJson(),
  };
}

/// Typed helper for the `stage.target.contact_target_info` block of
/// `aws_ssmcontacts_plan` (derived from provider schema).
@immutable
final class SsmcontactsPlanContactTargetInfo {
  const SsmcontactsPlanContactTargetInfo({
    this.contactId,
    required this.isEssential,
  });

  final TfArg<String>? contactId;

  final TfArg<bool> isEssential;

  Map<String, Object?> encode() => {
    'contact_id': ?contactId?.toTfJson(),
    'is_essential': isEssential.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssmcontacts_plan`.
final class AwsSsmcontactsPlan extends Resource {
  static const String tfType = 'aws_ssmcontacts_plan';

  AwsSsmcontactsPlan(
    super.localName, {
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
           'region': ?region,
           'stage': TfArg.literal([for (final e in stage) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmcontactsPlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmcontactsPlan>`.
  RefTo<AwsSsmcontactsPlan> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `contact_id` attribute.
  TfRef<String> get contactId => TfRef.attribute<String>(this, 'contact_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
