// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_rule_deployment`.
const Set<String> _googleChronicleRuleDeploymentSensitive = <String>{};

/// Factory wrapper for `google_chronicle_rule_deployment`.
///
/// The RuleDeployment resource represents the deployment state of a Rule.
///
/// Chronicle (Google SecOps) **rule deployment** — enables / archives a
/// compiled [GoogleChronicleRule] (live detection + alerting).
///
/// **Cost / apply:** gcp-cost: Chronicle `144D-4907-2A21` Bytes of data
/// ingested in US for the Enterprise Plus package SKU `0310-AEE4-5DC1`
/// **$6.58/GBy** (plus dollar-based SecOps commitments). billing-behavior:
/// enabling a deployment runs detection against entitlement-gated SecOps
/// ingestion; alerting and live evaluation accrue while enabled. Not
/// applyable on `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `chronicle.googleapis.com` before apply. [rule] is the rule
/// resource name; [instance] / [location] must match the parent rule.
final class GoogleChronicleRuleDeployment extends Resource {
  static const String tfType = 'google_chronicle_rule_deployment';

  GoogleChronicleRuleDeployment({
    required super.localName,
    required TfArg<String> rule,
    required TfArg<String> location,
    required TfArg<String> instance,
    TfArg<bool>? enabled,
    TfArg<bool>? alerting,
    TfArg<bool>? archived,
    TfArg<String>? runFrequency,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'rule': rule,
           'location': location,
           'instance': instance,
           if (enabled != null) 'enabled': enabled,
           if (alerting != null) 'alerting': alerting,
           if (archived != null) 'archived': archived,
           if (runFrequency != null) 'run_frequency': runFrequency,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleRuleDeploymentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `archive_time` attribute.
  TfRef<String> get archiveTime =>
      TfRef.attribute<String>(this, 'archive_time');

  /// Reference to `consumer_rules` attribute.
  TfRef<List<String>> get consumerRules =>
      TfRef.attribute<List<String>>(this, 'consumer_rules');

  /// Reference to `execution_state` attribute.
  TfRef<String> get executionState =>
      TfRef.attribute<String>(this, 'execution_state');

  /// Reference to `last_alert_status_change_time` attribute.
  TfRef<String> get lastAlertStatusChangeTime =>
      TfRef.attribute<String>(this, 'last_alert_status_change_time');

  /// Reference to `producer_rules` attribute.
  TfRef<List<String>> get producerRules =>
      TfRef.attribute<List<String>>(this, 'producer_rules');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
