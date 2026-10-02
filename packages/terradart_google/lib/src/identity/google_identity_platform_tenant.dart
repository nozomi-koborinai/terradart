// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_identity_platform_tenant`.
const Set<String> _googleIdentityPlatformTenantSensitive = <String>{};

/// Terraform `deletion_policy` for Identity Platform tenants.
extension type const IdentityPlatformTenantDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  IdentityPlatformTenantDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  IdentityPlatformTenantDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const IdentityPlatformTenantDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = IdentityPlatformTenantDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = IdentityPlatformTenantDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = IdentityPlatformTenantDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<IdentityPlatformTenantDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// Typed helper for the `client` block of
/// `google_identity_platform_tenant` (derived from provider schema).
@immutable
final class IdentityPlatformTenantClient {
  const IdentityPlatformTenantClient({this.permissions});

  final IdentityPlatformTenantPermissions? permissions;

  @internal
  Map<String, Object?> encode() => {'permissions': ?permissions?.encode()};
}

/// Typed helper for the `client.permissions` block of
/// `google_identity_platform_tenant` (derived from provider schema).
@immutable
final class IdentityPlatformTenantPermissions {
  const IdentityPlatformTenantPermissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  final TfArg<bool>? disabledUserDeletion;

  final TfArg<bool>? disabledUserSignup;

  @internal
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

  GoogleIdentityPlatformTenant(
    super.localName, {
    required TfArg<String> displayName,
    TfArg<bool>? allowPasswordSignup,
    TfArg<bool>? enableEmailLinkSignin,
    TfArg<bool>? disableAuth,
    IdentityPlatformTenantDeletionPolicy? deletionPolicy,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_password_signup` attribute.
  TfRef<bool> get allowPasswordSignup =>
      TfRef.attribute<bool>(this, 'allow_password_signup');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `disable_auth` attribute.
  TfRef<bool> get disableAuth => TfRef.attribute<bool>(this, 'disable_auth');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enable_email_link_signin` attribute.
  TfRef<bool> get enableEmailLinkSignin =>
      TfRef.attribute<bool>(this, 'enable_email_link_signin');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
