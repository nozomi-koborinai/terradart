// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53recoverycontrolconfig_safety_rule`.
const Set<String> _awsRoute53recoverycontrolconfigSafetyRuleSensitive =
    <String>{};

/// Typed helper for the `rule_config` block of
/// `aws_route53recoverycontrolconfig_safety_rule` (derived from provider schema).
@immutable
final class Route53recoverycontrolconfigSafetyRuleRuleConfig {
  const Route53recoverycontrolconfigSafetyRuleRuleConfig({
    required this.inverted,
    required this.threshold,
    required this.type,
  });

  final TfArg<bool> inverted;

  final TfArg<num> threshold;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'inverted': inverted.toTfJson(),
    'threshold': threshold.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53recoverycontrolconfig_safety_rule`.
final class AwsRoute53recoverycontrolconfigSafetyRule extends Resource {
  static const String tfType = 'aws_route53recoverycontrolconfig_safety_rule';

  AwsRoute53recoverycontrolconfigSafetyRule({
    required super.localName,
    TfArg<List<String>>? assertedControls,
    required TfArg<String> controlPanelArn,
    TfArg<List<String>>? gatingControls,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? targetControls,
    required TfArg<num> waitPeriodMs,
    required Route53recoverycontrolconfigSafetyRuleRuleConfig ruleConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (assertedControls != null) 'asserted_controls': assertedControls,
           'control_panel_arn': controlPanelArn,
           if (gatingControls != null) 'gating_controls': gatingControls,
           'name': name,
           if (tags != null) 'tags': tags,
           if (targetControls != null) 'target_controls': targetControls,
           'wait_period_ms': waitPeriodMs,
           'rule_config': TfArg.literal(ruleConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53recoverycontrolconfigSafetyRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
