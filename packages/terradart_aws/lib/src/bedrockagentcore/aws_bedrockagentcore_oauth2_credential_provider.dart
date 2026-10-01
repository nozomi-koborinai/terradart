// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_bedrockagentcore_oauth2_credential_provider`.
const Set<String>
_awsBedrockagentcoreOauth2CredentialProviderSensitive = <String>{
  'oauth2_provider_config.atlassian_oauth2_provider_config.client_id',
  'oauth2_provider_config.atlassian_oauth2_provider_config.client_id_wo',
  'oauth2_provider_config.atlassian_oauth2_provider_config.client_secret',
  'oauth2_provider_config.atlassian_oauth2_provider_config.client_secret_wo',
  'oauth2_provider_config.custom_oauth2_provider_config.client_id',
  'oauth2_provider_config.custom_oauth2_provider_config.client_id_wo',
  'oauth2_provider_config.custom_oauth2_provider_config.client_secret',
  'oauth2_provider_config.custom_oauth2_provider_config.client_secret_wo',
  'oauth2_provider_config.github_oauth2_provider_config.client_id',
  'oauth2_provider_config.github_oauth2_provider_config.client_id_wo',
  'oauth2_provider_config.github_oauth2_provider_config.client_secret',
  'oauth2_provider_config.github_oauth2_provider_config.client_secret_wo',
  'oauth2_provider_config.google_oauth2_provider_config.client_id',
  'oauth2_provider_config.google_oauth2_provider_config.client_id_wo',
  'oauth2_provider_config.google_oauth2_provider_config.client_secret',
  'oauth2_provider_config.google_oauth2_provider_config.client_secret_wo',
  'oauth2_provider_config.included_oauth2_provider_config.client_id',
  'oauth2_provider_config.included_oauth2_provider_config.client_id_wo',
  'oauth2_provider_config.included_oauth2_provider_config.client_secret',
  'oauth2_provider_config.included_oauth2_provider_config.client_secret_wo',
  'oauth2_provider_config.linkedin_oauth2_provider_config.client_id',
  'oauth2_provider_config.linkedin_oauth2_provider_config.client_id_wo',
  'oauth2_provider_config.linkedin_oauth2_provider_config.client_secret',
  'oauth2_provider_config.linkedin_oauth2_provider_config.client_secret_wo',
  'oauth2_provider_config.microsoft_oauth2_provider_config.client_id',
  'oauth2_provider_config.microsoft_oauth2_provider_config.client_id_wo',
  'oauth2_provider_config.microsoft_oauth2_provider_config.client_secret',
  'oauth2_provider_config.microsoft_oauth2_provider_config.client_secret_wo',
  'oauth2_provider_config.microsoft_oauth2_provider_config.tenant_id',
  'oauth2_provider_config.microsoft_oauth2_provider_config.tenant_id_wo',
  'oauth2_provider_config.salesforce_oauth2_provider_config.client_id',
  'oauth2_provider_config.salesforce_oauth2_provider_config.client_id_wo',
  'oauth2_provider_config.salesforce_oauth2_provider_config.client_secret',
  'oauth2_provider_config.salesforce_oauth2_provider_config.client_secret_wo',
  'oauth2_provider_config.slack_oauth2_provider_config.client_id',
  'oauth2_provider_config.slack_oauth2_provider_config.client_id_wo',
  'oauth2_provider_config.slack_oauth2_provider_config.client_secret',
  'oauth2_provider_config.slack_oauth2_provider_config.client_secret_wo',
};

