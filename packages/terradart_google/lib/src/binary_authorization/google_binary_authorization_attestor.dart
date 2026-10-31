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

  @internal
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

  @internal
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

  final BinaryAuthorizationAttestorSignatureAlgorithm? signatureAlgorithm;

  @internal
  Map<String, Object?> encode() => {
    'public_key_pem': ?publicKeyPem?.toTfJson(),
    'signature_algorithm': ?signatureAlgorithm?.toTfJson(),
  };
}

/// `signature_algorithm` — derived from the provider schema description.
extension type const BinaryAuthorizationAttestorSignatureAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  BinaryAuthorizationAttestorSignatureAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  BinaryAuthorizationAttestorSignatureAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const BinaryAuthorizationAttestorSignatureAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const rsaPss2048Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_PSS_2048_SHA256'),
      );
  static const rsaSignPss2048Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_SIGN_PSS_2048_SHA256'),
      );
  static const rsaPss3072Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_PSS_3072_SHA256'),
      );
  static const rsaSignPss3072Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_SIGN_PSS_3072_SHA256'),
      );
  static const rsaPss4096Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_PSS_4096_SHA256'),
      );
  static const rsaSignPss4096Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_SIGN_PSS_4096_SHA256'),
      );
  static const rsaPss4096Sha512 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_PSS_4096_SHA512'),
      );
  static const rsaSignPss4096Sha512 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_SIGN_PSS_4096_SHA512'),
      );
  static const rsaSignPkcs12048Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_SIGN_PKCS1_2048_SHA256'),
      );
  static const rsaSignPkcs13072Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_SIGN_PKCS1_3072_SHA256'),
      );
  static const rsaSignPkcs14096Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_SIGN_PKCS1_4096_SHA256'),
      );
  static const rsaSignPkcs14096Sha512 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('RSA_SIGN_PKCS1_4096_SHA512'),
      );
  static const ecdsaP256Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('ECDSA_P256_SHA256'),
      );
  static const ecSignP256Sha256 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('EC_SIGN_P256_SHA256'),
      );
  static const ecdsaP384Sha384 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('ECDSA_P384_SHA384'),
      );
  static const ecSignP384Sha384 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('EC_SIGN_P384_SHA384'),
      );
  static const ecdsaP521Sha512 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('ECDSA_P521_SHA512'),
      );
  static const ecSignP521Sha512 =
      BinaryAuthorizationAttestorSignatureAlgorithm._(
        TfArgLiteral('EC_SIGN_P521_SHA512'),
      );
  static const mlDsa65 = BinaryAuthorizationAttestorSignatureAlgorithm._(
    TfArgLiteral('ML_DSA_65'),
  );

  static const List<BinaryAuthorizationAttestorSignatureAlgorithm> values = [
    rsaPss2048Sha256,
    rsaSignPss2048Sha256,
    rsaPss3072Sha256,
    rsaSignPss3072Sha256,
    rsaPss4096Sha256,
    rsaSignPss4096Sha256,
    rsaPss4096Sha512,
    rsaSignPss4096Sha512,
    rsaSignPkcs12048Sha256,
    rsaSignPkcs13072Sha256,
    rsaSignPkcs14096Sha256,
    rsaSignPkcs14096Sha512,
    ecdsaP256Sha256,
    ecSignP256Sha256,
    ecdsaP384Sha384,
    ecSignP384Sha384,
    ecdsaP521Sha512,
    ecSignP521Sha512,
    mlDsa65,
  ];
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
///   'ci_attestor',
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

  GoogleBinaryAuthorizationAttestor(
    super.localName, {
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
