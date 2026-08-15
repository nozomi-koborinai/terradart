// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_key_handles`.
const Set<String> _googleKmsKeyHandlesSensitive = <String>{};

/// Factory wrapper for `google_kms_key_handles`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleKmsKeyHandles extends Data {
  static const String tfType = 'google_kms_key_handles';

  DataGoogleKmsKeyHandles({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> resourceTypeSelector,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
           'resource_type_selector': resourceTypeSelector,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsKeyHandlesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `key_handles` attribute.
  TfRef<List<Map<String, Object?>>> get keyHandles =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'key_handles');
}