/// Bedrockagentcore Oauth2 Credential Provider enum for `credential_provider_vendor`.
extension type const BedrockagentcoreOauth2CredentialProviderVendor._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreOauth2CredentialProviderVendor.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreOauth2CredentialProviderVendor.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreOauth2CredentialProviderVendor.arg(TfArg<String> arg)
    : this._(arg);

  static const googleoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('GoogleOauth2'),
  );
  static const githuboauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('GithubOauth2'),
  );
  static const slackoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('SlackOauth2'),
  );
  static const salesforceoauth2 =
      BedrockagentcoreOauth2CredentialProviderVendor._(
        TfArgLiteral('SalesforceOauth2'),
      );
  static const microsoftoauth2 =
      BedrockagentcoreOauth2CredentialProviderVendor._(
        TfArgLiteral('MicrosoftOauth2'),
      );
  static const customoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('CustomOauth2'),
  );
  static const atlassianoauth2 =
      BedrockagentcoreOauth2CredentialProviderVendor._(
        TfArgLiteral('AtlassianOauth2'),
      );
  static const linkedinoauth2 =
      BedrockagentcoreOauth2CredentialProviderVendor._(
        TfArgLiteral('LinkedinOauth2'),
      );
  static const xoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('XOauth2'),
  );
  static const oktaoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('OktaOauth2'),
  );
  static const oneloginoauth2 =
      BedrockagentcoreOauth2CredentialProviderVendor._(
        TfArgLiteral('OneLoginOauth2'),
      );
  static const pingoneoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('PingOneOauth2'),
  );
  static const facebookoauth2 =
      BedrockagentcoreOauth2CredentialProviderVendor._(
        TfArgLiteral('FacebookOauth2'),
      );
  static const yandexoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('YandexOauth2'),
  );
  static const redditoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('RedditOauth2'),
  );
  static const zoomoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('ZoomOauth2'),
  );
  static const twitchoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('TwitchOauth2'),
  );
  static const spotifyoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('SpotifyOauth2'),
  );
  static const dropboxoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('DropboxOauth2'),
  );
  static const notionoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('NotionOauth2'),
  );
  static const hubspotoauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('HubspotOauth2'),
  );
  static const cyberarkoauth2 =
      BedrockagentcoreOauth2CredentialProviderVendor._(
        TfArgLiteral('CyberArkOauth2'),
      );
  static const fusionauthoauth2 =
      BedrockagentcoreOauth2CredentialProviderVendor._(
        TfArgLiteral('FusionAuthOauth2'),
      );
  static const auth0oauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('Auth0Oauth2'),
  );
  static const cognitooauth2 = BedrockagentcoreOauth2CredentialProviderVendor._(
    TfArgLiteral('CognitoOauth2'),
  );

  static const List<BedrockagentcoreOauth2CredentialProviderVendor> values = [
    googleoauth2,
    githuboauth2,
    slackoauth2,
    salesforceoauth2,
    microsoftoauth2,
    customoauth2,
    atlassianoauth2,
    linkedinoauth2,
    xoauth2,
    oktaoauth2,
    oneloginoauth2,
    pingoneoauth2,
    facebookoauth2,
    yandexoauth2,
    redditoauth2,
    zoomoauth2,
    twitchoauth2,
    spotifyoauth2,
    dropboxoauth2,
    notionoauth2,
    hubspotoauth2,
    cyberarkoauth2,
    fusionauthoauth2,
    auth0oauth2,
    cognitooauth2,
  ];
}

