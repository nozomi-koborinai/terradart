// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_sentinel_automation_rule`.
const Set<String> _azurermSentinelAutomationRuleSensitive = <String>{};

/// Sentinel Automation Rule Triggers enum for `triggers_on`.
extension type const SentinelAutomationRuleTriggersOn._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAutomationRuleTriggersOn.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAutomationRuleTriggersOn.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAutomationRuleTriggersOn.arg(TfArg<String> arg) : this._(arg);

  static const alerts = SentinelAutomationRuleTriggersOn._(
    TfArgLiteral('Alerts'),
  );
  static const incidents = SentinelAutomationRuleTriggersOn._(
    TfArgLiteral('Incidents'),
  );

  static const List<SentinelAutomationRuleTriggersOn> values = [
    alerts,
    incidents,
  ];
}

/// Sentinel Automation Rule Triggers enum for `triggers_when`.
extension type const SentinelAutomationRuleTriggersWhen._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAutomationRuleTriggersWhen.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAutomationRuleTriggersWhen.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAutomationRuleTriggersWhen.arg(TfArg<String> arg) : this._(arg);

  static const created = SentinelAutomationRuleTriggersWhen._(
    TfArgLiteral('Created'),
  );
  static const updated = SentinelAutomationRuleTriggersWhen._(
    TfArgLiteral('Updated'),
  );

  static const List<SentinelAutomationRuleTriggersWhen> values = [
    created,
    updated,
  ];
}

/// Typed helper for the `action_incident` block of
/// `azurerm_sentinel_automation_rule` (derived from provider schema).
@immutable
final class SentinelAutomationRuleActionIncident {
  const SentinelAutomationRuleActionIncident({
    this.classification,
    this.classificationComment,
    this.labels,
    required this.order,
    this.ownerId,
    this.severity,
    this.status,
  });

  final SentinelAutomationRuleClassification? classification;

  final TfArg<String>? classificationComment;

  final TfArg<List<String>>? labels;

  final TfArg<num> order;

  final TfArg<String>? ownerId;

  final SentinelAutomationRuleSeverity? severity;

  final SentinelAutomationRuleStatus? status;

  @internal
  Map<String, Object?> encode() => {
    'classification': ?classification?.toTfJson(),
    'classification_comment': ?classificationComment?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'order': order.toTfJson(),
    'owner_id': ?ownerId?.toTfJson(),
    'severity': ?severity?.toTfJson(),
    'status': ?status?.toTfJson(),
  };
}

/// `classification` — derived from the provider schema description.
extension type const SentinelAutomationRuleClassification._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAutomationRuleClassification.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAutomationRuleClassification.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAutomationRuleClassification.arg(TfArg<String> arg)
    : this._(arg);

  static const undetermined = SentinelAutomationRuleClassification._(
    TfArgLiteral('Undetermined'),
  );
  static const benignpositiveSuspiciousbutexpected =
      SentinelAutomationRuleClassification._(
        TfArgLiteral('BenignPositive_SuspiciousButExpected'),
      );
  static const falsepositiveIncorrectalertlogic =
      SentinelAutomationRuleClassification._(
        TfArgLiteral('FalsePositive_IncorrectAlertLogic'),
      );
  static const falsepositiveInaccuratedata =
      SentinelAutomationRuleClassification._(
        TfArgLiteral('FalsePositive_InaccurateData'),
      );
  static const truepositiveSuspiciousactivity =
      SentinelAutomationRuleClassification._(
        TfArgLiteral('TruePositive_SuspiciousActivity'),
      );

  static const List<SentinelAutomationRuleClassification> values = [
    undetermined,
    benignpositiveSuspiciousbutexpected,
    falsepositiveIncorrectalertlogic,
    falsepositiveInaccuratedata,
    truepositiveSuspiciousactivity,
  ];
}

/// `severity` — derived from the provider schema description.
extension type const SentinelAutomationRuleSeverity._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAutomationRuleSeverity.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAutomationRuleSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAutomationRuleSeverity.arg(TfArg<String> arg) : this._(arg);

  static const high = SentinelAutomationRuleSeverity._(TfArgLiteral('High'));
  static const informational = SentinelAutomationRuleSeverity._(
    TfArgLiteral('Informational'),
  );
  static const low = SentinelAutomationRuleSeverity._(TfArgLiteral('Low'));
  static const medium = SentinelAutomationRuleSeverity._(
    TfArgLiteral('Medium'),
  );

  static const List<SentinelAutomationRuleSeverity> values = [
    high,
    informational,
    low,
    medium,
  ];
}

