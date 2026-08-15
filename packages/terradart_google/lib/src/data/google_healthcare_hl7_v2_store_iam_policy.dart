// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_hl7_v2_store_iam_policy`.
const Set<String> _googleHealthcareHl7V2StoreIamPolicySensitive = <String>{};

/// Factory wrapper for `google_healthcare_hl7_v2_store_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleHealthcareHl7V2StoreIamPolicy extends Data {
  static const String tfType = 'google_healthcare_hl7_v2_store_iam_policy';

  DataGoogleHealthcareHl7V2StoreIamPolicy({
    required super.localName,
    required TfArg<String> hl7V2StoreId,
  }) : super(terraformType: tfType, argMap: {'hl7_v2_store_id': hl7V2StoreId});

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareHl7V2StoreIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