/// Typed helper for the `oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfig({
    this.atlassianOauth2ProviderConfig,
    this.customOauth2ProviderConfig,
    this.githubOauth2ProviderConfig,
    this.googleOauth2ProviderConfig,
    this.includedOauth2ProviderConfig,
    this.linkedinOauth2ProviderConfig,
    this.microsoftOauth2ProviderConfig,
    this.salesforceOauth2ProviderConfig,
    this.slackOauth2ProviderConfig,
  });

  final List<
    BedrockagentcoreOauth2CredentialProviderAtlassianOauth2ProviderConfig
  >?
  atlassianOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderCustomOauth2ProviderConfig
  >?
  customOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderGithubOauth2ProviderConfig
  >?
  githubOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderGoogleOauth2ProviderConfig
  >?
  googleOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderIncludedOauth2ProviderConfig
  >?
  includedOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderLinkedinOauth2ProviderConfig
  >?
  linkedinOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderMicrosoftOauth2ProviderConfig
  >?
  microsoftOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderSalesforceOauth2ProviderConfig
  >?
  salesforceOauth2ProviderConfig;

  final List<BedrockagentcoreOauth2CredentialProviderSlackOauth2ProviderConfig>?
  slackOauth2ProviderConfig;

  Map<String, Object?> encode() => {
    if (atlassianOauth2ProviderConfig != null)
      'atlassian_oauth2_provider_config': [
        for (final e in atlassianOauth2ProviderConfig!) e.encode(),
      ],
    if (customOauth2ProviderConfig != null)
      'custom_oauth2_provider_config': [
        for (final e in customOauth2ProviderConfig!) e.encode(),
      ],
    if (githubOauth2ProviderConfig != null)
      'github_oauth2_provider_config': [
        for (final e in githubOauth2ProviderConfig!) e.encode(),
      ],
    if (googleOauth2ProviderConfig != null)
      'google_oauth2_provider_config': [
        for (final e in googleOauth2ProviderConfig!) e.encode(),
      ],
    if (includedOauth2ProviderConfig != null)
      'included_oauth2_provider_config': [
        for (final e in includedOauth2ProviderConfig!) e.encode(),
      ],
    if (linkedinOauth2ProviderConfig != null)
      'linkedin_oauth2_provider_config': [
        for (final e in linkedinOauth2ProviderConfig!) e.encode(),
      ],
    if (microsoftOauth2ProviderConfig != null)
      'microsoft_oauth2_provider_config': [
        for (final e in microsoftOauth2ProviderConfig!) e.encode(),
      ],
    if (salesforceOauth2ProviderConfig != null)
      'salesforce_oauth2_provider_config': [
        for (final e in salesforceOauth2ProviderConfig!) e.encode(),
      ],
    if (slackOauth2ProviderConfig != null)
      'slack_oauth2_provider_config': [
        for (final e in slackOauth2ProviderConfig!) e.encode(),
      ],
  };
}

