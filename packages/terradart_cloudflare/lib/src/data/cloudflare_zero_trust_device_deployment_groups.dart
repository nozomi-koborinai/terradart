// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_device_deployment_groups.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_device_deployment_groups`.
const Set<String> _cloudflareZeroTrustDeviceDeploymentGroupsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_deployment_groups`.
final class DataCloudflareZeroTrustDeviceDeploymentGroups extends Data {
  static const String tfType = 'cloudflare_zero_trust_device_deployment_groups';

  DataCloudflareZeroTrustDeviceDeploymentGroups({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> groupId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId.encodeAs('id'), 'group_id': groupId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceDeploymentGroupsSensitive;

  /// A reference to the `cloudflare_zero_trust_device_deployment_groups` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDeviceDeploymentGroups>`.
  RefTo<CloudflareZeroTrustDeviceDeploymentGroups> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `policy_ids` attribute.
  TfRef<List<String>> get policyIds =>
      TfRef.attribute<List<String>>(this, 'policy_ids');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `group_id` attribute.
  TfRef<String> get groupId => TfRef.attribute<String>(this, 'group_id');
}
