// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (labels != null) 'labels': labels!.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Factory wrapper for `aws_eks_fargate_profile`.
final class AwsEksFargateProfile extends Resource {
  static const String tfType = 'aws_eks_fargate_profile';

  AwsEksFargateProfile({
    required super.localName,
    required TfArg<String> clusterName,
    required TfArg<String> fargateProfileName,
    required TfArg<String> podExecutionRoleArn,
    TfArg<String>? region,
    TfArg<List<String>>? subnetIds,
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
           if (region != null) 'region': region,
           if (subnetIds != null) 'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           'selector': TfArg.literal([for (final e in selector) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksFargateProfileSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
