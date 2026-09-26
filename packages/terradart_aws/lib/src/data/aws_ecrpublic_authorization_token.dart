// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecrpublic_authorization_token`.
const Set<String> _awsEcrpublicAuthorizationTokenSensitive = <String>{
  'authorization_token',
  'password',
};

/// Factory wrapper for `aws_ecrpublic_authorization_token`.
final class DataAwsEcrpublicAuthorizationToken extends Data {
  static const String tfType = 'aws_ecrpublic_authorization_token';

  DataAwsEcrpublicAuthorizationToken({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsEcrpublicAuthorizationTokenSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_token` attribute.
  TfRef<String> get authorizationToken =>
      TfRef.attribute<String>(this, 'authorization_token');

  /// Reference to `expires_at` attribute.
  TfRef<String> get expiresAt => TfRef.attribute<String>(this, 'expires_at');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
