// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_app_check_app_attest_config`.
const Set<String> _googleFirebaseAppCheckAppAttestConfigSensitive = <String>{};

/// Factory wrapper for `google_firebase_app_check_app_attest_config`
/// (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_check_app_attest_config.`).
/// - `app_id`: the ID of the Firebase Apple App this config binds to. See
///   https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id.
///   Forces replacement when changed.
///
/// Example:
/// ```dart
/// final appAttest = GoogleFirebaseAppCheckAppAttestConfig(
///   localName: 'ios',
///   appId: TfArg.literal('1:1234567890:ios:abcdef'),
///   tokenTtl: TfArg.literal('3600s'),
/// );
/// ```
///
/// Registers the Apple App Attest provider configuration for the given
/// Firebase Apple App so App Check can exchange App Attest assertions for
/// App Check tokens. This is the modern iOS path (iOS 14+); the legacy
/// DeviceCheck path is exposed via
/// [GoogleFirebaseAppCheckDeviceCheckConfig]. Counterpart to
/// [GoogleFirebaseAppCheckRecaptchaEnterpriseConfig] (Web) and
/// [GoogleFirebaseAppCheckPlayIntegrityConfig] (Android). No nested blocks
/// aside from the meta-arg `timeouts`.
final class GoogleFirebaseAppCheckAppAttestConfig extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firebase_app_check_app_attest_config';

  GoogleFirebaseAppCheckAppAttestConfig({
    required super.localName,
    required TfArg<String> appId,
    TfArg<String>? tokenTtl,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'app_id': appId,
           if (tokenTtl != null) 'token_ttl': tokenTtl,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleFirebaseAppCheckAppAttestConfigSensitive;

  /// Reference to `name` attribute (the relative resource name of the
  /// App Attest configuration object, in the shape
  /// `projects/{project}/apps/{app_id}/appAttestConfig`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
