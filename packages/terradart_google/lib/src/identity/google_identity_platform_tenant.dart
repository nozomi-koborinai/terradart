// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (allowPasswordSignup != null)
             'allow_password_signup': allowPasswordSignup,
           if (enableEmailLinkSignin != null)
             'enable_email_link_signin': enableEmailLinkSignin,
           if (disableAuth != null) 'disable_auth': disableAuth,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIdentityPlatformTenantSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
