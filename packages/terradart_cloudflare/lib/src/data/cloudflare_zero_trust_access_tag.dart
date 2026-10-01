// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_tag.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_tag`.
const Set<String> _cloudflareZeroTrustAccessTagSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_tag`.
final class DataCloudflareZeroTrustAccessTag extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_tag';

  DataCloudflareZeroTrustAccessTag({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> tagName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'tag_name': tagName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustAccessTagSensitive;

  /// A reference to the `cloudflare_zero_trust_access_tag` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessTag>`.
  RefTo<CloudflareZeroTrustAccessTag> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `tag_name` attribute.
  TfRef<String> get tagName => TfRef.attribute<String>(this, 'tag_name');
}
