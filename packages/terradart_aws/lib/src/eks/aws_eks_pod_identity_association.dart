// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_pod_identity_association`.
const Set<String> _awsEksPodIdentityAssociationSensitive = <String>{};

/// Factory wrapper for `aws_eks_pod_identity_association`.
final class AwsEksPodIdentityAssociation extends Resource {
  static const String tfType = 'aws_eks_pod_identity_association';

  AwsEksPodIdentityAssociation({
    required super.localName,
    required TfArg<String> clusterName,
    TfArg<bool>? disableSessionTags,
    required TfArg<String> namespace,
    TfArg<String>? policy,
    TfArg<String>? region,
    required TfArg<String> roleArn,
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
           if (disableSessionTags != null)
             'disable_session_tags': disableSessionTags,
           'namespace': namespace,
           if (policy != null) 'policy': policy,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           'service_account': serviceAccount,
           if (tags != null) 'tags': tags,
           if (targetRoleArn != null) 'target_role_arn': targetRoleArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksPodIdentityAssociationSensitive;

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
}
