// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user_pool_signing_certificate`.
const Set<String> _awsCognitoUserPoolSigningCertificateSensitive = <String>{};

/// Factory wrapper for `aws_cognito_user_pool_signing_certificate`.
final class DataAwsCognitoUserPoolSigningCertificate extends Data {
  static const String tfType = 'aws_cognito_user_pool_signing_certificate';

  DataAwsCognitoUserPoolSigningCertificate({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCognitoUserPoolSigningCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');
}
