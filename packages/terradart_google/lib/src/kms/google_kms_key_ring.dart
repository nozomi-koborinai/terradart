// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_ring`.
const Set<String> _googleKmsKeyRingSensitive = <String>{};

/// Factory wrapper for `google_kms_key_ring`.
///
/// A `KeyRing` is a toplevel logical grouping of `CryptoKeys`.
///
/// ~> **Note:** KeyRings cannot be deleted from Google Cloud Platform.
/// Destroying a Terraform-managed KeyRing will remove it from state but *will
/// not delete the resource from the project.*
///
///
/// Example:
/// ```dart
/// final ring = GoogleKmsKeyRing(
///   localName: 'main',
///   name: TfArg.literal('main-ring'),
///   location: TfArg.literal('asia-northeast1'),
/// );
/// ```
///
/// **Note:** KeyRings cannot be deleted from GCP. Destroying a
/// Terraform-managed KeyRing removes it from state but does not delete the
/// resource from the project (per GCP policy).
final class GoogleKmsKeyRing extends Resource {
  static const String tfType = 'google_kms_key_ring';

  GoogleKmsKeyRing({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyRingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
