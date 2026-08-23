// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_organization`.
const Set<String> _cloudflareZeroTrustOrganizationSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_organization`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Revoke` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class DataCloudflareZeroTrustOrganization extends Data {
  static const String tfType = 'cloudflare_zero_trust_organization';

  DataCloudflareZeroTrustOrganization({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustOrganizationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `allow_authenticate_via_warp` attribute.
  TfRef<bool> get allowAuthenticateViaWarp =>
      TfRef.attribute<bool>(this, 'allow_authenticate_via_warp');

  /// Reference to `auth_domain` attribute.
  TfRef<String> get authDomain => TfRef.attribute<String>(this, 'auth_domain');

  /// Reference to `auto_redirect_to_identity` attribute.
  TfRef<bool> get autoRedirectToIdentity =>
      TfRef.attribute<bool>(this, 'auto_redirect_to_identity');

  /// Reference to `deny_unmatched_requests` attribute.
  TfRef<bool> get denyUnmatchedRequests =>
      TfRef.attribute<bool>(this, 'deny_unmatched_requests');

  /// Reference to `deny_unmatched_requests_exempted_zone_names` attribute.
  TfRef<List<String>> get denyUnmatchedRequestsExemptedZoneNames =>
      TfRef.attribute<List<String>>(
        this,
        'deny_unmatched_requests_exempted_zone_names',
      );

  /// Reference to `is_ui_read_only` attribute.
  TfRef<bool> get isUiReadOnly =>
      TfRef.attribute<bool>(this, 'is_ui_read_only');

  /// Reference to `mfa_required_for_all_apps` attribute.
  TfRef<bool> get mfaRequiredForAllApps =>
      TfRef.attribute<bool>(this, 'mfa_required_for_all_apps');

  /// Reference to `session_duration` attribute.
  TfRef<String> get sessionDuration =>
      TfRef.attribute<String>(this, 'session_duration');

  /// Reference to `ui_read_only_toggle_reason` attribute.
  TfRef<String> get uiReadOnlyToggleReason =>
      TfRef.attribute<String>(this, 'ui_read_only_toggle_reason');

  /// Reference to `user_seat_expiration_inactive_time` attribute.
  TfRef<String> get userSeatExpirationInactiveTime =>
      TfRef.attribute<String>(this, 'user_seat_expiration_inactive_time');

  /// Reference to `warp_auth_session_duration` attribute.
  TfRef<String> get warpAuthSessionDuration =>
      TfRef.attribute<String>(this, 'warp_auth_session_duration');
}
