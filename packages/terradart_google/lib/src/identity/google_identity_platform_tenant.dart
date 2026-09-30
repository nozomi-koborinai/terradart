// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_identity_platform_tenant`.
const Set<String> _googleIdentityPlatformTenantSensitive = <String>{};

/// Terraform `deletion_policy` for Identity Platform tenants.
enum IdentityPlatformTenantDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const IdentityPlatformTenantDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `client` block of
/// `google_identity_platform_tenant` (derived from provider schema).
@immutable
final class IdentityPlatformTenantClient {
  const IdentityPlatformTenantClient({this.permissions});

  final IdentityPlatformTenantClientPermissions? permissions;

  Map<String, Object?> encode() => {'permissions': ?permissions?.encode()};
}

/// Typed helper for the `client.permissions` block of
/// `google_identity_platform_tenant` (derived from provider schema).
@immutable
final class IdentityPlatformTenantClientPermissions {
  const IdentityPlatformTenantClientPermissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  final TfArg<bool>? disabledUserDeletion;

  final TfArg<bool>? disabledUserSignup;

  Map<String, Object?> encode() => {
    'disabled_user_deletion': ?disabledUserDeletion?.toTfJson(),
    'disabled_user_signup': ?disabledUserSignup?.toTfJson(),
  };
}

/// Factory wrapper for `google_identity_platform_tenant`.
///
/// Tenant configuration in a multi-tenant project.
///
/// You must enable the [Google Identity
/// Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity)
/// in the marketplace prior to using this resource.
///
/// You must [enable
/// multi-tenancy](https://cloud.google.com/identity-platform/docs/multi-tenancy-quickstart)
/// via the Cloud Console prior to creating tenants.
///
/// Identity Platform tenant — isolated Auth realm under a multi-tenant project.
///
/// Pair with [GoogleIdentityPlatformConfig] (enable multi-tenancy in the
/// console / config as needed). Set [displayName] at minimum.
final class GoogleIdentityPlatformTenant extends Resource {
  static const String tfType = 'google_identity_platform_tenant';

  GoogleIdentityPlatformTenant({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<bool>? allowPasswordSignup,
    TfArg<bool>? enableEmailLinkSignin,
    TfArg<bool>? disableAuth,
    TfArg<IdentityPlatformTenantDeletionPolicy>? deletionPolicy,
    IdentityPlatformTenantClient? client,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'allow_password_signup': ?allowPasswordSignup,
           'enable_email_link_signin': ?enableEmailLinkSignin,
           'disable_auth': ?disableAuth,
           'deletion_policy': ?deletionPolicy,
           if (client != null) 'client': TfArg.literal(client.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIdentityPlatformTenantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIdentityPlatformTenant>`.
  RefTo<GoogleIdentityPlatformTenant> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_password_signup` attribute.
  TfRef<bool> get allowPasswordSignupRef =>
      TfRef.attribute<bool>(this, 'allow_password_signup');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disable_auth` attribute.
  TfRef<bool> get disableAuthRef => TfRef.attribute<bool>(this, 'disable_auth');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_email_link_signin` attribute.
  TfRef<bool> get enableEmailLinkSigninRef =>
      TfRef.attribute<bool>(this, 'enable_email_link_signin');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
