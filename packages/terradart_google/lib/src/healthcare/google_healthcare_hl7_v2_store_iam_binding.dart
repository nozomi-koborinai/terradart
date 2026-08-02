// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_hl7_v2_store_iam_binding`.
const Set<String> _googleHealthcareHl7V2StoreIamBindingSensitive = <String>{};

/// Factory wrapper for `google_healthcare_hl7_v2_store_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Healthcare
/// HL7v2 Store.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleHealthcareHl7V2StoreIamMember] for additive grants.
final class GoogleHealthcareHl7V2StoreIamBinding extends Resource {
  static const String tfType = 'google_healthcare_hl7_v2_store_iam_binding';

  GoogleHealthcareHl7V2StoreIamBinding({
    required super.localName,
    required TfArg<String> hl7V2StoreId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hl7_v2_store_id': hl7V2StoreId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareHl7V2StoreIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
