// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    'forbidden': ?forbidden?.toTfJson(),
    'identity_denied': ?identityDenied?.toTfJson(),
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
    'background_color': ?backgroundColor?.toTfJson(),
    'footer_text': ?footerText?.toTfJson(),
    'header_text': ?headerText?.toTfJson(),
    'logo_path': ?logoPath?.toTfJson(),
    'text_color': ?textColor?.toTfJson(),
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

  final List<ZeroTrustOrganizationAllowedAuthenticators>? allowedAuthenticators;

  final TfArg<String>? amrMatchingSessionDuration;

  final TfArg<String>? requiredAaguids;

  final TfArg<String>? sessionDuration;

  Map<String, Object?> encode() => {
    if (allowedAuthenticators != null)
      'allowed_authenticators': [
        for (final e in allowedAuthenticators!) e.toTfJson(),
      ],
    'amr_matching_session_duration': ?amrMatchingSessionDuration?.toTfJson(),
    'required_aaguids': ?requiredAaguids?.toTfJson(),
    'session_duration': ?sessionDuration?.toTfJson(),
  };
}

/// `allowed_authenticators` — derived from the provider schema description.
extension type const ZeroTrustOrganizationAllowedAuthenticators._(
  TfArg<String> _
) implements TfArg<String> {
  ZeroTrustOrganizationAllowedAuthenticators.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustOrganizationAllowedAuthenticators.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustOrganizationAllowedAuthenticators.arg(TfArg<String> arg)
    : this._(arg);

  static const totp = ZeroTrustOrganizationAllowedAuthenticators._(
    TfArgLiteral('totp'),
  );
  static const biometrics = ZeroTrustOrganizationAllowedAuthenticators._(
    TfArgLiteral('biometrics'),
  );
  static const securityKey = ZeroTrustOrganizationAllowedAuthenticators._(
    TfArgLiteral('security_key'),
  );
  static const pivKey = ZeroTrustOrganizationAllowedAuthenticators._(
    TfArgLiteral('piv_key'),
  );
  static const sshFido2Key = ZeroTrustOrganizationAllowedAuthenticators._(
    TfArgLiteral('ssh_fido2_key'),
  );

  static const List<ZeroTrustOrganizationAllowedAuthenticators> values = [
    totp,
    biometrics,
    securityKey,
    pivKey,
    sshFido2Key,
  ];
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

  final ZeroTrustOrganizationPinPolicy? pinPolicy;

  final TfArg<bool>? requireFipsDevice;

  final TfArg<List<num>>? sshKeySize;

  final List<ZeroTrustOrganizationSshKeyType>? sshKeyType;

  final ZeroTrustOrganizationTouchPolicy? touchPolicy;

  Map<String, Object?> encode() => {
    'pin_policy': ?pinPolicy?.toTfJson(),
    'require_fips_device': ?requireFipsDevice?.toTfJson(),
    'ssh_key_size': ?sshKeySize?.toTfJson(),
    if (sshKeyType != null)
      'ssh_key_type': [for (final e in sshKeyType!) e.toTfJson()],
    'touch_policy': ?touchPolicy?.toTfJson(),
  };
}

/// `pin_policy` — derived from the provider schema description.
extension type const ZeroTrustOrganizationPinPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustOrganizationPinPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustOrganizationPinPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustOrganizationPinPolicy.arg(TfArg<String> arg) : this._(arg);

  static const never = ZeroTrustOrganizationPinPolicy._(TfArgLiteral('never'));
  static const once = ZeroTrustOrganizationPinPolicy._(TfArgLiteral('once'));
  static const always = ZeroTrustOrganizationPinPolicy._(
    TfArgLiteral('always'),
  );

  static const List<ZeroTrustOrganizationPinPolicy> values = [
    never,
    once,
    always,
  ];
}

/// `ssh_key_type` — derived from the provider schema description.
extension type const ZeroTrustOrganizationSshKeyType._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustOrganizationSshKeyType.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustOrganizationSshKeyType.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustOrganizationSshKeyType.arg(TfArg<String> arg) : this._(arg);

  static const ecdsa = ZeroTrustOrganizationSshKeyType._(TfArgLiteral('ecdsa'));
  static const ed25519 = ZeroTrustOrganizationSshKeyType._(
    TfArgLiteral('ed25519'),
  );
  static const rsa = ZeroTrustOrganizationSshKeyType._(TfArgLiteral('rsa'));

  static const List<ZeroTrustOrganizationSshKeyType> values = [
    ecdsa,
    ed25519,
    rsa,
  ];
}

