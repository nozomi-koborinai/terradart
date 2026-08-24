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
final class CloudflareZeroTrustRiskScoringIntegration extends Resource {
  static const String tfType = 'cloudflare_zero_trust_risk_scoring_integration';

  CloudflareZeroTrustRiskScoringIntegration({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? active,
    required TfArg<String> integrationType,
    TfArg<String>? referenceId,
    required TfArg<String> tenantUrl,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (active != null) 'active': active,
           'integration_type': integrationType,
           if (referenceId != null) 'reference_id': referenceId,
           'tenant_url': tenantUrl,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustRiskScoringIntegrationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_tag` attribute.
  TfRef<String> get accountTag => TfRef.attribute<String>(this, 'account_tag');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `well_known_url` attribute.
  TfRef<String> get wellKnownUrl =>
      TfRef.attribute<String>(this, 'well_known_url');
}
