// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_directory_service_iam_binding`.
const Set<String> _googleServiceDirectoryServiceIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_service_directory_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Service Directory
/// service.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleServiceDirectoryServiceIamMember] for additive grants.
final class GoogleServiceDirectoryServiceIamBinding extends Resource {
  static const String tfType = 'google_service_directory_service_iam_binding';

  GoogleServiceDirectoryServiceIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceDirectoryServiceIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
