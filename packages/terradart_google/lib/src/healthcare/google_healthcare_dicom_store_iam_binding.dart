// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_dicom_store_iam_binding`.
const Set<String> _googleHealthcareDicomStoreIamBindingSensitive = <String>{};

/// Factory wrapper for `google_healthcare_dicom_store_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Healthcare DICOM
/// store.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleHealthcareDicomStoreIamMember] for additive grants.
final class GoogleHealthcareDicomStoreIamBinding extends Resource {
  static const String tfType = 'google_healthcare_dicom_store_iam_binding';

  GoogleHealthcareDicomStoreIamBinding({
    required super.localName,
    required TfArg<String> dicomStoreId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dicom_store_id': dicomStoreId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareDicomStoreIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
