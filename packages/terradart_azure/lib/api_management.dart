// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager api management resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/api_management/azurerm_api_management.dart'
    show
        ApiManagement,
        ApiManagementAdditionalLocation,
        ApiManagementCertificate,
        ApiManagementDelegation,
        ApiManagementDeveloperPortal,
        ApiManagementHostnameConfiguration,
        ApiManagementIdentity,
        ApiManagementPortal,
        ApiManagementProtocols,
        ApiManagementProxy,
        ApiManagementScm,
        ApiManagementSecurity,
        ApiManagementSignIn,
        ApiManagementSignUp,
        ApiManagementStoreName,
        ApiManagementTenantAccess,
        ApiManagementTermsOfService,
        ApiManagementVirtualNetworkConfiguration,
        ApiManagementVirtualNetworkType,
        AzurermApiManagement;
export 'src/api_management/azurerm_api_management_api.dart'
    show
        ApiManagementApiAuth,
        ApiManagementApiAuthOauth2Authorization,
        ApiManagementApiAuthOpenidAuthentication,
        ApiManagementApiBearerTokenSendingMethods,
        ApiManagementApiContact,
        ApiManagementApiContentFormat,
        ApiManagementApiImport,
        ApiManagementApiLicense,
        ApiManagementApiOauth2Authorization,
        ApiManagementApiOpenidAuthentication,
        ApiManagementApiProtocols,
        ApiManagementApiSubscriptionKeyParameterNames,
        ApiManagementApiType,
        ApiManagementApiWsdlSelector,
        AzurermApiManagementApi;
export 'src/api_management/azurerm_api_management_api_diagnostic.dart'
    show
        ApiManagementApiDiagnosticBackendRequest,
        ApiManagementApiDiagnosticBackendResponse,
        ApiManagementApiDiagnosticDataMasking,
        ApiManagementApiDiagnosticFrontendRequest,
        ApiManagementApiDiagnosticFrontendResponse,
        ApiManagementApiDiagnosticHeaders,
        ApiManagementApiDiagnosticHttpCorrelationProtocol,
        ApiManagementApiDiagnosticIdentifier,
        ApiManagementApiDiagnosticMode,
        ApiManagementApiDiagnosticOperationNameFormat,
        ApiManagementApiDiagnosticQueryParams,
        ApiManagementApiDiagnosticVerbosity,
        AzurermApiManagementApiDiagnostic;
export 'src/api_management/azurerm_api_management_api_operation.dart'
    show
        ApiManagementApiOperationExample,
        ApiManagementApiOperationFormParameter,
        ApiManagementApiOperationHeader,
        ApiManagementApiOperationQueryParameter,
        ApiManagementApiOperationRepresentation,
        ApiManagementApiOperationRequest,
        ApiManagementApiOperationResponse,
        ApiManagementApiOperationTemplateParameter,
        AzurermApiManagementApiOperation;
export 'src/api_management/azurerm_api_management_api_operation_policy.dart'
    show
        ApiManagementApiOperationPolicyXml,
        ApiManagementApiOperationPolicyXmlContent,
        ApiManagementApiOperationPolicyXmlLink,
        AzurermApiManagementApiOperationPolicy;
export 'src/api_management/azurerm_api_management_api_operation_tag.dart'
    show AzurermApiManagementApiOperationTag;
export 'src/api_management/azurerm_api_management_api_policy.dart'
    show
        ApiManagementApiPolicyXml,
        ApiManagementApiPolicyXmlContent,
        ApiManagementApiPolicyXmlLink,
        AzurermApiManagementApiPolicy;
export 'src/api_management/azurerm_api_management_api_release.dart'
    show AzurermApiManagementApiRelease;
export 'src/api_management/azurerm_api_management_api_schema.dart'
    show
        ApiManagementApiSchemaDocument,
        ApiManagementApiSchemaDocumentComponents,
        ApiManagementApiSchemaDocumentDefinitions,
        ApiManagementApiSchemaDocumentValue,
        AzurermApiManagementApiSchema;
