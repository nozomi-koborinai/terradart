// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_site`.
const Set<String> _cloudflareMagicTransitSiteSensitive = <String>{};

/// Typed helper for the `location` block of
/// `cloudflare_magic_transit_site` (derived from provider schema).
@immutable
final class MagicTransitSiteLocation {
  const MagicTransitSiteLocation({this.lat, this.lon});

  final TfArg<String>? lat;

  final TfArg<String>? lon;

  Map<String, Object?> encode() => {
    if (lat != null) 'lat': lat!.toTfJson(),
    if (lon != null) 'lon': lon!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_transit_site`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class CloudflareMagicTransitSite extends Resource {
  static const String tfType = 'cloudflare_magic_transit_site';

  CloudflareMagicTransitSite({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? connectorId,
    TfArg<String>? description,
    TfArg<bool>? haMode,
    required TfArg<String> name,
    TfArg<String>? secondaryConnectorId,
    MagicTransitSiteLocation? location,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (connectorId != null) 'connector_id': connectorId,
           if (description != null) 'description': description,
           if (haMode != null) 'ha_mode': haMode,
           'name': name,
           if (secondaryConnectorId != null)
             'secondary_connector_id': secondaryConnectorId,
           if (location != null) 'location': TfArg.literal(location.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
