// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_app_check_play_integrity_config`.
const Set<String> _googleFirebaseAppCheckPlayIntegrityConfigSensitive =
    <String>{};

/// Factory wrapper for `google_firebase_app_check_play_integrity_config`
/// (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_check_play_integrity_config.`).
/// - `app_id`: the ID of the Firebase Android App this config binds to.
///   See
///   https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id.
///   Forces replacement when changed.
///
/// Example:
/// ```dart
/// final playIntegrity = GoogleFirebaseAppCheckPlayIntegrityConfig(
///   localName: 'android',
///   appId: TfArg.literal('1:1234567890:android:abcdef'),
///   tokenTtl: TfArg.literal('3600s'),
/// );
/// ```
///
/// Registers the Play Integrity provider configuration for the given
/// Firebase Android App so App Check can exchange Play Integrity verdicts
/// for App Check tokens. Counterpart to
/// [GoogleFirebaseAppCheckRecaptchaEnterpriseConfig] (Web) and the iOS
/// providers ([GoogleFirebaseAppCheckAppAttestConfig],
/// [GoogleFirebaseAppCheckDeviceCheckConfig]). No nested blocks aside
/// from the meta-arg `timeouts`.
final class GoogleFirebaseAppCheckPlayIntegrityConfig extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType =
      'google_firebase_app_check_play_integrity_config';

  GoogleFirebaseAppCheckPlayIntegrityConfig({
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
      _googleFirebaseAppCheckPlayIntegrityConfigSensitive;

  /// Reference to `name` attribute (the relative resource name of the
  /// Play Integrity configuration object, in the shape
  /// `projects/{project}/apps/{app_id}/playIntegrityConfig`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
