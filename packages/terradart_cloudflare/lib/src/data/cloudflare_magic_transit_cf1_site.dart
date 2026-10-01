// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../magic/cloudflare_magic_transit_cf1_site.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_transit_cf1_site`.
const Set<String> _cloudflareMagicTransitCf1SiteSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_transit_cf1_site`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicTransitCf1Site extends Data {
  static const String tfType = 'cloudflare_magic_transit_cf1_site';

  DataCloudflareMagicTransitCf1Site({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> cf1SiteId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'cf1_site_id': cf1SiteId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitCf1SiteSensitive;

  /// A reference to the `cloudflare_magic_transit_cf1_site` this data source reads, for
  /// arguments typed `RefTo<CloudflareMagicTransitCf1Site>`.
  RefTo<CloudflareMagicTransitCf1Site> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `cf1_site_id` attribute.
  TfRef<String> get cf1SiteId => TfRef.attribute<String>(this, 'cf1_site_id');
}
