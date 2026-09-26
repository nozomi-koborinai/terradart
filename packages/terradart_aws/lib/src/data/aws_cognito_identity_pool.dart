// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_identity_pool`.
const Set<String> _awsCognitoIdentityPoolSensitive = <String>{};

/// Factory wrapper for `aws_cognito_identity_pool`.
final class DataAwsCognitoIdentityPool extends Data {
  static const String tfType = 'aws_cognito_identity_pool';

  DataAwsCognitoIdentityPool({
    required super.localName,
    required TfArg<String> identityPoolName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity_pool_name': identityPoolName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoIdentityPoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_classic_flow` attribute.
  TfRef<bool> get allowClassicFlow =>
      TfRef.attribute<bool>(this, 'allow_classic_flow');

  /// Reference to `allow_unauthenticated_identities` attribute.
  TfRef<bool> get allowUnauthenticatedIdentities =>
      TfRef.attribute<bool>(this, 'allow_unauthenticated_identities');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cognito_identity_providers` attribute.
  TfRef<List<Map<String, Object?>>> get cognitoIdentityProviders =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cognito_identity_providers',
      );

  /// Reference to `developer_provider_name` attribute.
  TfRef<String> get developerProviderName =>
      TfRef.attribute<String>(this, 'developer_provider_name');

  /// Reference to `openid_connect_provider_arns` attribute.
  TfRef<List<String>> get openidConnectProviderArns =>
      TfRef.attribute<List<String>>(this, 'openid_connect_provider_arns');

  /// Reference to `saml_provider_arns` attribute.
  TfRef<List<String>> get samlProviderArns =>
      TfRef.attribute<List<String>>(this, 'saml_provider_arns');

  /// Reference to `supported_login_providers` attribute.
  TfRef<Map<String, String>> get supportedLoginProviders =>
      TfRef.attribute<Map<String, String>>(this, 'supported_login_providers');
}
