// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acmpca_certificate_authority`.
const Set<String> _awsAcmpcaCertificateAuthoritySensitive = <String>{};

/// Factory wrapper for `aws_acmpca_certificate_authority`.
final class DataAwsAcmpcaCertificateAuthority extends Data {
  static const String tfType = 'aws_acmpca_certificate_authority';

  DataAwsAcmpcaCertificateAuthority({
    required super.localName,
    required TfArg<String> arn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'arn': arn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmpcaCertificateAuthoritySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChain =>
      TfRef.attribute<String>(this, 'certificate_chain');

  /// Reference to `certificate_signing_request` attribute.
  TfRef<String> get certificateSigningRequest =>
      TfRef.attribute<String>(this, 'certificate_signing_request');

  /// Reference to `key_storage_security_standard` attribute.
  TfRef<String> get keyStorageSecurityStandard =>
      TfRef.attribute<String>(this, 'key_storage_security_standard');

  /// Reference to `not_after` attribute.
  TfRef<String> get notAfter => TfRef.attribute<String>(this, 'not_after');

  /// Reference to `not_before` attribute.
  TfRef<String> get notBefore => TfRef.attribute<String>(this, 'not_before');

  /// Reference to `revocation_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get revocationConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'revocation_configuration',
      );

  /// Reference to `serial` attribute.
  TfRef<String> get serial => TfRef.attribute<String>(this, 'serial');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `usage_mode` attribute.
  TfRef<String> get usageMode => TfRef.attribute<String>(this, 'usage_mode');
}
