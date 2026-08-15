// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_rings`.
const Set<String> _googleKmsKeyRingsSensitive = <String>{};

/// Factory wrapper for `google_kms_key_rings`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsKeyRings extends Data {
  static const String tfType = 'google_kms_key_rings';

  DataGoogleKmsKeyRings({
    required super.localName,
    TfArg<String>? filter,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyRingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_rings` attribute.
  TfRef<List<Map<String, Object?>>> get keyRings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'key_rings');
}
