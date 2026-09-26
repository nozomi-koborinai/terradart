// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? actionFailurePolicy;

  final TfArg<String> targetArchive;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'target_archive': targetArchive.toTfJson(),
  };
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

  final TfArg<String>? actionFailurePolicy;

  final TfArg<String> diagnosticMessage;

  final TfArg<String>? message;

  final TfArg<String> roleArn;

  final TfArg<String> sender;

  final TfArg<String> smtpReplyCode;

  final TfArg<String> statusCode;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'diagnostic_message': diagnosticMessage.toTfJson(),
    if (message != null) 'message': message!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'sender': sender.toTfJson(),
    'smtp_reply_code': smtpReplyCode.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
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

  final TfArg<String>? actionFailurePolicy;

  final TfArg<String> mailboxArn;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'mailbox_arn': mailboxArn.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
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

  final TfArg<String>? actionFailurePolicy;

  final TfArg<String> applicationId;

  final TfArg<String> indexId;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'application_id': applicationId.toTfJson(),
    'index_id': indexId.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
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

  final TfArg<String>? actionFailurePolicy;

  final TfArg<String> functionArn;

  final TfArg<String> invocationType;

  final TfArg<num>? retryTimeMinutes;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'function_arn': functionArn.toTfJson(),
    'invocation_type': invocationType.toTfJson(),
    if (retryTimeMinutes != null)
      'retry_time_minutes': retryTimeMinutes!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
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

  final TfArg<String>? actionFailurePolicy;

  final TfArg<String>? encoding;

  final TfArg<String>? payloadType;

  final TfArg<String> roleArn;

  final TfArg<String> topicArn;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    if (encoding != null) 'encoding': encoding!.toTfJson(),
    if (payloadType != null) 'payload_type': payloadType!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'topic_arn': topicArn.toTfJson(),
  };
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

  final TfArg<String>? actionFailurePolicy;

  final TfArg<String>? mailFrom;

  final TfArg<String> relay;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    if (mailFrom != null) 'mail_from': mailFrom!.toTfJson(),
    'relay': relay.toTfJson(),
  };
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

  final TfArg<String>? actionFailurePolicy;

  final TfArg<String> roleArn;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
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

  final TfArg<String>? actionFailurePolicy;

  final TfArg<String> roleArn;

  final TfArg<String> s3Bucket;

  final TfArg<String>? s3Prefix;

  final TfArg<String>? s3SseKmsKeyId;

  Map<String, Object?> encode() => {
    if (actionFailurePolicy != null)
      'action_failure_policy': actionFailurePolicy!.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    's3_bucket': s3Bucket.toTfJson(),
    if (s3Prefix != null) 's3_prefix': s3Prefix!.toTfJson(),
    if (s3SseKmsKeyId != null) 's3_sse_kms_key_id': s3SseKmsKeyId!.toTfJson(),
  };
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

  final TfArg<String> operator;

  final List<MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate>?
  evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `rule.condition.boolean_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionBooleanExpressionEvaluate({
    this.attribute,
    this.analysis,
    this.isInAddressList,
  });

  final TfArg<String>? attribute;

  final List<MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateAnalysis>?
  analysis;

  final List<
    MailmanagerRuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList
  >?
  isInAddressList;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (analysis != null) 'analysis': [for (final e in analysis!) e.encode()],
    if (isInAddressList != null)
      'is_in_address_list': [for (final e in isInAddressList!) e.encode()],
  };
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

  final TfArg<String> attribute;

  Map<String, Object?> encode() => {
    'address_lists': addressLists.toTfJson(),
    'attribute': attribute.toTfJson(),
  };
}

/// Typed helper for the `rule.condition.dmarc_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionDmarcExpression {
  const MailmanagerRuleSetRuleConditionDmarcExpression({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
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

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  final List<MailmanagerRuleSetRuleConditionIpExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `rule.condition.ip_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionIpExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionIpExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<String> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
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

  final TfArg<String> operator;

  final TfArg<num> value;

  final List<MailmanagerRuleSetRuleConditionNumberExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'value': value.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `rule.condition.number_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionNumberExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionNumberExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<String> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
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

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  final List<MailmanagerRuleSetRuleConditionStringExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `rule.condition.string_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionStringExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionStringExpressionEvaluate({
    this.attribute,
    this.clientCertificateAttribute,
    this.mimeHeaderAttribute,
    this.analysis,
  });

  final TfArg<String>? attribute;

  final TfArg<String>? clientCertificateAttribute;

  final TfArg<String>? mimeHeaderAttribute;

  final List<MailmanagerRuleSetRuleConditionStringExpressionEvaluateAnalysis>?
  analysis;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (clientCertificateAttribute != null)
      'client_certificate_attribute': clientCertificateAttribute!.toTfJson(),
    if (mimeHeaderAttribute != null)
      'mime_header_attribute': mimeHeaderAttribute!.toTfJson(),
    if (analysis != null) 'analysis': [for (final e in analysis!) e.encode()],
  };
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

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  final List<MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate>?
  evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `rule.condition.verdict_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate {
  const MailmanagerRuleSetRuleConditionVerdictExpressionEvaluate({
    this.attribute,
    this.analysis,
  });

  final TfArg<String>? attribute;

  final List<MailmanagerRuleSetRuleConditionVerdictExpressionEvaluateAnalysis>?
  analysis;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (analysis != null) 'analysis': [for (final e in analysis!) e.encode()],
  };
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

  final TfArg<String> operator;

  final List<MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `rule.unless.boolean_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluate({
    this.attribute,
    this.analysis,
    this.isInAddressList,
  });

  final TfArg<String>? attribute;

  final List<MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateAnalysis>?
  analysis;

  final List<
    MailmanagerRuleSetRuleUnlessBooleanExpressionEvaluateIsInAddressList
  >?
  isInAddressList;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (analysis != null) 'analysis': [for (final e in analysis!) e.encode()],
    if (isInAddressList != null)
      'is_in_address_list': [for (final e in isInAddressList!) e.encode()],
  };
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

  final TfArg<String> attribute;

  Map<String, Object?> encode() => {
    'address_lists': addressLists.toTfJson(),
    'attribute': attribute.toTfJson(),
  };
}

/// Typed helper for the `rule.unless.dmarc_expression` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessDmarcExpression {
  const MailmanagerRuleSetRuleUnlessDmarcExpression({
    required this.operator,
    required this.values,
  });

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
  };
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

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  final List<MailmanagerRuleSetRuleUnlessIpExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `rule.unless.ip_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessIpExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessIpExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<String> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
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

  final TfArg<String> operator;

  final TfArg<num> value;

  final List<MailmanagerRuleSetRuleUnlessNumberExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'value': value.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `rule.unless.number_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessNumberExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessNumberExpressionEvaluate({
    required this.attribute,
  });

  final TfArg<String> attribute;

  Map<String, Object?> encode() => {'attribute': attribute.toTfJson()};
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

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  final List<MailmanagerRuleSetRuleUnlessStringExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `rule.unless.string_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessStringExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessStringExpressionEvaluate({
    this.attribute,
    this.clientCertificateAttribute,
    this.mimeHeaderAttribute,
    this.analysis,
  });

  final TfArg<String>? attribute;

  final TfArg<String>? clientCertificateAttribute;

  final TfArg<String>? mimeHeaderAttribute;

  final List<MailmanagerRuleSetRuleUnlessStringExpressionEvaluateAnalysis>?
  analysis;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (clientCertificateAttribute != null)
      'client_certificate_attribute': clientCertificateAttribute!.toTfJson(),
    if (mimeHeaderAttribute != null)
      'mime_header_attribute': mimeHeaderAttribute!.toTfJson(),
    if (analysis != null) 'analysis': [for (final e in analysis!) e.encode()],
  };
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

  final TfArg<String> operator;

  final TfArg<List<Object?>> values;

  final List<MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate>? evaluate;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    'values': values.toTfJson(),
    if (evaluate != null) 'evaluate': [for (final e in evaluate!) e.encode()],
  };
}

/// Typed helper for the `rule.unless.verdict_expression.evaluate` block of
/// `aws_mailmanager_rule_set` (derived from provider schema).
@immutable
final class MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate {
  const MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluate({
    this.attribute,
    this.analysis,
  });

  final TfArg<String>? attribute;

  final List<MailmanagerRuleSetRuleUnlessVerdictExpressionEvaluateAnalysis>?
  analysis;

  Map<String, Object?> encode() => {
    if (attribute != null) 'attribute': attribute!.toTfJson(),
    if (analysis != null) 'analysis': [for (final e in analysis!) e.encode()],
  };
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
