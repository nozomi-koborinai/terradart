// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_access_entry`.
const Set<String> _awsEksAccessEntrySensitive = <String>{};

/// Eks Access Entry enum for `type`.
extension type const EksAccessEntryType._(TfArg<String> _)
    implements TfArg<String> {
  EksAccessEntryType.variable(String name) : this._(TfArg.variable(name));
  EksAccessEntryType.expression(String template)
    : this._(TfArg.expression(template));
  const EksAccessEntryType.arg(TfArg<String> arg) : this._(arg);

  static const ec2 = EksAccessEntryType._(TfArgLiteral('EC2'));
  static const ec2Linux = EksAccessEntryType._(TfArgLiteral('EC2_LINUX'));
  static const ec2Windows = EksAccessEntryType._(TfArgLiteral('EC2_WINDOWS'));
  static const fargateLinux = EksAccessEntryType._(
    TfArgLiteral('FARGATE_LINUX'),
  );
  static const hybridLinux = EksAccessEntryType._(TfArgLiteral('HYBRID_LINUX'));
  static const standard = EksAccessEntryType._(TfArgLiteral('STANDARD'));

  static const List<EksAccessEntryType> values = [
    ec2,
    ec2Linux,
    ec2Windows,
    fargateLinux,
    hybridLinux,
    standard,
  ];
}

/// Factory wrapper for `aws_eks_access_entry`.
final class AwsEksAccessEntry extends Resource {
  static const String tfType = 'aws_eks_access_entry';

  AwsEksAccessEntry(
    super.localName, {
    required TfArg<String> clusterName,
    TfArg<List<String>>? kubernetesGroups,
    required TfArg<String> principalArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    EksAccessEntryType? type,
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
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `kubernetes_groups` attribute.
  TfRef<List<String>> get kubernetesGroups =>
      TfRef.attribute<List<String>>(this, 'kubernetes_groups');

  /// Reference to `principal_arn` attribute.
  TfRef<String> get principalArn =>
      TfRef.attribute<String>(this, 'principal_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
