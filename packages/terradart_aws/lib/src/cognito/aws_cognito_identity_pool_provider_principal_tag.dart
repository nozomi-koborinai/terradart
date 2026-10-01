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

  AwsCognitoIdentityPoolProviderPrincipalTag(
    super.localName, {
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
           'principal_tags': ?principalTags,
           'region': ?region,
           'use_defaults': ?useDefaults,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCognitoIdentityPoolProviderPrincipalTagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoIdentityPoolProviderPrincipalTag>`.
  RefTo<AwsCognitoIdentityPoolProviderPrincipalTag> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `identity_pool_id` attribute.
  TfRef<String> get identityPoolId =>
      TfRef.attribute<String>(this, 'identity_pool_id');

  /// Reference to `identity_provider_name` attribute.
  TfRef<String> get identityProviderName =>
      TfRef.attribute<String>(this, 'identity_provider_name');

  /// Reference to `principal_tags` attribute.
  TfRef<Map<String, String>> get principalTags =>
      TfRef.attribute<Map<String, String>>(this, 'principal_tags');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `use_defaults` attribute.
  TfRef<bool> get useDefaults => TfRef.attribute<bool>(this, 'use_defaults');
}
