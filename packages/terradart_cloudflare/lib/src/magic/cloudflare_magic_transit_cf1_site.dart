// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_cf1_site`.
const Set<String> _cloudflareMagicTransitCf1SiteSensitive = <String>{};

/// Typed helper for the `body` block of
/// `cloudflare_magic_transit_cf1_site` (derived from provider schema).
@immutable
final class MagicTransitCf1SiteBody {
  const MagicTransitCf1SiteBody({
    this.description,
    required this.name,
    this.location,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final MagicTransitCf1SiteBodyLocation? location;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'name': name.toTfJson(),
    if (location != null) 'location': location!.encode(),
  };
}

/// Typed helper for the `body.location` block of
/// `cloudflare_magic_transit_cf1_site` (derived from provider schema).
@immutable
final class MagicTransitCf1SiteBodyLocation {
  const MagicTransitCf1SiteBodyLocation({this.lat, this.long, this.name});

  final TfArg<num>? lat;

  final TfArg<num>? long;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (lat != null) 'lat': lat!.toTfJson(),
    if (long != null) 'long': long!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Typed helper for the `location` block of
/// `cloudflare_magic_transit_cf1_site` (derived from provider schema).
@immutable
final class MagicTransitCf1SiteLocation {
  const MagicTransitCf1SiteLocation({this.lat, this.long, this.name});

  final TfArg<num>? lat;

  final TfArg<num>? long;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (lat != null) 'lat': lat!.toTfJson(),
    if (long != null) 'long': long!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_transit_cf1_site`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class CloudflareMagicTransitCf1Site extends Resource {
  static const String tfType = 'cloudflare_magic_transit_cf1_site';

  CloudflareMagicTransitCf1Site({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? description,
    TfArg<String>? name,
    required List<MagicTransitCf1SiteBody> body,
    MagicTransitCf1SiteLocation? location,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           'body': TfArg.literal([for (final e in body) e.encode()]),
           if (location != null) 'location': TfArg.literal(location.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitCf1SiteSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
