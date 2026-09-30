// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_web_acl`.
const Set<String> _awsWafWebAclSensitive = <String>{};

/// Typed helper for the `default_action` block of
/// `aws_waf_web_acl` (derived from provider schema).
@immutable
final class WafWebAclDefaultAction {
  const WafWebAclDefaultAction({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `logging_configuration` block of
/// `aws_waf_web_acl` (derived from provider schema).
@immutable
final class WafWebAclLoggingConfiguration {
  const WafWebAclLoggingConfiguration({
    required this.logDestination,
    this.redactedFields,
  });

  final TfArg<String> logDestination;

  final WafWebAclLoggingConfigurationRedactedFields? redactedFields;

  Map<String, Object?> encode() => {
    'log_destination': logDestination.toTfJson(),
    'redacted_fields': ?redactedFields?.encode(),
  };
}

/// Typed helper for the `logging_configuration.redacted_fields` block of
/// `aws_waf_web_acl` (derived from provider schema).
@immutable
final class WafWebAclLoggingConfigurationRedactedFields {
  const WafWebAclLoggingConfigurationRedactedFields({
    required this.fieldToMatch,
  });

  final List<WafWebAclLoggingConfigurationRedactedFieldsFieldToMatch>
  fieldToMatch;

  Map<String, Object?> encode() => {
    'field_to_match': [for (final e in fieldToMatch) e.encode()],
  };
}

/// Typed helper for the `logging_configuration.redacted_fields.field_to_match` block of
/// `aws_waf_web_acl` (derived from provider schema).
@immutable
final class WafWebAclLoggingConfigurationRedactedFieldsFieldToMatch {
  const WafWebAclLoggingConfigurationRedactedFieldsFieldToMatch({
    this.data,
    required this.type,
  });

  final TfArg<String>? data;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `rules` block of
/// `aws_waf_web_acl` (derived from provider schema).
@immutable
final class WafWebAclRules {
  const WafWebAclRules({
    required this.priority,
    required this.ruleId,
    this.type,
    this.action,
    this.overrideAction,
  });

  final TfArg<num> priority;

  final TfArg<String> ruleId;

  final TfArg<WafWebAclRulesType>? type;

  final WafWebAclRulesAction? action;

  final WafWebAclRulesOverrideAction? overrideAction;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'rule_id': ruleId.toTfJson(),
    'type': ?type?.toTfJson(),
    'action': ?action?.encode(),
    'override_action': ?overrideAction?.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum WafWebAclRulesType implements TerraformEnum {
  regular('REGULAR'),
  rateBased('RATE_BASED'),
  group('GROUP');

  const WafWebAclRulesType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.action` block of
/// `aws_waf_web_acl` (derived from provider schema).
@immutable
final class WafWebAclRulesAction {
  const WafWebAclRulesAction({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `rules.override_action` block of
/// `aws_waf_web_acl` (derived from provider schema).
@immutable
final class WafWebAclRulesOverrideAction {
  const WafWebAclRulesOverrideAction({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `aws_waf_web_acl`.
final class AwsWafWebAcl extends Resource {
  static const String tfType = 'aws_waf_web_acl';

  AwsWafWebAcl({
    required super.localName,
    required TfArg<String> metricName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    required WafWebAclDefaultAction defaultAction,
    WafWebAclLoggingConfiguration? loggingConfiguration,
    List<WafWebAclRules>? rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'metric_name': metricName,
           'name': name,
           'tags': ?tags,
           'default_action': TfArg.literal(defaultAction.encode()),
           if (loggingConfiguration != null)
             'logging_configuration': TfArg.literal(
               loggingConfiguration.encode(),
             ),
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafWebAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafWebAcl>`.
  RefTo<AwsWafWebAcl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `metric_name` attribute.
  TfRef<String> get metricNameRef =>
      TfRef.attribute<String>(this, 'metric_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
