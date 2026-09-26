// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_access_entry`.
const Set<String> _awsEksAccessEntrySensitive = <String>{};

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
    TfArg<String>? type,
    TfArg<String>? userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           if (kubernetesGroups != null) 'kubernetes_groups': kubernetesGroups,
           'principal_arn': principalArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (userName != null) 'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksAccessEntrySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_entry_arn` attribute.
  TfRef<String> get accessEntryArn =>
      TfRef.attribute<String>(this, 'access_entry_arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
