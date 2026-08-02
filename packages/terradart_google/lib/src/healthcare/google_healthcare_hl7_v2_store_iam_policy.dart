// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_hl7_v2_store_iam_policy`.
const Set<String> _googleHealthcareHl7V2StoreIamPolicySensitive = <String>{};

/// Factory wrapper for `google_healthcare_hl7_v2_store_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Healthcare HL7v2 Store.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleHealthcareHl7V2StoreIamMember] for single-principal grants.
final class GoogleHealthcareHl7V2StoreIamPolicy extends Resource {
  static const String tfType = 'google_healthcare_hl7_v2_store_iam_policy';

  GoogleHealthcareHl7V2StoreIamPolicy({
    required super.localName,
    required TfArg<String> hl7V2StoreId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'hl7_v2_store_id': hl7V2StoreId, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareHl7V2StoreIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
