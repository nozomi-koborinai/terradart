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

  final List<MailmanagerRuleSetRuleAction>? action;

  final List<MailmanagerRuleSetRuleCondition>? condition;

  final List<MailmanagerRuleSetRuleUnless>? unless;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (action != null) 'action': [for (final e in action!) e.encode()],
    if (condition != null)
      'condition': [for (final e in condition!) e.encode()],
    if (unless != null) 'unless': [for (final e in unless!) e.encode()],
  };
}

/// Typed helper for the `rule.action` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleAction {
  const MailmanagerRuleSetRuleAction({
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

  final List<MailmanagerRuleSetRuleActionAddHeader>? addHeader;

  final List<MailmanagerRuleSetRuleActionArchive>? archive;

  final List<MailmanagerRuleSetRuleActionBounce>? bounce;

  final List<MailmanagerRuleSetRuleActionDeliverToMailbox>? deliverToMailbox;

  final List<MailmanagerRuleSetRuleActionDeliverToQBusiness>?
  deliverToQBusiness;

  final List<MailmanagerRuleSetRuleActionDrop>? drop;

  final List<MailmanagerRuleSetRuleActionInvokeLambda>? invokeLambda;

  final List<MailmanagerRuleSetRuleActionPublishToSns>? publishToSns;

  final List<MailmanagerRuleSetRuleActionRelay>? relay;

  final List<MailmanagerRuleSetRuleActionReplaceRecipient>? replaceRecipient;

  final List<MailmanagerRuleSetRuleActionSend>? send;

  final List<MailmanagerRuleSetRuleActionWriteToS3>? writeToS3;

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
final class MailmanagerRuleSetRuleActionAddHeader {
  const MailmanagerRuleSetRuleActionAddHeader({
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
final class MailmanagerRuleSetRuleActionArchive {
  const MailmanagerRuleSetRuleActionArchive({
    this.actionFailurePolicy,
    required this.targetArchive,
  });

  final TfArg<MailmanagerRuleSetRuleActionArchiveActionFailurePolicy>?
  actionFailurePolicy;

  final TfArg<String> targetArchive;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'target_archive': targetArchive.toTfJson(),
  };
}

/// `action_failure_policy` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionArchiveActionFailurePolicy
    implements TerraformEnum {
  continueCase('CONTINUE'),
  drop('DROP');

  const MailmanagerRuleSetRuleActionArchiveActionFailurePolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.bounce` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleActionBounce {
  const MailmanagerRuleSetRuleActionBounce({
    this.actionFailurePolicy,
    required this.diagnosticMessage,
    this.message,
    required this.roleArn,
    required this.sender,
    required this.smtpReplyCode,
    required this.statusCode,
  });

  final TfArg<MailmanagerRuleSetRuleActionBounceActionFailurePolicy>?
  actionFailurePolicy;

  final TfArg<String> diagnosticMessage;

  final TfArg<String>? message;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> sender;

  final TfArg<String> smtpReplyCode;

  final TfArg<String> statusCode;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'diagnostic_message': diagnosticMessage.toTfJson(),
    if (message != null) 'message': message!.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'sender': sender.toTfJson(),
    'smtp_reply_code': smtpReplyCode.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
}

/// `action_failure_policy` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionBounceActionFailurePolicy
    implements TerraformEnum {
  continueCase('CONTINUE'),
  drop('DROP');

  const MailmanagerRuleSetRuleActionBounceActionFailurePolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.deliver_to_mailbox` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleActionDeliverToMailbox {
  const MailmanagerRuleSetRuleActionDeliverToMailbox({
    this.actionFailurePolicy,
    required this.mailboxArn,
    required this.roleArn,
  });

  final TfArg<MailmanagerRuleSetRuleActionDeliverToMailboxActionFailurePolicy>?
  actionFailurePolicy;

  final TfArg<String> mailboxArn;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'mailbox_arn': mailboxArn.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// `action_failure_policy` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionDeliverToMailboxActionFailurePolicy
    implements TerraformEnum {
  continueCase('CONTINUE'),
  drop('DROP');

  const MailmanagerRuleSetRuleActionDeliverToMailboxActionFailurePolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.deliver_to_q_business` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleActionDeliverToQBusiness {
  const MailmanagerRuleSetRuleActionDeliverToQBusiness({
    this.actionFailurePolicy,
    required this.applicationId,
    required this.indexId,
    required this.roleArn,
  });

  final TfArg<
    MailmanagerRuleSetRuleActionDeliverToQBusinessActionFailurePolicy
  >?
  actionFailurePolicy;

  final TfArg<String> applicationId;

  final TfArg<String> indexId;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'application_id': applicationId.toTfJson(),
    'index_id': indexId.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// `action_failure_policy` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionDeliverToQBusinessActionFailurePolicy
    implements TerraformEnum {
  continueCase('CONTINUE'),
  drop('DROP');

  const MailmanagerRuleSetRuleActionDeliverToQBusinessActionFailurePolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.drop` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleActionDrop {
  const MailmanagerRuleSetRuleActionDrop();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `rule.action.invoke_lambda` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleActionInvokeLambda {
  const MailmanagerRuleSetRuleActionInvokeLambda({
    this.actionFailurePolicy,
    required this.functionArn,
    required this.invocationType,
    this.retryTimeMinutes,
    required this.roleArn,
  });

  final TfArg<MailmanagerRuleSetRuleActionInvokeLambdaActionFailurePolicy>?
  actionFailurePolicy;

  final RefTo<AwsLambdaFunction> functionArn;

  final TfArg<MailmanagerRuleSetRuleActionInvokeLambdaInvocationType>
  invocationType;

  final TfArg<num>? retryTimeMinutes;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'function_arn': functionArn.encodeAs('arn').toTfJson(),
    'invocation_type': invocationType.toTfJson(),
    if (retryTimeMinutes != null)
      'retry_time_minutes': retryTimeMinutes!.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// `action_failure_policy` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionInvokeLambdaActionFailurePolicy
    implements TerraformEnum {
  continueCase('CONTINUE'),
  drop('DROP');

  const MailmanagerRuleSetRuleActionInvokeLambdaActionFailurePolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `invocation_type` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionInvokeLambdaInvocationType
    implements TerraformEnum {
  event('EVENT'),
  requestResponse('REQUEST_RESPONSE');

  const MailmanagerRuleSetRuleActionInvokeLambdaInvocationType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.publish_to_sns` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleActionPublishToSns {
  const MailmanagerRuleSetRuleActionPublishToSns({
    this.actionFailurePolicy,
    this.encoding,
    this.payloadType,
    required this.roleArn,
    required this.topicArn,
  });

  final TfArg<MailmanagerRuleSetRuleActionPublishToSnsActionFailurePolicy>?
  actionFailurePolicy;

  final TfArg<MailmanagerRuleSetRuleActionPublishToSnsEncoding>? encoding;

  final TfArg<MailmanagerRuleSetRuleActionPublishToSnsPayloadType>? payloadType;

  final RefTo<AwsIamRole> roleArn;

  final RefTo<AwsSnsTopic> topicArn;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    if (encoding != null) 'encoding': encoding!.toTfJson(),
    if (payloadType != null) 'payload_type': payloadType!.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'topic_arn': topicArn.encodeAs('arn').toTfJson(),
  };
}

/// `action_failure_policy` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionPublishToSnsActionFailurePolicy
    implements TerraformEnum {
  continueCase('CONTINUE'),
  drop('DROP');

  const MailmanagerRuleSetRuleActionPublishToSnsActionFailurePolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `encoding` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionPublishToSnsEncoding implements TerraformEnum {
  utf8('UTF-8'),
  base64('BASE64');

  const MailmanagerRuleSetRuleActionPublishToSnsEncoding(this.terraformValue);
  @override
  final String terraformValue;
}

/// `payload_type` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionPublishToSnsPayloadType
    implements TerraformEnum {
  headers('HEADERS'),
  content('CONTENT');

  const MailmanagerRuleSetRuleActionPublishToSnsPayloadType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.relay` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleActionRelay {
  const MailmanagerRuleSetRuleActionRelay({
    this.actionFailurePolicy,
    this.mailFrom,
    required this.relay,
  });

  final TfArg<MailmanagerRuleSetRuleActionRelayActionFailurePolicy>?
  actionFailurePolicy;

  final TfArg<MailmanagerRuleSetRuleActionRelayMailFrom>? mailFrom;

  final TfArg<String> relay;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    if (mailFrom != null) 'mail_from': mailFrom!.toTfJson(),
    'relay': relay.toTfJson(),
  };
}

/// `action_failure_policy` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionRelayActionFailurePolicy
    implements TerraformEnum {
  continueCase('CONTINUE'),
  drop('DROP');

  const MailmanagerRuleSetRuleActionRelayActionFailurePolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `mail_from` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionRelayMailFrom implements TerraformEnum {
  replace('REPLACE'),
  preserve('PRESERVE');

  const MailmanagerRuleSetRuleActionRelayMailFrom(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.replace_recipient` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleActionReplaceRecipient {
  const MailmanagerRuleSetRuleActionReplaceRecipient({this.replaceWith});

  final TfArg<List<Object?>>? replaceWith;

  Map<String, Object?> encode() => {
    if (replaceWith != null) 'replace_with': replaceWith!.toTfJson(),
  };
}

/// Typed helper for the `rule.action.send` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleActionSend {
  const MailmanagerRuleSetRuleActionSend({
    this.actionFailurePolicy,
    required this.roleArn,
  });

  final TfArg<MailmanagerRuleSetRuleActionSendActionFailurePolicy>?
  actionFailurePolicy;

  final RefTo<AwsIamRole> roleArn;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
  };
}

/// `action_failure_policy` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionSendActionFailurePolicy
    implements TerraformEnum {
  continueCase('CONTINUE'),
  drop('DROP');

  const MailmanagerRuleSetRuleActionSendActionFailurePolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.action.write_to_s3` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleActionWriteToS3 {
  const MailmanagerRuleSetRuleActionWriteToS3({
    this.actionFailurePolicy,
    required this.roleArn,
    required this.s3Bucket,
    this.s3Prefix,
    this.s3SseKmsKeyId,
  });

  final TfArg<MailmanagerRuleSetRuleActionWriteToS3ActionFailurePolicy>?
  actionFailurePolicy;

  final RefTo<AwsIamRole> roleArn;

  final RefTo<AwsS3Bucket> s3Bucket;

  final TfArg<String>? s3Prefix;

  final TfArg<String>? s3SseKmsKeyId;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
    if (s3Prefix != null) 's3_prefix': s3Prefix!.toTfJson(),
    if (s3SseKmsKeyId != null) 's3_sse_kms_key_id': s3SseKmsKeyId!.toTfJson(),
  };
}

/// `action_failure_policy` — derived from the provider schema description.
enum MailmanagerRuleSetRuleActionWriteToS3ActionFailurePolicy
    implements TerraformEnum {
  continueCase('CONTINUE'),
  drop('DROP');

  const MailmanagerRuleSetRuleActionWriteToS3ActionFailurePolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleCondition {
  const MailmanagerRuleSetRuleCondition({
    this.booleanExpression,
    this.dmarcExpression,
    this.ipExpression,
    this.numberExpression,
    this.stringExpression,
    this.verdictExpression,
  });

  final List<MailmanagerRuleSetRuleConditionBooleanExpression>?
  booleanExpression;

  final List<MailmanagerRuleSetRuleConditionDmarcExpression>? dmarcExpression;

  final List<MailmanagerRuleSetRuleConditionIpExpression>? ipExpression;

  final List<MailmanagerRuleSetRuleConditionNumberExpression>? numberExpression;

  final List<MailmanagerRuleSetRuleConditionStringExpression>? stringExpression;

  final List<MailmanagerRuleSetRuleConditionVerdictExpression>?
  verdictExpression;

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
@immutable
final class MailmanagerRuleSetRuleConditionBooleanExpression {
  const MailmanagerRuleSetRuleConditionBooleanExpression({
    required this.operator,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetRuleConditionBooleanExpressionOperator>
  operator;

  final List<MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate>?
  evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionBooleanExpressionOperator
    implements TerraformEnum {
  isTrue('IS_TRUE'),
  isFalse('IS_FALSE');

  const MailmanagerRuleSetRuleConditionBooleanExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `analysis`, `attribute`, `is_in_address_list` on the `rule.condition.boolean_expression.evaluate` block of `aws_mailmanager_rule_set`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.analysis(...)`.
sealed class MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate();

  /// Sets `analysis`.
  const factory MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate.analysis(
    List<MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAnalysis>
    analysis,
  ) = MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAnalysisChoice;

  /// Sets `attribute`.
  const factory MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate.attribute(
    TfArg<MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAttribute>
    attribute,
  ) = MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAttributeChoice;

  /// Sets `is_in_address_list`.
  const factory MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate.isInAddressList(
    List<
      MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList
    >
    isInAddressList,
  ) = MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressListChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate.analysis] choice: sets `analysis`.
final class MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAnalysisChoice
    extends MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAnalysisChoice(
    this.analysis,
  );

  final List<MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAnalysis>
  analysis;

  @override
  String get blockKey => 'analysis';

  @override
  Map<String, Object?> encode() => {
    'analysis': [for (final e in analysis) e.encode()],
  };
}

/// The [MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate.attribute] choice: sets `attribute`.
final class MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAttributeChoice
    extends MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAttributeChoice(
    this.attribute,
  );

  final TfArg<MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAttribute>
  attribute;

  @override
  String get blockKey => 'attribute';

  @override
  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// The [MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate.isInAddressList] choice: sets `is_in_address_list`.
final class MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressListChoice
    extends MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressListChoice(
    this.isInAddressList,
  );

  final List<
    MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList
  >
  isInAddressList;

  @override
  String get blockKey => 'is_in_address_list';

  @override
  Map<String, Object?> encode() => {
    'is_in_address_list': [for (final e in isInAddressList) e.encode()],
  };
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAttribute
    implements TerraformEnum {
  readReceiptRequested('READ_RECEIPT_REQUESTED'),
  tls('TLS'),
  tlsWrapped('TLS_WRAPPED');

  const MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.boolean_expression.evaluate.analysis` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAnalysis {
  const MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAnalysis({
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
@immutable
final class MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList {
  const MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList({
    required this.addressLists,
    required this.attribute,
  });

  final TfArg<List<Object?>> addressLists;

  final TfArg<
    MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressListAttribute
  >
  attribute;

  Map<String, Object?> encode() => {
    'address_lists': addressLists.toTfJson(),
    'attribute': attribute.toTfJson(),
  };
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressListAttribute
    implements TerraformEnum {
  recipient('RECIPIENT'),
  mailFrom('MAIL_FROM'),
  sender('SENDER'),
  from('FROM'),
  to('TO'),
  cc('CC');

  const MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressListAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.dmarc_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionDmarcExpression {
  const MailmanagerRuleSetRuleConditionDmarcExpression({
    required this.operator,
    required this.values,
  });

  final TfArg<MailmanagerRuleSetRuleConditionDmarcExpressionOperator> operator;

  final List<TfArg<MailmanagerRuleSetRuleConditionDmarcExpressionValues>>
  values;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionDmarcExpressionOperator
    implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS');

  const MailmanagerRuleSetRuleConditionDmarcExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `values` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionDmarcExpressionValues
    implements TerraformEnum {
  none('NONE'),
  quarantine('QUARANTINE'),
  reject('REJECT');

  const MailmanagerRuleSetRuleConditionDmarcExpressionValues(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.ip_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionIpExpression {
  const MailmanagerRuleSetRuleConditionIpExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetRuleConditionIpExpressionOperator> operator;

  final TfArg<List<Object?>> values;

  final List<MailmanagerRuleSetRuleConditionIpExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionIpExpressionOperator
    implements TerraformEnum {
  cidrMatches('CIDR_MATCHES'),
  notCidrMatches('NOT_CIDR_MATCHES');

  const MailmanagerRuleSetRuleConditionIpExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.ip_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionIpExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionIpExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<MailmanagerRuleSetRuleConditionIpExpressionEvaluateAttribute>
  attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionIpExpressionEvaluateAttribute
    implements TerraformEnum {
  sourceIp('SOURCE_IP');

  const MailmanagerRuleSetRuleConditionIpExpressionEvaluateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.number_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionNumberExpression {
  const MailmanagerRuleSetRuleConditionNumberExpression({
    required this.operator,
    required this.value,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetRuleConditionNumberExpressionOperator> operator;

  final TfArg<num> value;

  final List<MailmanagerRuleSetRuleConditionNumberExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'value': value.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionNumberExpressionOperator
    implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS'),
  lessThan('LESS_THAN'),
  greaterThan('GREATER_THAN'),
  lessThanOrEqual('LESS_THAN_OR_EQUAL'),
  greaterThanOrEqual('GREATER_THAN_OR_EQUAL');

  const MailmanagerRuleSetRuleConditionNumberExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.number_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionNumberExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionNumberExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<MailmanagerRuleSetRuleConditionNumberExpressionEvaluateAttribute>
  attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionNumberExpressionEvaluateAttribute
    implements TerraformEnum {
  messageSize('MESSAGE_SIZE');

  const MailmanagerRuleSetRuleConditionNumberExpressionEvaluateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.string_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionStringExpression {
  const MailmanagerRuleSetRuleConditionStringExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetRuleConditionStringExpressionOperator> operator;

  final TfArg<List<Object?>> values;

  final List<MailmanagerRuleSetRuleConditionStringExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionStringExpressionOperator
    implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  contains('CONTAINS');

  const MailmanagerRuleSetRuleConditionStringExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `analysis`, `attribute`, `client_certificate_attribute`, `mime_header_attribute` on the `rule.condition.string_expression.evaluate` block of `aws_mailmanager_rule_set`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.analysis(...)`.
sealed class MailmanagerRuleSetRuleConditionStringExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionStringExpressionEvaluate();

  /// Sets `analysis`.
  const factory MailmanagerRuleSetRuleConditionStringExpressionEvaluate.analysis(
    List<MailmanagerRuleSetRuleConditionStringExpressionEvaluateAnalysis>
    analysis,
  ) = MailmanagerRuleSetRuleConditionStringExpressionEvaluateAnalysisChoice;

  /// Sets `attribute`.
  const factory MailmanagerRuleSetRuleConditionStringExpressionEvaluate.attribute(
    TfArg<MailmanagerRuleSetRuleConditionStringExpressionEvaluateAttribute>
    attribute,
  ) = MailmanagerRuleSetRuleConditionStringExpressionEvaluateAttributeChoice;

  /// Sets `client_certificate_attribute`.
  const factory MailmanagerRuleSetRuleConditionStringExpressionEvaluate.clientCertificateAttribute(
    TfArg<
      MailmanagerRuleSetRuleConditionStringExpressionEvaluateClientCertificateAttribute
    >
    clientCertificateAttribute,
  ) = MailmanagerRuleSetRuleConditionStringExpressionEvaluateClientCertificateAttributeChoice;

  /// Sets `mime_header_attribute`.
  const factory MailmanagerRuleSetRuleConditionStringExpressionEvaluate.mimeHeaderAttribute(
    TfArg<String> mimeHeaderAttribute,
  ) = MailmanagerRuleSetRuleConditionStringExpressionEvaluateMimeHeaderAttribute;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerRuleSetRuleConditionStringExpressionEvaluate.analysis] choice: sets `analysis`.
final class MailmanagerRuleSetRuleConditionStringExpressionEvaluateAnalysisChoice
    extends MailmanagerRuleSetRuleConditionStringExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionStringExpressionEvaluateAnalysisChoice(
    this.analysis,
  );

  final List<MailmanagerRuleSetRuleConditionStringExpressionEvaluateAnalysis>
  analysis;

  @override
  String get blockKey => 'analysis';

  @override
  Map<String, Object?> encode() => {
    'analysis': [for (final e in analysis) e.encode()],
  };
}

/// The [MailmanagerRuleSetRuleConditionStringExpressionEvaluate.attribute] choice: sets `attribute`.
final class MailmanagerRuleSetRuleConditionStringExpressionEvaluateAttributeChoice
    extends MailmanagerRuleSetRuleConditionStringExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionStringExpressionEvaluateAttributeChoice(
    this.attribute,
  );

  final TfArg<MailmanagerRuleSetRuleConditionStringExpressionEvaluateAttribute>
  attribute;

  @override
  String get blockKey => 'attribute';

  @override
  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// The [MailmanagerRuleSetRuleConditionStringExpressionEvaluate.clientCertificateAttribute] choice: sets `client_certificate_attribute`.
final class MailmanagerRuleSetRuleConditionStringExpressionEvaluateClientCertificateAttributeChoice
    extends MailmanagerRuleSetRuleConditionStringExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionStringExpressionEvaluateClientCertificateAttributeChoice(
    this.clientCertificateAttribute,
  );

  final TfArg<
    MailmanagerRuleSetRuleConditionStringExpressionEvaluateClientCertificateAttribute
  >
  clientCertificateAttribute;

  @override
  String get blockKey => 'client_certificate_attribute';

  @override
  Map<String, Object?> encode() => {
    'client_certificate_attribute': clientCertificateAttribute.toTfJson(),
  };
}

/// The [MailmanagerRuleSetRuleConditionStringExpressionEvaluate.mimeHeaderAttribute] choice: sets `mime_header_attribute`.
final class MailmanagerRuleSetRuleConditionStringExpressionEvaluateMimeHeaderAttribute
    extends MailmanagerRuleSetRuleConditionStringExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionStringExpressionEvaluateMimeHeaderAttribute(
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
enum MailmanagerRuleSetRuleConditionStringExpressionEvaluateAttribute
    implements TerraformEnum {
  mailFrom('MAIL_FROM'),
  helo('HELO'),
  recipient('RECIPIENT'),
  sender('SENDER'),
  from('FROM'),
  subject('SUBJECT'),
  to('TO'),
  cc('CC');

  const MailmanagerRuleSetRuleConditionStringExpressionEvaluateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `client_certificate_attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionStringExpressionEvaluateClientCertificateAttribute
    implements TerraformEnum {
  cn('CN'),
  sanRfc822Name('SAN_RFC822_NAME'),
  sanDnsName('SAN_DNS_NAME'),
  sanDirectoryName('SAN_DIRECTORY_NAME'),
  sanUniformResourceIdentifier('SAN_UNIFORM_RESOURCE_IDENTIFIER'),
  sanIpAddress('SAN_IP_ADDRESS'),
  sanRegisteredId('SAN_REGISTERED_ID'),
  serialNumber('SERIAL_NUMBER');

  const MailmanagerRuleSetRuleConditionStringExpressionEvaluateClientCertificateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.string_expression.evaluate.analysis` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionStringExpressionEvaluateAnalysis {
  const MailmanagerRuleSetRuleConditionStringExpressionEvaluateAnalysis({
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

/// Typed helper for the `rule.condition.verdict_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionVerdictExpression {
  const MailmanagerRuleSetRuleConditionVerdictExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetRuleConditionVerdictExpressionOperator>
  operator;

  final List<TfArg<MailmanagerRuleSetRuleConditionVerdictExpressionValues>>
  values;

  final List<MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate>?
  evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionVerdictExpressionOperator
    implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS');

  const MailmanagerRuleSetRuleConditionVerdictExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `values` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionVerdictExpressionValues
    implements TerraformEnum {
  pass('PASS'),
  fail('FAIL'),
  gray('GRAY'),
  processingFailed('PROCESSING_FAILED');

  const MailmanagerRuleSetRuleConditionVerdictExpressionValues(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `analysis`, `attribute` on the `rule.condition.verdict_expression.evaluate` block of `aws_mailmanager_rule_set`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.analysis(...)`.
sealed class MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate();

  /// Sets `analysis`.
  const factory MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate.analysis(
    List<MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAnalysis>
    analysis,
  ) = MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAnalysisChoice;

  /// Sets `attribute`.
  const factory MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate.attribute(
    TfArg<MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAttribute>
    attribute,
  ) = MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAttributeChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate.analysis] choice: sets `analysis`.
final class MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAnalysisChoice
    extends MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAnalysisChoice(
    this.analysis,
  );

  final List<MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAnalysis>
  analysis;

  @override
  String get blockKey => 'analysis';

  @override
  Map<String, Object?> encode() => {
    'analysis': [for (final e in analysis) e.encode()],
  };
}

/// The [MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate.attribute] choice: sets `attribute`.
final class MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAttributeChoice
    extends MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAttributeChoice(
    this.attribute,
  );

  final TfArg<MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAttribute>
  attribute;

  @override
  String get blockKey => 'attribute';

  @override
  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAttribute
    implements TerraformEnum {
  spf('SPF'),
  dkim('DKIM');

  const MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.condition.verdict_expression.evaluate.analysis` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAnalysis {
  const MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAnalysis({
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

/// Typed helper for the `rule.unless` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnless {
  const MailmanagerRuleSetRuleUnless({
    this.booleanExpression,
    this.dmarcExpression,
    this.ipExpression,
    this.numberExpression,
    this.stringExpression,
    this.verdictExpression,
  });

  final List<MailmanagerRuleSetRuleUnlessBooleanExpression>? booleanExpression;

  final List<MailmanagerRuleSetRuleUnlessDmarcExpression>? dmarcExpression;

  final List<MailmanagerRuleSetRuleUnlessIpExpression>? ipExpression;

  final List<MailmanagerRuleSetRuleUnlessNumberExpression>? numberExpression;

  final List<MailmanagerRuleSetRuleUnlessStringExpression>? stringExpression;

  final List<MailmanagerRuleSetRuleUnlessVerdictExpression>? verdictExpression;

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

/// Typed helper for the `rule.unless.boolean_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessBooleanExpression {
  const MailmanagerRuleSetRuleUnlessBooleanExpression({
    required this.operator,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetRuleUnlessBooleanExpressionOperator> operator;

  final List<MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessBooleanExpressionOperator
    implements TerraformEnum {
  isTrue('IS_TRUE'),
  isFalse('IS_FALSE');

  const MailmanagerRuleSetRuleUnlessBooleanExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `analysis`, `attribute`, `is_in_address_list` on the `rule.unless.boolean_expression.evaluate` block of `aws_mailmanager_rule_set`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.analysis(...)`.
sealed class MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate();

  /// Sets `analysis`.
  const factory MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate.analysis(
    List<MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAnalysis>
    analysis,
  ) = MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAnalysisChoice;

  /// Sets `attribute`.
  const factory MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate.attribute(
    TfArg<MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAttribute>
    attribute,
  ) = MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAttributeChoice;

  /// Sets `is_in_address_list`.
  const factory MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate.isInAddressList(
    List<MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressList>
    isInAddressList,
  ) = MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressListChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate.analysis] choice: sets `analysis`.
final class MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAnalysisChoice
    extends MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAnalysisChoice(
    this.analysis,
  );

  final List<MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAnalysis>
  analysis;

  @override
  String get blockKey => 'analysis';

  @override
  Map<String, Object?> encode() => {
    'analysis': [for (final e in analysis) e.encode()],
  };
}

/// The [MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate.attribute] choice: sets `attribute`.
final class MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAttributeChoice
    extends MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAttributeChoice(
    this.attribute,
  );

  final TfArg<MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAttribute>
  attribute;

  @override
  String get blockKey => 'attribute';

  @override
  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// The [MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate.isInAddressList] choice: sets `is_in_address_list`.
final class MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressListChoice
    extends MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressListChoice(
    this.isInAddressList,
  );

  final List<
    MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressList
  >
  isInAddressList;

  @override
  String get blockKey => 'is_in_address_list';

  @override
  Map<String, Object?> encode() => {
    'is_in_address_list': [for (final e in isInAddressList) e.encode()],
  };
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAttribute
    implements TerraformEnum {
  readReceiptRequested('READ_RECEIPT_REQUESTED'),
  tls('TLS'),
  tlsWrapped('TLS_WRAPPED');

  const MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.unless.boolean_expression.evaluate.analysis` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAnalysis {
  const MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAnalysis({
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

/// Typed helper for the `rule.unless.boolean_expression.evaluate.is_in_address_list` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressList {
  const MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressList({
    required this.addressLists,
    required this.attribute,
  });

  final TfArg<List<Object?>> addressLists;

  final TfArg<
    MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressListAttribute
  >
  attribute;

  Map<String, Object?> encode() => {
    'address_lists': addressLists.toTfJson(),
    'attribute': attribute.toTfJson(),
  };
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressListAttribute
    implements TerraformEnum {
  recipient('RECIPIENT'),
  mailFrom('MAIL_FROM'),
  sender('SENDER'),
  from('FROM'),
  to('TO'),
  cc('CC');

  const MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressListAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.unless.dmarc_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessDmarcExpression {
  const MailmanagerRuleSetRuleUnlessDmarcExpression({
    required this.operator,
    required this.values,
  });

  final TfArg<MailmanagerRuleSetRuleUnlessDmarcExpressionOperator> operator;

  final List<TfArg<MailmanagerRuleSetRuleUnlessDmarcExpressionValues>> values;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessDmarcExpressionOperator
    implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS');

  const MailmanagerRuleSetRuleUnlessDmarcExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `values` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessDmarcExpressionValues
    implements TerraformEnum {
  none('NONE'),
  quarantine('QUARANTINE'),
  reject('REJECT');

  const MailmanagerRuleSetRuleUnlessDmarcExpressionValues(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.unless.ip_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessIpExpression {
  const MailmanagerRuleSetRuleUnlessIpExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetRuleUnlessIpExpressionOperator> operator;

  final TfArg<List<Object?>> values;

  final List<MailmanagerRuleSetRuleUnlessIpExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessIpExpressionOperator implements TerraformEnum {
  cidrMatches('CIDR_MATCHES'),
  notCidrMatches('NOT_CIDR_MATCHES');

  const MailmanagerRuleSetRuleUnlessIpExpressionOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.unless.ip_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessIpExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessIpExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<MailmanagerRuleSetRuleUnlessIpExpressionEvaluateAttribute>
  attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessIpExpressionEvaluateAttribute
    implements TerraformEnum {
  sourceIp('SOURCE_IP');

  const MailmanagerRuleSetRuleUnlessIpExpressionEvaluateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.unless.number_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessNumberExpression {
  const MailmanagerRuleSetRuleUnlessNumberExpression({
    required this.operator,
    required this.value,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetRuleUnlessNumberExpressionOperator> operator;

  final TfArg<num> value;

  final List<MailmanagerRuleSetRuleUnlessNumberExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'value': value.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessNumberExpressionOperator
    implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS'),
  lessThan('LESS_THAN'),
  greaterThan('GREATER_THAN'),
  lessThanOrEqual('LESS_THAN_OR_EQUAL'),
  greaterThanOrEqual('GREATER_THAN_OR_EQUAL');

  const MailmanagerRuleSetRuleUnlessNumberExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.unless.number_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessNumberExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessNumberExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<MailmanagerRuleSetRuleUnlessNumberExpressionEvaluateAttribute>
  attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessNumberExpressionEvaluateAttribute
    implements TerraformEnum {
  messageSize('MESSAGE_SIZE');

  const MailmanagerRuleSetRuleUnlessNumberExpressionEvaluateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.unless.string_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessStringExpression {
  const MailmanagerRuleSetRuleUnlessStringExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetRuleUnlessStringExpressionOperator> operator;

  final TfArg<List<Object?>> values;

  final List<MailmanagerRuleSetRuleUnlessStringExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessStringExpressionOperator
    implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  contains('CONTAINS');

  const MailmanagerRuleSetRuleUnlessStringExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `analysis`, `attribute`, `client_certificate_attribute`, `mime_header_attribute` on the `rule.unless.string_expression.evaluate` block of `aws_mailmanager_rule_set`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.analysis(...)`.
sealed class MailmanagerRuleSetRuleUnlessStringExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessStringExpressionEvaluate();

  /// Sets `analysis`.
  const factory MailmanagerRuleSetRuleUnlessStringExpressionEvaluate.analysis(
    List<MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAnalysis> analysis,
  ) = MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAnalysisChoice;

  /// Sets `attribute`.
  const factory MailmanagerRuleSetRuleUnlessStringExpressionEvaluate.attribute(
    TfArg<MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAttribute>
    attribute,
  ) = MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAttributeChoice;

  /// Sets `client_certificate_attribute`.
  const factory MailmanagerRuleSetRuleUnlessStringExpressionEvaluate.clientCertificateAttribute(
    TfArg<
      MailmanagerRuleSetRuleUnlessStringExpressionEvaluateClientCertificateAttribute
    >
    clientCertificateAttribute,
  ) = MailmanagerRuleSetRuleUnlessStringExpressionEvaluateClientCertificateAttributeChoice;

  /// Sets `mime_header_attribute`.
  const factory MailmanagerRuleSetRuleUnlessStringExpressionEvaluate.mimeHeaderAttribute(
    TfArg<String> mimeHeaderAttribute,
  ) = MailmanagerRuleSetRuleUnlessStringExpressionEvaluateMimeHeaderAttribute;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerRuleSetRuleUnlessStringExpressionEvaluate.analysis] choice: sets `analysis`.
final class MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAnalysisChoice
    extends MailmanagerRuleSetRuleUnlessStringExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAnalysisChoice(
    this.analysis,
  );

  final List<MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAnalysis>
  analysis;

  @override
  String get blockKey => 'analysis';

  @override
  Map<String, Object?> encode() => {
    'analysis': [for (final e in analysis) e.encode()],
  };
}

/// The [MailmanagerRuleSetRuleUnlessStringExpressionEvaluate.attribute] choice: sets `attribute`.
final class MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAttributeChoice
    extends MailmanagerRuleSetRuleUnlessStringExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAttributeChoice(
    this.attribute,
  );

  final TfArg<MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAttribute>
  attribute;

  @override
  String get blockKey => 'attribute';

  @override
  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// The [MailmanagerRuleSetRuleUnlessStringExpressionEvaluate.clientCertificateAttribute] choice: sets `client_certificate_attribute`.
final class MailmanagerRuleSetRuleUnlessStringExpressionEvaluateClientCertificateAttributeChoice
    extends MailmanagerRuleSetRuleUnlessStringExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessStringExpressionEvaluateClientCertificateAttributeChoice(
    this.clientCertificateAttribute,
  );

  final TfArg<
    MailmanagerRuleSetRuleUnlessStringExpressionEvaluateClientCertificateAttribute
  >
  clientCertificateAttribute;

  @override
  String get blockKey => 'client_certificate_attribute';

  @override
  Map<String, Object?> encode() => {
    'client_certificate_attribute': clientCertificateAttribute.toTfJson(),
  };
}

/// The [MailmanagerRuleSetRuleUnlessStringExpressionEvaluate.mimeHeaderAttribute] choice: sets `mime_header_attribute`.
final class MailmanagerRuleSetRuleUnlessStringExpressionEvaluateMimeHeaderAttribute
    extends MailmanagerRuleSetRuleUnlessStringExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessStringExpressionEvaluateMimeHeaderAttribute(
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
enum MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAttribute
    implements TerraformEnum {
  mailFrom('MAIL_FROM'),
  helo('HELO'),
  recipient('RECIPIENT'),
  sender('SENDER'),
  from('FROM'),
  subject('SUBJECT'),
  to('TO'),
  cc('CC');

  const MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `client_certificate_attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessStringExpressionEvaluateClientCertificateAttribute
    implements TerraformEnum {
  cn('CN'),
  sanRfc822Name('SAN_RFC822_NAME'),
  sanDnsName('SAN_DNS_NAME'),
  sanDirectoryName('SAN_DIRECTORY_NAME'),
  sanUniformResourceIdentifier('SAN_UNIFORM_RESOURCE_IDENTIFIER'),
  sanIpAddress('SAN_IP_ADDRESS'),
  sanRegisteredId('SAN_REGISTERED_ID'),
  serialNumber('SERIAL_NUMBER');

  const MailmanagerRuleSetRuleUnlessStringExpressionEvaluateClientCertificateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.unless.string_expression.evaluate.analysis` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAnalysis {
  const MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAnalysis({
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

/// Typed helper for the `rule.unless.verdict_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessVerdictExpression {
  const MailmanagerRuleSetRuleUnlessVerdictExpression({
    required this.operator,
    required this.values,
    this.evaluate,
  });

  final TfArg<MailmanagerRuleSetRuleUnlessVerdictExpressionOperator> operator;

  final List<TfArg<MailmanagerRuleSetRuleUnlessVerdictExpressionValues>> values;

  final List<MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': [for (final e in values) e.toTfJson()],
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessVerdictExpressionOperator
    implements TerraformEnum {
  equals('EQUALS'),
  notEquals('NOT_EQUALS');

  const MailmanagerRuleSetRuleUnlessVerdictExpressionOperator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `values` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessVerdictExpressionValues
    implements TerraformEnum {
  pass('PASS'),
  fail('FAIL'),
  gray('GRAY'),
  processingFailed('PROCESSING_FAILED');

  const MailmanagerRuleSetRuleUnlessVerdictExpressionValues(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `analysis`, `attribute` on the `rule.unless.verdict_expression.evaluate` block of `aws_mailmanager_rule_set`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.analysis(...)`.
sealed class MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate();

  /// Sets `analysis`.
  const factory MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate.analysis(
    List<MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAnalysis>
    analysis,
  ) = MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAnalysisChoice;

  /// Sets `attribute`.
  const factory MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate.attribute(
    TfArg<MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAttribute>
    attribute,
  ) = MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAttributeChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate.analysis] choice: sets `analysis`.
final class MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAnalysisChoice
    extends MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAnalysisChoice(
    this.analysis,
  );

  final List<MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAnalysis>
  analysis;

  @override
  String get blockKey => 'analysis';

  @override
  Map<String, Object?> encode() => {
    'analysis': [for (final e in analysis) e.encode()],
  };
}

/// The [MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate.attribute] choice: sets `attribute`.
final class MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAttributeChoice
    extends MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAttributeChoice(
    this.attribute,
  );

  final TfArg<MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAttribute>
  attribute;

  @override
  String get blockKey => 'attribute';

  @override
  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
}

/// `attribute` — derived from the provider schema description.
enum MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAttribute
    implements TerraformEnum {
  spf('SPF'),
  dkim('DKIM');

  const MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAttribute(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.unless.verdict_expression.evaluate.analysis` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAnalysis {
  const MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAnalysis({
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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
}
