// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_address_map`.
const Set<String> _cloudflareAddressMapSensitive = <String>{};

/// Factory wrapper for `cloudflare_address_map`.
///
/// Accepted Permissions
///
/// - `Address Maps Read` - `Address Maps Write`
final class DataCloudflareAddressMap extends Data {
  static const String tfType = 'cloudflare_address_map';

  DataCloudflareAddressMap({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> addressMapId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'address_map_id': addressMapId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAddressMapSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `can_delete` attribute.
  TfRef<bool> get canDelete => TfRef.attribute<bool>(this, 'can_delete');

  /// Reference to `can_modify_ips` attribute.
  TfRef<bool> get canModifyIps => TfRef.attribute<bool>(this, 'can_modify_ips');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `default_sni` attribute.
  TfRef<String> get defaultSni => TfRef.attribute<String>(this, 'default_sni');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
