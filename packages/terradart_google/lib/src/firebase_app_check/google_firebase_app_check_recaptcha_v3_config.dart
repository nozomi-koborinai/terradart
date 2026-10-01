// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_app_check_recaptcha_v3_config`.
const Set<String> _googleFirebaseAppCheckRecaptchaV3ConfigSensitive = <String>{
  'site_secret',
};

/// Factory wrapper for `google_firebase_app_check_recaptcha_v3_config`.
///
/// An app's reCAPTCHA V3 configuration object.
final class GoogleFirebaseAppCheckRecaptchaV3Config extends Resource {
  static const String tfType = 'google_firebase_app_check_recaptcha_v3_config';

  GoogleFirebaseAppCheckRecaptchaV3Config({
    required super.localName,
    required TfArg<String> appId,
    TfArg<String>? project,
    required TfArg<String> siteSecret,
    TfArg<String>? tokenTtl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           'project': ?project,
           'site_secret': siteSecret,
           'token_ttl': ?tokenTtl,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFirebaseAppCheckRecaptchaV3ConfigSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseAppCheckRecaptchaV3Config>`.
  RefTo<GoogleFirebaseAppCheckRecaptchaV3Config> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `site_secret_set` attribute.
  TfRef<bool> get siteSecretSet =>
      TfRef.attribute<bool>(this, 'site_secret_set');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `site_secret` attribute.
  TfRef<String> get siteSecret => TfRef.attribute<String>(this, 'site_secret');

  /// Reference to `token_ttl` attribute.
  TfRef<String> get tokenTtl => TfRef.attribute<String>(this, 'token_ttl');
}
