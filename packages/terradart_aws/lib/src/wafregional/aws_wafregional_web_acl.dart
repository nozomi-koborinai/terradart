// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_web_acl`.
const Set<String> _awsWafregionalWebAclSensitive = <String>{};

/// Typed helper for the `default_action` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclDefaultAction {
  const WafregionalWebAclDefaultAction({required this.type});

  final TfArg<WafregionalWebAclDefaultActionType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum WafregionalWebAclDefaultActionType implements TerraformEnum {
  block('BLOCK'),
  allow('ALLOW'),
  count('COUNT');

  const WafregionalWebAclDefaultActionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `logging_configuration` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclLoggingConfiguration {
  const WafregionalWebAclLoggingConfiguration({
    required this.logDestination,
    this.redactedFields,
  });

  final TfArg<String> logDestination;

  final WafregionalWebAclLoggingConfigurationRedactedFields? redactedFields;

  Map<String, Object?> encode() => {
    'log_destination': logDestination.toTfJson(),
    if (redactedFields != null) 'redacted_fields': redactedFields!.encode(),
  };
}

/// Typed helper for the `logging_configuration.redacted_fields` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclLoggingConfigurationRedactedFields {
  const WafregionalWebAclLoggingConfigurationRedactedFields({
    required this.fieldToMatch,
  });

  final List<WafregionalWebAclLoggingConfigurationRedactedFieldsFieldToMatch>
  fieldToMatch;

  Map<String, Object?> encode() => {
    'field_to_match': [for (final e in fieldToMatch) e.encode()],
  };
}

/// Typed helper for the `logging_configuration.redacted_fields.field_to_match` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclLoggingConfigurationRedactedFieldsFieldToMatch {
  const WafregionalWebAclLoggingConfigurationRedactedFieldsFieldToMatch({
    this.data,
    required this.type,
  });

  final TfArg<String>? data;

  final TfArg<
    WafregionalWebAclLoggingConfigurationRedactedFieldsFieldToMatchType
  >
  type;

  Map<String, Object?> encode() => {
    if (data != null) 'data': data!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum WafregionalWebAclLoggingConfigurationRedactedFieldsFieldToMatchType
    implements TerraformEnum {
  uri('URI'),
  queryString('QUERY_STRING'),
  header('HEADER'),
  method('METHOD'),
  body('BODY'),
  singleQueryArg('SINGLE_QUERY_ARG'),
  allQueryArgs('ALL_QUERY_ARGS');

  const WafregionalWebAclLoggingConfigurationRedactedFieldsFieldToMatchType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclRule {
  const WafregionalWebAclRule({
    required this.priority,
    required this.ruleId,
    this.type,
    this.action,
    this.overrideAction,
  });

  final TfArg<num> priority;

  final TfArg<String> ruleId;

  final TfArg<WafregionalWebAclRuleType>? type;

  final WafregionalWebAclRuleAction? action;

  final WafregionalWebAclRuleOverrideAction? overrideAction;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'rule_id': ruleId.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (action != null) 'action': action!.encode(),
    if (overrideAction != null) 'override_action': overrideAction!.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum WafregionalWebAclRuleType implements TerraformEnum {
  regular('REGULAR'),
  rateBased('RATE_BASED'),
  group('GROUP');

  const WafregionalWebAclRuleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclRuleAction {
  const WafregionalWebAclRuleAction({required this.type});

  final TfArg<WafregionalWebAclRuleActionType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum WafregionalWebAclRuleActionType implements TerraformEnum {
  block('BLOCK'),
  allow('ALLOW'),
  count('COUNT');

  const WafregionalWebAclRuleActionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.override_action` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclRuleOverrideAction {
  const WafregionalWebAclRuleOverrideAction({required this.type});

  final TfArg<WafregionalWebAclRuleOverrideActionType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum WafregionalWebAclRuleOverrideActionType implements TerraformEnum {
  none('NONE'),
  count('COUNT');

  const WafregionalWebAclRuleOverrideActionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_wafregional_web_acl`.
final class AwsWafregionalWebAcl extends Resource {
  static const String tfType = 'aws_wafregional_web_acl';

  AwsWafregionalWebAcl({
    required super.localName,
    required TfArg<String> metricName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required WafregionalWebAclDefaultAction defaultAction,
    WafregionalWebAclLoggingConfiguration? loggingConfiguration,
    List<WafregionalWebAclRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metric_name': metricName,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'default_action': TfArg.literal(defaultAction.encode()),
           if (loggingConfiguration != null)
             'logging_configuration': TfArg.literal(
               loggingConfiguration.encode(),
             ),
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalWebAclSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
