// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigAtlassianOauth2ProviderConfig
  >?
  atlassianOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig
  >?
  customOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig
  >?
  githubOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig
  >?
  googleOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigIncludedOauth2ProviderConfig
  >?
  includedOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigLinkedinOauth2ProviderConfig
  >?
  linkedinOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig
  >?
  microsoftOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig
  >?
  salesforceOauth2ProviderConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig
  >?
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
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigAtlassianOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigAtlassianOauth2ProviderConfig({
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

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigAtlassianOauth2ProviderConfigClientSecretConfig
  >?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    if (clientCredentialsWoVersion != null)
      'client_credentials_wo_version': clientCredentialsWoVersion!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientIdWo != null) 'client_id_wo': clientIdWo!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretSource != null)
      'client_secret_source': clientSecretSource!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.atlassian_oauth2_provider_config.client_secret_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigAtlassianOauth2ProviderConfigClientSecretConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigAtlassianOauth2ProviderConfigClientSecretConfig({
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
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfig({
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

  final TfArg<String>? clientAuthenticationMethod;

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigClientSecretConfig
  >?
  clientSecretConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery
  >?
  oauthDiscovery;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig
  >?
  onBehalfOfTokenExchangeConfig;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint
  >?
  privateEndpoint;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride
  >?
  privateEndpointOverride;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig
  >?
  privateKeyJwtConfig;

  Map<String, Object?> encode() => {
    if (clientAuthenticationMethod != null)
      'client_authentication_method': clientAuthenticationMethod!.toTfJson(),
    if (clientCredentialsWoVersion != null)
      'client_credentials_wo_version': clientCredentialsWoVersion!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientIdWo != null) 'client_id_wo': clientIdWo!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretSource != null)
      'client_secret_source': clientSecretSource!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
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

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.client_secret_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigClientSecretConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigClientSecretConfig({
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

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.oauth_discovery` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscovery({
    this.discoveryUrl,
    this.authorizationServerMetadata,
  });

  final TfArg<String>? discoveryUrl;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata
  >?
  authorizationServerMetadata;

  Map<String, Object?> encode() => {
    if (discoveryUrl != null) 'discovery_url': discoveryUrl!.toTfJson(),
    if (authorizationServerMetadata != null)
      'authorization_server_metadata': [
        for (final e in authorizationServerMetadata!) e.encode(),
      ],
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.oauth_discovery.authorization_server_metadata` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadata({
    required this.authorizationEndpoint,
    required this.issuer,
    this.responseTypes,
    required this.tokenEndpoint,
    this.tokenEndpointAuthMethods,
  });

  final TfArg<String> authorizationEndpoint;

  final TfArg<String> issuer;

  final TfArg<List<Object?>>? responseTypes;

  final TfArg<String> tokenEndpoint;

  final TfArg<List<Object?>>? tokenEndpointAuthMethods;

  Map<String, Object?> encode() => {
    'authorization_endpoint': authorizationEndpoint.toTfJson(),
    'issuer': issuer.toTfJson(),
    if (responseTypes != null) 'response_types': responseTypes!.toTfJson(),
    'token_endpoint': tokenEndpoint.toTfJson(),
    if (tokenEndpointAuthMethods != null)
      'token_endpoint_auth_methods': tokenEndpointAuthMethods!.toTfJson(),
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.on_behalf_of_token_exchange_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfig({
    required this.grantType,
    this.tokenExchangeGrantTypeConfig,
  });

  final TfArg<String> grantType;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig
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

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.on_behalf_of_token_exchange_config.token_exchange_grant_type_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOnBehalfOfTokenExchangeConfigTokenExchangeGrantTypeConfig({
    required this.actorTokenContent,
    this.actorTokenScopes,
  });

  final TfArg<String> actorTokenContent;

  final TfArg<List<Object?>>? actorTokenScopes;

  Map<String, Object?> encode() => {
    'actor_token_content': actorTokenContent.toTfJson(),
    if (actorTokenScopes != null)
      'actor_token_scopes': actorTokenScopes!.toTfJson(),
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_endpoint` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointManagedVpcResource
  >?
  managedVpcResource;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource
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
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointManagedVpcResource {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  final TfArg<String> endpointIpAddressType;

  final TfArg<String>? routingDomain;

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String> vpcIdentifier;

  Map<String, Object?> encode() => {
    'endpoint_ip_address_type': endpointIpAddressType.toTfJson(),
    if (routingDomain != null) 'routing_domain': routingDomain!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    'vpc_identifier': vpcIdentifier.toTfJson(),
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    if (resourceConfigurationIdentifier != null)
      'resource_configuration_identifier': resourceConfigurationIdentifier!
          .toTfJson(),
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_endpoint_override` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverride({
    required this.domain,
    this.privateEndpoint,
  });

  final TfArg<String> domain;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpoint
  >?
  privateEndpoint;

  Map<String, Object?> encode() => {
    'domain': domain.toTfJson(),
    if (privateEndpoint != null)
      'private_endpoint': [for (final e in privateEndpoint!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_endpoint_override.private_endpoint` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpoint {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointManagedVpcResource
  >?
  managedVpcResource;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource
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

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_endpoint_override.private_endpoint.managed_vpc_resource` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointManagedVpcResource {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointManagedVpcResource({
    required this.endpointIpAddressType,
    this.routingDomain,
    this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcIdentifier,
  });

  final TfArg<String> endpointIpAddressType;

  final TfArg<String>? routingDomain;

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String> vpcIdentifier;

  Map<String, Object?> encode() => {
    'endpoint_ip_address_type': endpointIpAddressType.toTfJson(),
    if (routingDomain != null) 'routing_domain': routingDomain!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    'vpc_identifier': vpcIdentifier.toTfJson(),
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_endpoint_override.private_endpoint.self_managed_lattice_resource` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  final TfArg<String>? resourceConfigurationIdentifier;

  Map<String, Object?> encode() => {
    if (resourceConfigurationIdentifier != null)
      'resource_configuration_identifier': resourceConfigurationIdentifier!
          .toTfJson(),
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_key_jwt_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfig({
    this.additionalHeaderClaims,
    this.additionalPayloadClaims,
    this.signingAlgorithm,
    this.privateKeySource,
  });

  final TfArg<Map<String, String>>? additionalHeaderClaims;

  final TfArg<Map<String, String>>? additionalPayloadClaims;

  final TfArg<String>? signingAlgorithm;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource
  >?
  privateKeySource;

  Map<String, Object?> encode() => {
    if (additionalHeaderClaims != null)
      'additional_header_claims': additionalHeaderClaims!.toTfJson(),
    if (additionalPayloadClaims != null)
      'additional_payload_claims': additionalPayloadClaims!.toTfJson(),
    if (signingAlgorithm != null)
      'signing_algorithm': signingAlgorithm!.toTfJson(),
    if (privateKeySource != null)
      'private_key_source': [for (final e in privateKeySource!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_key_jwt_config.private_key_source` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySource({
    this.kmsKeySource,
  });

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource
  >?
  kmsKeySource;

  Map<String, Object?> encode() => {
    if (kmsKeySource != null)
      'kms_key_source': [for (final e in kmsKeySource!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.custom_oauth2_provider_config.private_key_jwt_config.private_key_source.kms_key_source` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigPrivateKeyJwtConfigPrivateKeySourceKmsKeySource({
    required this.kmsKeyArn,
  });

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Typed helper for the `oauth2_provider_config.github_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfig({
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

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigClientSecretConfig
  >?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    if (clientCredentialsWoVersion != null)
      'client_credentials_wo_version': clientCredentialsWoVersion!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientIdWo != null) 'client_id_wo': clientIdWo!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretSource != null)
      'client_secret_source': clientSecretSource!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.github_oauth2_provider_config.client_secret_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigClientSecretConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigClientSecretConfig({
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

/// Typed helper for the `oauth2_provider_config.google_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig({
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

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig
  >?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    if (clientCredentialsWoVersion != null)
      'client_credentials_wo_version': clientCredentialsWoVersion!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientIdWo != null) 'client_id_wo': clientIdWo!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretSource != null)
      'client_secret_source': clientSecretSource!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.google_oauth2_provider_config.client_secret_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfigClientSecretConfig({
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

/// Typed helper for the `oauth2_provider_config.included_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigIncludedOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigIncludedOauth2ProviderConfig({
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

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigIncludedOauth2ProviderConfigClientSecretConfig
  >?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    if (authorizationEndpoint != null)
      'authorization_endpoint': authorizationEndpoint!.toTfJson(),
    if (clientCredentialsWoVersion != null)
      'client_credentials_wo_version': clientCredentialsWoVersion!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientIdWo != null) 'client_id_wo': clientIdWo!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretSource != null)
      'client_secret_source': clientSecretSource!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
    if (issuer != null) 'issuer': issuer!.toTfJson(),
    if (tokenEndpoint != null) 'token_endpoint': tokenEndpoint!.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.included_oauth2_provider_config.client_secret_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigIncludedOauth2ProviderConfigClientSecretConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigIncludedOauth2ProviderConfigClientSecretConfig({
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

/// Typed helper for the `oauth2_provider_config.linkedin_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigLinkedinOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigLinkedinOauth2ProviderConfig({
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

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigLinkedinOauth2ProviderConfigClientSecretConfig
  >?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    if (clientCredentialsWoVersion != null)
      'client_credentials_wo_version': clientCredentialsWoVersion!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientIdWo != null) 'client_id_wo': clientIdWo!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretSource != null)
      'client_secret_source': clientSecretSource!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.linkedin_oauth2_provider_config.client_secret_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigLinkedinOauth2ProviderConfigClientSecretConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigLinkedinOauth2ProviderConfigClientSecretConfig({
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

/// Typed helper for the `oauth2_provider_config.microsoft_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfig({
    this.clientCredentialsWoVersion,
    this.clientId,
    this.clientIdWo,
    this.clientSecret,
    this.clientSecretSource,
    this.clientSecretWo,
    this.tenantId,
    this.tenantIdWo,
    this.tenantIdWoVersion,
    this.clientSecretConfig,
  });

  final TfArg<num>? clientCredentialsWoVersion;

  final TfArg<String>? clientId;

  final TfArg<String>? clientIdWo;

  final TfArg<String>? clientSecret;

  final TfArg<String>? clientSecretSource;

  final TfArg<String>? clientSecretWo;

  final TfArg<String>? tenantId;

  final TfArg<String>? tenantIdWo;

  final TfArg<num>? tenantIdWoVersion;

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfigClientSecretConfig
  >?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    if (clientCredentialsWoVersion != null)
      'client_credentials_wo_version': clientCredentialsWoVersion!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientIdWo != null) 'client_id_wo': clientIdWo!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretSource != null)
      'client_secret_source': clientSecretSource!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
    if (tenantId != null) 'tenant_id': tenantId!.toTfJson(),
    if (tenantIdWo != null) 'tenant_id_wo': tenantIdWo!.toTfJson(),
    if (tenantIdWoVersion != null)
      'tenant_id_wo_version': tenantIdWoVersion!.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.microsoft_oauth2_provider_config.client_secret_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfigClientSecretConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigMicrosoftOauth2ProviderConfigClientSecretConfig({
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

/// Typed helper for the `oauth2_provider_config.salesforce_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfig({
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

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigClientSecretConfig
  >?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    if (clientCredentialsWoVersion != null)
      'client_credentials_wo_version': clientCredentialsWoVersion!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientIdWo != null) 'client_id_wo': clientIdWo!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretSource != null)
      'client_secret_source': clientSecretSource!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.salesforce_oauth2_provider_config.client_secret_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigClientSecretConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSalesforceOauth2ProviderConfigClientSecretConfig({
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

/// Typed helper for the `oauth2_provider_config.slack_oauth2_provider_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfig({
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

  final List<
    BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigClientSecretConfig
  >?
  clientSecretConfig;

  Map<String, Object?> encode() => {
    if (clientCredentialsWoVersion != null)
      'client_credentials_wo_version': clientCredentialsWoVersion!.toTfJson(),
    if (clientId != null) 'client_id': clientId!.toTfJson(),
    if (clientIdWo != null) 'client_id_wo': clientIdWo!.toTfJson(),
    if (clientSecret != null) 'client_secret': clientSecret!.toTfJson(),
    if (clientSecretSource != null)
      'client_secret_source': clientSecretSource!.toTfJson(),
    if (clientSecretWo != null) 'client_secret_wo': clientSecretWo!.toTfJson(),
    if (clientSecretConfig != null)
      'client_secret_config': [for (final e in clientSecretConfig!) e.encode()],
  };
}

/// Typed helper for the `oauth2_provider_config.slack_oauth2_provider_config.client_secret_config` block of
/// `aws_bedrockagentcore_oauth2_credential_provider` (derived from provider schema).
@immutable
final class BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigClientSecretConfig {
  const BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigSlackOauth2ProviderConfigClientSecretConfig({
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

/// Factory wrapper for `aws_bedrockagentcore_oauth2_credential_provider`.
final class AwsBedrockagentcoreOauth2CredentialProvider extends Resource {
  static const String tfType =
      'aws_bedrockagentcore_oauth2_credential_provider';

  AwsBedrockagentcoreOauth2CredentialProvider({
    required super.localName,
    required TfArg<String> credentialProviderVendor,
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
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (oauth2ProviderConfig != null)
             'oauth2_provider_config': TfArg.literal([
               for (final e in oauth2ProviderConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsBedrockagentcoreOauth2CredentialProviderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
