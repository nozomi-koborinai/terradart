// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_tag`.
const Set<String> _cloudflareZeroTrustAccessTagSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_tag`.
final class DataCloudflareZeroTrustAccessTag extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_tag';

  DataCloudflareZeroTrustAccessTag({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> tagName,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'tag_name': tagName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustAccessTagSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
