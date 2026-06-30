// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_binary_authorization_attestor_iam_member`.
const Set<String> _googleBinaryAuthorizationAttestorIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_binary_authorization_attestor_iam_member`.
///
/// IAM member on a Binary Authorization attestor (`roles/binaryauthorization.attestorViewer`
/// or `roles/binaryauthorization.attestorEditor`).
///
/// Example:
/// ```dart
/// GoogleBinaryAuthorizationAttestorIamMember(
///   localName: 'attestor_viewer',
///   attestor: TfArg.ref(attestor.nameRef),
///   role: TfArg.literal('roles/binaryauthorization.attestorViewer'),
///   member: TfArg.literal('serviceAccount:ci@$projectId.iam.gserviceaccount.com'),
/// );
/// ```
final class GoogleBinaryAuthorizationAttestorIamMember extends Resource {
  static const String tfType =
      'google_binary_authorization_attestor_iam_member';

  GoogleBinaryAuthorizationAttestorIamMember({
    required super.localName,
    required TfArg<String> attestor,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attestor': attestor,
           'role': role,
           'member': member,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBinaryAuthorizationAttestorIamMemberSensitive;

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
