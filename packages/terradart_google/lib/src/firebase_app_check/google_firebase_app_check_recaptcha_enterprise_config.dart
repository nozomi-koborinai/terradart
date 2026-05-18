// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_app_check_recaptcha_enterprise_config`.
const Set<String> _googleFirebaseAppCheckRecaptchaEnterpriseConfigSensitive =
    <String>{};

/// Factory wrapper for `google_firebase_app_check_recaptcha_enterprise_config`
/// (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_check_recaptcha_enterprise_config.`).
/// - `app_id`: the ID of the Firebase Web App this config binds to. See
///   https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id.
///   Forces replacement when changed.
/// - `site_key`: the score-based reCAPTCHA Enterprise site key registered
///   in your reCAPTCHA Enterprise project. **Important**: this is the
///   score-based reCAPTCHA Enterprise site key, NOT the reCAPTCHA v3
///   `siteSecret` (legacy reCAPTCHA v3 has its own
///   `google_firebase_app_check_recaptcha_v3_config` resource).
///
/// Example:
/// ```dart
/// final recaptchaEnterprise = GoogleFirebaseAppCheckRecaptchaEnterpriseConfig(
///   localName: 'web',
///   appId: TfArg.literal('1:1234567890:web:abcdef'),
///   siteKey: TfArg.literal('6LdXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),
///   tokenTtl: TfArg.literal('3600s'),
/// );
/// ```
///
/// Registers a reCAPTCHA Enterprise provider configuration for the given
/// Firebase Web App so App Check can exchange reCAPTCHA Enterprise tokens
/// for App Check tokens. This is the Web-side counterpart to
/// [GoogleFirebaseAppCheckPlayIntegrityConfig] (Android) and
/// [GoogleFirebaseAppCheckAppAttestConfig] / [GoogleFirebaseAppCheckDeviceCheckConfig]
/// (iOS). There are no nested blocks aside from the meta-arg `timeouts`,
/// which is intentionally not surfaced (a Terraform meta-arg).
final class GoogleFirebaseAppCheckRecaptchaEnterpriseConfig extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType =
      'google_firebase_app_check_recaptcha_enterprise_config';

  GoogleFirebaseAppCheckRecaptchaEnterpriseConfig({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> siteKey,
    TfArg<String>? tokenTtl,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'app_id': appId,
            'site_key': siteKey,
            if (tokenTtl != null) 'token_ttl': tokenTtl,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleFirebaseAppCheckRecaptchaEnterpriseConfigSensitive;

  /// Reference to `name` attribute (the relative resource name of the
  /// reCAPTCHA Enterprise configuration object, in the shape
  /// `projects/{project}/apps/{app_id}/recaptchaEnterpriseConfig`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