/// Typed helper for the `oauth2_provider_config.atlassian_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderAtlassianOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderAtlassianOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretSource,
    this.clientSecretWo,
    this.clientSecretConfig,
  });

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final List<BedrockagentcoreOauth2CredentialProviderClientSecretConfig>?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    'client_credentials_wo_version': ?clientCredentialsWoVersion?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_id_wo': ?clientIdWo?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_source': ?clientSecretSource?.toTfJson(),
    'client_secret_wo': ?clientSecretWo?.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.atlassian_oauth2_provider_config.client_secret_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreOauth2CredentialProviderClientSecretConfig {
  const BedrockagentcoreOauth2CredentialProviderClientSecretConfig({
    required this.jsonKey,
    required this.secretId,
  });

  final TfArg<String> jsonKey;

  final TfArg<String> secretId;

  Map<String, Object?> encode() => {
    'json_key': jsonKey.toTfJson(),
    'secret_id': secretId.toTfJson(),
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderCustomOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderCustomOauth2ProviderConfig({
    this.clientAuthenticationMethod,
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretSource,
    this.clientSecretWo,
    this.clientSecretConfig,
    this.oauthDiscovery,
    this.onBehalfOfTokenExchangeConfig,
    this.privateEndpoint,
    this.privateEndpointOverride,
    this.privateKeyJwtConfig,
  });

  final BedrockagentcoreOauth2CredentialProviderClientAuthenticationMethod?
  clientAuthenticationMethod;

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final List<BedrockagentcoreOauth2CredentialProviderClientSecretConfig>?
  clientSecretConfig;

  final List<BedrockagentcoreOauth2CredentialProviderOauthDiscovery>?
  oauthDiscovery;

  final List<
    BedrockagentcoreOauth2CredentialProviderOnBehalfOfTokenExchangeConfig
  >?
  onBehalfOfTokenExchangeConfig;

  final List<BedrockagentcoreOauth2CredentialProviderPrivateEndpoint>?
  privateEndpoint;

  final List<BedrockagentcoreOauth2CredentialProviderPrivateEndpointOverride>?
  privateEndpointOverride;

  final List<BedrockagentcoreOauth2CredentialProviderPrivateKeyJwtConfig>?
  privateKeyJwtConfig;

  Map<String, Object?> encode() => {
    'client_authentication_method': ?clientAuthenticationMethod?.toTfJson(),
    'client_credentials_wo_version': ?clientCredentialsWoVersion?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_id_wo': ?clientIdWo?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_source': ?clientSecretSource?.toTfJson(),
    'client_secret_wo': ?clientSecretWo?.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
    if (oauthDiscovery != null)
      'oauth_discovery': [for (final e in oauthDiscovery!) e.encode()],
    if (onBehalfOfTokenExchangeConfig != null)
      'on_behalf_of_token_exchange_config': [
        for (final e in onBehalfOfTokenExchangeConfig!) e.encode(),
      ],
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
    if (privateEndpointOverride != null)
      'private_endpoint_override': [
        for (final e in privateEndpointOverride!) e.encode(),
      ],
    if (privateKeyJwtConfig != null)
      'private_key_jwt_config': [
        for (final e in privateKeyJwtConfig!) e.encode(),
      ],
  };
}

/// `client_authentication_method` — derived from the provider schema description.
extension type const BedrockagentcoreOauth2CredentialProviderClientAuthenticationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreOauth2CredentialProviderClientAuthenticationMethod.variable(
    String name,
  ) : this._(TfArg.variable(name));
  BedrockagentcoreOauth2CredentialProviderClientAuthenticationMethod.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentcoreOauth2CredentialProviderClientAuthenticationMethod.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const clientSecretBasic =
      BedrockagentcoreOauth2CredentialProviderClientAuthenticationMethod._(
        TfArgLiteral('CLIENT_SECRET_BASIC'),
      );
  static const clientSecretPost =
      BedrockagentcoreOauth2CredentialProviderClientAuthenticationMethod._(
        TfArgLiteral('CLIENT_SECRET_POST'),
      );
  static const awsIamIdTokenJwt =
      BedrockagentcoreOauth2CredentialProviderClientAuthenticationMethod._(
        TfArgLiteral('AWS_IAM_ID_TOKEN_JWT'),
      );
  static const privateKeyJwt =
      BedrockagentcoreOauth2CredentialProviderClientAuthenticationMethod._(
        TfArgLiteral('PRIVATE_KEY_JWT'),
      );

  static const List<
    BedrockagentcoreOauth2CredentialProviderClientAuthenticationMethod
  >
  values = [
    clientSecretBasic,
    clientSecretPost,
    awsIamIdTokenJwt,
    privateKeyJwt,
  ];
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.oauth_discovery` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauthDiscovery {
  const BedrockagentcoreOauth2CredentialProviderOauthDiscovery({
    this.discoveryUrl,
    this.authorizationServerMetadata,
  });

  final TfArg<String>? discoveryUrl;

  final List<
    BedrockagentcoreOauth2CredentialProviderAuthorizationServerMetadata
  >?
  authorizationServerMetadata;

  Map<String, Object?> encode() => {
    'discovery_url': ?discoveryUrl?.toTfJson(),
    if (authorizationServerMetadata != null)
      'authorization_server_metadata': [
        for (final e in authorizationServerMetadata!) e.encode(),
      ],
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.oauth_discovery.authorization_server_metadata` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderAuthorizationServerMetadata {
  const BedrockagentcoreOauth2CredentialProviderAuthorizationServerMetadata({
    required this.authorizationEndpoint,
    required this.issuer,
    this.responseTypes,
    required this.tokenEndpoint,
    this.tokenEndpointAuthMethods,
  });

  final TfArg<String> authorizationEndpoint;

  final TfArg<String> issuer;

  final TfArg<List<String>>? responseTypes;

  final TfArg<String> tokenEndpoint;

  final TfArg<List<String>>? tokenEndpointAuthMethods;

  Map<String, Object?> encode() => {
    'authorization_endpoint': authorizationEndpoint.toTfJson(),
    'issuer': issuer.toTfJson(),
    'response_types': ?responseTypes?.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
    'token_endpoint_auth_methods': ?tokenEndpointAuthMethods?.toTfJson(),
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.on_behalf_of_token_exchange_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOnBehalfOfTokenExchangeConfig {
  const BedrockagentcoreOauth2CredentialProviderOnBehalfOfTokenExchangeConfig({
    required this.grantType,
    this.tokenExchangeGrantTypeConfig,
  });

  final BedrockagentcoreOauth2CredentialProviderGrantType grantType;

  final List<
    BedrockagentcoreOauth2CredentialProviderTokenExchangeGrantTypeConfig
  >?
  tokenExchangeGrantTypeConfig;

  Map<String, Object?> encode() => {
    'grant_type': grantType.toTfJson(),
    if (tokenExchangeGrantTypeConfig != null)
      'token_exchange_grant_type_config': [
        for (final e in tokenExchangeGrantTypeConfig!) e.encode(),
      ],
  };
}

/// `grant_type` — derived from the provider schema description.
extension type const BedrockagentcoreOauth2CredentialProviderGrantType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreOauth2CredentialProviderGrantType.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreOauth2CredentialProviderGrantType.expression(String template)
    : this._(TfArg.expression(template));
  const BedrockagentcoreOauth2CredentialProviderGrantType.arg(TfArg<String> arg)
    : this._(arg);

  static const tokenExchange =
      BedrockagentcoreOauth2CredentialProviderGrantType._(
        TfArgLiteral('TOKEN_EXCHANGE'),
      );
  static const jwtAuthorizationGrant =
      BedrockagentcoreOauth2CredentialProviderGrantType._(
        TfArgLiteral('JWT_AUTHORIZATION_GRANT'),
      );

  static const List<BedrockagentcoreOauth2CredentialProviderGrantType> values =
      [tokenExchange, jwtAuthorizationGrant];
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderTokenExchangeGrantTypeConfig {
  const BedrockagentcoreOauth2CredentialProviderTokenExchangeGrantTypeConfig({
    required this.actorTokenContent,
    this.actorTokenScopes,
  });

  final BedrockagentcoreOauth2CredentialProviderActorTokenContent
  actorTokenContent;

  final TfArg<List<String>>? actorTokenScopes;

  Map<String, Object?> encode() => {
    'actor_token_content': actorTokenContent.toTfJson(),
    'actor_token_scopes': ?actorTokenScopes?.toTfJson(),
  };
}

/// `actor_token_content` — derived from the provider schema description.
extension type const BedrockagentcoreOauth2CredentialProviderActorTokenContent._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreOauth2CredentialProviderActorTokenContent.variable(
    String name,
  ) : this._(TfArg.variable(name));
  BedrockagentcoreOauth2CredentialProviderActorTokenContent.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentcoreOauth2CredentialProviderActorTokenContent.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const none =
      BedrockagentcoreOauth2CredentialProviderActorTokenContent._(
        TfArgLiteral('NONE'),
      );
  static const m2m =
      BedrockagentcoreOauth2CredentialProviderActorTokenContent._(
        TfArgLiteral('M2M'),
      );
  static const awsIamIdTokenJwt =
      BedrockagentcoreOauth2CredentialProviderActorTokenContent._(
        TfArgLiteral('AWS_IAM_ID_TOKEN_JWT'),
      );

  static const List<BedrockagentcoreOauth2CredentialProviderActorTokenContent>
  values = [none, m2m, awsIamIdTokenJwt];
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_endpoint` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreOauth2CredentialProviderPrivateEndpoint {
  const BedrockagentcoreOauth2CredentialProviderPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<BedrockagentcoreOauth2CredentialProviderManagedVpcResource>?
  managedVpcResource;

  final List<
    BedrockagentcoreOauth2CredentialProviderSelfManagedLatticeResource
  >?
  selfManagedLatticeResource;

  Map<String, Object?> encode() => {
    if (managedVpcResource != null)
      'managed_vpc_resource': [for (final e in managedVpcResource!) e.encode()],
    if (selfManagedLatticeResource != null)
      'self_managed_lattice_resource': [
        for (final e in selfManagedLatticeResource!) e.encode(),
      ],
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_endpoint.managed_vpc_resource` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreOauth2CredentialProviderManagedVpcResource {
  const BedrockagentcoreOauth2CredentialProviderManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  final BedrockagentcoreOauth2CredentialProviderEndpointIpAddressType
  endpointIpAddressType;

  final TfArg<String>? routingDomain;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String> vpcIdentifier;

  Map<String, Object?> encode() => {
    'endpoint_ip_address_type': endpointIpAddressType.toTfJson(),
    'routing_domain': ?routingDomain?.toTfJson(),
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
    'tags': ?tags?.toTfJson(),
    'vpc_identifier': vpcIdentifier.toTfJson(),
  };
}

/// `endpoint_ip_address_type` — derived from the provider schema description.
extension type const BedrockagentcoreOauth2CredentialProviderEndpointIpAddressType._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreOauth2CredentialProviderEndpointIpAddressType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  BedrockagentcoreOauth2CredentialProviderEndpointIpAddressType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentcoreOauth2CredentialProviderEndpointIpAddressType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const ipv4 =
      BedrockagentcoreOauth2CredentialProviderEndpointIpAddressType._(
        TfArgLiteral('IPV4'),
      );
  static const ipv6 =
      BedrockagentcoreOauth2CredentialProviderEndpointIpAddressType._(
        TfArgLiteral('IPV6'),
      );

  static const List<
    BedrockagentcoreOauth2CredentialProviderEndpointIpAddressType
  >
  values = [ipv4, ipv6];
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class BedrockagentcoreOauth2CredentialProviderSelfManagedLatticeResource {
  const BedrockagentcoreOauth2CredentialProviderSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    'resource_configuration_identifier': ?resourceConfigurationIdentifier
        ?.toTfJson(),
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_endpoint_override` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderPrivateEndpointOverride {
  const BedrockagentcoreOauth2CredentialProviderPrivateEndpointOverride({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<BedrockagentcoreOauth2CredentialProviderPrivateEndpoint>?
  privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_key_jwt_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderPrivateKeyJwtConfig {
  const BedrockagentcoreOauth2CredentialProviderPrivateKeyJwtConfig({
    this.additionalHeaderClaims,
    this.additionalPayloadClaims,
    this.signingAlgorithm,
    this.privateKeySource,
  });

  final TfArg<Map<String, String>>? additionalHeaderClaims;

  final TfArg<Map<String, String>>? additionalPayloadClaims;

  final BedrockagentcoreOauth2CredentialProviderSigningAlgorithm?
  signingAlgorithm;

  final List<BedrockagentcoreOauth2CredentialProviderPrivateKeySource>?
  privateKeySource;

  Map<String, Object?> encode() => {
    'additional_header_claims': ?additionalHeaderClaims?.toTfJson(),
    'additional_payload_claims': ?additionalPayloadClaims?.toTfJson(),
    'signing_algorithm': ?signingAlgorithm?.toTfJson(),
    if (privateKeySource != null)
      'private_key_source': [for (final e in privateKeySource!) e.encode()],
  };
}

/// `signing_algorithm` — derived from the provider schema description.
extension type const BedrockagentcoreOauth2CredentialProviderSigningAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  BedrockagentcoreOauth2CredentialProviderSigningAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  BedrockagentcoreOauth2CredentialProviderSigningAlgorithm.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const BedrockagentcoreOauth2CredentialProviderSigningAlgorithm.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const rs256 =
      BedrockagentcoreOauth2CredentialProviderSigningAlgorithm._(
        TfArgLiteral('RS256'),
      );
  static const ps256 =
      BedrockagentcoreOauth2CredentialProviderSigningAlgorithm._(
        TfArgLiteral('PS256'),
      );
  static const es256 =
      BedrockagentcoreOauth2CredentialProviderSigningAlgorithm._(
        TfArgLiteral('ES256'),
      );

  static const List<BedrockagentcoreOauth2CredentialProviderSigningAlgorithm>
  values = [rs256, ps256, es256];
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_key_jwt_config.private_key_source` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderPrivateKeySource {
  const BedrockagentcoreOauth2CredentialProviderPrivateKeySource({
    this.kmsKeySource,
  });

  final List<BedrockagentcoreOauth2CredentialProviderKmsKeySource>?
  kmsKeySource;

  Map<String, Object?> encode() => {
    if (kmsKeySource != null)
      'kms_key_source': [for (final e in kmsKeySource!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_key_jwt_config.private_key_source.kms_key_source` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderKmsKeySource {
  const BedrockagentcoreOauth2CredentialProviderKmsKeySource({
    required this.kmsKeyArn,
  });

  final RefTo<AwsKmsKey> kmsKeyArn;

  Map<String, Object?> encode() => {
    'kms_key_arn': kmsKeyArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `oauth2_provider_config.github_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderGithubOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderGithubOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretSource,
    this.clientSecretWo,
    this.clientSecretConfig,
  });

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final List<BedrockagentcoreOauth2CredentialProviderClientSecretConfig>?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    'client_credentials_wo_version': ?clientCredentialsWoVersion?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_id_wo': ?clientIdWo?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_source': ?clientSecretSource?.toTfJson(),
    'client_secret_wo': ?clientSecretWo?.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.google_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderGoogleOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderGoogleOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretSource,
    this.clientSecretWo,
    this.clientSecretConfig,
  });

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final List<BedrockagentcoreOauth2CredentialProviderClientSecretConfig>?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    'client_credentials_wo_version': ?clientCredentialsWoVersion?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_id_wo': ?clientIdWo?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_source': ?clientSecretSource?.toTfJson(),
    'client_secret_wo': ?clientSecretWo?.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.included_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderIncludedOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderIncludedOauth2ProviderConfig({
    this.authorizationEndpoint,
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretSource,
    this.clientSecretWo,
    this.issuer,
    this.tokenEndpoint,
    this.clientSecretConfig,
  });

  final TfArg<String>? authorizationEndpoint;

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final TfArg<String>? issuer;

  final TfArg<String>? tokenEndpoint;

  final List<BedrockagentcoreOauth2CredentialProviderClientSecretConfig>?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    'authorization_endpoint': ?authorizationEndpoint?.toTfJson(),
    'client_credentials_wo_version': ?clientCredentialsWoVersion?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_id_wo': ?clientIdWo?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_source': ?clientSecretSource?.toTfJson(),
    'client_secret_wo': ?clientSecretWo?.toTfJson(),
    'issuer': ?issuer?.toTfJson(),
    'token_endpoint': ?tokenEndpoint?.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.linkedin_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderLinkedinOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderLinkedinOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretSource,
    this.clientSecretWo,
    this.clientSecretConfig,
  });

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final List<BedrockagentcoreOauth2CredentialProviderClientSecretConfig>?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    'client_credentials_wo_version': ?clientCredentialsWoVersion?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_id_wo': ?clientIdWo?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_source': ?clientSecretSource?.toTfJson(),
    'client_secret_wo': ?clientSecretWo?.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.microsoft_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderMicrosoftOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderMicrosoftOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretSource,
    this.clientSecretWo,
    this.tenantId,
    this.tenantIdWoVersion,
    this.clientSecretConfig,
  });

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final BedrockagentcoreOauth2CredentialProviderTenantId? tenantId;

  final TfArg<num>? tenantIdWoVersion;

  final List<BedrockagentcoreOauth2CredentialProviderClientSecretConfig>?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    'client_credentials_wo_version': ?clientCredentialsWoVersion?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_id_wo': ?clientIdWo?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_source': ?clientSecretSource?.toTfJson(),
    'client_secret_wo': ?clientSecretWo?.toTfJson(),
    ...?tenantId?.encode(),
    'tenant_id_wo_version': ?tenantIdWoVersion?.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// At most one of `tenant_id`, `tenant_id_wo` on the `oauth2_provider_config.microsoft_oauth2_provider_config` block of `aws_bedrockagentcore_oauth2_credential_provider`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.tenantId(...)`.
