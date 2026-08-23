// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  DataCloudflareMagicTransitSiteAcl({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> aclId,
    required TfArg<String> siteId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'acl_id': aclId, 'site_id': siteId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitSiteAclSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
