// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_risk_scoring_integration.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> integrationId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'integration_id': integrationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustRiskScoringIntegrationSensitive;

  /// A reference to the `cloudflare_zero_trust_risk_scoring_integration` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustRiskScoringIntegration>`.
  RefTo<CloudflareZeroTrustRiskScoringIntegration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `integration_id` attribute.
  TfRef<String> get integrationId =>
      TfRef.attribute<String>(this, 'integration_id');
}
