// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_access_entry`.
const Set<String> _awsEksAccessEntrySensitive = <String>{};

/// Factory wrapper for `aws_eks_access_entry`.
final class DataAwsEksAccessEntry extends Data {
  static const String tfType = 'aws_eks_access_entry';

  DataAwsEksAccessEntry({
    required super.localName,
    required TfArg<String> clusterName,
    required TfArg<String> principalArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           'principal_arn': principalArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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

  /// Reference to `kubernetes_groups` attribute.
  TfRef<List<String>> get kubernetesGroups =>
      TfRef.attribute<List<String>>(this, 'kubernetes_groups');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
