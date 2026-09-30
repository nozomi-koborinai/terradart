// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chimesdkvoice_sip_rule`.
const Set<String> _awsChimesdkvoiceSipRuleSensitive = <String>{};

/// Chimesdkvoice Sip Rule Trigger enum for `trigger_type`.
enum ChimesdkvoiceSipRuleTriggerType implements TerraformEnum {
  tophonenumber('ToPhoneNumber'),
  requesturihostname('RequestUriHostname');

  const ChimesdkvoiceSipRuleTriggerType(this.terraformValue);
  @override
  final String terraformValue;
}

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
    required TfArg<ChimesdkvoiceSipRuleTriggerType> triggerType,
    required TfArg<String> triggerValue,
    required List<ChimesdkvoiceSipRuleTargetApplications> targetApplications,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disabled': ?disabled,
           'name': name,
           'region': ?region,
           'trigger_type': triggerType,
           'trigger_value': triggerValue,
           'target_applications': TfArg.literal([
             for (final e in targetApplications) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsChimesdkvoiceSipRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsChimesdkvoiceSipRule>`.
  RefTo<AwsChimesdkvoiceSipRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabledRef => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `trigger_type` attribute.
  TfRef<String> get triggerTypeRef =>
      TfRef.attribute<String>(this, 'trigger_type');

  /// Reference to `trigger_value` attribute.
  TfRef<String> get triggerValueRef =>
      TfRef.attribute<String>(this, 'trigger_value');
}
