// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../healthcare/google_healthcare_hl7_v2_store.dart'
    show GoogleHealthcareHl7V2Store;

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

  GoogleHealthcareHl7V2StoreIamPolicy(
    super.localName, {
    required RefTo<GoogleHealthcareHl7V2Store> hl7V2Store,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hl7_v2_store_id': hl7V2Store.encodeAs('id'),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareHl7V2StoreIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareHl7V2StoreIamPolicy>`.
  RefTo<GoogleHealthcareHl7V2StoreIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `hl7_v2_store_id` attribute.
  TfRef<String> get hl7V2StoreId =>
      TfRef.attribute<String>(this, 'hl7_v2_store_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
