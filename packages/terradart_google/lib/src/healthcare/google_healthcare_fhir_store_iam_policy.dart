// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_fhir_store.dart'
    show GoogleHealthcareFhirStore;

/// Sensitive field paths for `google_healthcare_fhir_store_iam_policy`.
const Set<String> _googleHealthcareFhirStoreIamPolicySensitive = <String>{};

/// Factory wrapper for `google_healthcare_fhir_store_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Healthcare FHIR store.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleHealthcareFhirStoreIamMember] for single-principal grants.
final class GoogleHealthcareFhirStoreIamPolicy extends Resource {
  static const String tfType = 'google_healthcare_fhir_store_iam_policy';

  GoogleHealthcareFhirStoreIamPolicy(
    super.localName, {
    required RefTo<GoogleHealthcareFhirStore> fhirStore,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'fhir_store_id': fhirStore.encodeAs('id'),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareFhirStoreIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareFhirStoreIamPolicy>`.
  RefTo<GoogleHealthcareFhirStoreIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `fhir_store_id` attribute.
  TfRef<String> get fhirStoreId =>
      TfRef.attribute<String>(this, 'fhir_store_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
