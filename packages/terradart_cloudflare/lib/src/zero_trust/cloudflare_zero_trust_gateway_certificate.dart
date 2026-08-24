// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_certificate`.
const Set<String> _cloudflareZeroTrustGatewayCertificateSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_gateway_certificate`.
final class CloudflareZeroTrustGatewayCertificate extends Resource {
  static const String tfType = 'cloudflare_zero_trust_gateway_certificate';

  CloudflareZeroTrustGatewayCertificate({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? activate,
    TfArg<num>? validityPeriodDays,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (activate != null) 'activate': activate,
           if (validityPeriodDays != null)
             'validity_period_days': validityPeriodDays,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `binding_status` attribute.
  TfRef<String> get bindingStatus =>
      TfRef.attribute<String>(this, 'binding_status');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `in_use` attribute.
  TfRef<bool> get inUse => TfRef.attribute<bool>(this, 'in_use');

  /// Reference to `issuer_org` attribute.
  TfRef<String> get issuerOrg => TfRef.attribute<String>(this, 'issuer_org');

  /// Reference to `issuer_raw` attribute.
  TfRef<String> get issuerRaw => TfRef.attribute<String>(this, 'issuer_raw');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `uploaded_on` attribute.
  TfRef<String> get uploadedOn => TfRef.attribute<String>(this, 'uploaded_on');
}
