// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_binary_authorization_attestor`.
const Set<String> _googleBinaryAuthorizationAttestorSensitive = <String>{};

/// Typed helper for the `attestation_authority_note` block of
/// `google_binary_authorization_attestor` (derived from provider schema).
@immutable
final class BinaryAuthorizationAttestorAttestationAuthorityNote {
  const BinaryAuthorizationAttestorAttestationAuthorityNote({
    required this.noteReference,
    this.publicKeys,
  });

  final TfArg<String> noteReference;

  final List<BinaryAuthorizationAttestorPublicKeys>? publicKeys;

  Map<String, Object?> encode() => {
    'note_reference': noteReference.toTfJson(),
    if (publicKeys != null)
      'public_keys': [for (final e in publicKeys!) e.encode()],
  };
}

/// Typed helper for the `attestation_authority_note.public_keys` block of
/// `google_binary_authorization_attestor` (derived from provider schema).
@immutable
final class BinaryAuthorizationAttestorPublicKeys {
  const BinaryAuthorizationAttestorPublicKeys({
    this.asciiArmoredPgpPublicKey,
    this.comment,
    this.id,
    this.pkixPublicKey,
  });

  final TfArg<String>? asciiArmoredPgpPublicKey;

  final TfArg<String>? comment;

  final TfArg<String>? id;

  final BinaryAuthorizationAttestorPkixPublicKey? pkixPublicKey;

  Map<String, Object?> encode() => {
    'ascii_armored_pgp_public_key': ?asciiArmoredPgpPublicKey?.toTfJson(),
    'comment': ?comment?.toTfJson(),
    'id': ?id?.toTfJson(),
    'pkix_public_key': ?pkixPublicKey?.encode(),
  };
}

/// Typed helper for the `attestation_authority_note.public_keys.pkix_public_key` block of
/// `google_binary_authorization_attestor` (derived from provider schema).
@immutable
final class BinaryAuthorizationAttestorPkixPublicKey {
  const BinaryAuthorizationAttestorPkixPublicKey({
    this.publicKeyPem,
    this.signatureAlgorithm,
  });

  final TfArg<String>? publicKeyPem;

  final TfArg<String>? signatureAlgorithm;

  Map<String, Object?> encode() => {
    'public_key_pem': ?publicKeyPem?.toTfJson(),
    'signature_algorithm': ?signatureAlgorithm?.toTfJson(),
  };
}

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
    required BinaryAuthorizationAttestorAttestationAuthorityNote
    attestationAuthorityNote,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'description': ?description,
           'attestation_authority_note': TfArg.literal(
             attestationAuthorityNote.encode(),
           ),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBinaryAuthorizationAttestorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBinaryAuthorizationAttestor>`.
  RefTo<GoogleBinaryAuthorizationAttestor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
