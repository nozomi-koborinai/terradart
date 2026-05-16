// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_firebase_app_check_device_check_config.schema.dart'
    show
        $GoogleFirebaseAppCheckDeviceCheckConfig,
        googleFirebaseAppCheckDeviceCheckConfigSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleFirebaseAppCheckDeviceCheckConfigSchemaInstance
    implements $GoogleFirebaseAppCheckDeviceCheckConfig {
  const _GoogleFirebaseAppCheckDeviceCheckConfigSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Factory wrapper for `google_firebase_app_check_device_check_config`
/// (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_check_device_check_config.`).
/// - `app_id`: the ID of the Firebase Apple App this config binds to. See
///   https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id.
///   Forces replacement when changed.
/// - `key_id`: the key identifier of a private key enabled with
///   DeviceCheck, created in your Apple Developer account.
/// - `private_key`: the contents of the private key (`.p8`) file
///   associated with [keyId]. **Sensitive**: terradart's masking layer
///   flags this field via the generated `$sensitiveFields` set, and the
///   provider itself never returns the value in responses. Avoid logging
///   or persisting [TfArg] values for this field outside of Terraform
///   state.
///
/// Example:
/// ```dart
/// final deviceCheck = GoogleFirebaseAppCheckDeviceCheckConfig(
///   localName: 'ios_legacy',
///   appId: TfArg.literal('1:1234567890:ios:abcdef'),
///   keyId: TfArg.literal('ABCDEFGHIJ'),
///   privateKey: TfArg.literal(privateKeyP8Contents),
///   tokenTtl: TfArg.literal('3600s'),
/// );
/// ```
///
/// Registers the **legacy** Apple DeviceCheck provider configuration for
/// the given Firebase Apple App. New deployments should prefer
/// [GoogleFirebaseAppCheckAppAttestConfig] (iOS 14+); DeviceCheck remains
/// the fallback for older iOS versions.
///
/// Unlike [GoogleFirebaseAppCheckAppAttestConfig] (which has no
/// provider-side secret), DeviceCheck requires you to upload an Apple
/// Developer private key (`.p8`) so Firebase can sign DeviceCheck queries
/// to Apple. The schema computes [privateKeySet] from server state, so
/// you can tell from a refresh whether a value was ever supplied (the
/// value itself is never echoed back).
///
/// No nested blocks aside from the meta-arg `timeouts`.
final class GoogleFirebaseAppCheckDeviceCheckConfig
    extends Resource<$GoogleFirebaseAppCheckDeviceCheckConfig> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firebase_app_check_device_check_config';

  GoogleFirebaseAppCheckDeviceCheckConfig({
    required super.localName,
    required TfArg<String> appId,
    required TfArg<String> keyId,
    required TfArg<String> privateKey,
    TfArg<String>? tokenTtl,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleFirebaseAppCheckDeviceCheckConfigSchemaInstance(),
         argMap: {
           'app_id': appId,
           'key_id': keyId,
           'private_key': privateKey,
           if (tokenTtl != null) 'token_ttl': tokenTtl,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      googleFirebaseAppCheckDeviceCheckConfigSensitive;

  /// Reference to `name` attribute (the relative resource name of the
  /// DeviceCheck configuration object, in the shape
  /// `projects/{project}/apps/{app_id}/deviceCheckConfig`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `private_key_set` attribute. Server-computed boolean:
  /// `true` once a `private_key` value has been recorded. Because the
  /// provider never echoes the [privateKey] field back in responses, this
  /// is the only way to detect prior provisioning from a refreshed state.
  TfRef<bool> get privateKeySet =>
      TfRef.attribute<bool>(this, 'private_key_set');
}
