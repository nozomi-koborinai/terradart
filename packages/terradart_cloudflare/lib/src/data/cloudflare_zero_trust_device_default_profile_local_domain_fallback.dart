// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_default_profile_local_domain_fallback`.
const Set<String>
_cloudflareZeroTrustDeviceDefaultProfileLocalDomainFallbackSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_device_default_profile_local_domain_fallback`.
final class DataCloudflareZeroTrustDeviceDefaultProfileLocalDomainFallback
    extends Data {
  static const String tfType =
      'cloudflare_zero_trust_device_default_profile_local_domain_fallback';

  DataCloudflareZeroTrustDeviceDefaultProfileLocalDomainFallback({
    required super.localName,
    TfArg<String>? accountId,
  }) : super(
         terraformType: tfType,
         argMap: {if (accountId != null) 'account_id': accountId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceDefaultProfileLocalDomainFallbackSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dns_server` attribute.
  TfRef<List<String>> get dnsServer =>
      TfRef.attribute<List<String>>(this, 'dns_server');

  /// Reference to `suffix` attribute.
  TfRef<String> get suffix => TfRef.attribute<String>(this, 'suffix');
}
