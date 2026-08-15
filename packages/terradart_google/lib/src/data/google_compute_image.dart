// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_image`.
const Set<String> _googleComputeImageSensitive = <String>{};

/// Factory wrapper for `google_compute_image`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeImage extends Data {
  static const String tfType = 'google_compute_image';

  DataGoogleComputeImage({
    required super.localName,
    TfArg<String>? family,
    TfArg<String>? filter,
    TfArg<bool>? mostRecent,
    TfArg<String>? name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (family != null) 'family': family,
           if (filter != null) 'filter': filter,
           if (mostRecent != null) 'most_recent': mostRecent,
           if (name != null) 'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeImageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `archive_size_bytes` attribute.
  TfRef<num> get archiveSizeBytes =>
      TfRef.attribute<num>(this, 'archive_size_bytes');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disk_size_gb` attribute.
  TfRef<num> get diskSizeGb => TfRef.attribute<num>(this, 'disk_size_gb');

  /// Reference to `image_encryption_key_sha256` attribute.
  TfRef<String> get imageEncryptionKeySha256 =>
      TfRef.attribute<String>(this, 'image_encryption_key_sha256');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageId => TfRef.attribute<String>(this, 'image_id');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `licenses` attribute.
  TfRef<List<String>> get licenses =>
      TfRef.attribute<List<String>>(this, 'licenses');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `source_disk` attribute.
  TfRef<String> get sourceDisk => TfRef.attribute<String>(this, 'source_disk');

  /// Reference to `source_disk_encryption_key_sha256` attribute.
  TfRef<String> get sourceDiskEncryptionKeySha256 =>
      TfRef.attribute<String>(this, 'source_disk_encryption_key_sha256');

  /// Reference to `source_disk_id` attribute.
  TfRef<String> get sourceDiskId =>
      TfRef.attribute<String>(this, 'source_disk_id');

  /// Reference to `source_image_id` attribute.
  TfRef<String> get sourceImageId =>
      TfRef.attribute<String>(this, 'source_image_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
