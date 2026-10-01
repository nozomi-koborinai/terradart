// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mailmanager_traffic_policy`.
const Set<String> _awsMailmanagerTrafficPolicySensitive = <String>{};

/// Mailmanager Traffic Policy Default enum for `default_action`.
enum MailmanagerTrafficPolicyDefaultAction implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const MailmanagerTrafficPolicyDefaultAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_statement` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyStatement {
  const MailmanagerTrafficPolicyStatement({
    required this.action,
    this.condition,
  });

  final TfArg<MailmanagerTrafficPolicyAction> action;

  final List<MailmanagerTrafficPolicyCondition>? condition;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
enum MailmanagerTrafficPolicyAction implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const MailmanagerTrafficPolicyAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_statement.condition` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyCondition {
  const MailmanagerTrafficPolicyCondition({
    this.booleanExpression,
    this.ipExpression,
    this.ipv6Expression,
    this.stringExpression,
    this.tlsExpression,
  });

  final List<MailmanagerTrafficPolicyBooleanExpression>? booleanExpression;

  final List<MailmanagerTrafficPolicyIpExpression>? ipExpression;

  final List<MailmanagerTrafficPolicyIpv6Expression>? ipv6Expression;

  final List<MailmanagerTrafficPolicyStringExpression>? stringExpression;

  final List<MailmanagerTrafficPolicyTlsExpression>? tlsExpression;

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
final class MailmanagerTrafficPolicyBooleanExpression {
  const MailmanagerTrafficPolicyBooleanExpression({
    required this.operator,
    this.evaluate,
  });

  final TfArg<MailmanagerTrafficPolicyBooleanExpressionOperator> operator;

