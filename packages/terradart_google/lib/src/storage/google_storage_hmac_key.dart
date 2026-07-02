// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_hmac_key`.
const Set<String> _googleStorageHmacKeySensitive = <String>{'secret'};

/// Storage Hmac Key enum for `state`.
enum StorageHmacKeyState implements TerraformEnum {
  active('ACTIVE'),
  inactive('INACTIVE');

  const StorageHmacKeyState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_storage_hmac_key`.
///
/// The hmacKeys resource represents an HMAC key within Cloud Storage. The
/// resource consists of a secret and HMAC key metadata. HMAC keys can be used
/// as credentials for service accounts.
///
/// HMAC key for S3-compatible interop access to GCS. Bind to a service
/// account email; the secret is available only at create time via the
/// `secret` output attribute.
///
/// Example:
/// ```dart
/// GoogleStorageHmacKey(
///   localName: 'backup_hmac',
///   serviceAccountEmail: TfArg.ref(sa.emailRef),
/// );
/// ```
final class GoogleStorageHmacKey extends Resource {
  static const String tfType = 'google_storage_hmac_key';

  GoogleStorageHmacKey({
    required super.localName,
    required TfArg<String> serviceAccountEmail,
    TfArg<StorageHmacKeyState>? state,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_account_email': serviceAccountEmail,
           if (state != null) 'state': state,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageHmacKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_id` attribute.
  TfRef<String> get accessId => TfRef.attribute<String>(this, 'access_id');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `time_created` attribute.
  TfRef<String> get timeCreated =>
      TfRef.attribute<String>(this, 'time_created');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');

  TfRef<String> get accessIdRef => TfRef.attribute<String>(this, 'access_id');
}
