// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_kms_grant`.
const Set<String> _awsKmsGrantSensitive = <String>{'grant_token'};

/// Kms Grant enum for `operations`.
extension type const KmsGrantOperations._(TfArg<String> _)
    implements TfArg<String> {
  KmsGrantOperations.variable(String name) : this._(TfArg.variable(name));
  KmsGrantOperations.expression(String template)
    : this._(TfArg.expression(template));
  const KmsGrantOperations.arg(TfArg<String> arg) : this._(arg);

  static const decrypt = KmsGrantOperations._(TfArgLiteral('Decrypt'));
  static const encrypt = KmsGrantOperations._(TfArgLiteral('Encrypt'));
  static const generatedatakey = KmsGrantOperations._(
    TfArgLiteral('GenerateDataKey'),
  );
  static const generatedatakeywithoutplaintext = KmsGrantOperations._(
    TfArgLiteral('GenerateDataKeyWithoutPlaintext'),
  );
  static const reencryptfrom = KmsGrantOperations._(
    TfArgLiteral('ReEncryptFrom'),
  );
  static const reencryptto = KmsGrantOperations._(TfArgLiteral('ReEncryptTo'));
  static const sign = KmsGrantOperations._(TfArgLiteral('Sign'));
  static const verify = KmsGrantOperations._(TfArgLiteral('Verify'));
  static const getpublickey = KmsGrantOperations._(
    TfArgLiteral('GetPublicKey'),
  );
  static const creategrant = KmsGrantOperations._(TfArgLiteral('CreateGrant'));
  static const retiregrant = KmsGrantOperations._(TfArgLiteral('RetireGrant'));
  static const describekey = KmsGrantOperations._(TfArgLiteral('DescribeKey'));
  static const generatedatakeypair = KmsGrantOperations._(
    TfArgLiteral('GenerateDataKeyPair'),
  );
  static const generatedatakeypairwithoutplaintext = KmsGrantOperations._(
    TfArgLiteral('GenerateDataKeyPairWithoutPlaintext'),
  );
  static const generatemac = KmsGrantOperations._(TfArgLiteral('GenerateMac'));
  static const verifymac = KmsGrantOperations._(TfArgLiteral('VerifyMac'));
  static const derivesharedsecret = KmsGrantOperations._(
    TfArgLiteral('DeriveSharedSecret'),
  );

  static const List<KmsGrantOperations> values = [
    decrypt,
    encrypt,
    generatedatakey,
    generatedatakeywithoutplaintext,
    reencryptfrom,
    reencryptto,
    sign,
    verify,
    getpublickey,
    creategrant,
    retiregrant,
    describekey,
    generatedatakeypair,
    generatedatakeypairwithoutplaintext,
    generatemac,
    verifymac,
    derivesharedsecret,
  ];
}

/// Typed helper for the `constraints` block of
/// `aws_kms_grant` (derived from provider schema).
@immutable
final class KmsGrantConstraints {
  const KmsGrantConstraints({
    this.encryptionContextEquals,
    this.encryptionContextSubset,
  });

  final TfArg<Map<String, String>>? encryptionContextEquals;

  final TfArg<Map<String, String>>? encryptionContextSubset;

  @internal
  Map<String, Object?> encode() => {
    'encryption_context_equals': ?encryptionContextEquals?.toTfJson(),
    'encryption_context_subset': ?encryptionContextSubset?.toTfJson(),
  };
}

/// Factory wrapper for `aws_kms_grant`.
final class AwsKmsGrant extends Resource {
  static const String tfType = 'aws_kms_grant';

  AwsKmsGrant(
    super.localName, {
    TfArg<List<String>>? grantCreationTokens,
    required TfArg<String> granteePrincipal,
    required RefTo<AwsKmsKey> keyId,
    TfArg<String>? name,
    required List<KmsGrantOperations> operations,
    TfArg<String>? region,
    TfArg<bool>? retireOnDelete,
    TfArg<String>? retiringPrincipal,
    List<KmsGrantConstraints>? constraints,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'grant_creation_tokens': ?grantCreationTokens,
           'grantee_principal': granteePrincipal,
           'key_id': keyId.encodeAs('key_id'),
           'name': ?name,
           'operations': TfArg.literal([
             for (final e in operations) e.toTfJson(),
           ]),
           'region': ?region,
           'retire_on_delete': ?retireOnDelete,
           'retiring_principal': ?retiringPrincipal,
           if (constraints != null)
             'constraints': TfArg.literal([
               for (final e in constraints) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKmsGrantSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKmsGrant>`.
  RefTo<AwsKmsGrant> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `grant_id` attribute.
  TfRef<String> get grantId => TfRef.attribute<String>(this, 'grant_id');

  /// Reference to `grant_token` attribute.
  TfRef<String> get grantToken => TfRef.attribute<String>(this, 'grant_token');

  /// Reference to `grant_creation_tokens` attribute.
  TfRef<List<String>> get grantCreationTokens =>
      TfRef.attribute<List<String>>(this, 'grant_creation_tokens');

  /// Reference to `grantee_principal` attribute.
  TfRef<String> get granteePrincipal =>
      TfRef.attribute<String>(this, 'grantee_principal');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `operations` attribute.
  TfRef<List<String>> get operations =>
      TfRef.attribute<List<String>>(this, 'operations');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `retire_on_delete` attribute.
  TfRef<bool> get retireOnDelete =>
      TfRef.attribute<bool>(this, 'retire_on_delete');

  /// Reference to `retiring_principal` attribute.
  TfRef<String> get retiringPrincipal =>
      TfRef.attribute<String>(this, 'retiring_principal');
}
