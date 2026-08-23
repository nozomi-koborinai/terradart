// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_deployment_groups`.
const Set<String> _cloudflareZeroTrustDeviceDeploymentGroupsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_deployment_groups`.
final class DataCloudflareZeroTrustDeviceDeploymentGroups extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_deployment_groups';

  DataCloudflareZeroTrustDeviceDeploymentGroups({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> groupId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'group_id': groupId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceDeploymentGroupsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `policy_ids` attribute.
  TfRef<List<String>> get policyIds =>
      TfRef.attribute<List<String>>(this, 'policy_ids');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
