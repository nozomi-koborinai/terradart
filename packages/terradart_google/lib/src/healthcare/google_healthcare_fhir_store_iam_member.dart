// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_healthcare_fhir_store_iam_member`.
const Set<String> _googleHealthcareFhirStoreIamMemberSensitive = <String>{};

/// Factory wrapper for `google_healthcare_fhir_store_iam_member`.
///
/// Additive IAM member on a [GoogleHealthcareFhirStore].
///
/// Prefer [GoogleHealthcareFhirStoreIamMember] over binding/policy adjuncts —
/// those overwrite grants made outside Terraform.
final class GoogleHealthcareFhirStoreIamMember extends Resource {
  static const String tfType = 'google_healthcare_fhir_store_iam_member';

  GoogleHealthcareFhirStoreIamMember({
    required super.localName,
    required TfArg<String> fhirStoreId,
    required TfArg<String> role,
    required TfArg<String> member,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'fhir_store_id': fhirStoreId, 'role': role, 'member': member},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleHealthcareFhirStoreIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
