// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_binary_authorization_attestor_iam_binding`.
const Set<String> _googleBinaryAuthorizationAttestorIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_binary_authorization_attestor_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Binary Authorization
/// attestor.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBinaryAuthorizationAttestorIamMember] for additive grants.
final class GoogleBinaryAuthorizationAttestorIamBinding extends Resource {
  static const String tfType =
      'google_binary_authorization_attestor_iam_binding';

  GoogleBinaryAuthorizationAttestorIamBinding({
    required super.localName,
    required TfArg<String> attestor,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attestor': attestor,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBinaryAuthorizationAttestorIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
