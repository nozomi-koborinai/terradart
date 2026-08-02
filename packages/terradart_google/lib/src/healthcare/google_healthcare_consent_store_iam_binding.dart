// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_consent_store_iam_binding`.
const Set<String> _googleHealthcareConsentStoreIamBindingSensitive = <String>{};

/// Factory wrapper for `google_healthcare_consent_store_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Healthcare
/// Consent Store.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleHealthcareConsentStoreIamMember] for additive grants.
final class GoogleHealthcareConsentStoreIamBinding extends Resource {
  static const String tfType = 'google_healthcare_consent_store_iam_binding';

  GoogleHealthcareConsentStoreIamBinding({
    required super.localName,
    required TfArg<String> consentStoreId,
    required TfArg<String> dataset,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'consent_store_id': consentStoreId,
           'dataset': dataset,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareConsentStoreIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
