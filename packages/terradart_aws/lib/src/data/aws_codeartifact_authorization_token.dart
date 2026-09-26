// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeartifact_authorization_token`.
const Set<String> _awsCodeartifactAuthorizationTokenSensitive = <String>{
  'authorization_token',
};

/// Factory wrapper for `aws_codeartifact_authorization_token`.
final class DataAwsCodeartifactAuthorizationToken extends Data {
  static const String tfType = 'aws_codeartifact_authorization_token';

  DataAwsCodeartifactAuthorizationToken({
    required super.localName,
    required TfArg<String> domain,
    TfArg<String>? domainOwner,
    TfArg<num>? durationSeconds,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain': domain,
           if (domainOwner != null) 'domain_owner': domainOwner,
           if (durationSeconds != null) 'duration_seconds': durationSeconds,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodeartifactAuthorizationTokenSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_token` attribute.
  TfRef<String> get authorizationToken =>
      TfRef.attribute<String>(this, 'authorization_token');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');
}
