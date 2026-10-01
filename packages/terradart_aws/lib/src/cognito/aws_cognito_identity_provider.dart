// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_identity_provider`.
const Set<String> _awsCognitoIdentityProviderSensitive = <String>{};

/// Cognito Identity Provider enum for `provider_type`.
extension type const CognitoIdentityProviderType._(TfArg<String> _)
    implements TfArg<String> {
  CognitoIdentityProviderType.variable(String name)
    : this._(TfArg.variable(name));
  CognitoIdentityProviderType.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoIdentityProviderType.arg(TfArg<String> arg) : this._(arg);

  static const saml = CognitoIdentityProviderType._(TfArgLiteral('SAML'));
  static const facebook = CognitoIdentityProviderType._(
    TfArgLiteral('Facebook'),
  );
  static const google = CognitoIdentityProviderType._(TfArgLiteral('Google'));
  static const loginwithamazon = CognitoIdentityProviderType._(
    TfArgLiteral('LoginWithAmazon'),
  );
  static const signinwithapple = CognitoIdentityProviderType._(
    TfArgLiteral('SignInWithApple'),
  );
  static const oidc = CognitoIdentityProviderType._(TfArgLiteral('OIDC'));

  static const List<CognitoIdentityProviderType> values = [
    saml,
    facebook,
    google,
    loginwithamazon,
    signinwithapple,
    oidc,
  ];
}

/// Factory wrapper for `aws_cognito_identity_provider`.
final class AwsCognitoIdentityProvider extends Resource {
  static const String tfType = 'aws_cognito_identity_provider';

  AwsCognitoIdentityProvider(
    super.localName, {
    TfArg<Map<String, String>>? attributeMapping,
    TfArg<List<String>>? idpIdentifiers,
    required TfArg<Map<String, String>> providerDetails,
    required TfArg<String> providerName,
    required CognitoIdentityProviderType providerType,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'attribute_mapping': ?attributeMapping,
           'idp_identifiers': ?idpIdentifiers,
           'provider_details': providerDetails,
           'provider_name': providerName,
           'provider_type': providerType,
           'region': ?region,
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoIdentityProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoIdentityProvider>`.
  RefTo<AwsCognitoIdentityProvider> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `attribute_mapping` attribute.
  TfRef<Map<String, String>> get attributeMapping =>
      TfRef.attribute<Map<String, String>>(this, 'attribute_mapping');

  /// Reference to `idp_identifiers` attribute.
  TfRef<List<String>> get idpIdentifiers =>
      TfRef.attribute<List<String>>(this, 'idp_identifiers');

  /// Reference to `provider_details` attribute.
  TfRef<Map<String, String>> get providerDetails =>
      TfRef.attribute<Map<String, String>>(this, 'provider_details');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `provider_type` attribute.
  TfRef<String> get providerType =>
      TfRef.attribute<String>(this, 'provider_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolId => TfRef.attribute<String>(this, 'user_pool_id');
}
