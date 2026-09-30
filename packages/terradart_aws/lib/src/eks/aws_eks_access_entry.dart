// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_access_entry`.
const Set<String> _awsEksAccessEntrySensitive = <String>{};

/// Eks Access Entry enum for `type`.
enum EksAccessEntryType implements TerraformEnum {
  ec2('EC2'),
  ec2Linux('EC2_LINUX'),
  ec2Windows('EC2_WINDOWS'),
  fargateLinux('FARGATE_LINUX'),
  hybridLinux('HYBRID_LINUX'),
  standard('STANDARD');

  const EksAccessEntryType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_eks_access_entry`.
final class AwsEksAccessEntry extends Resource {
  static const String tfType = 'aws_eks_access_entry';

  AwsEksAccessEntry({
    required super.localName,
    required TfArg<String> clusterName,
    TfArg<List<String>>? kubernetesGroups,
    required TfArg<String> principalArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<EksAccessEntryType>? type,
    TfArg<String>? userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'kubernetes_groups': ?kubernetesGroups,
           'principal_arn': principalArn,
           'region': ?region,
           'tags': ?tags,
           'type': ?type,
           'user_name': ?userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksAccessEntrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEksAccessEntry>`.
  RefTo<AwsEksAccessEntry> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_entry_arn` attribute.
  TfRef<String> get accessEntryArn =>
      TfRef.attribute<String>(this, 'access_entry_arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterNameRef =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `kubernetes_groups` attribute.
  TfRef<List<String>> get kubernetesGroupsRef =>
      TfRef.attribute<List<String>>(this, 'kubernetes_groups');

  /// Reference to `principal_arn` attribute.
  TfRef<String> get principalArnRef =>
      TfRef.attribute<String>(this, 'principal_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');

  /// Reference to `user_name` attribute.
  TfRef<String> get userNameRef => TfRef.attribute<String>(this, 'user_name');
}
