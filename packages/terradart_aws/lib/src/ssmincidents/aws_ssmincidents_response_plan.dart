// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

/// Sensitive field paths for `aws_ssmincidents_response_plan`.
const Set<String> _awsSsmincidentsResponsePlanSensitive = <String>{};

/// Typed helper for the `action` block of
/// `aws_ssmincidents_response_plan` (derived from provider schema).
@immutable
final class SsmincidentsResponsePlanAction {
  const SsmincidentsResponsePlanAction({this.ssmAutomation});

  final List<SsmincidentsResponsePlanActionSsmAutomation>? ssmAutomation;

  Map<String, Object?> encode() => {
    if (ssmAutomation != null)
      'ssm_automation': [for (final e in ssmAutomation!) e.encode()],
  };
}

/// Typed helper for the `action.ssm_automation` block of
/// `aws_ssmincidents_response_plan` (derived from provider schema).
@immutable
final class SsmincidentsResponsePlanActionSsmAutomation {
  const SsmincidentsResponsePlanActionSsmAutomation({
    required this.documentName,
    this.documentVersion,
    this.dynamicParameters,
    required this.roleArn,
    this.targetAccount,
    this.parameter,
  });

  final TfArg<String> documentName;

  final TfArg<String>? documentVersion;

  final TfArg<Map<String, String>>? dynamicParameters;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String>? targetAccount;

  final List<SsmincidentsResponsePlanActionSsmAutomationParameter>? parameter;

  Map<String, Object?> encode() => {
    'document_name': documentName.toTfJson(),
    'document_version': ?documentVersion?.toTfJson(),
    'dynamic_parameters': ?dynamicParameters?.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'target_account': ?targetAccount?.toTfJson(),
    if (parameter != null)
      'parameter': [for (final e in parameter!) e.encode()],
  };
}

/// Typed helper for the `action.ssm_automation.parameter` block of
/// `aws_ssmincidents_response_plan` (derived from provider schema).
@immutable
final class SsmincidentsResponsePlanActionSsmAutomationParameter {
  const SsmincidentsResponsePlanActionSsmAutomationParameter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `incident_template` block of
/// `aws_ssmincidents_response_plan` (derived from provider schema).
@immutable
final class SsmincidentsResponsePlanIncidentTemplate {
  const SsmincidentsResponsePlanIncidentTemplate({
    this.dedupeString,
    required this.impact,
    this.incidentTags,
    this.summary,
    required this.title,
    this.notificationTarget,
  });

  final TfArg<String>? dedupeString;

  final TfArg<num> impact;

  final TfArg<Map<String, String>>? incidentTags;

  final TfArg<String>? summary;

  final TfArg<String> title;

  final List<SsmincidentsResponsePlanIncidentTemplateNotificationTarget>?
  notificationTarget;

  Map<String, Object?> encode() => {
    'dedupe_string': ?dedupeString?.toTfJson(),
    'impact': impact.toTfJson(),
    'incident_tags': ?incidentTags?.toTfJson(),
    'summary': ?summary?.toTfJson(),
    'title': title.toTfJson(),
    if (notificationTarget != null)
      'notification_target': [for (final e in notificationTarget!) e.encode()],
  };
}

/// Typed helper for the `incident_template.notification_target` block of
/// `aws_ssmincidents_response_plan` (derived from provider schema).
@immutable
final class SsmincidentsResponsePlanIncidentTemplateNotificationTarget {
  const SsmincidentsResponsePlanIncidentTemplateNotificationTarget({
    required this.snsTopicArn,
  });

  final RefTo<AwsSnsTopic> snsTopicArn;

  Map<String, Object?> encode() => {
    'sns_topic_arn': snsTopicArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `integration` block of
/// `aws_ssmincidents_response_plan` (derived from provider schema).
@immutable
final class SsmincidentsResponsePlanIntegration {
  const SsmincidentsResponsePlanIntegration({this.pagerduty});

  final List<SsmincidentsResponsePlanIntegrationPagerduty>? pagerduty;

  Map<String, Object?> encode() => {
    if (pagerduty != null)
      'pagerduty': [for (final e in pagerduty!) e.encode()],
  };
}

/// Typed helper for the `integration.pagerduty` block of
/// `aws_ssmincidents_response_plan` (derived from provider schema).
@immutable
final class SsmincidentsResponsePlanIntegrationPagerduty {
  const SsmincidentsResponsePlanIntegrationPagerduty({
    required this.name,
    required this.secretId,
    required this.serviceId,
  });

  final TfArg<String> name;

  final TfArg<String> secretId;

  final TfArg<String> serviceId;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'secret_id': secretId.toTfJson(),
    'service_id': serviceId.toTfJson(),
  };
}

/// Factory wrapper for `aws_ssmincidents_response_plan`.
final class AwsSsmincidentsResponsePlan extends Resource {
  static const String tfType = 'aws_ssmincidents_response_plan';

  AwsSsmincidentsResponsePlan({
    required super.localName,
    TfArg<List<String>>? chatChannel,
    TfArg<String>? displayName,
    TfArg<List<String>>? engagements,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    SsmincidentsResponsePlanAction? action,
    required SsmincidentsResponsePlanIncidentTemplate incidentTemplate,
    SsmincidentsResponsePlanIntegration? integration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'chat_channel': ?chatChannel,
           'display_name': ?displayName,
           'engagements': ?engagements,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (action != null) 'action': TfArg.literal(action.encode()),
           'incident_template': TfArg.literal(incidentTemplate.encode()),
           if (integration != null)
             'integration': TfArg.literal(integration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmincidentsResponsePlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmincidentsResponsePlan>`.
  RefTo<AwsSsmincidentsResponsePlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
