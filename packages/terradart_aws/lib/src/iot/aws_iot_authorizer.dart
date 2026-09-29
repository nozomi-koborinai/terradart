// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_authorizer`.
const Set<String> _awsIotAuthorizerSensitive = <String>{
  'token_signing_public_keys',
};

/// Iot Authorizer enum for `status`.
enum IotAuthorizerStatus implements TerraformEnum {
  active('ACTIVE'),
  inactive('INACTIVE');

  const IotAuthorizerStatus(this.terraformValue);
  @override
  final String terraformValue;
}

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
    TfArg<IotAuthorizerStatus>? status,
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
           'enable_caching_for_http': ?enableCachingForHttp,
           'name': name,
           'region': ?region,
           'signing_disabled': ?signingDisabled,
           'status': ?status,
           'tags': ?tags,
           'token_key_name': ?tokenKeyName,
           'token_signing_public_keys': ?tokenSigningPublicKeys,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIotAuthorizerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIotAuthorizer>`.
  RefTo<AwsIotAuthorizer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
