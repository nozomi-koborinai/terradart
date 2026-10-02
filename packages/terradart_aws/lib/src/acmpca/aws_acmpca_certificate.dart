// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acmpca_certificate`.
const Set<String> _awsAcmpcaCertificateSensitive = <String>{};

/// Acmpca Certificate Signing enum for `signing_algorithm`.
extension type const AcmpcaCertificateSigningAlgorithm._(TfArg<String> _)
    implements TfArg<String> {
  AcmpcaCertificateSigningAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  AcmpcaCertificateSigningAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const AcmpcaCertificateSigningAlgorithm.arg(TfArg<String> arg) : this._(arg);

  static const sha256withecdsa = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('SHA256WITHECDSA'),
  );
  static const sha384withecdsa = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('SHA384WITHECDSA'),
  );
  static const sha512withecdsa = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('SHA512WITHECDSA'),
  );
  static const sha256withrsa = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('SHA256WITHRSA'),
  );
  static const sha384withrsa = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('SHA384WITHRSA'),
  );
  static const sha512withrsa = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('SHA512WITHRSA'),
  );
  static const sha256withrsaPss = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('SHA256WITHRSA_PSS'),
  );
  static const sha384withrsaPss = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('SHA384WITHRSA_PSS'),
  );
  static const sha512withrsaPss = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('SHA512WITHRSA_PSS'),
  );
  static const sm3withsm2 = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('SM3WITHSM2'),
  );
  static const mlDsa44 = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('ML_DSA_44'),
  );
  static const mlDsa65 = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('ML_DSA_65'),
  );
  static const mlDsa87 = AcmpcaCertificateSigningAlgorithm._(
    TfArgLiteral('ML_DSA_87'),
  );

  static const List<AcmpcaCertificateSigningAlgorithm> values = [
    sha256withecdsa,
    sha384withecdsa,
    sha512withecdsa,
    sha256withrsa,
    sha384withrsa,
    sha512withrsa,
    sha256withrsaPss,
    sha384withrsaPss,
    sha512withrsaPss,
    sm3withsm2,
    mlDsa44,
    mlDsa65,
    mlDsa87,
  ];
}

/// Typed helper for the `validity` block of
/// `aws_acmpca_certificate` (derived from provider schema).
@immutable
final class AcmpcaCertificateValidity {
  const AcmpcaCertificateValidity({required this.type, required this.value});

  final AcmpcaCertificateType type;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const AcmpcaCertificateType._(TfArg<String> _)
    implements TfArg<String> {
  AcmpcaCertificateType.variable(String name) : this._(TfArg.variable(name));
  AcmpcaCertificateType.expression(String template)
    : this._(TfArg.expression(template));
  const AcmpcaCertificateType.arg(TfArg<String> arg) : this._(arg);

  static const endDate = AcmpcaCertificateType._(TfArgLiteral('END_DATE'));
  static const absolute = AcmpcaCertificateType._(TfArgLiteral('ABSOLUTE'));
  static const days = AcmpcaCertificateType._(TfArgLiteral('DAYS'));
  static const months = AcmpcaCertificateType._(TfArgLiteral('MONTHS'));
  static const years = AcmpcaCertificateType._(TfArgLiteral('YEARS'));

  static const List<AcmpcaCertificateType> values = [
    endDate,
    absolute,
    days,
    months,
    years,
  ];
}

/// Factory wrapper for `aws_acmpca_certificate`.
final class AwsAcmpcaCertificate extends Resource {
  static const String tfType = 'aws_acmpca_certificate';

  AwsAcmpcaCertificate(
    super.localName, {
    TfArg<String>? apiPassthrough,
    required TfArg<String> certificateAuthorityArn,
    required TfArg<String> certificateSigningRequest,
    TfArg<String>? region,
    required AcmpcaCertificateSigningAlgorithm signingAlgorithm,
    TfArg<String>? templateArn,
    required AcmpcaCertificateValidity validity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_passthrough': ?apiPassthrough,
           'certificate_authority_arn': certificateAuthorityArn,
           'certificate_signing_request': certificateSigningRequest,
           'region': ?region,
           'signing_algorithm': signingAlgorithm,
           'template_arn': ?templateArn,
           'validity': TfArg.literal(validity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmpcaCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAcmpcaCertificate>`.
  RefTo<AwsAcmpcaCertificate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChain =>
      TfRef.attribute<String>(this, 'certificate_chain');

  /// Reference to `api_passthrough` attribute.
  TfRef<String> get apiPassthrough =>
      TfRef.attribute<String>(this, 'api_passthrough');

  /// Reference to `certificate_authority_arn` attribute.
  TfRef<String> get certificateAuthorityArn =>
      TfRef.attribute<String>(this, 'certificate_authority_arn');

  /// Reference to `certificate_signing_request` attribute.
  TfRef<String> get certificateSigningRequest =>
      TfRef.attribute<String>(this, 'certificate_signing_request');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `signing_algorithm` attribute.
  TfRef<String> get signingAlgorithm =>
      TfRef.attribute<String>(this, 'signing_algorithm');

  /// Reference to `template_arn` attribute.
  TfRef<String> get templateArn =>
      TfRef.attribute<String>(this, 'template_arn');
}
