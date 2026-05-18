// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_ring`.
const Set<String> _googleKmsKeyRingSensitive = <String>{};

/// Factory wrapper for `google_kms_key_ring` (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_kms_key_ring.`).
/// - `name`: KMS key ring name (immutable). Pass `TfArg.literal('main-ring')`.
/// - `location`: GCP location (e.g. `'global'` or `'asia-northeast1'`),
///   immutable.
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
  // ignore: constant_identifier_names
  static const String $tfType = 'google_kms_key_ring';

  GoogleKmsKeyRing({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'name': name,
            'location': location,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleKmsKeyRingSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `keyRing.nameRef` → `${google_kms_key_ring.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/locations/{location}/keyRings/{name}`). Use this
  /// when declaring `google_kms_crypto_key.key_ring`.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
