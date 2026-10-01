// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../lambda/aws_lambda_function.dart' show AwsLambdaFunction;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_mailmanager_rule_set`.
const Set<String> _awsMailmanagerRuleSetSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRule {
  const MailmanagerRuleSetRule({
    this.name,
    this.action,
    this.condition,
    this.unless,
  });

  final TfArg<String>? name;

  final List<MailmanagerRuleSetAction>? action;

  final List<MailmanagerRuleSetCondition>? condition;

  final List<MailmanagerRuleSetUnless>? unless;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    if (action != null) 'action': [for (final e in action!) e.encode()],
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (unless != null) 'unless': [for (final e in unless!) e.encode()],
  };
}

/// Typed helper for the `rule.action` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetAction {
  const MailmanagerRuleSetAction({
    this.addHeader,
    this.archive,
    this.bounce,
    this.deliverToMailbox,
    this.deliverToQBusiness,
    this.drop,
    this.invokeLambda,
    this.publishToSns,
    this.relay,
    this.replaceRecipient,
    this.send,
    this.writeToS3,
  });

  final List<MailmanagerRuleSetAddHeader>? addHeader;

  final List<MailmanagerRuleSetArchive>? archive;

  final List<MailmanagerRuleSetBounce>? bounce;

  final List<MailmanagerRuleSetDeliverToMailbox>? deliverToMailbox;

  final List<MailmanagerRuleSetDeliverToQBusiness>? deliverToQBusiness;

  final List<MailmanagerRuleSetDrop>? drop;

  final List<MailmanagerRuleSetInvokeLambda>? invokeLambda;

  final List<MailmanagerRuleSetPublishToSns>? publishToSns;

  final List<MailmanagerRuleSetRelay>? relay;

  final List<MailmanagerRuleSetReplaceRecipient>? replaceRecipient;

  final List<MailmanagerRuleSetSend>? send;

  final List<MailmanagerRuleSetWriteToS3>? writeToS3;

  Map<String, Object?> encode() => {
    if (addHeader != null)
      'add_header': [for (final e in addHeader!) e.encode()],
    if (archive != null) 'archive': [for (final e in archive!) e.encode()],
    if (bounce != null) 'bounce': [for (final e in bounce!) e.encode()],
    if (deliverToMailbox != null)
      'deliver_to_mailbox': [for (final e in deliverToMailbox!) e.encode()],
    if (deliverToQBusiness != null)
      'deliver_to_q_business': [
        for (final e in deliverToQBusiness!) e.encode(),
      ],
    if (drop != null) 'drop': [for (final e in drop!) e.encode()],
    if (invokeLambda != null)
      'invoke_lambda': [for (final e in invokeLambda!) e.encode()],
    if (publishToSns != null)
      'publish_to_sns': [for (final e in publishToSns!) e.encode()],
    if (relay != null) 'relay': [for (final e in relay!) e.encode()],
    if (replaceRecipient != null)
      'replace_recipient': [for (final e in replaceRecipient!) e.encode()],
    if (send != null) 'send': [for (final e in send!) e.encode()],
    if (writeToS3 != null)
      'write_to_s3': [for (final e in writeToS3!) e.encode()],
  };
}

/// Typed helper for the `rule.action.add_header` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetAddHeader {
  const MailmanagerRuleSetAddHeader({
    required this.headerName,
    required this.headerValue,
  });

  final TfArg<String> headerName;

  final TfArg<String> headerValue;

  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': headerValue.toTfJson(),
  };
}

/// Typed helper for the `rule.action.archive` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetArchive {
  const MailmanagerRuleSetArchive({
    this.actionFailurePolicy,
    required this.targetArchive,
  });

  final TfArg<MailmanagerRuleSetActionFailurePolicy>? actionFailurePolicy;

  final TfArg<String> targetArchive;

  Map<String, Object?> encode() => {
    'action_failure_policy': ?actionFailurePolicy?.toTfJson(),
    'target_archive': targetArchive.toTfJson(),
  };
}

/// `action_failure_policy` — derived from the provider schema description.
enum MailmanagerRuleSetActionFailurePolicy implements TerraformEnum {
  continueCase('CONTINUE'),
  drop('DROP');

  const MailmanagerRuleSetActionFailurePolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.bounce` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetBounce {
  const MailmanagerRuleSetBounce({
    this.actionFailurePolicy,
    required this.diagnosticMessage,
    this.message,
    required this.roleArn,
    required this.sender,
    required this.smtpReplyCode,
    required this.statusCode,
  });

  final TfArg<MailmanagerRuleSetActionFailurePolicy>? actionFailurePolicy;

  final TfArg<String> diagnosticMessage;

  final TfArg<String>? message;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> sender;

  final TfArg<String> smtpReplyCode;

  final TfArg<String> statusCode;

  Map<String, Object?> encode() => {
    'action_failure_policy': ?actionFailurePolicy?.toTfJson(),
    'diagnostic_message': diagnosticMessage.toTfJson(),
    'message': ?message?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'sender': sender.toTfJson(),
    'smtp_reply_code': smtpReplyCode.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
}

/// Typed helper for the `rule.action.deliver_to_mailbox` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetDeliverToMailbox {
  const MailmanagerRuleSetDeliverToMailbox({
    this.actionFailurePolicy,
    required this.mailboxArn,
    required this.roleArn,
  });

  final TfArg<MailmanagerRuleSetActionFailurePolicy>? actionFailurePolicy;

  final TfArg<String> mailboxArn;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    'action_failure_policy': ?actionFailurePolicy?.toTfJson(),
    'mailbox_arn': mailboxArn.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `rule.action.deliver_to_q_business` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetDeliverToQBusiness {
  const MailmanagerRuleSetDeliverToQBusiness({
    this.actionFailurePolicy,
    required this.applicationId,
    required this.indexId,
    required this.roleArn,
  });

  final TfArg<MailmanagerRuleSetActionFailurePolicy>? actionFailurePolicy;

  final TfArg<String> applicationId;

  final TfArg<String> indexId;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    'action_failure_policy': ?actionFailurePolicy?.toTfJson(),
    'application_id': applicationId.toTfJson(),
    'index_id': indexId.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `rule.action.drop` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetDrop {
  const MailmanagerRuleSetDrop();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `rule.action.invoke_lambda` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetInvokeLambda {
  const MailmanagerRuleSetInvokeLambda({
    this.actionFailurePolicy,
    required this.functionArn,
    required this.invocationType,
    this.retryTimeMinutes,
    required this.roleArn,
  });

  final TfArg<MailmanagerRuleSetActionFailurePolicy>? actionFailurePolicy;

  final RefTo<AwsLambdaFunction> functionArn;

  final TfArg<MailmanagerRuleSetInvocationType> invocationType;

  final TfArg<num>? retryTimeMinutes;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    'action_failure_policy': ?actionFailurePolicy?.toTfJson(),
    'function_arn': functionArn.encodeAs('arn').toTfJson(),
    'invocation_type': invocationType.toTfJson(),
    'retry_time_minutes': ?retryTimeMinutes?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// `invocation_type` — derived from the provider schema description.
enum MailmanagerRuleSetInvocationType implements TerraformEnum {
  event('EVENT'),
  requestResponse('REQUEST_RESPONSE');

  const MailmanagerRuleSetInvocationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.publish_to_sns` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetPublishToSns {
  const MailmanagerRuleSetPublishToSns({
    this.actionFailurePolicy,
    this.encoding,
    this.payloadType,
    required this.roleArn,
    required this.topicArn,
  });

  final TfArg<MailmanagerRuleSetActionFailurePolicy>? actionFailurePolicy;

  final TfArg<MailmanagerRuleSetEncoding>? encoding;

  final TfArg<MailmanagerRuleSetPayloadType>? payloadType;

  final RefTo<AwsIamRole> roleArn;

  final RefTo<AwsSnsTopic> topicArn;

  Map<String, Object?> encode() => {
    'action_failure_policy': ?actionFailurePolicy?.toTfJson(),
    'encoding': ?encoding?.toTfJson(),
    'payload_type': ?payloadType?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'topic_arn': topicArn.encodeAs('arn').toTfJson(),
  };
}

/// `encoding` — derived from the provider schema description.
enum MailmanagerRuleSetEncoding implements TerraformEnum {
  utf8('UTF-8'),
  base64('BASE64');

