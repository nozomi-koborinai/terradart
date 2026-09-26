// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_identity_pool_provider_principal_tag`.
const Set<String> _awsCognitoIdentityPoolProviderPrincipalTagSensitive =
    <String>{};

/// Factory wrapper for `aws_cognito_identity_pool_provider_principal_tag`.
final class AwsCognitoIdentityPoolProviderPrincipalTag extends Resource {
  static const String tfType =
      'aws_cognito_identity_pool_provider_principal_tag';

  AwsCognitoIdentityPoolProviderPrincipalTag({
    required super.localName,
    required TfArg<String> identityPoolId,
    required TfArg<String> identityProviderName,
    TfArg<Map<String, String>>? principalTags,
    TfArg<String>? region,
    TfArg<bool>? useDefaults,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity_pool_id': identityPoolId,
           'identity_provider_name': identityProviderName,
           if (principalTags != null) 'principal_tags': principalTags,
           if (region != null) 'region': region,
           if (useDefaults != null) 'use_defaults': useDefaults,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCognitoIdentityPoolProviderPrincipalTagSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
