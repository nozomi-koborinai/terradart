// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acmpca_certificate`.
const Set<String> _awsAcmpcaCertificateSensitive = <String>{};

/// Typed helper for the `validity` block of
/// `aws_acmpca_certificate` (derived from provider schema).
@immutable
final class AcmpcaCertificateValidity {
  const AcmpcaCertificateValidity({required this.type, required this.value});

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_acmpca_certificate`.
final class AwsAcmpcaCertificate extends Resource {
  static const String tfType = 'aws_acmpca_certificate';

  AwsAcmpcaCertificate({
    required super.localName,
    TfArg<String>? apiPassthrough,
    required TfArg<String> certificateAuthorityArn,
    required TfArg<String> certificateSigningRequest,
    TfArg<String>? region,
    required TfArg<String> signingAlgorithm,
    TfArg<String>? templateArn,
    required AcmpcaCertificateValidity validity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (apiPassthrough != null) 'api_passthrough': apiPassthrough,
           'certificate_authority_arn': certificateAuthorityArn,
           'certificate_signing_request': certificateSigningRequest,
           if (region != null) 'region': region,
           'signing_algorithm': signingAlgorithm,
           if (templateArn != null) 'template_arn': templateArn,
           'validity': TfArg.literal(validity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmpcaCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChain =>
      TfRef.attribute<String>(this, 'certificate_chain');
}
