// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_identity_platform_config`.
const Set<String> _googleIdentityPlatformConfigSensitive = <String>{
  'client.api_key',
};

/// Factory wrapper for `google_identity_platform_config`.
///
/// Identity Platform configuration for a Cloud project. Identity Platform is an
/// end-to-end authentication system for third-party users to access apps and
/// services.
///
/// This entity is created only once during intialization and cannot be deleted,
/// individual Identity Providers may be disabled instead. This resource may
/// only be created in billing-enabled projects.
///
/// Identity Platform project config — Auth settings for the GCP project.
///
/// Enable `identitytoolkit.googleapis.com` before apply. Nested blocks
/// (`sign_in`, `mfa`, `sms_region_config`, …) are omitted from this thin
/// surface; extend the override when a Wave needs typed Auth settings.
final class GoogleIdentityPlatformConfig extends Resource {
  static const String tfType = 'google_identity_platform_config';

  GoogleIdentityPlatformConfig({
    required super.localName,
    TfArg<List<String>>? authorizedDomains,
    TfArg<bool>? autodeleteAnonymousUsers,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (authorizedDomains != null)
             'authorized_domains': authorizedDomains,
           if (autodeleteAnonymousUsers != null)
             'autodelete_anonymous_users': autodeleteAnonymousUsers,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIdentityPlatformConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
