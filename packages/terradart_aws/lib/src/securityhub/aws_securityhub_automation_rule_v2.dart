// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_automation_rule_v2`.
const Set<String> _awsSecurityhubAutomationRuleV2Sensitive = <String>{};

/// Securityhub Automation Rule V2 Rule enum for `rule_status`.
extension type const SecurityhubAutomationRuleV2RuleStatus._(TfArg<String> _)
    implements TfArg<String> {
  SecurityhubAutomationRuleV2RuleStatus.variable(String name)
    : this._(TfArg.variable(name));
  SecurityhubAutomationRuleV2RuleStatus.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityhubAutomationRuleV2RuleStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = SecurityhubAutomationRuleV2RuleStatus._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = SecurityhubAutomationRuleV2RuleStatus._(
    TfArgLiteral('DISABLED'),
  );

  static const List<SecurityhubAutomationRuleV2RuleStatus> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `action` block of
/// `aws_securityhub_automation_rule_v2` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleV2Action {
  const SecurityhubAutomationRuleV2Action({
    required this.type,
    this.externalIntegrationConfiguration,
    this.findingFieldsUpdate,
  });

  final SecurityhubAutomationRuleV2Type type;

  final List<SecurityhubAutomationRuleV2ExternalIntegrationConfiguration>?
  externalIntegrationConfiguration;

  final List<SecurityhubAutomationRuleV2FindingFieldsUpdate>?
  findingFieldsUpdate;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (externalIntegrationConfiguration != null)
      'external_integration_configuration': [
        for (final e in externalIntegrationConfiguration!) e.encode(),
      ],
    if (findingFieldsUpdate != null)
      'finding_fields_update': [
        for (final e in findingFieldsUpdate!) e.encode(),
      ],
  };
}

/// `type` — derived from the provider schema description.
extension type const SecurityhubAutomationRuleV2Type._(TfArg<String> _)
    implements TfArg<String> {
  SecurityhubAutomationRuleV2Type.variable(String name)
    : this._(TfArg.variable(name));
  SecurityhubAutomationRuleV2Type.expression(String template)
    : this._(TfArg.expression(template));
  const SecurityhubAutomationRuleV2Type.arg(TfArg<String> arg) : this._(arg);

  static const findingFieldsUpdate = SecurityhubAutomationRuleV2Type._(
    TfArgLiteral('FINDING_FIELDS_UPDATE'),
  );
  static const externalIntegration = SecurityhubAutomationRuleV2Type._(
    TfArgLiteral('EXTERNAL_INTEGRATION'),
  );

  static const List<SecurityhubAutomationRuleV2Type> values = [
    findingFieldsUpdate,
    externalIntegration,
  ];
}

/// Typed helper for the `action.external_integration_configuration` block of
/// `aws_securityhub_automation_rule_v2` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleV2ExternalIntegrationConfiguration {
  const SecurityhubAutomationRuleV2ExternalIntegrationConfiguration({
    required this.connectorArn,
  });

  final TfArg<String> connectorArn;

  Map<String, Object?> encode() => {'connector_arn': connectorArn.toTfJson()};
}

/// Typed helper for the `action.finding_fields_update` block of
/// `aws_securityhub_automation_rule_v2` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleV2FindingFieldsUpdate {
  const SecurityhubAutomationRuleV2FindingFieldsUpdate({
    this.comment,
    this.severityId,
    this.statusId,
  });

  final TfArg<String>? comment;

  final TfArg<num>? severityId;

  final TfArg<num>? statusId;

  Map<String, Object?> encode() => {
    'comment': ?comment?.toTfJson(),
    'severity_id': ?severityId?.toTfJson(),
    'status_id': ?statusId?.toTfJson(),
  };
}

/// Typed helper for the `criteria` block of
/// `aws_securityhub_automation_rule_v2` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleV2Criteria {
  const SecurityhubAutomationRuleV2Criteria({
    required this.ocsfFindingCriteriaJson,
  });

  final TfArg<String> ocsfFindingCriteriaJson;

  Map<String, Object?> encode() => {
    'ocsf_finding_criteria_json': ocsfFindingCriteriaJson.toTfJson(),
  };
}

/// Factory wrapper for `aws_securityhub_automation_rule_v2`.
final class AwsSecurityhubAutomationRuleV2 extends Resource {
  static const String tfType = 'aws_securityhub_automation_rule_v2';

  AwsSecurityhubAutomationRuleV2(
    super.localName, {
    required TfArg<String> description,
    TfArg<String>? region,
    required TfArg<String> ruleName,
    required TfArg<num> ruleOrder,
    SecurityhubAutomationRuleV2RuleStatus? ruleStatus,
    TfArg<Map<String, String>>? tags,
    List<SecurityhubAutomationRuleV2Action>? action,
    List<SecurityhubAutomationRuleV2Criteria>? criteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': description,
           'region': ?region,
           'rule_name': ruleName,
           'rule_order': ruleOrder,
           'rule_status': ?ruleStatus,
           'tags': ?tags,
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           if (criteria != null)
             'criteria': TfArg.literal([for (final e in criteria) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubAutomationRuleV2Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubAutomationRuleV2>`.
  RefTo<AwsSecurityhubAutomationRuleV2> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_name` attribute.
  TfRef<String> get ruleName => TfRef.attribute<String>(this, 'rule_name');

  /// Reference to `rule_order` attribute.
  TfRef<num> get ruleOrder => TfRef.attribute<num>(this, 'rule_order');

  /// Reference to `rule_status` attribute.
  TfRef<String> get ruleStatus => TfRef.attribute<String>(this, 'rule_status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
