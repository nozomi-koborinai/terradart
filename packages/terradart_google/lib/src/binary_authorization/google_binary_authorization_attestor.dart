// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_binary_authorization_attestor`.
const Set<String> _googleBinaryAuthorizationAttestorSensitive = <String>{};

/// Factory wrapper for `google_binary_authorization_attestor`.
///
/// An attestor that attests to container image artifacts.
///
/// Binary Authorization attestor — a trusted authority that signs container
/// images for admission decisions.
///
/// Enable `binaryauthorization.googleapis.com` before apply. The
/// `attestation_authority_note` block holds the PGP public key material
/// (or a Container Analysis note reference) used to verify signatures.
///
/// Example:
/// ```dart
/// GoogleBinaryAuthorizationAttestor(
///   localName: 'ci_attestor',
///   name: TfArg.literal('ci-attestor'),
///   attestationAuthorityNote: BinaryAuthorizationAttestorAttestationAuthorityNote(
///     noteReference: TfArg.literal(
///       'projects/$projectId/notes/ci-attestor',
///     ),
///   ),
/// );
/// ```
final class GoogleBinaryAuthorizationAttestor extends Resource {
  static const String tfType = 'google_binary_authorization_attestor';

  GoogleBinaryAuthorizationAttestor({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? description,
    required TfArg<Map<String, dynamic>> attestationAuthorityNote,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (description != null) 'description': description,
           'attestation_authority_note': attestationAuthorityNote,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBinaryAuthorizationAttestorSensitive;

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
