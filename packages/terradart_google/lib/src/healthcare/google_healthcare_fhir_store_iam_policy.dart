// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleHealthcareFhirStoreIamPolicy({
    required super.localName,
    required TfArg<String> fhirStoreId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'fhir_store_id': fhirStoreId, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareFhirStoreIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
