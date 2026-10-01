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
  ) = Route53recoverycontrolconfigSafetyRuleAssertedControls;

  /// Sets `gating_controls`.
  const factory Route53recoverycontrolconfigSafetyRuleControls.gatingControls(
    TfArg<List<String>> gatingControls,
  ) = Route53recoverycontrolconfigSafetyRuleGatingControls;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Route53recoverycontrolconfigSafetyRuleControls.assertedControls] choice: sets `asserted_controls`.
final class Route53recoverycontrolconfigSafetyRuleAssertedControls
    extends Route53recoverycontrolconfigSafetyRuleControls {
  const Route53recoverycontrolconfigSafetyRuleAssertedControls(
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
final class Route53recoverycontrolconfigSafetyRuleGatingControls
    extends Route53recoverycontrolconfigSafetyRuleControls {
  const Route53recoverycontrolconfigSafetyRuleGatingControls(
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
final class Route53recoverycontrolconfigSafetyRuleConfig {
  const Route53recoverycontrolconfigSafetyRuleConfig({
    required this.inverted,
    required this.threshold,
    required this.type,
  });

  final TfArg<bool> inverted;

  final TfArg<num> threshold;

  final Route53recoverycontrolconfigSafetyRuleType type;

  Map<String, Object?> encode() => {
    'inverted': inverted.toTfJson(),
    'threshold': threshold.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const Route53recoverycontrolconfigSafetyRuleType._(
  TfArg<String> _
) implements TfArg<String> {
  Route53recoverycontrolconfigSafetyRuleType.variable(String name)
    : this._(TfArg.variable(name));
  Route53recoverycontrolconfigSafetyRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const Route53recoverycontrolconfigSafetyRuleType.arg(TfArg<String> arg)
    : this._(arg);

  static const atleast = Route53recoverycontrolconfigSafetyRuleType._(
    TfArgLiteral('ATLEAST'),
  );
  static const and = Route53recoverycontrolconfigSafetyRuleType._(
    TfArgLiteral('AND'),
  );
  static const or = Route53recoverycontrolconfigSafetyRuleType._(
    TfArgLiteral('OR'),
  );

  static const List<Route53recoverycontrolconfigSafetyRuleType> values = [
    atleast,
    and,
    or,
  ];
}

/// Factory wrapper for `aws_route53recoverycontrolconfig_safety_rule`.
final class AwsRoute53recoverycontrolconfigSafetyRule extends Resource {
  static const String tfType = 'aws_route53recoverycontrolconfig_safety_rule';

  AwsRoute53recoverycontrolconfigSafetyRule(
    super.localName, {
    required Route53recoverycontrolconfigSafetyRuleControls controls,
    required TfArg<String> controlPanelArn,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? targetControls,
    required TfArg<num> waitPeriodMs,
    required Route53recoverycontrolconfigSafetyRuleConfig ruleConfig,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `asserted_controls` attribute.
  TfRef<List<String>> get assertedControls =>
      TfRef.attribute<List<String>>(this, 'asserted_controls');

  /// Reference to `control_panel_arn` attribute.
  TfRef<String> get controlPanelArn =>
      TfRef.attribute<String>(this, 'control_panel_arn');

  /// Reference to `gating_controls` attribute.
  TfRef<List<String>> get gatingControls =>
      TfRef.attribute<List<String>>(this, 'gating_controls');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_controls` attribute.
  TfRef<List<String>> get targetControls =>
      TfRef.attribute<List<String>>(this, 'target_controls');

  /// Reference to `wait_period_ms` attribute.
  TfRef<num> get waitPeriodMs => TfRef.attribute<num>(this, 'wait_period_ms');
}
