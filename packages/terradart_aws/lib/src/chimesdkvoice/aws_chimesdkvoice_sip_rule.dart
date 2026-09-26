// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chimesdkvoice_sip_rule`.
const Set<String> _awsChimesdkvoiceSipRuleSensitive = <String>{};

/// Typed helper for the `target_applications` block of
/// `aws_chimesdkvoice_sip_rule` (derived from provider schema).
@immutable
final class ChimesdkvoiceSipRuleTargetApplications {
  const ChimesdkvoiceSipRuleTargetApplications({
    required this.awsRegion,
    required this.priority,
    required this.sipMediaApplicationId,
  });

  final TfArg<String> awsRegion;

  final TfArg<num> priority;

  final TfArg<String> sipMediaApplicationId;

  Map<String, Object?> encode() => {
    'aws_region': awsRegion.toTfJson(),
    'priority': priority.toTfJson(),
    'sip_media_application_id': sipMediaApplicationId.toTfJson(),
  };
}

/// Factory wrapper for `aws_chimesdkvoice_sip_rule`.
final class AwsChimesdkvoiceSipRule extends Resource {
  static const String tfType = 'aws_chimesdkvoice_sip_rule';

  AwsChimesdkvoiceSipRule({
    required super.localName,
    TfArg<bool>? disabled,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> triggerType,
    required TfArg<String> triggerValue,
    required List<ChimesdkvoiceSipRuleTargetApplications> targetApplications,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (disabled != null) 'disabled': disabled,
           'name': name,
           if (region != null) 'region': region,
           'trigger_type': triggerType,
           'trigger_value': triggerValue,
           'target_applications': TfArg.literal([
             for (final e in targetApplications) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsChimesdkvoiceSipRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
