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

  final SagemakerWorkteamCognitoMemberDefinition? cognitoMemberDefinition;

  final SagemakerWorkteamOidcMemberDefinition? oidcMemberDefinition;

  Map<String, Object?> encode() => {
    'cognito_member_definition': ?cognitoMemberDefinition?.encode(),
    'oidc_member_definition': ?oidcMemberDefinition?.encode(),
  };
}

/// Typed helper for the `member_definition.cognito_member_definition` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamCognitoMemberDefinition {
  const SagemakerWorkteamCognitoMemberDefinition({
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
final class SagemakerWorkteamOidcMemberDefinition {
  const SagemakerWorkteamOidcMemberDefinition({required this.groups});

  final TfArg<List<String>> groups;

  Map<String, Object?> encode() => {'groups': groups.toTfJson()};
}

/// Typed helper for the `notification_configuration` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamNotificationConfiguration {
  const SagemakerWorkteamNotificationConfiguration({this.notificationTopicArn});

  final TfArg<String>? notificationTopicArn;

  Map<String, Object?> encode() => {
    'notification_topic_arn': ?notificationTopicArn?.toTfJson(),
  };
}

/// Typed helper for the `worker_access_configuration` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamWorkerAccessConfiguration {
  const SagemakerWorkteamWorkerAccessConfiguration({this.s3Presign});

  final SagemakerWorkteamS3Presign? s3Presign;

  Map<String, Object?> encode() => {'s3_presign': ?s3Presign?.encode()};
}

/// Typed helper for the `worker_access_configuration.s3_presign` block of
/// `aws_sagemaker_workteam` (derived from provider schema).
@immutable
final class SagemakerWorkteamS3Presign {
  const SagemakerWorkteamS3Presign({this.iamPolicyConstraints});

  final SagemakerWorkteamIamPolicyConstraints? iamPolicyConstraints;

  Map<String, Object?> encode() => {
    'iam_policy_constraints': ?iamPolicyConstraints?.encode(),
  };
}

/// Exactly one of `source_ip`, `vpc_source_ip` on the `worker_access_configuration.s3_presign.iam_policy_constraints` block of `aws_sagemaker_workteam`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sourceIp(...)`.
sealed class SagemakerWorkteamIamPolicyConstraints {
  const SagemakerWorkteamIamPolicyConstraints();

  /// Sets `source_ip`.
  const factory SagemakerWorkteamIamPolicyConstraints.sourceIp(
    TfArg<SagemakerWorkteamSourceIp> sourceIp,
  ) = SagemakerWorkteamIamPolicyConstraintsSourceIp;

  /// Sets `vpc_source_ip`.
  const factory SagemakerWorkteamIamPolicyConstraints.vpcSourceIp(
    TfArg<SagemakerWorkteamVpcSourceIp> vpcSourceIp,
  ) = SagemakerWorkteamIamPolicyConstraintsVpcSourceIp;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [SagemakerWorkteamIamPolicyConstraints.sourceIp] choice: sets `source_ip`.
final class SagemakerWorkteamIamPolicyConstraintsSourceIp
    extends SagemakerWorkteamIamPolicyConstraints {
  const SagemakerWorkteamIamPolicyConstraintsSourceIp(this.sourceIp);

  final TfArg<SagemakerWorkteamSourceIp> sourceIp;

  @override
  String get blockKey => 'source_ip';

  @override
  Map<String, Object?> encode() => {'source_ip': sourceIp.toTfJson()};
}

/// The [SagemakerWorkteamIamPolicyConstraints.vpcSourceIp] choice: sets `vpc_source_ip`.
final class SagemakerWorkteamIamPolicyConstraintsVpcSourceIp
    extends SagemakerWorkteamIamPolicyConstraints {
  const SagemakerWorkteamIamPolicyConstraintsVpcSourceIp(this.vpcSourceIp);

  final TfArg<SagemakerWorkteamVpcSourceIp> vpcSourceIp;

  @override
  String get blockKey => 'vpc_source_ip';

  @override
  Map<String, Object?> encode() => {'vpc_source_ip': vpcSourceIp.toTfJson()};
}

/// `source_ip` — derived from the provider schema description.
enum SagemakerWorkteamSourceIp implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const SagemakerWorkteamSourceIp(this.terraformValue);
  @override
  final String terraformValue;
}

/// `vpc_source_ip` — derived from the provider schema description.
enum SagemakerWorkteamVpcSourceIp implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const SagemakerWorkteamVpcSourceIp(this.terraformValue);
  @override
  final String terraformValue;
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
           'region': ?region,
           'tags': ?tags,
           'workforce_name': ?workforceName,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerWorkteam>`.
  RefTo<AwsSagemakerWorkteam> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomain => TfRef.attribute<String>(this, 'subdomain');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workforce_name` attribute.
  TfRef<String> get workforceNameRef =>
      TfRef.attribute<String>(this, 'workforce_name');

  /// Reference to `workteam_name` attribute.
  TfRef<String> get workteamNameRef =>
      TfRef.attribute<String>(this, 'workteam_name');
}