/// `status` — derived from the provider schema description.
extension type const SentinelAutomationRuleStatus._(TfArg<String> _)
    implements TfArg<String> {
  SentinelAutomationRuleStatus.variable(String name)
    : this._(TfArg.variable(name));
  SentinelAutomationRuleStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SentinelAutomationRuleStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = SentinelAutomationRuleStatus._(TfArgLiteral('Active'));
  static const closed = SentinelAutomationRuleStatus._(TfArgLiteral('Closed'));
  static const newCase = SentinelAutomationRuleStatus._(TfArgLiteral('New'));

  static const List<SentinelAutomationRuleStatus> values = [
    active,
    closed,
    newCase,
  ];
}

/// Typed helper for the `action_incident_task` block of
/// `azurerm_sentinel_automation_rule` (derived from provider schema).
@immutable
final class SentinelAutomationRuleActionIncidentTask {
  const SentinelAutomationRuleActionIncidentTask({
    this.description,
    required this.order,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<num> order;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'order': order.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Typed helper for the `action_playbook` block of
/// `azurerm_sentinel_automation_rule` (derived from provider schema).
@immutable
final class SentinelAutomationRuleActionPlaybook {
  const SentinelAutomationRuleActionPlaybook({
    required this.logicAppId,
    required this.order,
    this.tenantId,
  });

  final TfArg<String> logicAppId;

  final TfArg<num> order;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'logic_app_id': logicAppId.toTfJson(),
    'order': order.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_sentinel_automation_rule`.
final class AzurermSentinelAutomationRule extends Resource {
  static const String tfType = 'azurerm_sentinel_automation_rule';

  AzurermSentinelAutomationRule(
    super.localName, {
    TfArg<String>? conditionJson,
    required TfArg<String> displayName,
    TfArg<bool>? enabled,
    TfArg<String>? expiration,
    required TfArg<String> logAnalyticsWorkspaceId,
    required TfArg<String> name,
    required TfArg<num> order,
    SentinelAutomationRuleTriggersOn? triggersOn,
    SentinelAutomationRuleTriggersWhen? triggersWhen,
    List<SentinelAutomationRuleActionIncident>? actionIncident,
    List<SentinelAutomationRuleActionIncidentTask>? actionIncidentTask,
    List<SentinelAutomationRuleActionPlaybook>? actionPlaybook,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'condition_json': ?conditionJson,
           'display_name': displayName,
           'enabled': ?enabled,
           'expiration': ?expiration,
           'log_analytics_workspace_id': logAnalyticsWorkspaceId,
           'name': name,
           'order': order,
           'triggers_on': ?triggersOn,
           'triggers_when': ?triggersWhen,
           if (actionIncident != null)
             'action_incident': TfArg.literal([
               for (final e in actionIncident) e.encode(),
             ]),
           if (actionIncidentTask != null)
             'action_incident_task': TfArg.literal([
               for (final e in actionIncidentTask) e.encode(),
             ]),
           if (actionPlaybook != null)
             'action_playbook': TfArg.literal([
               for (final e in actionPlaybook) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSentinelAutomationRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSentinelAutomationRule>`.
  RefTo<AzurermSentinelAutomationRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `condition_json` attribute.
  TfRef<String> get conditionJson =>
      TfRef.attribute<String>(this, 'condition_json');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `log_analytics_workspace_id` attribute.
  TfRef<String> get logAnalyticsWorkspaceId =>
      TfRef.attribute<String>(this, 'log_analytics_workspace_id');

  /// Reference to `order` attribute.
  TfRef<num> get order => TfRef.attribute<num>(this, 'order');

  /// Reference to `triggers_on` attribute.
  TfRef<String> get triggersOn => TfRef.attribute<String>(this, 'triggers_on');

  /// Reference to `triggers_when` attribute.
  TfRef<String> get triggersWhen =>
      TfRef.attribute<String>(this, 'triggers_when');
}
