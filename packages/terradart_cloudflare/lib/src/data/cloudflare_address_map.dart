// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../address_map/cloudflare_address_map.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_address_map`.
const Set<String> _cloudflareAddressMapSensitive = <String>{};

/// Factory wrapper for `cloudflare_address_map`.
///
/// Accepted Permissions
///
/// - `Address Maps Read` - `Address Maps Write`
final class DataCloudflareAddressMap extends Data {
  static const String tfType = 'cloudflare_address_map';

  DataCloudflareAddressMap(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> addressMapId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'address_map_id': addressMapId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAddressMapSensitive;

  /// A reference to the `cloudflare_address_map` this data source reads, for
  /// arguments typed `RefTo<CloudflareAddressMap>`.
  RefTo<CloudflareAddressMap> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `address_map_id` attribute.
  TfRef<String> get addressMapId =>
      TfRef.attribute<String>(this, 'address_map_id');
}
