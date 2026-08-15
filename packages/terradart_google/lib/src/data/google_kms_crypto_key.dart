// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_crypto_key`.
const Set<String> _googleKmsCryptoKeySensitive = <String>{};

/// Factory wrapper for `google_kms_crypto_key`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsCryptoKey extends Data {
  static const String tfType = 'google_kms_crypto_key';

  DataGoogleKmsCryptoKey({
    required super.localName,
    required TfArg<String> keyRing,
    required TfArg<String> name,
  }) : super(
         terraformType: tfType,
         argMap: {'key_ring': keyRing, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _googleKmsCryptoKeySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `crypto_key_backend` attribute.
  TfRef<String> get cryptoKeyBackend =>
      TfRef.attribute<String>(this, 'crypto_key_backend');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `destroy_scheduled_duration` attribute.
  TfRef<String> get destroyScheduledDuration =>
      TfRef.attribute<String>(this, 'destroy_scheduled_duration');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `import_only` attribute.
  TfRef<bool> get importOnly => TfRef.attribute<bool>(this, 'import_only');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `primary` attribute.
  TfRef<List<Map<String, Object?>>> get primary =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'primary');

  /// Reference to `purpose` attribute.
  TfRef<String> get purpose => TfRef.attribute<String>(this, 'purpose');

  /// Reference to `rotation_period` attribute.
  TfRef<String> get rotationPeriod =>
      TfRef.attribute<String>(this, 'rotation_period');

  /// Reference to `skip_initial_version_creation` attribute.
  TfRef<bool> get skipInitialVersionCreation =>
      TfRef.attribute<bool>(this, 'skip_initial_version_creation');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `version_template` attribute.
  TfRef<List<Map<String, Object?>>> get versionTemplate =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'version_template');
}
