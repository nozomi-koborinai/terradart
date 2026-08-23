// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? accountId,
    required TfArg<String> routeId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'route_id': routeId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicWanStaticRouteSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
