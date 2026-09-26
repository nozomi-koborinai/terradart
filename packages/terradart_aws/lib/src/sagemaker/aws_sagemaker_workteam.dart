// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_workteam`.
const Set<String> _awsSagemakerWorkteamSensitive = <String>{};

/// Typed helper for the `member_definition` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamMemberDefinition {
  const SagemakerWorkteamMemberDefinition({
    this.cognitoMemberDefinition,
    this.oidcMemberDefinition,
  });

  final SagemakerWorkteamMemberDefinitionCognitoMemberDefinition?
  cognitoMemberDefinition;

  final SagemakerWorkteamMemberDefinitionOidcMemberDefinition?
  oidcMemberDefinition;

  Map<String, Object?> encode() => {
    if (cognitoMemberDefinition != null)
      'cognito_member_definition': cognitoMemberDefinition!.encode(),
    if (oidcMemberDefinition != null)
      'oidc_member_definition': oidcMemberDefinition!.encode(),
  };
}

/// Typed helper for the `member_definition.cognito_member_definition` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamMemberDefinitionCognitoMemberDefinition {
  const SagemakerWorkteamMemberDefinitionCognitoMemberDefinition({
    required this.clientId,
    required this.userGroup,
    required this.userPool,
  });

  final TfArg<String> clientId;

  final TfArg<String> userGroup;

  final TfArg<String> userPool;

  Map<String, Object?> encode() => {
    'client_id': clientId.toTfJson(),
    'user_group': userGroup.toTfJson(),
    'user_pool': userPool.toTfJson(),
  };
}

/// Typed helper for the `member_definition.oidc_member_definition` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamMemberDefinitionOidcMemberDefinition {
  const SagemakerWorkteamMemberDefinitionOidcMemberDefinition({
    required this.groups,
  });

  final TfArg<List<Object?>> groups;

  Map<String, Object?> encode() => {'groups': groups.toTfJson()};
}

/// Typed helper for the `notification_configuration` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamNotificationConfiguration {
  const SagemakerWorkteamNotificationConfiguration({this.notificationTopicArn});

  final TfArg<String>? notificationTopicArn;

  Map<String, Object?> encode() => {
    if (notificationTopicArn != null)
      'notification_topic_arn': notificationTopicArn!.toTfJson(),
  };
}

/// Typed helper for the `worker_access_configuration` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamWorkerAccessConfiguration {
  const SagemakerWorkteamWorkerAccessConfiguration({this.s3Presign});

  final SagemakerWorkteamWorkerAccessConfigurationS3Presign? s3Presign;

  Map<String, Object?> encode() => {
    if (s3Presign != null) 's3_presign': s3Presign!.encode(),
  };
}

/// Typed helper for the `worker_access_configuration.s3_presign` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamWorkerAccessConfigurationS3Presign {
  const SagemakerWorkteamWorkerAccessConfigurationS3Presign({
    this.iamPolicyConstraints,
  });

  final SagemakerWorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints?
  iamPolicyConstraints;

  Map<String, Object?> encode() => {
    if (iamPolicyConstraints != null)
      'iam_policy_constraints': iamPolicyConstraints!.encode(),
  };
}

/// Typed helper for the `worker_access_configuration.s3_presign.iam_policy_constraints` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints {
  const SagemakerWorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints({
    this.sourceIp,
    this.vpcSourceIp,
  });

  final TfArg<String>? sourceIp;

  final TfArg<String>? vpcSourceIp;

  Map<String, Object?> encode() => {
    if (sourceIp != null) 'source_ip': sourceIp!.toTfJson(),
    if (vpcSourceIp != null) 'vpc_source_ip': vpcSourceIp!.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_workteam`.
final class AwsSagemakerWorkteam extends Resource {
  static const String tfType = 'aws_sagemaker_workteam';

  AwsSagemakerWorkteam({
    required super.localName,
    required TfArg<String> description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? workforceName,
    required TfArg<String> workteamName,
    required List<SagemakerWorkteamMemberDefinition> memberDefinition,
    SagemakerWorkteamNotificationConfiguration? notificationConfiguration,
    SagemakerWorkteamWorkerAccessConfiguration? workerAccessConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': description,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (workforceName != null) 'workforce_name': workforceName,
           'workteam_name': workteamName,
           'member_definition': TfArg.literal([
             for (final e in memberDefinition) e.encode(),
           ]),
           if (notificationConfiguration != null)
             'notification_configuration': TfArg.literal(
               notificationConfiguration.encode(),
             ),
           if (workerAccessConfiguration != null)
             'worker_access_configuration': TfArg.literal(
               workerAccessConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerWorkteamSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomain => TfRef.attribute<String>(this, 'subdomain');
}
