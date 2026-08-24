// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_user_groups`.
const Set<String> _cloudflareUserGroupsSensitive = <String>{};

/// Factory wrapper for `cloudflare_user_groups`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write` - `SCIM Provisioning`
final class DataCloudflareUserGroups extends Data {
  static const String tfType = 'cloudflare_user_groups';

  DataCloudflareUserGroups({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? direction,
    TfArg<String>? fuzzyName,
    TfArg<num>? maxItems,
    TfArg<String>? name,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (fuzzyName != null) 'fuzzy_name': fuzzyName,
           if (maxItems != null) 'max_items': maxItems,
           if (name != null) 'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserGroupsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
