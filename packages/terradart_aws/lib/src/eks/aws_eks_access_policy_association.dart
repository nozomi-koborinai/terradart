// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_access_policy_association`.
const Set<String> _awsEksAccessPolicyAssociationSensitive = <String>{};

/// Typed helper for the `access_scope` block of
/// `aws_eks_access_policy_association` (derived from provider schema).
@immutable
final class EksAccessPolicyAssociationAccessScope {
  const EksAccessPolicyAssociationAccessScope({
    this.namespaces,
    required this.type,
  });

  final TfArg<List<String>>? namespaces;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'namespaces': ?namespaces?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_eks_access_policy_association`.
final class AwsEksAccessPolicyAssociation extends Resource {
  static const String tfType = 'aws_eks_access_policy_association';

  AwsEksAccessPolicyAssociation(
    super.localName, {
    required TfArg<String> clusterName,
    required TfArg<String> policyArn,
    required TfArg<String> principalArn,
    TfArg<String>? region,
    required EksAccessPolicyAssociationAccessScope accessScope,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'policy_arn': policyArn,
           'principal_arn': principalArn,
           'region': ?region,
           'access_scope': TfArg.literal(accessScope.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksAccessPolicyAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEksAccessPolicyAssociation>`.
  RefTo<AwsEksAccessPolicyAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associated_at` attribute.
  TfRef<String> get associatedAt =>
      TfRef.attribute<String>(this, 'associated_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `policy_arn` attribute.
  TfRef<String> get policyArn => TfRef.attribute<String>(this, 'policy_arn');

  /// Reference to `principal_arn` attribute.
  TfRef<String> get principalArn =>
      TfRef.attribute<String>(this, 'principal_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
