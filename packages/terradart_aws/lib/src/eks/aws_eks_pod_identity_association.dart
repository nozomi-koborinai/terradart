// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_eks_pod_identity_association`.
const Set<String> _awsEksPodIdentityAssociationSensitive = <String>{};

/// Factory wrapper for `aws_eks_pod_identity_association`.
final class AwsEksPodIdentityAssociation extends Resource {
  static const String tfType = 'aws_eks_pod_identity_association';

  AwsEksPodIdentityAssociation(
    super.localName, {
    required TfArg<String> clusterName,
    TfArg<bool>? disableSessionTags,
    required TfArg<String> namespace,
    TfArg<String>? policy,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    required TfArg<String> serviceAccount,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? targetRoleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'disable_session_tags': ?disableSessionTags,
           'namespace': namespace,
           'policy': ?policy,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'service_account': serviceAccount,
           'tags': ?tags,
           'target_role_arn': ?targetRoleArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksPodIdentityAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEksPodIdentityAssociation>`.
  RefTo<AwsEksPodIdentityAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `association_arn` attribute.
  TfRef<String> get associationArn =>
      TfRef.attribute<String>(this, 'association_arn');

  /// Reference to `association_id` attribute.
  TfRef<String> get associationId =>
      TfRef.attribute<String>(this, 'association_id');

  /// Reference to `external_id` attribute.
  TfRef<String> get externalId => TfRef.attribute<String>(this, 'external_id');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `disable_session_tags` attribute.
  TfRef<bool> get disableSessionTags =>
      TfRef.attribute<bool>(this, 'disable_session_tags');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_role_arn` attribute.
  TfRef<String> get targetRoleArn =>
      TfRef.attribute<String>(this, 'target_role_arn');
}