sealed class BedrockagentcoreOauth2CredentialProviderTenantId {
  const BedrockagentcoreOauth2CredentialProviderTenantId();

  /// Sets `tenant_id`.
  const factory BedrockagentcoreOauth2CredentialProviderTenantId.tenantId(
    TfArg<String> tenantId,
  ) = BedrockagentcoreOauth2CredentialProviderTenantIdChoice;

  /// Sets `tenant_id_wo`.
  const factory BedrockagentcoreOauth2CredentialProviderTenantId.tenantIdWo(
    TfArg<String> tenantIdWo,
  ) = BedrockagentcoreOauth2CredentialProviderTenantIdWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BedrockagentcoreOauth2CredentialProviderTenantId.tenantId] choice: sets `tenant_id`.
final class BedrockagentcoreOauth2CredentialProviderTenantIdChoice
    extends BedrockagentcoreOauth2CredentialProviderTenantId {
  const BedrockagentcoreOauth2CredentialProviderTenantIdChoice(this.tenantId);

  final TfArg<String> tenantId;

  @override
  String get blockKey => 'tenant_id';

  @override
  Map<String, Object?> encode() => {'tenant_id': tenantId.toTfJson()};
}

/// The [BedrockagentcoreOauth2CredentialProviderTenantId.tenantIdWo] choice: sets `tenant_id_wo`.
final class BedrockagentcoreOauth2CredentialProviderTenantIdWo
    extends BedrockagentcoreOauth2CredentialProviderTenantId {
  const BedrockagentcoreOauth2CredentialProviderTenantIdWo(this.tenantIdWo);

  final TfArg<String> tenantIdWo;

  @override
  String get blockKey => 'tenant_id_wo';

  @override
  Map<String, Object?> encode() => {'tenant_id_wo': tenantIdWo.toTfJson()};
}

