// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    'lat': ?lat?.toTfJson(),
    'lon': ?lon?.toTfJson(),
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

  CloudflareMagicTransitSite(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? connectorId,
    TfArg<String>? description,
    TfArg<bool>? haMode,
    required TfArg<String> name,
    TfArg<String>? secondaryConnectorId,
    MagicTransitSiteLocation? location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'connector_id': ?connectorId,
           'description': ?description,
           'ha_mode': ?haMode,
           'name': name,
           'secondary_connector_id': ?secondaryConnectorId,
           if (location != null) 'location': TfArg.literal(location.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicTransitSite>`.
  RefTo<CloudflareMagicTransitSite> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

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
