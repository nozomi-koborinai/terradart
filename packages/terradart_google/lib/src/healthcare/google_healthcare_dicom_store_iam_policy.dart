// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_dicom_store_iam_policy`.
const Set<String> _googleHealthcareDicomStoreIamPolicySensitive = <String>{};

/// Factory wrapper for `google_healthcare_dicom_store_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Healthcare DICOM store.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleHealthcareDicomStoreIamMember] for single-principal grants.
final class GoogleHealthcareDicomStoreIamPolicy extends Resource {
  static const String tfType = 'google_healthcare_dicom_store_iam_policy';

  GoogleHealthcareDicomStoreIamPolicy({
    required super.localName,
    required TfArg<String> dicomStoreId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'dicom_store_id': dicomStoreId, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareDicomStoreIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
