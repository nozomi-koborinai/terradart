// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  final MagicTransitCf1SiteLocation? location;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'location': ?location?.encode(),
  };
}

/// Typed helper for the `location` block of
/// `cloudflare_magic_transit_cf1_site` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class MagicTransitCf1SiteLocation {
  const MagicTransitCf1SiteLocation({this.lat, this.long, this.name});

  final TfArg<num>? lat;

  final TfArg<num>? long;

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {
    'lat': ?lat?.toTfJson(),
    'long': ?long?.toTfJson(),
    'name': ?name?.toTfJson(),
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

  CloudflareMagicTransitCf1Site(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? description,
    TfArg<String>? name,
    required List<MagicTransitCf1SiteBody> body,
    MagicTransitCf1SiteLocation? location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'description': ?description,
           'name': ?name,
           'body': TfArg.literal([for (final e in body) e.encode()]),
           if (location != null) 'location': TfArg.literal(location.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitCf1SiteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicTransitCf1Site>`.
  RefTo<CloudflareMagicTransitCf1Site> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