export 'src/api_management/azurerm_api_management_api_tag.dart'
    show AzurermApiManagementApiTag;
export 'src/api_management/azurerm_api_management_api_tag_description.dart'
    show AzurermApiManagementApiTagDescription;
export 'src/api_management/azurerm_api_management_api_version_set.dart'
    show
        ApiManagementApiVersionSetVersion,
        ApiManagementApiVersionSetVersionHeaderName,
        ApiManagementApiVersionSetVersionQueryName,
        ApiManagementApiVersionSetVersioningScheme,
        AzurermApiManagementApiVersionSet;
export 'src/api_management/azurerm_api_management_authorization_server.dart'
    show
        ApiManagementAuthorizationServerAuthorizationMethods,
        ApiManagementAuthorizationServerBearerTokenSendingMethods,
        ApiManagementAuthorizationServerClientAuthenticationMethod,
        ApiManagementAuthorizationServerGrantTypes,
        ApiManagementAuthorizationServerTokenBodyParameter,
        AzurermApiManagementAuthorizationServer;
export 'src/api_management/azurerm_api_management_backend.dart'
    show
        ApiManagementBackendAuthorization,
        ApiManagementBackendCircuitBreakerRule,
        ApiManagementBackendCredentials,
        ApiManagementBackendFailureCondition,
        ApiManagementBackendProtocol,
        ApiManagementBackendProxy,
        ApiManagementBackendServer,
        ApiManagementBackendServerCertificateThumbprints,
        ApiManagementBackendServerX509Name,
        ApiManagementBackendServerX509NameChoice,
        ApiManagementBackendServiceFabricCluster,
        ApiManagementBackendStatusCodeRange,
        ApiManagementBackendThreshold,
        ApiManagementBackendThresholdCount,
        ApiManagementBackendThresholdPercentage,
        ApiManagementBackendTls,
        AzurermApiManagementBackend;
export 'src/api_management/azurerm_api_management_certificate.dart'
    show
        ApiManagementCertificateSource,
        ApiManagementCertificateSourceData,
        ApiManagementCertificateSourceKeyVaultSecretId,
        AzurermApiManagementCertificate;
export 'src/api_management/azurerm_api_management_custom_domain.dart'
    show
        ApiManagementCustomDomainDeveloperPortal,
        ApiManagementCustomDomainGateway,
        ApiManagementCustomDomainManagement,
        ApiManagementCustomDomainPortal,
        ApiManagementCustomDomainScm,
        AzurermApiManagementCustomDomain;
export 'src/api_management/azurerm_api_management_diagnostic.dart'
    show
        ApiManagementDiagnosticBackendRequest,
        ApiManagementDiagnosticBackendResponse,
        ApiManagementDiagnosticDataMasking,
        ApiManagementDiagnosticFrontendRequest,
        ApiManagementDiagnosticFrontendResponse,
        ApiManagementDiagnosticHeaders,
        ApiManagementDiagnosticHttpCorrelationProtocol,
        ApiManagementDiagnosticIdentifier,
        ApiManagementDiagnosticMode,
        ApiManagementDiagnosticOperationNameFormat,
        ApiManagementDiagnosticQueryParams,
        ApiManagementDiagnosticVerbosity,
        AzurermApiManagementDiagnostic;
export 'src/api_management/azurerm_api_management_email_template.dart'
    show ApiManagementEmailTemplateName, AzurermApiManagementEmailTemplate;
export 'src/api_management/azurerm_api_management_gateway.dart'
    show ApiManagementGatewayLocationData, AzurermApiManagementGateway;
export 'src/api_management/azurerm_api_management_gateway_api.dart'
    show AzurermApiManagementGatewayApi;
export 'src/api_management/azurerm_api_management_gateway_certificate_authority.dart'
    show AzurermApiManagementGatewayCertificateAuthority;
