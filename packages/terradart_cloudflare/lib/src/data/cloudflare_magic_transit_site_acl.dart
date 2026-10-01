// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../magic/cloudflare_magic_transit_site_acl.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_transit_site_acl`.
const Set<String> _cloudflareMagicTransitSiteAclSensitive = <String>{};

/// Factory wrapper for `cloudflare_magic_transit_site_acl`.
///
/// Accepted Permissions
///
/// - `Magic Transit Read` - `Magic Transit Write` - `Magic WAN Read` - `Magic
/// WAN Write`
final class DataCloudflareMagicTransitSiteAcl extends Data {
  static const String tfType = 'cloudflare_magic_transit_site_acl';

  DataCloudflareMagicTransitSiteAcl(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> aclId,
    required TfArg<String> siteId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'acl_id': aclId,
           'site_id': siteId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteAclSensitive;

  /// A reference to the `cloudflare_magic_transit_site_acl` this data source reads, for
  /// arguments typed `RefTo<CloudflareMagicTransitSiteAcl>`.
  RefTo<CloudflareMagicTransitSiteAcl> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `forward_locally` attribute.
  TfRef<bool> get forwardLocally =>
      TfRef.attribute<bool>(this, 'forward_locally');

  /// Reference to `protocols` attribute.
  TfRef<List<String>> get protocols =>
      TfRef.attribute<List<String>>(this, 'protocols');

  /// Reference to `unidirectional` attribute.
  TfRef<bool> get unidirectional =>
      TfRef.attribute<bool>(this, 'unidirectional');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `acl_id` attribute.
  TfRef<String> get aclId => TfRef.attribute<String>(this, 'acl_id');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');
}
