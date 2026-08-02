// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_consent_store_iam_policy`.
const Set<String> _googleHealthcareConsentStoreIamPolicySensitive = <String>{};

/// Factory wrapper for `google_healthcare_consent_store_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Healthcare Consent Store.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleHealthcareConsentStoreIamMember] for single-principal grants.
final class GoogleHealthcareConsentStoreIamPolicy extends Resource {
  static const String tfType = 'google_healthcare_consent_store_iam_policy';

  GoogleHealthcareConsentStoreIamPolicy({
    required super.localName,
    required TfArg<String> consentStoreId,
    required TfArg<String> dataset,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'consent_store_id': consentStoreId,
           'dataset': dataset,
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareConsentStoreIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