  const MailmanagerRuleSetEncoding(this.terraformValue);
  @override
  final String terraformValue;
}

/// `payload_type` — derived from the provider schema description.
enum MailmanagerRuleSetPayloadType implements TerraformEnum {
  headers('HEADERS'),
  content('CONTENT');

  const MailmanagerRuleSetPayloadType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.relay` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRelay {
  const MailmanagerRuleSetRelay({
    this.actionFailurePolicy,
    this.mailFrom,
    required this.relay,
  });

  final TfArg<MailmanagerRuleSetActionFailurePolicy>? actionFailurePolicy;

  final TfArg<MailmanagerRuleSetMailFrom>? mailFrom;

  final TfArg<String> relay;

  Map<String, Object?> encode() => {
    'action_failure_policy': ?actionFailurePolicy?.toTfJson(),
    'mail_from': ?mailFrom?.toTfJson(),
    'relay': relay.toTfJson(),
  };
}

/// `mail_from` — derived from the provider schema description.
enum MailmanagerRuleSetMailFrom implements TerraformEnum {
  replace('REPLACE'),
  preserve('PRESERVE');

  const MailmanagerRuleSetMailFrom(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.replace_recipient` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetReplaceRecipient {
  const MailmanagerRuleSetReplaceRecipient({this.replaceWith});

  final TfArg<List<String>>? replaceWith;

  Map<String, Object?> encode() => {'replace_with': ?replaceWith?.toTfJson()};
}

/// Typed helper for the `rule.action.send` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetSend {
  const MailmanagerRuleSetSend({
    this.actionFailurePolicy,
    required this.roleArn,
  });

  final TfArg<MailmanagerRuleSetActionFailurePolicy>? actionFailurePolicy;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    'action_failure_policy': ?actionFailurePolicy?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `rule.action.write_to_s3` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetWriteToS3 {
  const MailmanagerRuleSetWriteToS3({
    this.actionFailurePolicy,
    required this.roleArn,
    required this.s3Bucket,
    this.s3Prefix,
    this.s3SseKmsKeyId,
  });

  final TfArg<MailmanagerRuleSetActionFailurePolicy>? actionFailurePolicy;

  final RefTo<AwsIamRole> roleArn;

  final RefTo<AwsS3Bucket> s3Bucket;

  final TfArg<String>? s3Prefix;

  final TfArg<String>? s3SseKmsKeyId;

  Map<String, Object?> encode() => {
    'action_failure_policy': ?actionFailurePolicy?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
    's3_prefix': ?s3Prefix?.toTfJson(),
    's3_sse_kms_key_id': ?s3SseKmsKeyId?.toTfJson(),
  };
}

/// Typed helper for the `rule.condition` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetCondition {
  const MailmanagerRuleSetCondition({
    this.booleanExpression,
    this.dmarcExpression,
    this.ipExpression,
    this.numberExpression,
    this.stringExpression,
    this.verdictExpression,
  });

  final List<MailmanagerRuleSetBooleanExpression>? booleanExpression;

  final List<MailmanagerRuleSetDmarcExpression>? dmarcExpression;

  final List<MailmanagerRuleSetIpExpression>? ipExpression;

  final List<MailmanagerRuleSetNumberExpression>? numberExpression;

  final List<MailmanagerRuleSetStringExpression>? stringExpression;

  final List<MailmanagerRuleSetVerdictExpression>? verdictExpression;

