// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../healthcare/google_healthcare_dicom_store_iam_policy.dart';

/// Sensitive field paths for `google_healthcare_dicom_store_iam_policy`.
const Set<String> _googleHealthcareDicomStoreIamPolicySensitive = <String>{};

/// Factory wrapper for `google_healthcare_dicom_store_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleHealthcareDicomStoreIamPolicy extends Data {
  static const String tfType = 'google_healthcare_dicom_store_iam_policy';

  DataGoogleHealthcareDicomStoreIamPolicy(
    super.localName, {
    required TfArg<String> dicomStoreId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'dicom_store_id': dicomStoreId});

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareDicomStoreIamPolicySensitive;

  /// A reference to the `google_healthcare_dicom_store_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleHealthcareDicomStoreIamPolicy>`.
  RefTo<GoogleHealthcareDicomStoreIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `dicom_store_id` attribute.
  TfRef<String> get dicomStoreId =>
      TfRef.attribute<String>(this, 'dicom_store_id');
}