/// Typed helper for the `oauth2_provider_config.salesforce_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderSalesforceOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderSalesforceOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretSource,
    this.clientSecretWo,
    this.clientSecretConfig,
  });

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final List<BedrockagentcoreOauth2CredentialProviderClientSecretConfig>?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    'client_credentials_wo_version': ?clientCredentialsWoVersion?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_id_wo': ?clientIdWo?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_source': ?clientSecretSource?.toTfJson(),
    'client_secret_wo': ?clientSecretWo?.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.slack_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderSlackOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderSlackOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretSource,
    this.clientSecretWo,
    this.clientSecretConfig,
  });

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final List<BedrockagentcoreOauth2CredentialProviderClientSecretConfig>?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    'client_credentials_wo_version': ?clientCredentialsWoVersion?.toTfJson(),
    'client_id': ?clientId?.toTfJson(),
    'client_id_wo': ?clientIdWo?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'client_secret_source': ?clientSecretSource?.toTfJson(),
    'client_secret_wo': ?clientSecretWo?.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Factory wrapper for `aws_bedrockagentcore_oauth2_credential_provider`.
final class AwsBedrockagentcoreOauth2CredentialProvider extends Resource {
  static const String tfType =
      'aws_bedrockagentcore_oauth2_credential_provider';

  AwsBedrockagentcoreOauth2CredentialProvider(
    super.localName, {
    required BedrockagentcoreOauth2CredentialProviderVendor
    credentialProviderVendor,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfig>?
    oauth2ProviderConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'credential_provider_vendor': credentialProviderVendor,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           if (oauth2ProviderConfig != null)
             'oauth2_provider_config': TfArg.literal([
               for (final e in oauth2ProviderConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreOauth2CredentialProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBedrockagentcoreOauth2CredentialProvider>`.
  RefTo<AwsBedrockagentcoreOauth2CredentialProvider> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `callback_url` attribute.
  TfRef<String> get callbackUrl =>
      TfRef.attribute<String>(this, 'callback_url');

  /// Reference to `client_secret_arn` attribute.
  TfRef<List<Map<String, Object?>>> get clientSecretArn =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'client_secret_arn');

  /// Reference to `credential_provider_arn` attribute.
  TfRef<String> get credentialProviderArn =>
      TfRef.attribute<String>(this, 'credential_provider_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `credential_provider_vendor` attribute.
  TfRef<String> get credentialProviderVendor =>
      TfRef.attribute<String>(this, 'credential_provider_vendor');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
