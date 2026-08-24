// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_site`.
const Set<String> _cloudflareMagicTransitSiteSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_magic_transit_site` (derived from provider schema).
@immutable
final class DataMagicTransitSiteFilter {
  const DataMagicTransitSiteFilter({this.connectorid});

  final TfArg<String>? connectorid;

  Map<String, Object?> encode() => {
    if (connectorid != null) 'connectorid': connectorid!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_transit_site`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicTransitSite extends Data {
  static const String tfType = 'cloudflare_magic_transit_site';

  DataCloudflareMagicTransitSite({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? siteId,
    DataMagicTransitSiteFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (siteId != null) 'site_id': siteId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connector_id` attribute.
  TfRef<String> get connectorId =>
      TfRef.attribute<String>(this, 'connector_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ha_mode` attribute.
  TfRef<bool> get haMode => TfRef.attribute<bool>(this, 'ha_mode');

  /// Reference to `secondary_connector_id` attribute.
  TfRef<String> get secondaryConnectorId =>
      TfRef.attribute<String>(this, 'secondary_connector_id');
}
