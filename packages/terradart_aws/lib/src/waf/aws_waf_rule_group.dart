// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_rule_group`.
const Set<String> _awsWafRuleGroupSensitive = <String>{};

/// Typed helper for the `activated_rule` block of
/// `aws_waf_rule_group` (derived from provider schema).
@immutable
final class WafRuleGroupActivatedRule {
  const WafRuleGroupActivatedRule({
    required this.priority,
    required this.ruleId,
    this.type,
    required this.action,
  });

  final TfArg<num> priority;

  final TfArg<String> ruleId;

  final TfArg<String>? type;

  final WafRuleGroupActivatedRuleAction action;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'rule_id': ruleId.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    'action': action.encode(),
  };
}

/// Typed helper for the `activated_rule.action` block of
/// `aws_waf_rule_group` (derived from provider schema).
@immutable
final class WafRuleGroupActivatedRuleAction {
  const WafRuleGroupActivatedRuleAction({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `aws_waf_rule_group`.
final class AwsWafRuleGroup extends Resource {
  static const String tfType = 'aws_waf_rule_group';

  AwsWafRuleGroup({
    required super.localName,
    required TfArg<String> metricName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    List<WafRuleGroupActivatedRule>? activatedRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metric_name': metricName,
           'name': name,
           if (tags != null) 'tags': tags,
           if (activatedRule != null)
             'activated_rule': TfArg.literal([
               for (final e in activatedRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafRuleGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
