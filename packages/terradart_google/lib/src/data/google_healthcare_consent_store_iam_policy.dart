// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../healthcare/google_healthcare_consent_store_iam_policy.dart';

/// Sensitive field paths for `google_healthcare_consent_store_iam_policy`.
const Set<String> _googleHealthcareConsentStoreIamPolicySensitive = <String>{};

/// Factory wrapper for `google_healthcare_consent_store_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleHealthcareConsentStoreIamPolicy extends Data {
  static const String tfType = 'google_healthcare_consent_store_iam_policy';

  DataGoogleHealthcareConsentStoreIamPolicy(
    super.localName, {
    required TfArg<String> consentStoreId,
    required TfArg<String> dataset,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'consent_store_id': consentStoreId, 'dataset': dataset},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareConsentStoreIamPolicySensitive;

  /// A reference to the `google_healthcare_consent_store_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleHealthcareConsentStoreIamPolicy>`.
  RefTo<GoogleHealthcareConsentStoreIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `consent_store_id` attribute.
  TfRef<String> get consentStoreId =>
      TfRef.attribute<String>(this, 'consent_store_id');

  /// Reference to `dataset` attribute.
  TfRef<String> get dataset => TfRef.attribute<String>(this, 'dataset');
}
