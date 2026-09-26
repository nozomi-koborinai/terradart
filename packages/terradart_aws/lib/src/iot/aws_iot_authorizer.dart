// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_authorizer`.
const Set<String> _awsIotAuthorizerSensitive = <String>{
  'token_signing_public_keys',
};

/// Factory wrapper for `aws_iot_authorizer`.
final class AwsIotAuthorizer extends Resource {
  static const String tfType = 'aws_iot_authorizer';

  AwsIotAuthorizer({
    required super.localName,
    required TfArg<String> authorizerFunctionArn,
    TfArg<bool>? enableCachingForHttp,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? signingDisabled,
    TfArg<String>? status,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tokenKeyName,
    TfArg<Map<String, String>>? tokenSigningPublicKeys,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorizer_function_arn': authorizerFunctionArn,
           if (enableCachingForHttp != null)
             'enable_caching_for_http': enableCachingForHttp,
           'name': name,
           if (region != null) 'region': region,
           if (signingDisabled != null) 'signing_disabled': signingDisabled,
           if (status != null) 'status': status,
           if (tags != null) 'tags': tags,
           if (tokenKeyName != null) 'token_key_name': tokenKeyName,
           if (tokenSigningPublicKeys != null)
             'token_signing_public_keys': tokenSigningPublicKeys,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotAuthorizerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
