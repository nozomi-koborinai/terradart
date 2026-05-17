// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_app_check_debug_token`.
const Set<String> _googleFirebaseAppCheckDebugTokenSensitive = <String>{
  'token',
};

/// Factory wrapper for `google_firebase_app_check_debug_token` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_check_debug_token.`).
/// - `app_id`: the ID of a Firebase
///   [Web](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),
///   [Apple](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),
///   or [Android](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id)
///   app to attach the debug token to.
/// - `display_name`: a human-readable label for this debug token (used
///   in the Firebase console).
/// - `token`: the secret token value. Must be a case-insensitive UUID4
///   string; generate it via Terraform's `random_uuid` resource or any
///   external UUID4 source. **Immutable**: this field is set on create
///   and cannot be updated — to rotate a debug token, destroy + recreate
///   the resource. **Sensitive**: terradart's masking layer flags it via
///   the generated `$sensitiveFields` set, and the provider itself never
///   echoes the value in responses.
///
/// Example:
/// ```dart
/// final ciDebugToken = GoogleFirebaseAppCheckDebugToken(
///   localName: 'ci_runner',
///   appId: TfArg.literal('1:1234567890:web:abcdef'),
///   displayName: TfArg.literal('CI runner (e2e tests)'),
///   token: TfArg.ref(uuid.result),
/// );
/// ```
///
/// Provisions a debug token so developer-environment or CI clients can
/// bypass App Check enforcement during development and integration
/// testing without registering as full attestation providers. Debug
/// tokens are scoped to a single app ([appId]) and can be revoked by
/// destroying this resource.
///
/// No nested blocks aside from the meta-arg `timeouts`.
final class GoogleFirebaseAppCheckDebugToken extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firebase_app_check_debug_token';

  GoogleFirebaseAppCheckDebugToken({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> displayName,
    required TfArg<String> token,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'app_id': appId,
            'display_name': displayName,
            'token': token,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleFirebaseAppCheckDebugTokenSensitive;

  /// Reference to `id` attribute. Equal to the full resource path
  /// `projects/{project}/apps/{app_id}/debugTokens/{debug_token_id}`.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `debug_token_id` -- the server-assigned last segment of
  /// the resource name. Populated after apply.
  TfRef<String> get debugTokenIdRef =>
      TfRef.attribute<String>(this, 'debug_token_id');
}
