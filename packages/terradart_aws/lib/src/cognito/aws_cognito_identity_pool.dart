// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_identity_pool`.
const Set<String> _awsCognitoIdentityPoolSensitive = <String>{};

/// Typed helper for the `cognito_identity_providers` block of
/// `aws_cognito_identity_pool` (derived from provider schema).
@immutable
final class CognitoIdentityPoolCognitoIdentityProviders {
  const CognitoIdentityPoolCognitoIdentityProviders({
    this.clientId,
    this.providerName,
    this.serverSideTokenCheck,
  });

  final TfArg<String>? clientId;

  final TfArg<String>? providerName;

  final TfArg<bool>? serverSideTokenCheck;

  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'provider_name': ?providerName?.toTfJson(),
    'server_side_token_check': ?serverSideTokenCheck?.toTfJson(),
  };
}

/// Factory wrapper for `aws_cognito_identity_pool`.
final class AwsCognitoIdentityPool extends Resource {
  static const String tfType = 'aws_cognito_identity_pool';

  AwsCognitoIdentityPool({
    required super.localName,
    TfArg<bool>? allowClassicFlow,
    TfArg<bool>? allowUnauthenticatedIdentities,
    TfArg<String>? developerProviderName,
    required TfArg<String> identityPoolName,
    TfArg<List<String>>? openidConnectProviderArns,
    TfArg<String>? region,
    TfArg<List<String>>? samlProviderArns,
    TfArg<Map<String, String>>? supportedLoginProviders,
    TfArg<Map<String, String>>? tags,
    List<CognitoIdentityPoolCognitoIdentityProviders>? cognitoIdentityProviders,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_classic_flow': ?allowClassicFlow,
           'allow_unauthenticated_identities': ?allowUnauthenticatedIdentities,
           'developer_provider_name': ?developerProviderName,
           'identity_pool_name': identityPoolName,
           'openid_connect_provider_arns': ?openidConnectProviderArns,
           'region': ?region,
           'saml_provider_arns': ?samlProviderArns,
           'supported_login_providers': ?supportedLoginProviders,
           'tags': ?tags,
           if (cognitoIdentityProviders != null)
             'cognito_identity_providers': TfArg.literal([
               for (final e in cognitoIdentityProviders) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoIdentityPoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoIdentityPool>`.
  RefTo<AwsCognitoIdentityPool> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `allow_classic_flow` attribute.
  TfRef<bool> get allowClassicFlowRef =>
      TfRef.attribute<bool>(this, 'allow_classic_flow');

  /// Reference to `allow_unauthenticated_identities` attribute.
  TfRef<bool> get allowUnauthenticatedIdentitiesRef =>
      TfRef.attribute<bool>(this, 'allow_unauthenticated_identities');

  /// Reference to `developer_provider_name` attribute.
  TfRef<String> get developerProviderNameRef =>
      TfRef.attribute<String>(this, 'developer_provider_name');

  /// Reference to `identity_pool_name` attribute.
  TfRef<String> get identityPoolNameRef =>
      TfRef.attribute<String>(this, 'identity_pool_name');

  /// Reference to `openid_connect_provider_arns` attribute.
  TfRef<List<String>> get openidConnectProviderArnsRef =>
      TfRef.attribute<List<String>>(this, 'openid_connect_provider_arns');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `saml_provider_arns` attribute.
  TfRef<List<String>> get samlProviderArnsRef =>
      TfRef.attribute<List<String>>(this, 'saml_provider_arns');

  /// Reference to `supported_login_providers` attribute.
  TfRef<Map<String, String>> get supportedLoginProvidersRef =>
      TfRef.attribute<Map<String, String>>(this, 'supported_login_providers');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
