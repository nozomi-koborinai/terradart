// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_addon`.
const Set<String> _awsEksAddonSensitive = <String>{};

/// Factory wrapper for `aws_eks_addon`.
final class DataAwsEksAddon extends Data {
  static const String tfType = 'aws_eks_addon';

  DataAwsEksAddon({
    required super.localName,
    required TfArg<String> addonName,
    required TfArg<String> clusterName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'addon_name': addonName,
           'cluster_name': clusterName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksAddonSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `addon_version` attribute.
  TfRef<String> get addonVersion =>
      TfRef.attribute<String>(this, 'addon_version');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `configuration_values` attribute.
  TfRef<String> get configurationValues =>
      TfRef.attribute<String>(this, 'configuration_values');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `pod_identity_association` attribute.
  TfRef<List<Map<String, Object?>>> get podIdentityAssociation =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'pod_identity_association',
      );

  /// Reference to `service_account_role_arn` attribute.
  TfRef<String> get serviceAccountRoleArn =>
      TfRef.attribute<String>(this, 'service_account_role_arn');
}
