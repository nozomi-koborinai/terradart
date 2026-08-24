// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_risk_scoring_integration`.
const Set<String> _cloudflareZeroTrustRiskScoringIntegrationSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_risk_scoring_integration`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class DataCloudflareZeroTrustRiskScoringIntegration extends Data {
  static const String tfType = 'cloudflare_zero_trust_risk_scoring_integration';

  DataCloudflareZeroTrustRiskScoringIntegration({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> integrationId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'integration_id': integrationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustRiskScoringIntegrationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_tag` attribute.
  TfRef<String> get accountTag => TfRef.attribute<String>(this, 'account_tag');

  /// Reference to `active` attribute.
  TfRef<bool> get active => TfRef.attribute<bool>(this, 'active');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `integration_type` attribute.
  TfRef<String> get integrationType =>
      TfRef.attribute<String>(this, 'integration_type');

  /// Reference to `reference_id` attribute.
  TfRef<String> get referenceId =>
      TfRef.attribute<String>(this, 'reference_id');

  /// Reference to `tenant_url` attribute.
  TfRef<String> get tenantUrl => TfRef.attribute<String>(this, 'tenant_url');

  /// Reference to `well_known_url` attribute.
  TfRef<String> get wellKnownUrl =>
      TfRef.attribute<String>(this, 'well_known_url');
}