export 'src/api_management/azurerm_api_management_gateway_host_name_configuration.dart'
    show AzurermApiManagementGatewayHostNameConfiguration;
export 'src/api_management/azurerm_api_management_global_schema.dart'
    show ApiManagementGlobalSchemaType, AzurermApiManagementGlobalSchema;
export 'src/api_management/azurerm_api_management_group.dart'
    show ApiManagementGroupType, AzurermApiManagementGroup;
export 'src/api_management/azurerm_api_management_group_user.dart'
    show AzurermApiManagementGroupUser;
export 'src/api_management/azurerm_api_management_identity_provider_aad.dart'
    show AzurermApiManagementIdentityProviderAad;
export 'src/api_management/azurerm_api_management_identity_provider_aadb2c.dart'
    show AzurermApiManagementIdentityProviderAadb2c;
export 'src/api_management/azurerm_api_management_identity_provider_facebook.dart'
    show AzurermApiManagementIdentityProviderFacebook;
export 'src/api_management/azurerm_api_management_identity_provider_google.dart'
    show AzurermApiManagementIdentityProviderGoogle;
export 'src/api_management/azurerm_api_management_identity_provider_microsoft.dart'
    show AzurermApiManagementIdentityProviderMicrosoft;
export 'src/api_management/azurerm_api_management_identity_provider_twitter.dart'
    show AzurermApiManagementIdentityProviderTwitter;
export 'src/api_management/azurerm_api_management_logger.dart'
    show
        ApiManagementLoggerApplicationInsights,
        ApiManagementLoggerConnection,
        ApiManagementLoggerConnectionEndpointUri,
        ApiManagementLoggerConnectionString,
        ApiManagementLoggerCredentials,
        ApiManagementLoggerCredentialsConnectionString,
        ApiManagementLoggerCredentialsInstrumentationKey,
        ApiManagementLoggerEventhub,
        ApiManagementLoggerTarget,
        ApiManagementLoggerTargetApplicationInsights,
        ApiManagementLoggerTargetEventhub,
        AzurermApiManagementLogger;
export 'src/api_management/azurerm_api_management_named_value.dart'
    show
        ApiManagementNamedValueFromKeyVault,
        ApiManagementNamedValueSource,
        ApiManagementNamedValueSourceValue,
        ApiManagementNamedValueSourceValueFromKeyVault,
        AzurermApiManagementNamedValue;
export 'src/api_management/azurerm_api_management_notification_recipient_email.dart'
    show
        ApiManagementNotificationRecipientEmailNotificationType,
        AzurermApiManagementNotificationRecipientEmail;
export 'src/api_management/azurerm_api_management_notification_recipient_user.dart'
    show
        ApiManagementNotificationRecipientUserNotificationType,
        AzurermApiManagementNotificationRecipientUser;
export 'src/api_management/azurerm_api_management_openid_connect_provider.dart'
    show AzurermApiManagementOpenidConnectProvider;
export 'src/api_management/azurerm_api_management_policy.dart'
    show
        ApiManagementPolicyXml,
        ApiManagementPolicyXmlContent,
        ApiManagementPolicyXmlLink,
        AzurermApiManagementPolicy;
export 'src/api_management/azurerm_api_management_policy_fragment.dart'
    show ApiManagementPolicyFragmentFormat, AzurermApiManagementPolicyFragment;
export 'src/api_management/azurerm_api_management_product.dart'
    show AzurermApiManagementProduct;
export 'src/api_management/azurerm_api_management_product_api.dart'
    show AzurermApiManagementProductApi;
export 'src/api_management/azurerm_api_management_product_group.dart'
    show AzurermApiManagementProductGroup;
export 'src/api_management/azurerm_api_management_product_policy.dart'
    show
        ApiManagementProductPolicyXml,
        ApiManagementProductPolicyXmlContent,
        ApiManagementProductPolicyXmlLink,
        AzurermApiManagementProductPolicy;
export 'src/api_management/azurerm_api_management_product_tag.dart'
    show AzurermApiManagementProductTag;
