// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_subnet.dart' show AwsSubnet;

/// Sensitive field paths for `aws_eks_fargate_profile`.
const Set<String> _awsEksFargateProfileSensitive = <String>{};

/// Typed helper for the `selector` block of
/// `aws_eks_fargate_profile` (derived from provider schema).
@immutable
final class EksFargateProfileSelector {
  const EksFargateProfileSelector({this.labels, required this.namespace});

  final TfArg<Map<String, String>>? labels;

  final TfArg<String> namespace;

  Map<String, Object?> encode() => {
    'labels': ?labels?.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Factory wrapper for `aws_eks_fargate_profile`.
final class AwsEksFargateProfile extends Resource {
  static const String tfType = 'aws_eks_fargate_profile';

  AwsEksFargateProfile(
    super.localName, {
    required TfArg<String> clusterName,
    required TfArg<String> fargateProfileName,
    required TfArg<String> podExecutionRoleArn,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSubnet>>>? subnetIds,
    TfArg<Map<String, String>>? tags,
    required List<EksFargateProfileSelector> selector,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'fargate_profile_name': fargateProfileName,
           'pod_execution_role_arn': podExecutionRoleArn,
           'region': ?region,
           'subnet_ids': ?subnetIds?.encodeAs('id'),
           'tags': ?tags,
           'selector': TfArg.literal([for (final e in selector) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksFargateProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEksFargateProfile>`.
  RefTo<AwsEksFargateProfile> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `fargate_profile_name` attribute.
  TfRef<String> get fargateProfileName =>
      TfRef.attribute<String>(this, 'fargate_profile_name');

  /// Reference to `pod_execution_role_arn` attribute.
  TfRef<String> get podExecutionRoleArn =>
      TfRef.attribute<String>(this, 'pod_execution_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
