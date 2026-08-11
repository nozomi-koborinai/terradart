// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_kms_ekm_connection_iam_binding`.
const Set<String> _googleKmsEkmConnectionIamBindingSensitive = <String>{};

/// Factory wrapper for `google_kms_ekm_connection_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud KMS EKM
/// connection.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleKmsEkmConnectionIamMember] for additive grants.
final class GoogleKmsEkmConnectionIamBinding extends Resource {
  static const String tfType = 'google_kms_ekm_connection_iam_binding';

  GoogleKmsEkmConnectionIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'members': members,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleKmsEkmConnectionIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
