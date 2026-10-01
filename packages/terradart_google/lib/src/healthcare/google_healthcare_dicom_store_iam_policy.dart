// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_dicom_store.dart'
    show GoogleHealthcareDicomStore;

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

  GoogleHealthcareDicomStoreIamPolicy(
    super.localName, {
    required RefTo<GoogleHealthcareDicomStore> dicomStore,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dicom_store_id': dicomStore.encodeAs('id'),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareDicomStoreIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareDicomStoreIamPolicy>`.
  RefTo<GoogleHealthcareDicomStoreIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `dicom_store_id` attribute.
  TfRef<String> get dicomStoreId =>
      TfRef.attribute<String>(this, 'dicom_store_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
