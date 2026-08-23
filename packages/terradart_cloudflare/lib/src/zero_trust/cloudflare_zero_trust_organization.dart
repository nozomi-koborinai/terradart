// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_organization`.
const Set<String> _cloudflareZeroTrustOrganizationSensitive = <String>{};

/// Typed helper for the `custom_pages` block of
/// `cloudflare_zero_trust_organization` (derived from provider schema).
@immutable
final class ZeroTrustOrganizationCustomPages {
  const ZeroTrustOrganizationCustomPages({this.forbidden, this.identityDenied});

  final TfArg<String>? forbidden;

  final TfArg<String>? identityDenied;

  Map<String, Object?> encode() => {
    if (forbidden != null) 'forbidden': forbidden!.toTfJson(),
    if (identityDenied != null) 'identity_denied': identityDenied!.toTfJson(),
  };
}

/// Typed helper for the `login_design` block of
/// `cloudflare_zero_trust_organization` (derived from provider schema).
@immutable
final class ZeroTrustOrganizationLoginDesign {
  const ZeroTrustOrganizationLoginDesign({
    this.backgroundColor,
    this.footerText,
    this.headerText,
    this.logoPath,
    this.textColor,
  });

  final TfArg<String>? backgroundColor;

  final TfArg<String>? footerText;

  final TfArg<String>? headerText;

  final TfArg<String>? logoPath;

  final TfArg<String>? textColor;

  Map<String, Object?> encode() => {
    if (backgroundColor != null)
      'background_color': backgroundColor!.toTfJson(),
    if (footerText != null) 'footer_text': footerText!.toTfJson(),
    if (headerText != null) 'header_text': headerText!.toTfJson(),
    if (logoPath != null) 'logo_path': logoPath!.toTfJson(),
    if (textColor != null) 'text_color': textColor!.toTfJson(),
  };
}

/// Typed helper for the `mfa_config` block of
/// `cloudflare_zero_trust_organization` (derived from provider schema).
@immutable
final class ZeroTrustOrganizationMfaConfig {
  const ZeroTrustOrganizationMfaConfig({
    this.allowedAuthenticators,
    this.amrMatchingSessionDuration,
    this.requiredAaguids,
    this.sessionDuration,
  });

  final TfArg<List<Object?>>? allowedAuthenticators;

  final TfArg<String>? amrMatchingSessionDuration;

  final TfArg<String>? requiredAaguids;

  final TfArg<String>? sessionDuration;

  Map<String, Object?> encode() => {
    if (allowedAuthenticators != null)
      'allowed_authenticators': allowedAuthenticators!.toTfJson(),
    if (amrMatchingSessionDuration != null)
      'amr_matching_session_duration': amrMatchingSessionDuration!.toTfJson(),
    if (requiredAaguids != null)
      'required_aaguids': requiredAaguids!.toTfJson(),
    if (sessionDuration != null)
      'session_duration': sessionDuration!.toTfJson(),
  };
}

/// Typed helper for the `mfa_ssh_piv_key_requirements` block of
/// `cloudflare_zero_trust_organization` (derived from provider schema).
@immutable
final class ZeroTrustOrganizationMfaSshPivKeyRequirements {
  const ZeroTrustOrganizationMfaSshPivKeyRequirements({
    this.pinPolicy,
    this.requireFipsDevice,
    this.sshKeySize,
    this.sshKeyType,
    this.touchPolicy,
  });

  final TfArg<String>? pinPolicy;

  final TfArg<bool>? requireFipsDevice;

  final TfArg<List<Object?>>? sshKeySize;

  final TfArg<List<Object?>>? sshKeyType;

  final TfArg<String>? touchPolicy;

  Map<String, Object?> encode() => {
    if (pinPolicy != null) 'pin_policy': pinPolicy!.toTfJson(),
    if (requireFipsDevice != null)
      'require_fips_device': requireFipsDevice!.toTfJson(),
    if (sshKeySize != null) 'ssh_key_size': sshKeySize!.toTfJson(),
    if (sshKeyType != null) 'ssh_key_type': sshKeyType!.toTfJson(),
    if (touchPolicy != null) 'touch_policy': touchPolicy!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_organization`.
///
/// Accepted Permissions
///
/// - `Access: Organizations, Identity Providers, and Groups Read` - `Access:
/// Organizations, Identity Providers, and Groups Revoke` - `Access:
/// Organizations, Identity Providers, and Groups Write`
final class CloudflareZeroTrustOrganization extends Resource {
  static const String tfType = 'cloudflare_zero_trust_organization';

  CloudflareZeroTrustOrganization({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<bool>? allowAuthenticateViaWarp,
    TfArg<String>? authDomain,
    TfArg<bool>? autoRedirectToIdentity,
    TfArg<bool>? denyUnmatchedRequests,
    TfArg<List<String>>? denyUnmatchedRequestsExemptedZoneNames,
    TfArg<bool>? isUiReadOnly,
    TfArg<bool>? mfaConfigurationAllowed,
    TfArg<bool>? mfaRequiredForAllApps,
    TfArg<String>? name,
    TfArg<String>? sessionDuration,
    TfArg<String>? uiReadOnlyToggleReason,
    TfArg<String>? userSeatExpirationInactiveTime,
    TfArg<String>? warpAuthSessionDuration,
    TfArg<String>? zoneId,
    ZeroTrustOrganizationCustomPages? customPages,
    ZeroTrustOrganizationLoginDesign? loginDesign,
    ZeroTrustOrganizationMfaConfig? mfaConfig,
    ZeroTrustOrganizationMfaSshPivKeyRequirements? mfaSshPivKeyRequirements,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (allowAuthenticateViaWarp != null)
             'allow_authenticate_via_warp': allowAuthenticateViaWarp,
           if (authDomain != null) 'auth_domain': authDomain,
           if (autoRedirectToIdentity != null)
             'auto_redirect_to_identity': autoRedirectToIdentity,
           if (denyUnmatchedRequests != null)
             'deny_unmatched_requests': denyUnmatchedRequests,
           if (denyUnmatchedRequestsExemptedZoneNames != null)
             'deny_unmatched_requests_exempted_zone_names':
                 denyUnmatchedRequestsExemptedZoneNames,
           if (isUiReadOnly != null) 'is_ui_read_only': isUiReadOnly,
           if (mfaConfigurationAllowed != null)
             'mfa_configuration_allowed': mfaConfigurationAllowed,
           if (mfaRequiredForAllApps != null)
             'mfa_required_for_all_apps': mfaRequiredForAllApps,
           if (name != null) 'name': name,
           if (sessionDuration != null) 'session_duration': sessionDuration,
           if (uiReadOnlyToggleReason != null)
             'ui_read_only_toggle_reason': uiReadOnlyToggleReason,
           if (userSeatExpirationInactiveTime != null)
             'user_seat_expiration_inactive_time':
                 userSeatExpirationInactiveTime,
           if (warpAuthSessionDuration != null)
             'warp_auth_session_duration': warpAuthSessionDuration,
           if (zoneId != null) 'zone_id': zoneId,
           if (customPages != null)
             'custom_pages': TfArg.literal(customPages.encode()),
           if (loginDesign != null)
             'login_design': TfArg.literal(loginDesign.encode()),
           if (mfaConfig != null)
             'mfa_config': TfArg.literal(mfaConfig.encode()),
           if (mfaSshPivKeyRequirements != null)
             'mfa_ssh_piv_key_requirements': TfArg.literal(
               mfaSshPivKeyRequirements.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustOrganizationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
