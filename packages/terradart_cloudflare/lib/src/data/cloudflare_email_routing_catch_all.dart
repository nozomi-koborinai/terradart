// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../email/cloudflare_email_routing_catch_all.dart';

/// Sensitive field paths for `cloudflare_email_routing_catch_all`.
const Set<String> _cloudflareEmailRoutingCatchAllSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_routing_catch_all`.
///
/// Accepted Permissions
///
/// - `Email Routing Rules Read` - `Email Routing Rules Write`
final class DataCloudflareEmailRoutingCatchAll extends Data {
  static const String tfType = 'cloudflare_email_routing_catch_all';

  DataCloudflareEmailRoutingCatchAll({
    required super.localName,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailRoutingCatchAllSensitive;

  /// A reference to the `cloudflare_email_routing_catch_all` this data source reads, for
  /// arguments typed `RefTo<CloudflareEmailRoutingCatchAll>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareEmailRoutingCatchAll> get ref => RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');
}
