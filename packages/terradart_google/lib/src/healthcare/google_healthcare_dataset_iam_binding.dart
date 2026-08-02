// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_dataset_iam_binding`.
const Set<String> _googleHealthcareDatasetIamBindingSensitive = <String>{};

/// Factory wrapper for `google_healthcare_dataset_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Healthcare
/// dataset.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleHealthcareDatasetIamMember] for additive grants.
final class GoogleHealthcareDatasetIamBinding extends Resource {
  static const String tfType = 'google_healthcare_dataset_iam_binding';

  GoogleHealthcareDatasetIamBinding({
    required super.localName,
    required TfArg<String> datasetId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareDatasetIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
