// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_receipt_rule`.
const Set<String> _awsSesReceiptRuleSensitive = <String>{};

/// Typed helper for the `add_header_action` block of
/// `aws_ses_receipt_rule` (derived from provider schema).
@immutable
final class SesReceiptRuleAddHeaderAction {
  const SesReceiptRuleAddHeaderAction({
    required this.headerName,
    required this.headerValue,
    required this.position,
  });

  final TfArg<String> headerName;

  final TfArg<String> headerValue;

  final TfArg<num> position;

  Map<String, Object?> encode() => {
    'header_name': headerName.toTfJson(),
    'header_value': headerValue.toTfJson(),
    'position': position.toTfJson(),
  };
}

/// Typed helper for the `bounce_action` block of
/// `aws_ses_receipt_rule` (derived from provider schema).
@immutable
final class SesReceiptRuleBounceAction {
  const SesReceiptRuleBounceAction({
    required this.message,
    required this.position,
    required this.sender,
    required this.smtpReplyCode,
    this.statusCode,
    this.topicArn,
  });

  final TfArg<String> message;

  final TfArg<num> position;

  final TfArg<String> sender;

  final TfArg<String> smtpReplyCode;

  final TfArg<String>? statusCode;

  final TfArg<String>? topicArn;

  Map<String, Object?> encode() => {
    'message': message.toTfJson(),
    'position': position.toTfJson(),
    'sender': sender.toTfJson(),
    'smtp_reply_code': smtpReplyCode.toTfJson(),
    if (statusCode != null) 'status_code': statusCode!.toTfJson(),
    if (topicArn != null) 'topic_arn': topicArn!.toTfJson(),
  };
}

/// Typed helper for the `lambda_action` block of
/// `aws_ses_receipt_rule` (derived from provider schema).
@immutable
final class SesReceiptRuleLambdaAction {
  const SesReceiptRuleLambdaAction({
    required this.functionArn,
    this.invocationType,
    required this.position,
    this.topicArn,
  });

  final TfArg<String> functionArn;

  final TfArg<String>? invocationType;

  final TfArg<num> position;

  final TfArg<String>? topicArn;

  Map<String, Object?> encode() => {
    'function_arn': functionArn.toTfJson(),
    if (invocationType != null) 'invocation_type': invocationType!.toTfJson(),
    'position': position.toTfJson(),
    if (topicArn != null) 'topic_arn': topicArn!.toTfJson(),
  };
}

/// Typed helper for the `s3_action` block of
/// `aws_ses_receipt_rule` (derived from provider schema).
@immutable
final class SesReceiptRuleS3Action {
  const SesReceiptRuleS3Action({
    required this.bucketName,
    this.iamRoleArn,
    this.kmsKeyArn,
    this.objectKeyPrefix,
    required this.position,
    this.topicArn,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? iamRoleArn;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? objectKeyPrefix;

  final TfArg<num> position;

  final TfArg<String>? topicArn;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (iamRoleArn != null) 'iam_role_arn': iamRoleArn!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (objectKeyPrefix != null)
      'object_key_prefix': objectKeyPrefix!.toTfJson(),
    'position': position.toTfJson(),
    if (topicArn != null) 'topic_arn': topicArn!.toTfJson(),
  };
}

/// Typed helper for the `sns_action` block of
/// `aws_ses_receipt_rule` (derived from provider schema).
@immutable
final class SesReceiptRuleSnsAction {
  const SesReceiptRuleSnsAction({
    this.encoding,
    required this.position,
    required this.topicArn,
  });

  final TfArg<String>? encoding;

  final TfArg<num> position;

  final TfArg<String> topicArn;

  Map<String, Object?> encode() => {
    if (encoding != null) 'encoding': encoding!.toTfJson(),
    'position': position.toTfJson(),
    'topic_arn': topicArn.toTfJson(),
  };
}

/// Typed helper for the `stop_action` block of
/// `aws_ses_receipt_rule` (derived from provider schema).
@immutable
final class SesReceiptRuleStopAction {
  const SesReceiptRuleStopAction({
    required this.position,
    required this.scope,
    this.topicArn,
  });

  final TfArg<num> position;

  final TfArg<String> scope;

  final TfArg<String>? topicArn;

  Map<String, Object?> encode() => {
    'position': position.toTfJson(),
    'scope': scope.toTfJson(),
    if (topicArn != null) 'topic_arn': topicArn!.toTfJson(),
  };
}

/// Typed helper for the `workmail_action` block of
/// `aws_ses_receipt_rule` (derived from provider schema).
@immutable
final class SesReceiptRuleWorkmailAction {
  const SesReceiptRuleWorkmailAction({
    required this.organizationArn,
    required this.position,
    this.topicArn,
  });

  final TfArg<String> organizationArn;

  final TfArg<num> position;

  final TfArg<String>? topicArn;

  Map<String, Object?> encode() => {
    'organization_arn': organizationArn.toTfJson(),
    'position': position.toTfJson(),
    if (topicArn != null) 'topic_arn': topicArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ses_receipt_rule`.
final class AwsSesReceiptRule extends Resource {
  static const String tfType = 'aws_ses_receipt_rule';

  AwsSesReceiptRule({
    required super.localName,
    TfArg<String>? after,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<List<String>>? recipients,
    TfArg<String>? region,
    required TfArg<String> ruleSetName,
    TfArg<bool>? scanEnabled,
    TfArg<String>? tlsPolicy,
    List<SesReceiptRuleAddHeaderAction>? addHeaderAction,
    List<SesReceiptRuleBounceAction>? bounceAction,
    List<SesReceiptRuleLambdaAction>? lambdaAction,
    List<SesReceiptRuleS3Action>? s3Action,
    List<SesReceiptRuleSnsAction>? snsAction,
    List<SesReceiptRuleStopAction>? stopAction,
    List<SesReceiptRuleWorkmailAction>? workmailAction,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (after != null) 'after': after,
           if (enabled != null) 'enabled': enabled,
           'name': name,
           if (recipients != null) 'recipients': recipients,
           if (region != null) 'region': region,
           'rule_set_name': ruleSetName,
           if (scanEnabled != null) 'scan_enabled': scanEnabled,
           if (tlsPolicy != null) 'tls_policy': tlsPolicy,
           if (addHeaderAction != null)
             'add_header_action': TfArg.literal([
               for (final e in addHeaderAction) e.encode(),
             ]),
           if (bounceAction != null)
             'bounce_action': TfArg.literal([
               for (final e in bounceAction) e.encode(),
             ]),
           if (lambdaAction != null)
             'lambda_action': TfArg.literal([
               for (final e in lambdaAction) e.encode(),
             ]),
           if (s3Action != null)
             's3_action': TfArg.literal([for (final e in s3Action) e.encode()]),
           if (snsAction != null)
             'sns_action': TfArg.literal([
               for (final e in snsAction) e.encode(),
             ]),
           if (stopAction != null)
             'stop_action': TfArg.literal([
               for (final e in stopAction) e.encode(),
             ]),
           if (workmailAction != null)
             'workmail_action': TfArg.literal([
               for (final e in workmailAction) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesReceiptRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
