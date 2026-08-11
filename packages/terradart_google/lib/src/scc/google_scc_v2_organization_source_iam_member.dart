// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_v2_organization_source_iam_member`.
const Set<String> _googleSccV2OrganizationSourceIamMemberSensitive = <String>{};

/// Factory wrapper for `google_scc_v2_organization_source_iam_member`.
final class GoogleSccV2OrganizationSourceIamMember extends Resource {
  static const String tfType = 'google_scc_v2_organization_source_iam_member';

  GoogleSccV2OrganizationSourceIamMember({
    required super.localName,
    required TfArg<String> source,
    required TfArg<String> organization,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'source': source,
           'organization': organization,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2OrganizationSourceIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
