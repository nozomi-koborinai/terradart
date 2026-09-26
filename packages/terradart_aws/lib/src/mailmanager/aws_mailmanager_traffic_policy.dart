// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mailmanager_traffic_policy`.
const Set<String> _awsMailmanagerTrafficPolicySensitive = <String>{};

/// Typed helper for the `policy_statement` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatement {
  const MailmanagerTrafficPolicyPolicyStatement({
    required this.action,
    this.condition,
  });

  final TfArg<String> action;

  final List<MailmanagerTrafficPolicyPolicyStatementCondition>? condition;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementCondition {
  const MailmanagerTrafficPolicyPolicyStatementCondition({
    this.booleanExpression,
    this.ipExpression,
    this.ipv6Expression,
    this.stringExpression,
    this.tlsExpression,
  });

  final List<MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpression>?
  booleanExpression;

  final List<MailmanagerTrafficPolicyPolicyStatementConditionIpExpression>?
  ipExpression;

  final List<MailmanagerTrafficPolicyPolicyStatementConditionIpv6Expression>?
  ipv6Expression;

  final List<MailmanagerTrafficPolicyPolicyStatementConditionStringExpression>?
  stringExpression;

  final List<MailmanagerTrafficPolicyPolicyStatementConditionTlsExpression>?
  tlsExpression;

  Map<String, Object?> encode() => {
    if (booleanExpression != null)
      'boolean_expression': [for (final e in booleanExpression!) e.encode()],
    if (ipExpression != null)
      'ip_expression': [for (final e in ipExpression!) e.encode()],
    if (ipv6Expression != null)
      'ipv6_expression': [for (final e in ipv6Expression!) e.encode()],
    if (stringExpression != null)
      'string_expression': [for (final e in stringExpression!) e.encode()],
    if (tlsExpression != null)
      'tls_expression': [for (final e in tlsExpression!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition.boolean_expression` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpression {
  const MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpression({
    required this.operator,
    this.evaluate,
  });

  final TfArg<String> operator;

  final List<
    MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate
  >?
  evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition.boolean_expression.evaluate` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate {
  const MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate({
    this.analysis,
    this.isInAddressList,
  });

  final List<
    MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateAnalysis
  >?
  analysis;

  final List<
    MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList
  >?
  isInAddressList;

  Map<String, Object?> encode() => {
    if (analysis != null) 'analysis': [for (final e in analysis!) e.encode()],
    if (isInAddressList != null)
      'is_in_address_list': [for (final e in isInAddressList!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition.boolean_expression.evaluate.analysis` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateAnalysis {
  const MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateAnalysis({
    required this.analyzer,
    required this.resultField,
  });

  final TfArg<String> analyzer;

  final TfArg<String> resultField;

  Map<String, Object?> encode() => {
    'analyzer': analyzer.toTfJson(),
    'result_field': resultField.toTfJson(),
  };
}

/// Typed helper for the `policy_statement.condition.boolean_expression.evaluate.is_in_address_list` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList {
  const MailmanagerTrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList({
    required this.addressLists,
    required this.attribute,
  });

  final TfArg<List<Object?>> addressLists;

  final TfArg<String> attribute;

  Map<String, Object?> encode() => {
    'address_lists': addressLists.toTfJson(),
    'attribute': attribute.toTfJson(),
  };
}

/// Typed helper for the `policy_statement.condition.ip_expression` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionIpExpression {
  const MailmanagerTrafficPolicyPolicyStatementConditionIpExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  final List<
    MailmanagerTrafficPolicyPolicyStatementConditionIpExpressionEvaluate
  >?
  evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition.ip_expression.evaluate` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionIpExpressionEvaluate {
  const MailmanagerTrafficPolicyPolicyStatementConditionIpExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<String> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// Typed helper for the `policy_statement.condition.ipv6_expression` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionIpv6Expression {
  const MailmanagerTrafficPolicyPolicyStatementConditionIpv6Expression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  final List<
    MailmanagerTrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate
  >?
  evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition.ipv6_expression.evaluate` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate {
  const MailmanagerTrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<String> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// Typed helper for the `policy_statement.condition.string_expression` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionStringExpression {
  const MailmanagerTrafficPolicyPolicyStatementConditionStringExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  final List<
    MailmanagerTrafficPolicyPolicyStatementConditionStringExpressionEvaluate
  >?
  evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition.string_expression.evaluate` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionStringExpressionEvaluate {
  const MailmanagerTrafficPolicyPolicyStatementConditionStringExpressionEvaluate({
    this.attribute,
    this.analysis,
  });

  final TfArg<String>? attribute;

  final List<
    MailmanagerTrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis
  >?
  analysis;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (analysis != null) 'analysis': [for (final e in analysis!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition.string_expression.evaluate.analysis` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis {
  const MailmanagerTrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis({
    required this.analyzer,
    required this.resultField,
  });

  final TfArg<String> analyzer;

  final TfArg<String> resultField;

  Map<String, Object?> encode() => {
    'analyzer': analyzer.toTfJson(),
    'result_field': resultField.toTfJson(),
  };
}

/// Typed helper for the `policy_statement.condition.tls_expression` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionTlsExpression {
  const MailmanagerTrafficPolicyPolicyStatementConditionTlsExpression({
    required this.operator,
    required this.value,
    this.evaluate,
  });

  final TfArg<String> operator;

  final TfArg<String> value;

  final List<
    MailmanagerTrafficPolicyPolicyStatementConditionTlsExpressionEvaluate
  >?
  evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'value': value.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition.tls_expression.evaluate` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyPolicyStatementConditionTlsExpressionEvaluate {
  const MailmanagerTrafficPolicyPolicyStatementConditionTlsExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<String> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// Factory wrapper for `aws_mailmanager_traffic_policy`.
final class AwsMailmanagerTrafficPolicy extends Resource {
  static const String tfType = 'aws_mailmanager_traffic_policy';

  AwsMailmanagerTrafficPolicy({
    required super.localName,
    required TfArg<String> defaultAction,
    TfArg<num>? maxMessageSizeBytes,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<MailmanagerTrafficPolicyPolicyStatement>? policyStatement,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_action': defaultAction,
           if (maxMessageSizeBytes != null)
             'max_message_size_bytes': maxMessageSizeBytes,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (policyStatement != null)
             'policy_statement': TfArg.literal([
               for (final e in policyStatement) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMailmanagerTrafficPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_updated_timestamp` attribute.
  TfRef<String> get lastUpdatedTimestamp =>
      TfRef.attribute<String>(this, 'last_updated_timestamp');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
