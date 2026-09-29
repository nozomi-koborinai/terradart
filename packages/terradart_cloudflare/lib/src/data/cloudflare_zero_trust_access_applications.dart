// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_applications`.
const Set<String> _cloudflareZeroTrustAccessApplicationsSensitive = <String>{
  'result.saas_app.client_secret',
  'result.scim_config.authentication.client_secret',
  'result.scim_config.authentication.token',
};

/// Factory wrapper for `cloudflare_zero_trust_access_applications`.
final class DataCloudflareZeroTrustAccessApplications extends Data {
  static const String tfType = 'cloudflare_zero_trust_access_applications';

  DataCloudflareZeroTrustAccessApplications({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? aud,
    TfArg<String>? domain,
    TfArg<bool>? exact,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    TfArg<String>? search,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'aud': ?aud,
           'domain': ?domain,
           'exact': ?exact,
           'max_items': ?maxItems,
           'name': ?name,
           'search': ?search,
           'zone_id': ?zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessApplicationsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