/// `touch_policy` — derived from the provider schema description.
extension type const ZeroTrustOrganizationTouchPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustOrganizationTouchPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustOrganizationTouchPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustOrganizationTouchPolicy.arg(TfArg<String> arg) : this._(arg);

  static const never = ZeroTrustOrganizationTouchPolicy._(
    TfArgLiteral('never'),
  );
  static const always = ZeroTrustOrganizationTouchPolicy._(
    TfArgLiteral('always'),
  );
  static const cached = ZeroTrustOrganizationTouchPolicy._(
    TfArgLiteral('cached'),
  );

  static const List<ZeroTrustOrganizationTouchPolicy> values = [
    never,
    always,
    cached,
  ];
}

/// Typed helper for the `service_token_inactivity` block of
/// `cloudflare_zero_trust_organization` (derived from provider schema).
@immutable
final class ZeroTrustOrganizationServiceTokenInactivity {
  const ZeroTrustOrganizationServiceTokenInactivity({
    required this.action,
    required this.enabled,
    required this.inactivityThresholdDays,
  });

  final ZeroTrustOrganizationAction action;

  final TfArg<bool> enabled;

  final TfArg<num> inactivityThresholdDays;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'enabled': enabled.toTfJson(),
    'inactivity_threshold_days': inactivityThresholdDays.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const ZeroTrustOrganizationAction._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustOrganizationAction.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustOrganizationAction.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustOrganizationAction.arg(TfArg<String> arg) : this._(arg);

  static const disable = ZeroTrustOrganizationAction._(TfArgLiteral('disable'));
  static const delete = ZeroTrustOrganizationAction._(TfArgLiteral('delete'));

  static const List<ZeroTrustOrganizationAction> values = [disable, delete];
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

  CloudflareZeroTrustOrganization(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
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
    TfArg<bool>? warpAuthNonBrowser401,
    TfArg<String>? warpAuthSessionDuration,
    RefTo<CloudflareZone>? zoneId,
    ZeroTrustOrganizationCustomPages? customPages,
    ZeroTrustOrganizationLoginDesign? loginDesign,
    ZeroTrustOrganizationMfaConfig? mfaConfig,
    ZeroTrustOrganizationMfaSshPivKeyRequirements? mfaSshPivKeyRequirements,
    ZeroTrustOrganizationServiceTokenInactivity? serviceTokenInactivity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'allow_authenticate_via_warp': ?allowAuthenticateViaWarp,
           'auth_domain': ?authDomain,
           'auto_redirect_to_identity': ?autoRedirectToIdentity,
           'deny_unmatched_requests': ?denyUnmatchedRequests,
           'deny_unmatched_requests_exempted_zone_names':
               ?denyUnmatchedRequestsExemptedZoneNames,
           'is_ui_read_only': ?isUiReadOnly,
           'mfa_configuration_allowed': ?mfaConfigurationAllowed,
           'mfa_required_for_all_apps': ?mfaRequiredForAllApps,
           'name': ?name,
           'session_duration': ?sessionDuration,
           'ui_read_only_toggle_reason': ?uiReadOnlyToggleReason,
           'user_seat_expiration_inactive_time':
               ?userSeatExpirationInactiveTime,
           'warp_auth_non_browser_401': ?warpAuthNonBrowser401,
           'warp_auth_session_duration': ?warpAuthSessionDuration,
           'zone_id': ?zoneId?.encodeAs('id'),
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
           if (serviceTokenInactivity != null)
             'service_token_inactivity': TfArg.literal(
               serviceTokenInactivity.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustOrganizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustOrganization>`.
  RefTo<CloudflareZeroTrustOrganization> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `trusted_accounts` attribute.
  TfRef<List<String>> get trustedAccounts =>
      TfRef.attribute<List<String>>(this, 'trusted_accounts');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

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

  /// Reference to `mfa_configuration_allowed` attribute.
  TfRef<bool> get mfaConfigurationAllowed =>
      TfRef.attribute<bool>(this, 'mfa_configuration_allowed');

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

  /// Reference to `warp_auth_non_browser_401` attribute.
  TfRef<bool> get warpAuthNonBrowser401 =>
      TfRef.attribute<bool>(this, 'warp_auth_non_browser_401');

  /// Reference to `warp_auth_session_duration` attribute.
  TfRef<String> get warpAuthSessionDuration =>
      TfRef.attribute<String>(this, 'warp_auth_session_duration');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
