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

  final WafregionalWebAclDefaultActionType type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const WafregionalWebAclDefaultActionType._(TfArg<String> _)
    implements TfArg<String> {
  WafregionalWebAclDefaultActionType.variable(String name)
    : this._(TfArg.variable(name));
  WafregionalWebAclDefaultActionType.expression(String template)
    : this._(TfArg.expression(template));
  const WafregionalWebAclDefaultActionType.arg(TfArg<String> arg) : this._(arg);

  static const block = WafregionalWebAclDefaultActionType._(
    TfArgLiteral('BLOCK'),
  );
  static const allow = WafregionalWebAclDefaultActionType._(
    TfArgLiteral('ALLOW'),
  );
  static const count = WafregionalWebAclDefaultActionType._(
    TfArgLiteral('COUNT'),
  );

  static const List<WafregionalWebAclDefaultActionType> values = [
    block,
    allow,
    count,
  ];
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

  final WafregionalWebAclRedactedFields? redactedFields;

  Map<String, Object?> encode() => {
    'log_destination': logDestination.toTfJson(),
    'redacted_fields': ?redactedFields?.encode(),
  };
}

/// Typed helper for the `logging_configuration.redacted_fields` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclRedactedFields {
  const WafregionalWebAclRedactedFields({required this.fieldToMatch});

  final List<WafregionalWebAclFieldToMatch> fieldToMatch;

  Map<String, Object?> encode() => {
    'field_to_match': [for (final e in fieldToMatch) e.encode()],
  };
}

/// Typed helper for the `logging_configuration.redacted_fields.field_to_match` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclFieldToMatch {
  const WafregionalWebAclFieldToMatch({this.data, required this.type});

  final TfArg<String>? data;

  final WafregionalWebAclFieldToMatchType type;

  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WafregionalWebAclFieldToMatchType._(TfArg<String> _)
    implements TfArg<String> {
  WafregionalWebAclFieldToMatchType.variable(String name)
    : this._(TfArg.variable(name));
  WafregionalWebAclFieldToMatchType.expression(String template)
    : this._(TfArg.expression(template));
  const WafregionalWebAclFieldToMatchType.arg(TfArg<String> arg) : this._(arg);

  static const uri = WafregionalWebAclFieldToMatchType._(TfArgLiteral('URI'));
  static const queryString = WafregionalWebAclFieldToMatchType._(
    TfArgLiteral('QUERY_STRING'),
  );
  static const header = WafregionalWebAclFieldToMatchType._(
    TfArgLiteral('HEADER'),
  );
  static const method = WafregionalWebAclFieldToMatchType._(
    TfArgLiteral('METHOD'),
  );
  static const body = WafregionalWebAclFieldToMatchType._(TfArgLiteral('BODY'));
  static const singleQueryArg = WafregionalWebAclFieldToMatchType._(
    TfArgLiteral('SINGLE_QUERY_ARG'),
  );
  static const allQueryArgs = WafregionalWebAclFieldToMatchType._(
    TfArgLiteral('ALL_QUERY_ARGS'),
  );

  static const List<WafregionalWebAclFieldToMatchType> values = [
    uri,
    queryString,
    header,
    method,
    body,
    singleQueryArg,
    allQueryArgs,
  ];
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

  final WafregionalWebAclRuleType? type;

  final WafregionalWebAclAction? action;

  final WafregionalWebAclOverrideAction? overrideAction;

  Map<String, Object?> encode() => {
    'priority': priority.toTfJson(),
    'rule_id': ruleId.toTfJson(),
    'type': ?type?.toTfJson(),
    'action': ?action?.encode(),
    'override_action': ?overrideAction?.encode(),
  };
}

/// `type` — derived from the provider schema description.
extension type const WafregionalWebAclRuleType._(TfArg<String> _)
    implements TfArg<String> {
  WafregionalWebAclRuleType.variable(String name)
    : this._(TfArg.variable(name));
  WafregionalWebAclRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const WafregionalWebAclRuleType.arg(TfArg<String> arg) : this._(arg);

  static const regular = WafregionalWebAclRuleType._(TfArgLiteral('REGULAR'));
  static const rateBased = WafregionalWebAclRuleType._(
    TfArgLiteral('RATE_BASED'),
  );
  static const group = WafregionalWebAclRuleType._(TfArgLiteral('GROUP'));

  static const List<WafregionalWebAclRuleType> values = [
    regular,
    rateBased,
    group,
  ];
}

/// Typed helper for the `rule.action` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclAction {
  const WafregionalWebAclAction({required this.type});

  final WafregionalWebAclDefaultActionType type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `rule.override_action` block of
/// `aws_wafregional_web_acl` (derived from provider schema).
@immutable
final class WafregionalWebAclOverrideAction {
  const WafregionalWebAclOverrideAction({required this.type});

  final WafregionalWebAclOverrideActionType type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const WafregionalWebAclOverrideActionType._(TfArg<String> _)
    implements TfArg<String> {
  WafregionalWebAclOverrideActionType.variable(String name)
    : this._(TfArg.variable(name));
  WafregionalWebAclOverrideActionType.expression(String template)
    : this._(TfArg.expression(template));
  const WafregionalWebAclOverrideActionType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = WafregionalWebAclOverrideActionType._(
    TfArgLiteral('NONE'),
  );
  static const count = WafregionalWebAclOverrideActionType._(
    TfArgLiteral('COUNT'),
  );

  static const List<WafregionalWebAclOverrideActionType> values = [none, count];
}

/// Factory wrapper for `aws_wafregional_web_acl`.
final class AwsWafregionalWebAcl extends Resource {
  static const String tfType = 'aws_wafregional_web_acl';

  AwsWafregionalWebAcl(
    super.localName, {
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
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafregionalWebAcl>`.
  RefTo<AwsWafregionalWebAcl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `metric_name` attribute.
  TfRef<String> get metricName => TfRef.attribute<String>(this, 'metric_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
