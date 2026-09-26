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
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (providerName != null) 'provider_name': providerName!.toTfJson(),
    if (serverSideTokenCheck != null)
      'server_side_token_check': serverSideTokenCheck!.toTfJson(),
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
           if (allowClassicFlow != null) 'allow_classic_flow': allowClassicFlow,
           if (allowUnauthenticatedIdentities != null)
             'allow_unauthenticated_identities': allowUnauthenticatedIdentities,
           if (developerProviderName != null)
             'developer_provider_name': developerProviderName,
           'identity_pool_name': identityPoolName,
           if (openidConnectProviderArns != null)
             'openid_connect_provider_arns': openidConnectProviderArns,
           if (region != null) 'region': region,
           if (samlProviderArns != null) 'saml_provider_arns': samlProviderArns,
           if (supportedLoginProviders != null)
             'supported_login_providers': supportedLoginProviders,
           if (tags != null) 'tags': tags,
           if (cognitoIdentityProviders != null)
             'cognito_identity_providers': TfArg.literal([
               for (final e in cognitoIdentityProviders) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoIdentityPoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
