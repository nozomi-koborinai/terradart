// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_handle`.
const Set<String> _googleKmsKeyHandleSensitive = <String>{};

/// Factory wrapper for `google_kms_key_handle`.
///
/// A `KeyHandle` is a resource used to auto-provision CryptoKeys for CMEK.
///
/// ~> **Note:** KeyHandles cannot be deleted from Google Cloud Platform.
/// Destroying a Terraform-managed KeyHandle will remove it from state but *will
/// not delete the resource from the project.*
///
/// Cloud KMS **Autokey key handle** — asks Autokey to provision a CMEK
/// CryptoKey for [resourceTypeSelector] (e.g. `compute.googleapis.com/Disk`).
///
/// Requires Autokey to be enabled (folder [GoogleKmsAutokeyConfig] and/or
/// [GoogleKmsProjectAutokeyConfig]). Provisioned keys use HSM Autokey SKUs
/// while versions are active. Terraform cannot delete the handle
/// (`exclude_delete`).
///
/// Not applyable on `terradart-validate` without folder Autokey setup.
///
/// Example:
/// ```dart
/// GoogleKmsKeyHandle(
///   localName: 'disk_cmek',
///   name: TfArg.literal('terradart-disk-handle'),
///   location: TfArg.literal('us-central1'),
///   resourceTypeSelector: TfArg.literal('compute.googleapis.com/Disk'),
/// );
/// ```
final class GoogleKmsKeyHandle extends Resource {
  static const String tfType = 'google_kms_key_handle';

  GoogleKmsKeyHandle({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> resourceTypeSelector,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'resource_type_selector': resourceTypeSelector,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyHandleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');
}
