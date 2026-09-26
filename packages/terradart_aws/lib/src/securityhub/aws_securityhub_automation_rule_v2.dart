// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_automation_rule_v2`.
const Set<String> _awsSecurityhubAutomationRuleV2Sensitive = <String>{};

/// Typed helper for the `action` block of
/// `aws_securityhub_automation_rule_v2` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleV2Action {
  const SecurityhubAutomationRuleV2Action({
    required this.type,
    this.externalIntegrationConfiguration,
    this.findingFieldsUpdate,
  });

  final TfArg<String> type;

  final List<SecurityhubAutomationRuleV2ActionExternalIntegrationConfiguration>?
  externalIntegrationConfiguration;

  final List<SecurityhubAutomationRuleV2ActionFindingFieldsUpdate>?
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

/// Typed helper for the `action.external_integration_configuration` block of
/// `aws_securityhub_automation_rule_v2` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleV2ActionExternalIntegrationConfiguration {
  const SecurityhubAutomationRuleV2ActionExternalIntegrationConfiguration({
    required this.connectorArn,
  });

  final TfArg<String> connectorArn;

  Map<String, Object?> encode() => {'connector_arn': connectorArn.toTfJson()};
}

/// Typed helper for the `action.finding_fields_update` block of
/// `aws_securityhub_automation_rule_v2` (derived from provider schema).
@immutable
final class SecurityhubAutomationRuleV2ActionFindingFieldsUpdate {
  const SecurityhubAutomationRuleV2ActionFindingFieldsUpdate({
    this.comment,
    this.severityId,
    this.statusId,
  });

  final TfArg<String>? comment;

  final TfArg<num>? severityId;

  final TfArg<num>? statusId;

  Map<String, Object?> encode() => {
    if (comment != null) 'comment': comment!.toTfJson(),
    if (severityId != null) 'severity_id': severityId!.toTfJson(),
    if (statusId != null) 'status_id': statusId!.toTfJson(),
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

  AwsSecurityhubAutomationRuleV2({
    required super.localName,
    required TfArg<String> description,
    TfArg<String>? region,
    required TfArg<String> ruleName,
    required TfArg<num> ruleOrder,
    TfArg<String>? ruleStatus,
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
           if (region != null) 'region': region,
           'rule_name': ruleName,
           'rule_order': ruleOrder,
           if (ruleStatus != null) 'rule_status': ruleStatus,
           if (tags != null) 'tags': tags,
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           if (criteria != null)
             'criteria': TfArg.literal([for (final e in criteria) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubAutomationRuleV2Sensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
