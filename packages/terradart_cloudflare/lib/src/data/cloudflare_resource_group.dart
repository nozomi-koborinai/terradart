// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_resource_group`.
const Set<String> _cloudflareResourceGroupSensitive = <String>{};

/// Factory wrapper for `cloudflare_resource_group`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareResourceGroup extends Data {
  static const String tfType = 'cloudflare_resource_group';

  DataCloudflareResourceGroup({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> resourceGroupId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'resource_group_id': resourceGroupId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareResourceGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `resource_group_id` attribute.
  TfRef<String> get resourceGroupId =>
      TfRef.attribute<String>(this, 'resource_group_id');
}
