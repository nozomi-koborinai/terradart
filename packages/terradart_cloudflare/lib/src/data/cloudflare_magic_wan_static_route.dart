// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../magic/cloudflare_magic_wan_static_route.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_wan_static_route`.
const Set<String> _cloudflareMagicWanStaticRouteSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_wan_static_route`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicWanStaticRoute extends Data {
  static const String tfType = 'cloudflare_magic_wan_static_route';

  DataCloudflareMagicWanStaticRoute({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> routeId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'route_id': routeId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicWanStaticRouteSensitive;

  /// A reference to the `cloudflare_magic_wan_static_route` this data source reads, for
  /// arguments typed `RefTo<CloudflareMagicWanStaticRoute>`.
  RefTo<CloudflareMagicWanStaticRoute> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `route_id` attribute.
  TfRef<String> get routeId => TfRef.attribute<String>(this, 'route_id');
}
