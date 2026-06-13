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
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_id': appId,
           if (project != null) 'project': project,
           'site_secret': siteSecret,
           if (tokenTtl != null) 'token_ttl': tokenTtl,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFirebaseAppCheckRecaptchaV3ConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `site_secret_set` attribute.
  TfRef<bool> get siteSecretSet =>
      TfRef.attribute<bool>(this, 'site_secret_set');
}
