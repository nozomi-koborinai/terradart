// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_security_center_automation`.
const Set<String> _azurermSecurityCenterAutomationSensitive = <String>{
  'action.connection_string',
  'action.trigger_url',
};

/// Typed helper for the `action` block of
/// `azurerm_security_center_automation` (derived from provider schema).
@immutable
final class SecurityCenterAutomationAction {
  const SecurityCenterAutomationAction({
    this.connectionString,
    required this.resourceId,
    this.triggerUrl,
    required this.type,
  });

  final Sensitive<String>? connectionString;

  final TfArg<String> resourceId;

  final Sensitive<String>? triggerUrl;

  final SecurityCenterAutomationType type;

  @internal
  Map<String, Object?> encode() => {
    'connection_string': ?connectionString?.toTfJson(),
    'resource_id': resourceId.toTfJson(),
    'trigger_url': ?triggerUrl?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const SecurityCenterAutomationType._(TfArg<String> _)
    implements TfArg<String> {
  SecurityCenterAutomationType.variable(String name)
    : this._(TfArg.variable(name));
  SecurityCenterAutomationType.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityCenterAutomationType.arg(TfArg<String> arg) : this._(arg);

  static const eventhub = SecurityCenterAutomationType._(
    TfArgLiteral('EventHub'),
  );
  static const logicapp = SecurityCenterAutomationType._(
    TfArgLiteral('LogicApp'),
  );
  static const workspace = SecurityCenterAutomationType._(
    TfArgLiteral('Workspace'),
  );

  static const List<SecurityCenterAutomationType> values = [
    eventhub,
    logicapp,
    workspace,
  ];
}

/// Typed helper for the `source` block of
/// `azurerm_security_center_automation` (derived from provider schema).
@immutable
final class SecurityCenterAutomationSource {
  const SecurityCenterAutomationSource({
    required this.eventSource,
    this.ruleSet,
  });

  final SecurityCenterAutomationEventSource eventSource;

  final List<SecurityCenterAutomationRuleSet>? ruleSet;

  @internal
  Map<String, Object?> encode() => {
    'event_source': eventSource.toTfJson(),
    if (ruleSet != null) 'rule_set': [for (final e in ruleSet!) e.encode()],
  };
}

/// `event_source` — derived from the provider schema description.
extension type const SecurityCenterAutomationEventSource._(TfArg<String> _)
    implements TfArg<String> {
  SecurityCenterAutomationEventSource.variable(String name)
    : this._(TfArg.variable(name));
  SecurityCenterAutomationEventSource.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityCenterAutomationEventSource.arg(TfArg<String> arg)
    : this._(arg);

  static const alerts = SecurityCenterAutomationEventSource._(
    TfArgLiteral('Alerts'),
  );
  static const assessments = SecurityCenterAutomationEventSource._(
    TfArgLiteral('Assessments'),
  );
  static const assessmentssnapshot = SecurityCenterAutomationEventSource._(
    TfArgLiteral('AssessmentsSnapshot'),
  );
  static const regulatorycomplianceassessment =
      SecurityCenterAutomationEventSource._(
        TfArgLiteral('RegulatoryComplianceAssessment'),
      );
  static const regulatorycomplianceassessmentsnapshot =
      SecurityCenterAutomationEventSource._(
        TfArgLiteral('RegulatoryComplianceAssessmentSnapshot'),
      );
  static const securescorecontrols = SecurityCenterAutomationEventSource._(
    TfArgLiteral('SecureScoreControls'),
  );
  static const securescorecontrolssnapshot =
      SecurityCenterAutomationEventSource._(
        TfArgLiteral('SecureScoreControlsSnapshot'),
      );
  static const securescores = SecurityCenterAutomationEventSource._(
    TfArgLiteral('SecureScores'),
  );
  static const securescoressnapshot = SecurityCenterAutomationEventSource._(
    TfArgLiteral('SecureScoresSnapshot'),
  );
  static const subassessments = SecurityCenterAutomationEventSource._(
    TfArgLiteral('SubAssessments'),
  );
  static const subassessmentssnapshot = SecurityCenterAutomationEventSource._(
    TfArgLiteral('SubAssessmentsSnapshot'),
  );

  static const List<SecurityCenterAutomationEventSource> values = [
    alerts,
    assessments,
    assessmentssnapshot,
    regulatorycomplianceassessment,
    regulatorycomplianceassessmentsnapshot,
    securescorecontrols,
    securescorecontrolssnapshot,
    securescores,
    securescoressnapshot,
    subassessments,
    subassessmentssnapshot,
  ];
}

/// Typed helper for the `source.rule_set` block of
/// `azurerm_security_center_automation` (derived from provider schema).
@immutable
final class SecurityCenterAutomationRuleSet {
  const SecurityCenterAutomationRuleSet({required this.rule});

  final List<SecurityCenterAutomationRule> rule;

  @internal
  Map<String, Object?> encode() => {
    'rule': [for (final e in rule) e.encode()],
  };
}

/// Typed helper for the `source.rule_set.rule` block of
/// `azurerm_security_center_automation` (derived from provider schema).
@immutable
final class SecurityCenterAutomationRule {
  const SecurityCenterAutomationRule({
    required this.expectedValue,
    required this.operator,
    required this.propertyPath,
    required this.propertyType,
  });

  final TfArg<String> expectedValue;

  final SecurityCenterAutomationOperator operator;

  final TfArg<String> propertyPath;

  final SecurityCenterAutomationPropertyType propertyType;

  @internal
  Map<String, Object?> encode() => {
    'expected_value': expectedValue.toTfJson(),
    'operator': operator.toTfJson(),
    'property_path': propertyPath.toTfJson(),
    'property_type': propertyType.toTfJson(),
  };
}

/// `operator` — derived from the provider schema description.
extension type const SecurityCenterAutomationOperator._(TfArg<String> _)
    implements TfArg<String> {
  SecurityCenterAutomationOperator.variable(String name)
    : this._(TfArg.variable(name));
  SecurityCenterAutomationOperator.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityCenterAutomationOperator.arg(TfArg<String> arg) : this._(arg);

  static const contains = SecurityCenterAutomationOperator._(
    TfArgLiteral('Contains'),
  );
  static const endswith = SecurityCenterAutomationOperator._(
    TfArgLiteral('EndsWith'),
  );
  static const equals = SecurityCenterAutomationOperator._(
    TfArgLiteral('Equals'),
  );
  static const greaterthan = SecurityCenterAutomationOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const greaterthanorequalto = SecurityCenterAutomationOperator._(
    TfArgLiteral('GreaterThanOrEqualTo'),
  );
  static const lesserthan = SecurityCenterAutomationOperator._(
    TfArgLiteral('LesserThan'),
  );
  static const lesserthanorequalto = SecurityCenterAutomationOperator._(
    TfArgLiteral('LesserThanOrEqualTo'),
  );
  static const notequals = SecurityCenterAutomationOperator._(
    TfArgLiteral('NotEquals'),
  );
  static const startswith = SecurityCenterAutomationOperator._(
    TfArgLiteral('StartsWith'),
  );

  static const List<SecurityCenterAutomationOperator> values = [
    contains,
    endswith,
    equals,
    greaterthan,
    greaterthanorequalto,
    lesserthan,
    lesserthanorequalto,
    notequals,
    startswith,
  ];
}

/// `property_type` — derived from the provider schema description.
extension type const SecurityCenterAutomationPropertyType._(TfArg<String> _)
    implements TfArg<String> {
  SecurityCenterAutomationPropertyType.variable(String name)
    : this._(TfArg.variable(name));
  SecurityCenterAutomationPropertyType.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityCenterAutomationPropertyType.arg(TfArg<String> arg)
    : this._(arg);

  static const boolean = SecurityCenterAutomationPropertyType._(
    TfArgLiteral('Boolean'),
  );
  static const integer = SecurityCenterAutomationPropertyType._(
    TfArgLiteral('Integer'),
  );
  static const number = SecurityCenterAutomationPropertyType._(
    TfArgLiteral('Number'),
  );
  static const string = SecurityCenterAutomationPropertyType._(
    TfArgLiteral('String'),
  );

  static const List<SecurityCenterAutomationPropertyType> values = [
    boolean,
    integer,
    number,
    string,
  ];
}

/// Factory wrapper for `azurerm_security_center_automation`.
final class AzurermSecurityCenterAutomation extends Resource {
  static const String tfType = 'azurerm_security_center_automation';

  AzurermSecurityCenterAutomation(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<List<String>> scopes,
    TfArg<Map<String, String>>? tags,
    required List<SecurityCenterAutomationAction> action,
    required List<SecurityCenterAutomationSource> source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'enabled': ?enabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scopes': scopes,
           'tags': ?tags,
           'action': TfArg.literal([for (final e in action) e.encode()]),
           'source': TfArg.literal([for (final e in source) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSecurityCenterAutomationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSecurityCenterAutomation>`.
  RefTo<AzurermSecurityCenterAutomation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
