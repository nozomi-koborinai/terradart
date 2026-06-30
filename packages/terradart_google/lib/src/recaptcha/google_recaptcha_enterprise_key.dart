// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_recaptcha_enterprise_key`.
const Set<String> _googleRecaptchaEnterpriseKeySensitive = <String>{};

/// Factory wrapper for `google_recaptcha_enterprise_key`.
///
/// reCAPTCHA Enterprise key for web, Android, or iOS clients.
///
/// Enable `recaptchaenterprise.googleapis.com` before apply. Provide exactly
/// one platform settings block (`web_settings`, `android_settings`, or
/// `ios_settings`).
///
/// Example:
/// ```dart
/// GoogleRecaptchaEnterpriseKey(
///   localName: 'web_login',
///   displayName: TfArg.literal('Login page'),
///   webSettings: TfArg.literal({
///     'integration_type': 'SCORE',
///     'allow_all_domains': true,
///   }),
/// );
/// ```
final class GoogleRecaptchaEnterpriseKey extends Resource {
  static const String tfType = 'google_recaptcha_enterprise_key';

  GoogleRecaptchaEnterpriseKey({
    required super.localName,
    required TfArg<String> displayName,
    TfArg<Map<String, dynamic>>? webSettings,
    TfArg<Map<String, dynamic>>? androidSettings,
    TfArg<Map<String, dynamic>>? iosSettings,
    TfArg<Map<String, dynamic>>? wafSettings,
    TfArg<Map<String, dynamic>>? testingOptions,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           if (webSettings != null) 'web_settings': webSettings,
           if (androidSettings != null) 'android_settings': androidSettings,
           if (iosSettings != null) 'ios_settings': iosSettings,
           if (wafSettings != null) 'waf_settings': wafSettings,
           if (testingOptions != null) 'testing_options': testingOptions,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRecaptchaEnterpriseKeySensitive;

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
