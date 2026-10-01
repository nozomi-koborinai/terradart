// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_chimesdkvoice_sip_rule`.
const Set<String> _awsChimesdkvoiceSipRuleSensitive = <String>{};

/// Chimesdkvoice Sip Rule Trigger enum for `trigger_type`.
extension type const ChimesdkvoiceSipRuleTriggerType._(TfArg<String> _)
    implements TfArg<String> {
  ChimesdkvoiceSipRuleTriggerType.variable(String name)
    : this._(TfArg.variable(name));
  ChimesdkvoiceSipRuleTriggerType.expression(String template)
    : this._(TfArg.expression(template));
  const ChimesdkvoiceSipRuleTriggerType.arg(TfArg<String> arg) : this._(arg);

  static const tophonenumber = ChimesdkvoiceSipRuleTriggerType._(
    TfArgLiteral('ToPhoneNumber'),
  );
  static const requesturihostname = ChimesdkvoiceSipRuleTriggerType._(
    TfArgLiteral('RequestUriHostname'),
  );

  static const List<ChimesdkvoiceSipRuleTriggerType> values = [
    tophonenumber,
    requesturihostname,
  ];
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

  AwsChimesdkvoiceSipRule(
    super.localName, {
    TfArg<bool>? disabled,
    required TfArg<String> name,
    TfArg<String>? region,
    required ChimesdkvoiceSipRuleTriggerType triggerType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `trigger_type` attribute.
  TfRef<String> get triggerType =>
      TfRef.attribute<String>(this, 'trigger_type');

  /// Reference to `trigger_value` attribute.
  TfRef<String> get triggerValue =>
      TfRef.attribute<String>(this, 'trigger_value');
}