  final List<MailmanagerTrafficPolicyBooleanExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerTrafficPolicyBooleanExpressionOperator
    implements TerraformEnum {
  isTrue('IS_TRUE'),
  isFalse('IS_FALSE');

  const MailmanagerTrafficPolicyBooleanExpressionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_statement.condition.boolean_expression.evaluate` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyBooleanExpressionEvaluate {
  const MailmanagerTrafficPolicyBooleanExpressionEvaluate({
    this.analysis,
    this.isInAddressList,
  });

  final List<MailmanagerTrafficPolicyAnalysis>? analysis;

  final List<MailmanagerTrafficPolicyIsInAddressList>? isInAddressList;

  Map<String, Object?> encode() => {
    if (analysis != null) 'analysis': [for (final e in analysis!) e.encode()],
    if (isInAddressList != null)
      'is_in_address_list': [for (final e in isInAddressList!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition.boolean_expression.evaluate.analysis` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerTrafficPolicyAnalysis {
  const MailmanagerTrafficPolicyAnalysis({
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
final class MailmanagerTrafficPolicyIsInAddressList {
  const MailmanagerTrafficPolicyIsInAddressList({
    required this.addressLists,
    required this.attribute,
  });

  final TfArg<List<String>> addressLists;

  final TfArg<MailmanagerTrafficPolicyStringExpressionAttribute> attribute;

  Map<String, Object?> encode() => {
    'address_lists': addressLists.toTfJson(),
    'attribute': attribute.toTfJson(),
  };
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerTrafficPolicyStringExpressionAttribute
    implements TerraformEnum {
  recipient('RECIPIENT');

  const MailmanagerTrafficPolicyStringExpressionAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_statement.condition.ip_expression` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyIpExpression {
  const MailmanagerTrafficPolicyIpExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerTrafficPolicyIpExpressionOperator> operator;

  final TfArg<List<String>> values;

  final List<MailmanagerTrafficPolicyIpExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerTrafficPolicyIpExpressionOperator implements TerraformEnum {
  cidrMatches('CIDR_MATCHES'),
  notCidrMatches('NOT_CIDR_MATCHES');

  const MailmanagerTrafficPolicyIpExpressionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_statement.condition.ip_expression.evaluate` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyIpExpressionEvaluate {
  const MailmanagerTrafficPolicyIpExpressionEvaluate({required this.attribute});

  final TfArg<MailmanagerTrafficPolicyIpExpressionAttribute> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerTrafficPolicyIpExpressionAttribute implements TerraformEnum {
  senderIp('SENDER_IP');

  const MailmanagerTrafficPolicyIpExpressionAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_statement.condition.ipv6_expression` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyIpv6Expression {
  const MailmanagerTrafficPolicyIpv6Expression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerTrafficPolicyIpExpressionOperator> operator;

  final TfArg<List<String>> values;

  final List<MailmanagerTrafficPolicyIpv6ExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `policy_statement.condition.ipv6_expression.evaluate` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyIpv6ExpressionEvaluate {
  const MailmanagerTrafficPolicyIpv6ExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<MailmanagerTrafficPolicyIpv6ExpressionAttribute> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerTrafficPolicyIpv6ExpressionAttribute implements TerraformEnum {
  senderIpv6('SENDER_IPV6');

  const MailmanagerTrafficPolicyIpv6ExpressionAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_statement.condition.string_expression` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyStringExpression {
  const MailmanagerTrafficPolicyStringExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerTrafficPolicyStringExpressionOperator> operator;

  final TfArg<List<String>> values;

  final List<MailmanagerTrafficPolicyStringExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerTrafficPolicyStringExpressionOperator implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  contains('CONTAINS');

  const MailmanagerTrafficPolicyStringExpressionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `analysis`, `attribute` on the `policy_statement.condition.string_expression.evaluate` block of `aws_mailmanager_traffic_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.analysis(...)`.
sealed class MailmanagerTrafficPolicyStringExpressionEvaluate {
  const MailmanagerTrafficPolicyStringExpressionEvaluate();

  /// Sets `analysis`.
  const factory MailmanagerTrafficPolicyStringExpressionEvaluate.analysis(
    List<MailmanagerTrafficPolicyAnalysis> analysis,
  ) = MailmanagerTrafficPolicyStringExpressionEvaluateAnalysis;

  /// Sets `attribute`.
  const factory MailmanagerTrafficPolicyStringExpressionEvaluate.attribute(
    TfArg<MailmanagerTrafficPolicyStringExpressionAttribute> attribute,
  ) = MailmanagerTrafficPolicyStringExpressionEvaluateAttribute;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerTrafficPolicyStringExpressionEvaluate.analysis] choice: sets `analysis`.
final class MailmanagerTrafficPolicyStringExpressionEvaluateAnalysis
    extends MailmanagerTrafficPolicyStringExpressionEvaluate {
  const MailmanagerTrafficPolicyStringExpressionEvaluateAnalysis(this.analysis);

  final List<MailmanagerTrafficPolicyAnalysis> analysis;

  @override
  String get blockKey => 'analysis';

  @override
  Map<String, Object?> encode() => {
    'analysis': [for (final e in analysis) e.encode()],
  };
}

/// The [MailmanagerTrafficPolicyStringExpressionEvaluate.attribute] choice: sets `attribute`.
final class MailmanagerTrafficPolicyStringExpressionEvaluateAttribute
    extends MailmanagerTrafficPolicyStringExpressionEvaluate {
  const MailmanagerTrafficPolicyStringExpressionEvaluateAttribute(
    this.attribute,
  );

  final TfArg<MailmanagerTrafficPolicyStringExpressionAttribute> attribute;

  @override
  String get blockKey => 'attribute';

  @override
  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// Typed helper for the `policy_statement.condition.tls_expression` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyTlsExpression {
  const MailmanagerTrafficPolicyTlsExpression({
    required this.operator,
    required this.value,
    this.evaluate,
  });

  final TfArg<MailmanagerTrafficPolicyTlsExpressionOperator> operator;

  final TfArg<MailmanagerTrafficPolicyValue> value;

  final List<MailmanagerTrafficPolicyTlsExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'value': value.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerTrafficPolicyTlsExpressionOperator implements TerraformEnum {
  minimumTlsVersion('MINIMUM_TLS_VERSION'),
  isCase('IS');

  const MailmanagerTrafficPolicyTlsExpressionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `value` — derived from the provider schema description.
enum MailmanagerTrafficPolicyValue implements TerraformEnum {
  tls12('TLS1_2'),
  tls13('TLS1_3');

  const MailmanagerTrafficPolicyValue(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `policy_statement.condition.tls_expression.evaluate` block of
/// `aws_mailmanager_traffic_policy` (derived from provider schema).
@immutable
final class MailmanagerTrafficPolicyTlsExpressionEvaluate {
  const MailmanagerTrafficPolicyTlsExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<MailmanagerTrafficPolicyTlsExpressionAttribute> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerTrafficPolicyTlsExpressionAttribute implements TerraformEnum {
  tlsProtocol('TLS_PROTOCOL');

  const MailmanagerTrafficPolicyTlsExpressionAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_mailmanager_traffic_policy`.
final class AwsMailmanagerTrafficPolicy extends Resource {
  static const String tfType = 'aws_mailmanager_traffic_policy';

  AwsMailmanagerTrafficPolicy({
    required super.localName,
    required TfArg<MailmanagerTrafficPolicyDefaultAction> defaultAction,
    TfArg<num>? maxMessageSizeBytes,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<MailmanagerTrafficPolicyStatement>? policyStatement,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_action': defaultAction,
           'max_message_size_bytes': ?maxMessageSizeBytes,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (policyStatement != null)
             'policy_statement': TfArg.literal([
               for (final e in policyStatement) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMailmanagerTrafficPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMailmanagerTrafficPolicy>`.
  RefTo<AwsMailmanagerTrafficPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `default_action` attribute.
  TfRef<String> get defaultAction =>
      TfRef.attribute<String>(this, 'default_action');

  /// Reference to `max_message_size_bytes` attribute.
  TfRef<num> get maxMessageSizeBytes =>
      TfRef.attribute<num>(this, 'max_message_size_bytes');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
