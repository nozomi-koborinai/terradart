// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53recoverycontrolconfig_safety_rule`.
const Set<String> _awsRoute53recoverycontrolconfigSafetyRuleSensitive =
    <String>{};

/// Exactly one of `asserted_controls`, `gating_controls` on `aws_route53recoverycontrolconfig_safety_rule`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.assertedControls(...)`.
sealed class Route53recoverycontrolconfigSafetyRuleControls {
  const Route53recoverycontrolconfigSafetyRuleControls();

  /// Sets `asserted_controls`.
  const factory Route53recoverycontrolconfigSafetyRuleControls.assertedControls(
    TfArg<List<String>> assertedControls,
  ) = Route53recoverycontrolconfigSafetyRuleControlsAssertedControls;

  /// Sets `gating_controls`.
  const factory Route53recoverycontrolconfigSafetyRuleControls.gatingControls(
    TfArg<List<String>> gatingControls,
  ) = Route53recoverycontrolconfigSafetyRuleControlsGatingControls;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Route53recoverycontrolconfigSafetyRuleControls.assertedControls] choice: sets `asserted_controls`.
final class Route53recoverycontrolconfigSafetyRuleControlsAssertedControls
    extends Route53recoverycontrolconfigSafetyRuleControls {
  const Route53recoverycontrolconfigSafetyRuleControlsAssertedControls(
    this.assertedControls,
  );

  final TfArg<List<String>> assertedControls;

  @override
  String get blockKey => 'asserted_controls';

  @override
  Map<String, Object?> encode() => {
    'asserted_controls': assertedControls.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'asserted_controls': assertedControls,
  };
}

/// The [Route53recoverycontrolconfigSafetyRuleControls.gatingControls] choice: sets `gating_controls`.
final class Route53recoverycontrolconfigSafetyRuleControlsGatingControls
    extends Route53recoverycontrolconfigSafetyRuleControls {
  const Route53recoverycontrolconfigSafetyRuleControlsGatingControls(
    this.gatingControls,
  );

  final TfArg<List<String>> gatingControls;

  @override
  String get blockKey => 'gating_controls';

  @override
  Map<String, Object?> encode() => {
    'gating_controls': gatingControls.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'gating_controls': gatingControls};
}

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

  final TfArg<Route53recoverycontrolconfigSafetyRuleRuleConfigType> type;

  Map<String, Object?> encode() => {
    'inverted': inverted.toTfJson(),
    'threshold': threshold.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum Route53recoverycontrolconfigSafetyRuleRuleConfigType
    implements TerraformEnum {
  atleast('ATLEAST'),
  and('AND'),
  or('OR');

  const Route53recoverycontrolconfigSafetyRuleRuleConfigType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_route53recoverycontrolconfig_safety_rule`.
final class AwsRoute53recoverycontrolconfigSafetyRule extends Resource {
  static const String tfType = 'aws_route53recoverycontrolconfig_safety_rule';

  AwsRoute53recoverycontrolconfigSafetyRule({
    required super.localName,
    required Route53recoverycontrolconfigSafetyRuleControls controls,
    required TfArg<String> controlPanelArn,
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
           ...controls.argMap,
           'control_panel_arn': controlPanelArn,
           'name': name,
           'tags': ?tags,
           'target_controls': ?targetControls,
           'wait_period_ms': waitPeriodMs,
           'rule_config': TfArg.literal(ruleConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53recoverycontrolconfigSafetyRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53recoverycontrolconfigSafetyRule>`.
  RefTo<AwsRoute53recoverycontrolconfigSafetyRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
