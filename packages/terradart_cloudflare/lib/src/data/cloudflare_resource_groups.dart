// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_resource_groups`.
const Set<String> _cloudflareResourceGroupsSensitive = <String>{};

/// Factory wrapper for `cloudflare_resource_groups`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareResourceGroups extends Data {
  static const String tfType = 'cloudflare_resource_groups';

  DataCloudflareResourceGroups({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'max_items': ?maxItems,
           'name': ?name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareResourceGroupsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');
}