export 'src/api_management/azurerm_api_management_redis_cache.dart'
    show AzurermApiManagementRedisCache;
export 'src/api_management/azurerm_api_management_standalone_gateway.dart'
    show
        ApiManagementStandaloneGatewaySku,
        ApiManagementStandaloneGatewaySkuName,
        ApiManagementStandaloneGatewayVirtualNetworkType,
        AzurermApiManagementStandaloneGateway;
export 'src/api_management/azurerm_api_management_subscription.dart'
    show
        ApiManagementSubscriptionScope,
        ApiManagementSubscriptionScopeApiId,
        ApiManagementSubscriptionScopeProductId,
        ApiManagementSubscriptionState,
        AzurermApiManagementSubscription;
export 'src/api_management/azurerm_api_management_tag.dart'
    show AzurermApiManagementTag;
export 'src/api_management/azurerm_api_management_user.dart'
    show
        ApiManagementUserConfirmation,
        ApiManagementUserState,
        AzurermApiManagementUser;
export 'src/api_management/azurerm_api_management_workspace.dart'
    show AzurermApiManagementWorkspace;
export 'src/api_management/azurerm_api_management_workspace_api_version_set.dart'
    show
        ApiManagementWorkspaceApiVersionSetVersion,
        ApiManagementWorkspaceApiVersionSetVersionHeaderName,
        ApiManagementWorkspaceApiVersionSetVersionQueryName,
        ApiManagementWorkspaceApiVersionSetVersioningScheme,
        AzurermApiManagementWorkspaceApiVersionSet;
export 'src/api_management/azurerm_api_management_workspace_certificate.dart'
    show
        ApiManagementWorkspaceCertificateSource,
        ApiManagementWorkspaceCertificateSourceCertificateDataBase64,
        ApiManagementWorkspaceCertificateSourceKeyVaultSecretId,
        AzurermApiManagementWorkspaceCertificate;
export 'src/api_management/azurerm_api_management_workspace_named_value.dart'
    show
        ApiManagementWorkspaceNamedValueFromKeyVault,
        ApiManagementWorkspaceNamedValueSource,
        ApiManagementWorkspaceNamedValueSourceValue,
        ApiManagementWorkspaceNamedValueSourceValueFromKeyVault,
        AzurermApiManagementWorkspaceNamedValue;
export 'src/api_management/azurerm_api_management_workspace_policy.dart'
    show
        ApiManagementWorkspacePolicyXml,
        ApiManagementWorkspacePolicyXmlContent,
        ApiManagementWorkspacePolicyXmlLink,
        AzurermApiManagementWorkspacePolicy;
export 'src/api_management/azurerm_api_management_workspace_policy_fragment.dart'
    show
        ApiManagementWorkspacePolicyFragmentXmlFormat,
        AzurermApiManagementWorkspacePolicyFragment;
export 'src/data/azurerm_api_management.dart' show DataAzurermApiManagement;
export 'src/data/azurerm_api_management_api.dart'
    show DataAzurermApiManagementApi;
export 'src/data/azurerm_api_management_api_version_set.dart'
    show DataAzurermApiManagementApiVersionSet;
export 'src/data/azurerm_api_management_gateway.dart'
    show DataAzurermApiManagementGateway;
export 'src/data/azurerm_api_management_gateway_host_name_configuration.dart'
    show DataAzurermApiManagementGatewayHostNameConfiguration;
export 'src/data/azurerm_api_management_group.dart'
    show DataAzurermApiManagementGroup;
export 'src/data/azurerm_api_management_product.dart'
    show DataAzurermApiManagementProduct;
export 'src/data/azurerm_api_management_subscription.dart'
    show DataAzurermApiManagementSubscription;
export 'src/data/azurerm_api_management_user.dart'
    show DataAzurermApiManagementUser;
export 'src/data/azurerm_api_management_workspace.dart'
    show DataAzurermApiManagementWorkspace;
