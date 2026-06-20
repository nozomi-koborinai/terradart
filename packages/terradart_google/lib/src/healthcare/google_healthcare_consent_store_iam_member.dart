// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_consent_store_iam_member`.
const Set<String> _googleHealthcareConsentStoreIamMemberSensitive = <String>{};

/// Factory wrapper for `google_healthcare_consent_store_iam_member`.
final class GoogleHealthcareConsentStoreIamMember extends Resource {
  static const String tfType = 'google_healthcare_consent_store_iam_member';

  GoogleHealthcareConsentStoreIamMember({
    required super.localName,
    required TfArg<String> consentStoreId,
    required TfArg<String> dataset,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'consent_store_id': consentStoreId,
           'dataset': dataset,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareConsentStoreIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