  Map<String, Object?> encode() => {
    if (booleanExpression != null)
      'boolean_expression': [for (final e in booleanExpression!) e.encode()],
    if (dmarcExpression != null)
      'dmarc_expression': [for (final e in dmarcExpression!) e.encode()],
    if (ipExpression != null)
      'ip_expression': [for (final e in ipExpression!) e.encode()],
    if (numberExpression != null)
      'number_expression': [for (final e in numberExpression!) e.encode()],
    if (stringExpression != null)
      'string_expression': [for (final e in stringExpression!) e.encode()],
    if (verdictExpression != null)
      'verdict_expression': [for (final e in verdictExpression!) e.encode()],
  };
}

/// Typed helper for the `rule.condition.boolean_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerRuleSetBooleanExpression {
  const MailmanagerRuleSetBooleanExpression({
    required this.operator,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetBooleanExpressionOperator> operator;

  final List<MailmanagerRuleSetBooleanExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetBooleanExpressionOperator implements TerraformEnum {
  isTrue('IS_TRUE'),
  isFalse('IS_FALSE');

  const MailmanagerRuleSetBooleanExpressionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `analysis`, `attribute`, `is_in_address_list` on the `rule.condition.boolean_expression.evaluate` block of `aws_mailmanager_rule_set`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.analysis(...)`.
sealed class MailmanagerRuleSetBooleanExpressionEvaluate {
  const MailmanagerRuleSetBooleanExpressionEvaluate();

  /// Sets `analysis`.
  const factory MailmanagerRuleSetBooleanExpressionEvaluate.analysis(
    List<MailmanagerRuleSetAnalysis> analysis,
  ) = MailmanagerRuleSetBooleanExpressionEvaluateAnalysis;

  /// Sets `attribute`.
  const factory MailmanagerRuleSetBooleanExpressionEvaluate.attribute(
    TfArg<MailmanagerRuleSetBooleanExpressionAttribute> attribute,
  ) = MailmanagerRuleSetBooleanExpressionEvaluateAttribute;

  /// Sets `is_in_address_list`.
  const factory MailmanagerRuleSetBooleanExpressionEvaluate.isInAddressList(
    List<MailmanagerRuleSetIsInAddressList> isInAddressList,
  ) = MailmanagerRuleSetBooleanExpressionEvaluateIsInAddressList;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerRuleSetBooleanExpressionEvaluate.analysis] choice: sets `analysis`.
final class MailmanagerRuleSetBooleanExpressionEvaluateAnalysis
    extends MailmanagerRuleSetBooleanExpressionEvaluate {
  const MailmanagerRuleSetBooleanExpressionEvaluateAnalysis(this.analysis);

  final List<MailmanagerRuleSetAnalysis> analysis;

  @override
  String get blockKey => 'analysis';

  @override
  Map<String, Object?> encode() => {
    'analysis': [for (final e in analysis) e.encode()],
  };
}

/// The [MailmanagerRuleSetBooleanExpressionEvaluate.attribute] choice: sets `attribute`.
final class MailmanagerRuleSetBooleanExpressionEvaluateAttribute
    extends MailmanagerRuleSetBooleanExpressionEvaluate {
  const MailmanagerRuleSetBooleanExpressionEvaluateAttribute(this.attribute);

  final TfArg<MailmanagerRuleSetBooleanExpressionAttribute> attribute;

  @override
  String get blockKey => 'attribute';

  @override
  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// The [MailmanagerRuleSetBooleanExpressionEvaluate.isInAddressList] choice: sets `is_in_address_list`.
final class MailmanagerRuleSetBooleanExpressionEvaluateIsInAddressList
    extends MailmanagerRuleSetBooleanExpressionEvaluate {
  const MailmanagerRuleSetBooleanExpressionEvaluateIsInAddressList(
    this.isInAddressList,
  );

  final List<MailmanagerRuleSetIsInAddressList> isInAddressList;

  @override
  String get blockKey => 'is_in_address_list';

  @override
  Map<String, Object?> encode() => {
    'is_in_address_list': [for (final e in isInAddressList) e.encode()],
  };
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetBooleanExpressionAttribute implements TerraformEnum {
  readReceiptRequested('READ_RECEIPT_REQUESTED'),
  tls('TLS'),
  tlsWrapped('TLS_WRAPPED');

  const MailmanagerRuleSetBooleanExpressionAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.boolean_expression.evaluate.analysis` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerRuleSetAnalysis {
  const MailmanagerRuleSetAnalysis({
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

/// Typed helper for the `rule.condition.boolean_expression.evaluate.is_in_address_list` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerRuleSetIsInAddressList {
  const MailmanagerRuleSetIsInAddressList({
    required this.addressLists,
    required this.attribute,
  });

  final TfArg<List<String>> addressLists;

  final TfArg<MailmanagerRuleSetIsInAddressListAttribute> attribute;

  Map<String, Object?> encode() => {
    'address_lists': addressLists.toTfJson(),
    'attribute': attribute.toTfJson(),
  };
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetIsInAddressListAttribute implements TerraformEnum {
  recipient('RECIPIENT'),
  mailFrom('MAIL_FROM'),
  sender('SENDER'),
  from('FROM'),
  to('TO'),
  cc('CC');

  const MailmanagerRuleSetIsInAddressListAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.dmarc_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerRuleSetDmarcExpression {
  const MailmanagerRuleSetDmarcExpression({
    required this.operator,
    required this.values,
  });

  final TfArg<MailmanagerRuleSetDmarcExpressionOperator> operator;

  final List<TfArg<MailmanagerRuleSetDmarcExpressionValues>> values;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetDmarcExpressionOperator implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS');

  const MailmanagerRuleSetDmarcExpressionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `values` — derived from the provider schema description.
enum MailmanagerRuleSetDmarcExpressionValues implements TerraformEnum {
  none('NONE'),
  quarantine('QUARANTINE'),
  reject('REJECT');

  const MailmanagerRuleSetDmarcExpressionValues(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.ip_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerRuleSetIpExpression {
  const MailmanagerRuleSetIpExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetIpExpressionOperator> operator;

  final TfArg<List<String>> values;

  final List<MailmanagerRuleSetIpExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetIpExpressionOperator implements TerraformEnum {
  cidrMatches('CIDR_MATCHES'),
  notCidrMatches('NOT_CIDR_MATCHES');

  const MailmanagerRuleSetIpExpressionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.ip_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerRuleSetIpExpressionEvaluate {
  const MailmanagerRuleSetIpExpressionEvaluate({required this.attribute});

  final TfArg<MailmanagerRuleSetIpExpressionAttribute> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetIpExpressionAttribute implements TerraformEnum {
  sourceIp('SOURCE_IP');

  const MailmanagerRuleSetIpExpressionAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.number_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerRuleSetNumberExpression {
  const MailmanagerRuleSetNumberExpression({
    required this.operator,
    required this.value,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetNumberExpressionOperator> operator;

  final TfArg<num> value;

  final List<MailmanagerRuleSetNumberExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'value': value.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetNumberExpressionOperator implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS'),
  lessThan('LESS_THAN'),
  greaterThan('GREATER_THAN'),
  lessThanOrEqual('LESS_THAN_OR_EQUAL'),
  greaterThanOrEqual('GREATER_THAN_OR_EQUAL');

  const MailmanagerRuleSetNumberExpressionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.number_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerRuleSetNumberExpressionEvaluate {
  const MailmanagerRuleSetNumberExpressionEvaluate({required this.attribute});

  final TfArg<MailmanagerRuleSetNumberExpressionAttribute> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetNumberExpressionAttribute implements TerraformEnum {
  messageSize('MESSAGE_SIZE');

  const MailmanagerRuleSetNumberExpressionAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.string_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerRuleSetStringExpression {
  const MailmanagerRuleSetStringExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetStringExpressionOperator> operator;

  final TfArg<List<String>> values;

  final List<MailmanagerRuleSetStringExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetStringExpressionOperator implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  contains('CONTAINS');

  const MailmanagerRuleSetStringExpressionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `analysis`, `attribute`, `client_certificate_attribute`, `mime_header_attribute` on the `rule.condition.string_expression.evaluate` block of `aws_mailmanager_rule_set`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.analysis(...)`.
sealed class MailmanagerRuleSetStringExpressionEvaluate {
  const MailmanagerRuleSetStringExpressionEvaluate();

  /// Sets `analysis`.
  const factory MailmanagerRuleSetStringExpressionEvaluate.analysis(
    List<MailmanagerRuleSetAnalysis> analysis,
  ) = MailmanagerRuleSetStringExpressionEvaluateAnalysis;

  /// Sets `attribute`.
  const factory MailmanagerRuleSetStringExpressionEvaluate.attribute(
    TfArg<MailmanagerRuleSetStringExpressionAttribute> attribute,
  ) = MailmanagerRuleSetStringExpressionEvaluateAttribute;

  /// Sets `client_certificate_attribute`.
  const factory MailmanagerRuleSetStringExpressionEvaluate.clientCertificateAttribute(
    TfArg<MailmanagerRuleSetClientCertificateAttribute>
    clientCertificateAttribute,
  ) = MailmanagerRuleSetStringExpressionEvaluateClientCertificateAttribute;

  /// Sets `mime_header_attribute`.
  const factory MailmanagerRuleSetStringExpressionEvaluate.mimeHeaderAttribute(
    TfArg<String> mimeHeaderAttribute,
  ) = MailmanagerRuleSetStringExpressionEvaluateMimeHeaderAttribute;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerRuleSetStringExpressionEvaluate.analysis] choice: sets `analysis`.
final class MailmanagerRuleSetStringExpressionEvaluateAnalysis
    extends MailmanagerRuleSetStringExpressionEvaluate {
  const MailmanagerRuleSetStringExpressionEvaluateAnalysis(this.analysis);

  final List<MailmanagerRuleSetAnalysis> analysis;

  @override
  String get blockKey => 'analysis';

  @override
  Map<String, Object?> encode() => {
    'analysis': [for (final e in analysis) e.encode()],
  };
}

/// The [MailmanagerRuleSetStringExpressionEvaluate.attribute] choice: sets `attribute`.
final class MailmanagerRuleSetStringExpressionEvaluateAttribute
    extends MailmanagerRuleSetStringExpressionEvaluate {
  const MailmanagerRuleSetStringExpressionEvaluateAttribute(this.attribute);

  final TfArg<MailmanagerRuleSetStringExpressionAttribute> attribute;

  @override
  String get blockKey => 'attribute';

  @override
  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// The [MailmanagerRuleSetStringExpressionEvaluate.clientCertificateAttribute] choice: sets `client_certificate_attribute`.
final class MailmanagerRuleSetStringExpressionEvaluateClientCertificateAttribute
    extends MailmanagerRuleSetStringExpressionEvaluate {
  const MailmanagerRuleSetStringExpressionEvaluateClientCertificateAttribute(
    this.clientCertificateAttribute,
  );

  final TfArg<MailmanagerRuleSetClientCertificateAttribute>
  clientCertificateAttribute;

  @override
  String get blockKey => 'client_certificate_attribute';

  @override
  Map<String, Object?> encode() => {
    'client_certificate_attribute': clientCertificateAttribute.toTfJson(),
  };
}

/// The [MailmanagerRuleSetStringExpressionEvaluate.mimeHeaderAttribute] choice: sets `mime_header_attribute`.
final class MailmanagerRuleSetStringExpressionEvaluateMimeHeaderAttribute
    extends MailmanagerRuleSetStringExpressionEvaluate {
  const MailmanagerRuleSetStringExpressionEvaluateMimeHeaderAttribute(
    this.mimeHeaderAttribute,
  );

  final TfArg<String> mimeHeaderAttribute;

  @override
  String get blockKey => 'mime_header_attribute';

  @override
  Map<String, Object?> encode() => {
    'mime_header_attribute': mimeHeaderAttribute.toTfJson(),
  };
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetStringExpressionAttribute implements TerraformEnum {
  mailFrom('MAIL_FROM'),
  helo('HELO'),
  recipient('RECIPIENT'),
  sender('SENDER'),
  from('FROM'),
  subject('SUBJECT'),
  to('TO'),
  cc('CC');

  const MailmanagerRuleSetStringExpressionAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// `client_certificate_attribute` — derived from the provider schema description.
enum MailmanagerRuleSetClientCertificateAttribute implements TerraformEnum {
  cn('CN'),
  sanRfc822Name('SAN_RFC822_NAME'),
  sanDnsName('SAN_DNS_NAME'),
  sanDirectoryName('SAN_DIRECTORY_NAME'),
  sanUniformResourceIdentifier('SAN_UNIFORM_RESOURCE_IDENTIFIER'),
  sanIpAddress('SAN_IP_ADDRESS'),
  sanRegisteredId('SAN_REGISTERED_ID'),
  serialNumber('SERIAL_NUMBER');

  const MailmanagerRuleSetClientCertificateAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.verdict_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MailmanagerRuleSetVerdictExpression {
  const MailmanagerRuleSetVerdictExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetDmarcExpressionOperator> operator;

  final List<TfArg<MailmanagerRuleSetVerdictExpressionValues>> values;

  final List<MailmanagerRuleSetVerdictExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `values` — derived from the provider schema description.
enum MailmanagerRuleSetVerdictExpressionValues implements TerraformEnum {
  pass('PASS'),
  fail('FAIL'),
  gray('GRAY'),
  processingFailed('PROCESSING_FAILED');

  const MailmanagerRuleSetVerdictExpressionValues(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `analysis`, `attribute` on the `rule.condition.verdict_expression.evaluate` block of `aws_mailmanager_rule_set`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.analysis(...)`.
sealed class MailmanagerRuleSetVerdictExpressionEvaluate {
  const MailmanagerRuleSetVerdictExpressionEvaluate();

  /// Sets `analysis`.
  const factory MailmanagerRuleSetVerdictExpressionEvaluate.analysis(
    List<MailmanagerRuleSetAnalysis> analysis,
  ) = MailmanagerRuleSetVerdictExpressionEvaluateAnalysis;

  /// Sets `attribute`.
  const factory MailmanagerRuleSetVerdictExpressionEvaluate.attribute(
    TfArg<MailmanagerRuleSetVerdictExpressionAttribute> attribute,
  ) = MailmanagerRuleSetVerdictExpressionEvaluateAttribute;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerRuleSetVerdictExpressionEvaluate.analysis] choice: sets `analysis`.
final class MailmanagerRuleSetVerdictExpressionEvaluateAnalysis
    extends MailmanagerRuleSetVerdictExpressionEvaluate {
  const MailmanagerRuleSetVerdictExpressionEvaluateAnalysis(this.analysis);

  final List<MailmanagerRuleSetAnalysis> analysis;

  @override
  String get blockKey => 'analysis';

  @override
  Map<String, Object?> encode() => {
    'analysis': [for (final e in analysis) e.encode()],
  };
}

/// The [MailmanagerRuleSetVerdictExpressionEvaluate.attribute] choice: sets `attribute`.
final class MailmanagerRuleSetVerdictExpressionEvaluateAttribute
    extends MailmanagerRuleSetVerdictExpressionEvaluate {
  const MailmanagerRuleSetVerdictExpressionEvaluateAttribute(this.attribute);

  final TfArg<MailmanagerRuleSetVerdictExpressionAttribute> attribute;

  @override
  String get blockKey => 'attribute';

  @override
  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetVerdictExpressionAttribute implements TerraformEnum {
  spf('SPF'),
  dkim('DKIM');

  const MailmanagerRuleSetVerdictExpressionAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.unless` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetUnless {
  const MailmanagerRuleSetUnless({
    this.booleanExpression,
    this.dmarcExpression,
    this.ipExpression,
    this.numberExpression,
    this.stringExpression,
    this.verdictExpression,
  });

  final List<MailmanagerRuleSetBooleanExpression>? booleanExpression;

  final List<MailmanagerRuleSetDmarcExpression>? dmarcExpression;

  final List<MailmanagerRuleSetIpExpression>? ipExpression;

  final List<MailmanagerRuleSetNumberExpression>? numberExpression;

  final List<MailmanagerRuleSetStringExpression>? stringExpression;

  final List<MailmanagerRuleSetVerdictExpression>? verdictExpression;

  Map<String, Object?> encode() => {
    if (booleanExpression != null)
      'boolean_expression': [for (final e in booleanExpression!) e.encode()],
    if (dmarcExpression != null)
      'dmarc_expression': [for (final e in dmarcExpression!) e.encode()],
    if (ipExpression != null)
      'ip_expression': [for (final e in ipExpression!) e.encode()],
    if (numberExpression != null)
      'number_expression': [for (final e in numberExpression!) e.encode()],
    if (stringExpression != null)
      'string_expression': [for (final e in stringExpression!) e.encode()],
    if (verdictExpression != null)
      'verdict_expression': [for (final e in verdictExpression!) e.encode()],
  };
}

/// Factory wrapper for `aws_mailmanager_rule_set`.
final class AwsMailmanagerRuleSet extends Resource {
  static const String tfType = 'aws_mailmanager_rule_set';

  AwsMailmanagerRuleSet({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<MailmanagerRuleSetRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMailmanagerRuleSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMailmanagerRuleSet>`.
  RefTo<AwsMailmanagerRuleSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `last_modification_date` attribute.
  TfRef<String> get lastModificationDate =>
      TfRef.attribute<String>(this, 'last_modification_date');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
