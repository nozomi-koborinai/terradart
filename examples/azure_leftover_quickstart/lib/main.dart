// GENERATED — dart tool/coverage_stack.dart --lane azure
// ignore_for_file: unused_element

/// Coverage stack for leftover Azure factories at the current pin.
/// Dummy constructor values; synth + terraform validate only.
/// Never apply.
library;

import 'package:terradart_azure/terradart_azure.dart';

final class AzureLeftoverStack extends Stack {
  AzureLeftoverStack() : super(providers: [const AzureProvider()]) {
    const leftover = 'leftover';
    const location = 'eastus';
    const resourceGroupName = 'leftover';

    final leftoverSecret = variable<String>('leftover_secret', sensitive: true);

    final leftoverSecretMap = variable<Map<String, String>>(
      'leftover_secret_map',
      sensitive: true,
    );

    add(
      AzurermAadb2cDirectory(
        'aadb2c_directory',
        dataResidencyLocation: .asiaPacific,
        domainName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .literal('PremiumP1'),
      ),
    );

    add(
      AzurermAdvancedThreatProtection(
        'advanced_threat_protection',
        enabled: .literal(true),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermAdvisorSuppression(
        'advisor_suppression',
        name: .literal(leftover),
        recommendationId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        resourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermAiFoundry(
        'ai_foundry',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        identity: AiFoundryIdentity(type: .literal('UserAssigned')),
      ),
    );

    add(
      AzurermAiFoundryProject(
        'ai_foundry_project',
        aiServicesHubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.MachineLearningServices/workspaces/workspaceName',
        ),
        location: .literal(location),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermAnalysisServicesServer(
        'analysis_services_server',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .d1,
      ),
    );

    add(
      AzurermApiConnection(
        'api_connection',
        managedApiId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/providers/Microsoft.Web/locations/locationName/managedApis/managedApiName',
        ),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementApi(
        'api_management_api',
        apiManagementName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        revision: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementApiDiagnostic(
        'api_management_api_diagnostic',
        apiManagementLoggerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/loggers/loggerId',
        ),
        apiManagementName: .literal(leftover),
        apiName: .literal(leftover),
        identifier: .applicationinsights,
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementApiOperation(
        'api_management_api_operation',
        apiManagementName: .literal(leftover),
        apiName: .literal(leftover),
        displayName: .literal(leftover),
        method: .literal(leftover),
        operationId: .literal('leftover'),
        resourceGroupName: .literal(resourceGroupName),
        urlTemplate: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementApiOperationPolicy(
        'api_management_api_operation_policy',
        apiManagementName: .literal(leftover),
        apiName: .literal(leftover),
        operationId: .literal('leftover'),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementApiOperationTag(
        'api_management_api_operation_tag',
        apiOperationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/apis/apiId/operations/operationId',
        ),
        displayName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementApiPolicy(
        'api_management_api_policy',
        apiManagementName: .literal(leftover),
        apiName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementApiRelease(
        'api_management_api_release',
        apiId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/apis/apiId',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementApiSchema(
        'api_management_api_schema',
        apiManagementName: .literal(leftover),
        apiName: .literal(leftover),
        document: .components(.literal(leftover)),
        contentType: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        schemaId: .literal('leftover'),
      ),
    );

    add(
      AzurermApiManagementApiTag(
        'api_management_api_tag',
        apiId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/apis/apiId',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementApiTagDescription(
        'api_management_api_tag_description',
        apiTagId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/apis/apiId/tags/tagId',
        ),
      ),
    );

    add(
      AzurermApiManagementApiVersionSet(
        'api_management_api_version_set',
        apiManagementName: .literal(leftover),
        displayName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        versioningScheme: .header,
      ),
    );

    add(
      AzurermApiManagementAuthorizationServer(
        'api_management_authorization_server',
        apiManagementName: .literal(leftover),
        authorizationEndpoint: .literal(leftover),
        authorizationMethods: [.delete],
        clientId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        clientRegistrationEndpoint: .literal(leftover),
        displayName: .literal(leftover),
        grantTypes: [.authorizationcode],
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementBackend(
        'api_management_backend',
        apiManagementName: .literal(leftover),
        name: .literal(leftover),
        protocol: .http,
        resourceGroupName: .literal(resourceGroupName),
        url: .literal('https://example.com'),
      ),
    );

    add(
      AzurermApiManagementCertificate(
        'api_management_certificate',
        apiManagementName: .literal(leftover),
        source: .data(leftoverSecret),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementDiagnostic(
        'api_management_diagnostic',
        apiManagementLoggerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/loggers/loggerId',
        ),
        apiManagementName: .literal(leftover),
        identifier: .applicationinsights,
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementEmailTemplate(
        'api_management_email_template',
        apiManagementName: .literal(leftover),
        body: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        subject: .literal(leftover),
        templateName: .literal('AccountClosedDeveloper'),
      ),
    );

    add(
      AzurermApiManagementGateway(
        'api_management_gateway',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        name: .literal(leftover),
        locationData: ApiManagementGatewayLocationData(
          name: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermApiManagementGatewayApi(
        'api_management_gateway_api',
        apiId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/apis/apiId',
        ),
        gatewayId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermApiManagementGatewayCertificateAuthority(
        'api_management_gateway_certificate_authority',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        certificateName: .literal(leftover),
        gatewayName: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementGatewayHostNameConfiguration(
        'api_management_gateway_host_name_configuration',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        certificateId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/certificates/certificateId',
        ),
        gatewayName: .literal(leftover),
        hostName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementGlobalSchema(
        'api_management_global_schema',
        apiManagementName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        schemaId: .literal('leftover'),
        type: .json,
        value: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementGroup(
        'api_management_group',
        apiManagementName: .literal(leftover),
        displayName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementGroupUser(
        'api_management_group_user',
        apiManagementName: .literal(leftover),
        groupName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        userId: .literal('leftover'),
      ),
    );

    add(
      AzurermApiManagementIdentityProviderAad(
        'api_management_identity_provider_aad',
        allowedTenants: .literal(['11111111-1111-1111-1111-111111111111']),
        apiManagementName: .literal(leftover),
        clientId: .literal('11111111-1111-1111-1111-111111111111'),
        clientSecret: leftoverSecret,
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementIdentityProviderAadb2c(
        'api_management_identity_provider_aadb2c',
        allowedTenant: .literal(leftover),
        apiManagementName: .literal(leftover),
        authority: .literal(leftover),
        clientId: .literal('11111111-1111-1111-1111-111111111111'),
        clientSecret: leftoverSecret,
        resourceGroupName: .literal(resourceGroupName),
        signinPolicy: .literal(leftover),
        signinTenant: .literal(leftover),
        signupPolicy: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementIdentityProviderFacebook(
        'api_management_identity_provider_facebook',
        apiManagementName: .literal(leftover),
        appId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        appSecret: leftoverSecret,
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementIdentityProviderMicrosoft(
        'api_management_identity_provider_microsoft',
        apiManagementName: .literal(leftover),
        clientId: .literal('11111111-1111-1111-1111-111111111111'),
        clientSecret: leftoverSecret,
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementIdentityProviderTwitter(
        'api_management_identity_provider_twitter',
        apiKey: leftoverSecret,
        apiManagementName: .literal(leftover),
        apiSecretKey: leftoverSecret,
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementLogger(
        'api_management_logger',
        apiManagementName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementNamedValue(
        'api_management_named_value',
        apiManagementName: .literal(leftover),
        displayName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        source: .value(leftoverSecret),
      ),
    );

    add(
      AzurermApiManagementNotificationRecipientEmail(
        'api_management_notification_recipient_email',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        email: .literal('leftover@example.com'),
        notificationType: .accountclosedpublisher,
      ),
    );

    add(
      AzurermApiManagementNotificationRecipientUser(
        'api_management_notification_recipient_user',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        notificationType: .accountclosedpublisher,
        userId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermApiManagementOpenidConnectProvider(
        'api_management_openid_connect_provider',
        apiManagementName: .literal(leftover),
        clientId: leftoverSecret,
        clientSecret: leftoverSecret,
        displayName: .literal(leftover),
        metadataEndpoint: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementPolicy(
        'api_management_policy',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        xml: .xmlContent(.literal(leftover)),
      ),
    );

    add(
      AzurermApiManagementPolicyFragment(
        'api_management_policy_fragment',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        name: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementProduct(
        'api_management_product',
        apiManagementName: .literal(leftover),
        displayName: .literal(leftover),
        productId: .literal('leftover'),
        published: .literal(true),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementProductApi(
        'api_management_product_api',
        apiManagementName: .literal(leftover),
        apiName: .literal(leftover),
        productId: .literal('leftover'),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementProductGroup(
        'api_management_product_group',
        apiManagementName: .literal(leftover),
        groupName: .literal(leftover),
        productId: .literal('leftover'),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementProductPolicy(
        'api_management_product_policy',
        apiManagementName: .literal(leftover),
        productId: .literal('leftover'),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementProductTag(
        'api_management_product_tag',
        apiManagementName: .literal(leftover),
        apiManagementProductId: .literal('leftover'),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementRedisCache(
        'api_management_redis_cache',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        connectionString: leftoverSecret,
        name: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementStandaloneGateway(
        'api_management_standalone_gateway',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: ApiManagementStandaloneGatewaySku(
          name: .literal('WorkspaceGatewayPremium'),
        ),
      ),
    );

    add(
      AzurermApiManagementSubscription(
        'api_management_subscription',
        apiManagementName: .literal(leftover),
        displayName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApiManagementTag(
        'api_management_tag',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementWorkspace(
        'api_management_workspace',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        displayName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementWorkspaceApiVersionSet(
        'api_management_workspace_api_version_set',
        apiManagementWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/workspaces/workspaceId',
        ),
        displayName: .literal(leftover),
        name: .literal(leftover),
        versioningScheme: .header,
      ),
    );

    add(
      AzurermApiManagementWorkspaceCertificate(
        'api_management_workspace_certificate',
        apiManagementWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/workspaces/workspaceId',
        ),
        source: .certificateDataBase64(leftoverSecret),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermApiManagementWorkspaceNamedValue(
        'api_management_workspace_named_value',
        apiManagementWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/workspaces/workspaceId',
        ),
        displayName: .literal(leftover),
        name: .literal(leftover),
        source: .value(leftoverSecret),
      ),
    );

    add(
      AzurermApiManagementWorkspacePolicy(
        'api_management_workspace_policy',
        apiManagementWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/workspaces/workspaceId',
        ),
        xml: .xmlContent(.literal(leftover)),
      ),
    );

    add(
      AzurermApiManagementWorkspacePolicyFragment(
        'api_management_workspace_policy_fragment',
        apiManagementWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName/workspaces/workspaceId',
        ),
        name: .literal(leftover),
        xmlContent: .literal(leftover),
      ),
    );

    add(
      AzurermAppConfiguration(
        'app_configuration',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAppConfigurationFeature(
        'app_configuration_feature',
        configurationStoreId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppConfiguration/configurationStores/configurationStoreName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermAppConfigurationKey(
        'app_configuration_key',
        configurationStoreId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppConfiguration/configurationStores/configurationStoreName',
        ),
        key: .literal(leftover),
      ),
    );

    add(
      AzurermAppServiceCertificateBinding(
        'app_service_certificate_binding',
        certificateId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/certificates/certificateName',
        ),
        hostnameBindingId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteName/hostNameBindings/hostNameBindingName',
        ),
        sslState: .literal('IpBasedEnabled'),
      ),
    );

    add(
      AzurermAppServiceCertificateOrder(
        'app_service_certificate_order',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAppServiceConnection(
        'app_service_connection',
        appServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
        name: .literal(leftover),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        authentication: AppServiceConnectionAuthentication(
          type: .literal('secret'),
        ),
      ),
    );

    add(
      AzurermAppServiceCustomHostnameBinding(
        'app_service_custom_hostname_binding',
        appServiceName: .literal(leftover),
        hostname: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAppServiceEnvironmentV3(
        'app_service_environment_v3',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermAppServiceManagedCertificate(
        'app_service_managed_certificate',
        customHostnameBindingId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteName/hostNameBindings/hostNameBindingName',
        ),
      ),
    );

    add(
      AzurermAppServicePublicCertificate(
        'app_service_public_certificate',
        appServiceName: .literal(leftover),
        blob: .literal(leftover),
        certificateLocation: .currentusermy,
        certificateName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAppServiceSlotCustomHostnameBinding(
        'app_service_slot_custom_hostname_binding',
        appServiceSlotId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteName/slots/slotName',
        ),
        hostname: .literal(leftover),
      ),
    );

    add(
      AzurermAppServiceSlotVirtualNetworkSwiftConnection(
        'app_service_slot_virtual_network_swift_connectio',
        appServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
        slotName: .literal(leftover),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermAppServiceSourceControl(
        'app_service_source_control',
        appId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
      ),
    );

    add(
      AzurermAppServiceSourceControlSlot(
        'app_service_source_control_slot',
        slotId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteName/slots/slotName',
        ),
      ),
    );

    add(
      AzurermAppServiceVirtualNetworkSwiftConnection(
        'app_service_virtual_network_swift_connection',
        appServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermApplicationInsights(
        'application_insights',
        applicationType: .web,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApplicationInsightsAnalyticsItem(
        'application_insights_analytics_item',
        applicationInsightsId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Insights/components/componentName',
        ),
        content: .literal(leftover),
        name: .literal(leftover),
        scope: .shared,
        type: .literal('query'),
      ),
    );

    add(
      AzurermApplicationInsightsApiKey(
        'application_insights_api_key',
        applicationInsightsId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Insights/components/componentName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermApplicationInsightsSmartDetectionRule(
        'application_insights_smart_detection_rule',
        applicationInsightsId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Insights/components/componentName',
        ),
        name: .slowPageLoadTime,
      ),
    );

    add(
      AzurermApplicationInsightsStandardWebTest(
        'application_insights_standard_web_test',
        applicationInsightsId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Insights/components/componentName',
        ),
        geoLocations: .literal([leftover]),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        request: ApplicationInsightsStandardWebTestRequest(
          url: .literal('https://example.com'),
        ),
      ),
    );

    add(
      AzurermApplicationInsightsWebTest(
        'application_insights_web_test',
        applicationInsightsId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Insights/components/componentName',
        ),
        configuration: .literal(leftover),
        geoLocations: .literal([leftover]),
        kind: .literal('multistep'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApplicationLoadBalancer(
        'application_load_balancer',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermApplicationLoadBalancerFrontend(
        'application_load_balancer_frontend',
        applicationLoadBalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceNetworking/trafficControllers/trafficControllerName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermApplicationLoadBalancerSecurityPolicy(
        'application_load_balancer_security_policy',
        applicationLoadBalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceNetworking/trafficControllers/trafficControllerName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        webApplicationFirewallPolicyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/applicationGatewayWebApplicationFirewallPolicyName',
        ),
      ),
    );

    add(
      AzurermApplicationLoadBalancerSubnetAssociation(
        'application_load_balancer_subnet_association',
        applicationLoadBalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceNetworking/trafficControllers/trafficControllerName',
        ),
        name: .literal(leftover),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermApplicationSecurityGroup(
        'application_security_group',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermArcKubernetesCluster(
        'arc_kubernetes_cluster',
        agentPublicKeyCertificate: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        identity: ArcKubernetesClusterIdentity(
          type: .literal('SystemAssigned'),
        ),
      ),
    );

    add(
      AzurermArcKubernetesClusterExtension(
        'arc_kubernetes_cluster_extension',
        clusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Kubernetes/connectedClusters/connectedClusterName',
        ),
        extensionType: .literal(leftover),
        name: .literal(leftover),
        identity: ArcKubernetesClusterExtensionIdentity(
          type: .literal('SystemAssigned'),
        ),
      ),
    );

    add(
      AzurermArcKubernetesFluxConfiguration(
        'arc_kubernetes_flux_configuration',
        clusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Kubernetes/connectedClusters/connectedClusterName',
        ),
        name: .literal(leftover),
        namespace: .literal(leftover),
        source: .blobStorage(
          .new(
            credentials: .accountKey(leftoverSecret),
            containerId: .literal(
              '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
            ),
          ),
        ),
        kustomizations: [
          ArcKubernetesFluxConfigurationKustomizations(
            name: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermArcKubernetesProvisionedCluster(
        'arc_kubernetes_provisioned_cluster',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        identity: ArcKubernetesProvisionedClusterIdentity(
          type: .literal('SystemAssigned'),
        ),
      ),
    );

    add(
      AzurermArcMachine(
        'arc_machine',
        kind: .avs,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermArcMachineAutomanageConfigurationAssignment(
        'arc_machine_automanage_configuration_assignment',
        arcMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HybridCompute/machines/machineName',
        ),
        configurationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AutoManage/configurationProfiles/configurationProfileName',
        ),
      ),
    );

    add(
      AzurermArcMachineExtension(
        'arc_machine_extension',
        arcMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HybridCompute/machines/machineName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        publisher: .literal(leftover),
        type: .literal(leftover),
      ),
    );

    add(
      AzurermArcPrivateLinkScope(
        'arc_private_link_scope',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermArcResourceBridgeAppliance(
        'arc_resource_bridge_appliance',
        distro: .literal('AKSEdge'),
        infrastructureProvider: .hci,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        identity: ArcResourceBridgeApplianceIdentity(
          type: .literal('SystemAssigned'),
        ),
      ),
    );

    add(
      AzurermAttestationProvider(
        'attestation_provider',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomanageConfiguration(
        'automanage_configuration',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationAccount(
        'automation_account',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .basic,
      ),
    );

    add(
      AzurermAutomationCertificate(
        'automation_certificate',
        automationAccountName: .literal(leftover),
        base64: leftoverSecret,
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationConnection(
        'automation_connection',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        type: .literal(leftover),
        values: .literal({'k': leftover}),
      ),
    );

    add(
      AzurermAutomationConnectionCertificate(
        'automation_connection_certificate',
        automationAccountName: .literal(leftover),
        automationCertificateName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        subscriptionId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermAutomationConnectionClassicCertificate(
        'automation_connection_classic_certificate',
        automationAccountName: .literal(leftover),
        certificateAssetName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        subscriptionId: .literal('11111111-1111-1111-1111-111111111111'),
        subscriptionName: .literal(leftover),
      ),
    );

    add(
      AzurermAutomationConnectionServicePrincipal(
        'automation_connection_service_principal',
        applicationId: .literal('11111111-1111-1111-1111-111111111111'),
        automationAccountName: .literal(leftover),
        certificateThumbprint: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        subscriptionId: .literal('11111111-1111-1111-1111-111111111111'),
        tenantId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermAutomationConnectionType(
        'automation_connection_type',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        field: [
          AutomationConnectionTypeField(
            name: .literal(leftover),
            type: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermAutomationCredential(
        'automation_credential',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        password: leftoverSecret,
        resourceGroupName: .literal(resourceGroupName),
        username: .literal(leftover),
      ),
    );

    add(
      AzurermAutomationDscConfiguration(
        'automation_dsc_configuration',
        automationAccountName: .literal(leftover),
        contentEmbedded: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationDscNodeconfiguration(
        'automation_dsc_nodeconfiguration',
        automationAccountName: .literal(leftover),
        contentEmbedded: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationHybridRunbookWorker(
        'automation_hybrid_runbook_worker',
        automationAccountName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        vmResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        workerGroupName: .literal(leftover),
        workerId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermAutomationHybridRunbookWorkerGroup(
        'automation_hybrid_runbook_worker_group',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationJobSchedule(
        'automation_job_schedule',
        automationAccountName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        runbookName: .literal(leftover),
        scheduleName: .literal(leftover),
      ),
    );

    add(
      AzurermAutomationModule(
        'automation_module',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        moduleLink: AutomationModuleLink(uri: .literal('https://example.com')),
      ),
    );

    add(
      AzurermAutomationPowershell72Module(
        'automation_powershell72_module',
        automationAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Automation/automationAccounts/automationAccountName',
        ),
        name: .literal(leftover),
        moduleLink: AutomationPowershell72ModuleLink(
          uri: .literal('https://example.com'),
        ),
      ),
    );

    add(
      AzurermAutomationPython3Package(
        'automation_python3_package',
        automationAccountName: .literal(leftover),
        contentUri: .literal('https://example.com'),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationRuntimeEnvironment(
        'automation_runtime_environment',
        automationAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Automation/automationAccounts/automationAccountName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        runtimeLanguage: .python,
        runtimeVersion: .literal(leftover),
      ),
    );

    add(
      AzurermAutomationRuntimeEnvironmentPackage(
        'automation_runtime_environment_package',
        automationRuntimeEnvironmentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Automation/automationAccounts/automationAccountName/runtimeEnvironments/runtimeEnvironmentName',
        ),
        contentUri: .literal('https://example.com'),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermAutomationSchedule(
        'automation_schedule',
        automationAccountName: .literal(leftover),
        frequency: .day,
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationSourceControl(
        'automation_source_control',
        automationAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Automation/automationAccounts/automationAccountName',
        ),
        folderPath: .literal(leftover),
        name: .literal(leftover),
        repositoryUrl: .literal('https://example.com'),
        sourceControlType: .github,
        security: AutomationSourceControlSecurity(
          token: .literal(leftover),
          tokenType: .oauth,
        ),
      ),
    );

    add(
      AzurermAutomationVariableBool(
        'automation_variable_bool',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationVariableDatetime(
        'automation_variable_datetime',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationVariableInt(
        'automation_variable_int',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationVariableObject(
        'automation_variable_object',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationVariableString(
        'automation_variable_string',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermAutomationWatcher(
        'automation_watcher',
        automationAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Automation/automationAccounts/automationAccountName',
        ),
        executionFrequencyInSeconds: .literal(200),
        location: .literal(location),
        name: .literal(leftover),
        scriptName: .literal(leftover),
        scriptRunOn: .literal(leftover),
      ),
    );

    add(
      AzurermAutomationWebhook(
        'automation_webhook',
        automationAccountName: .literal(leftover),
        expiryTime: .literal('2024-01-01T00:00:00Z'),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        runbookName: .literal(leftover),
      ),
    );

    add(
      AzurermAvailabilitySet(
        'availability_set',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermBackupContainerStorageAccount(
        'backup_container_storage_account',
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageAccountId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermBackupProtectedFileShare(
        'backup_protected_file_share',
        backupPolicyId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sourceFileShareName: .literal(leftover),
        sourceStorageAccountId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermBackupProtectedVm(
        'backup_protected_vm',
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermBastionHost(
        'bastion_host',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermBatchAccount(
        'batch_account',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermBatchApplication(
        'batch_application',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermBatchJob(
        'batch_job',
        batchPoolId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Batch/batchAccounts/batchAccountName/pools/poolName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermBatchPool(
        'batch_pool',
        accountName: .literal(leftover),
        name: .literal(leftover),
        nodeAgentSkuId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        resourceGroupName: .literal(resourceGroupName),
        vmSize: .literal(leftover),
        storageImageReference: BatchPoolStorageImageReference(
          id: .literal(
            '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
          ),
        ),
      ),
    );

    add(
      AzurermBillingAccountCostManagementExport(
        'billing_account_cost_management_export',
        billingAccountId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        name: .literal(leftover),
        recurrencePeriodEndDate: .literal('2024-01-01T00:00:00Z'),
        recurrencePeriodStartDate: .literal('2024-01-01T00:00:00Z'),
        recurrenceType: .literal('Annually'),
        exportDataOptions: BillingAccountCostManagementExportDataOptions(
          timeFrame: .literal('Custom'),
          type: .literal('ActualCost'),
        ),
        exportDataStorageLocation:
            BillingAccountCostManagementExportDataStorageLocation(
              containerId: .literal(
                '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue/blobServices/default/containers/containerValue',
              ),
              rootFolderPath: .literal(leftover),
            ),
      ),
    );

    add(
      AzurermBotChannelAlexa(
        'bot_channel_alexa',
        botName: .literal(leftover),
        location: .literal(location),
        resourceGroupName: .literal(resourceGroupName),
        skillId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermBotChannelDirectline(
        'bot_channel_directline',
        botName: .literal(leftover),
        location: .literal(location),
        resourceGroupName: .literal(resourceGroupName),
        site: [BotChannelDirectlineSite(name: .literal(leftover))],
      ),
    );

    add(
      AzurermBotChannelFacebook(
        'bot_channel_facebook',
        botName: .literal(leftover),
        facebookApplicationId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        facebookApplicationSecret: leftoverSecret,
        location: .literal(location),
        resourceGroupName: .literal(resourceGroupName),
        page: [
          BotChannelFacebookPage(
            accessToken: leftoverSecret,
            id: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermBotChannelLine(
        'bot_channel_line',
        botName: .literal(leftover),
        location: .literal(location),
        resourceGroupName: .literal(resourceGroupName),
        lineChannel: [
          BotChannelLineChannel(
            accessToken: leftoverSecret,
            secret: leftoverSecret,
          ),
        ],
      ),
    );

    add(
      AzurermBotChannelMsTeams(
        'bot_channel_ms_teams',
        botName: .literal(leftover),
        location: .literal(location),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermBotChannelSlack(
        'bot_channel_slack',
        botName: .literal(leftover),
        clientId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        clientSecret: leftoverSecret,
        location: .literal(location),
        resourceGroupName: .literal(resourceGroupName),
        verificationToken: leftoverSecret,
      ),
    );

    add(
      AzurermBotChannelSms(
        'bot_channel_sms',
        botName: .literal(leftover),
        location: .literal(location),
        phoneNumber: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        smsChannelAccountSecurityId: .literal('https://example.com'),
        smsChannelAuthToken: leftoverSecret,
      ),
    );

    add(
      AzurermBotChannelWebChat(
        'bot_channel_web_chat',
        botName: .literal(leftover),
        location: .literal(location),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermBotChannelsRegistration(
        'bot_channels_registration',
        location: .literal(location),
        microsoftAppId: .literal('11111111-1111-1111-1111-111111111111'),
        microsoftAppType: .literal('MultiTenant'),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .literal('F0'),
      ),
    );

    add(
      AzurermBotConnection(
        'bot_connection',
        botName: .literal(leftover),
        clientId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        clientSecret: leftoverSecret,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serviceProviderName: .literal(leftover),
      ),
    );

    add(
      AzurermBotServiceAzureBot(
        'bot_service_azure_bot',
        location: .literal(location),
        microsoftAppId: .literal('11111111-1111-1111-1111-111111111111'),
        microsoftAppType: .literal('MultiTenant'),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .literal('F0'),
      ),
    );

    add(
      AzurermBotWebApp(
        'bot_web_app',
        location: .literal(location),
        microsoftAppId: .literal('11111111-1111-1111-1111-111111111111'),
        microsoftAppType: .literal('MultiTenant'),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .literal('F0'),
      ),
    );

    add(
      AzurermCapacityReservation(
        'capacity_reservation',
        capacityReservationGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/capacityReservationGroups/capacityReservationGroupName',
        ),
        name: .literal(leftover),
        sku: CapacityReservationSku(
          capacity: .literal(200),
          name: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermCapacityReservationGroup(
        'capacity_reservation_group',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCdnEndpoint(
        'cdn_endpoint',
        location: .literal(location),
        name: .literal(leftover),
        profileName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        origin: [
          CdnEndpointOrigin(
            hostName: .literal(leftover),
            name: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermCdnEndpointCustomDomain(
        'cdn_endpoint_custom_domain',
        cdnEndpointId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cdn/profiles/profileName/endpoints/endpointName',
        ),
        hostName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermCdnFrontdoorCustomDomainAssociation(
        'cdn_frontdoor_custom_domain_association',
        cdnFrontdoorCustomDomainId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cdn/profiles/profileName/customDomains/customDomainName',
        ),
        cdnFrontdoorRouteIds: .literal([
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cdn/profiles/profileName/afdEndpoints/afdEndpointName/routes/routeName',
        ]),
      ),
    );

    add(
      AzurermCdnFrontdoorEndpoint(
        'cdn_frontdoor_endpoint',
        cdnFrontdoorProfileId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cdn/profiles/profileName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermCdnFrontdoorFirewallPolicy(
        'cdn_frontdoor_firewall_policy',
        mode: .detection,
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .literal('Standard_AzureFrontDoor'),
      ),
    );

    add(
      AzurermCdnFrontdoorOrigin(
        'cdn_frontdoor_origin',
        cdnFrontdoorOriginGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cdn/profiles/profileName/originGroups/originGroupName',
        ),
        certificateNameCheckEnabled: .literal(true),
        hostName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermCdnFrontdoorOriginGroup(
        'cdn_frontdoor_origin_group',
        cdnFrontdoorProfileId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cdn/profiles/profileName',
        ),
        name: .literal(leftover),
        loadBalancing: CdnFrontdoorOriginGroupLoadBalancing(
          additionalLatencyInMilliseconds: .literal(200),
        ),
      ),
    );

    add(
      AzurermCdnFrontdoorProfile(
        'cdn_frontdoor_profile',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .literal('Premium_AzureFrontDoor'),
      ),
    );

    add(
      AzurermCdnFrontdoorRule(
        'cdn_frontdoor_rule',
        cdnFrontdoorRuleSetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cdn/profiles/profileName/ruleSets/ruleSetName',
        ),
        name: .literal(leftover),
        order: .literal(200),
        actions: CdnFrontdoorRuleActions(
          modifyRequestHeader: [
            .new(headerName: .literal(leftover), operator: .literal('Append')),
          ],
        ),
      ),
    );

    add(
      AzurermCdnFrontdoorRuleSet(
        'cdn_frontdoor_rule_set',
        cdnFrontdoorProfileId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cdn/profiles/profileName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermCdnProfile(
        'cdn_profile',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .literal('Standard_Akamai'),
      ),
    );

    add(
      AzurermChaosStudioTarget(
        'chaos_studio_target',
        location: .literal(location),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        targetType: .literal(leftover),
      ),
    );

    add(
      AzurermCognitiveAccount(
        'cognitive_account',
        kind: .aiservices,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .c2,
      ),
    );

    add(
      AzurermCognitiveAccountConnectionAccountKey(
        'cognitive_account_connection_account_key',
        accountKey: leftoverSecret,
        category: .literal('AzureStorageAccount'),
        cognitiveAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.CognitiveServices/accounts/accountName',
        ),
        metadata: .literal({'k': leftover}),
        name: .literal(leftover),
        target: .literal(leftover),
      ),
    );

    add(
      AzurermCognitiveAccountConnectionAccountManagedIdentity(
        'cognitive_account_connection_account_managed_ide',
        category: .literal('AIServices'),
        cognitiveAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.CognitiveServices/accounts/accountName',
        ),
        metadata: .literal({'k': leftover}),
        name: .literal(leftover),
        target: .literal(leftover),
      ),
    );

    add(
      AzurermCognitiveAccountConnectionApiKey(
        'cognitive_account_connection_api_key',
        apiKey: leftoverSecret,
        category: .literal('AIServices'),
        cognitiveAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.CognitiveServices/accounts/accountName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermCognitiveAccountConnectionCustomKeys(
        'cognitive_account_connection_custom_keys',
        category: .literal('CustomKeys'),
        cognitiveAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.CognitiveServices/accounts/accountName',
        ),
        customKeys: leftoverSecretMap,
        name: .literal(leftover),
        target: .literal(leftover),
      ),
    );

    add(
      AzurermCognitiveAccountConnectionEntraId(
        'cognitive_account_connection_entra_id',
        category: .literal('AIServices'),
        cognitiveAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.CognitiveServices/accounts/accountName',
        ),
        name: .literal(leftover),
        target: .literal(leftover),
      ),
    );

    add(
      AzurermCognitiveAccountProject(
        'cognitive_account_project',
        cognitiveAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.CognitiveServices/accounts/accountName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        identity: CognitiveAccountProjectIdentity(
          type: .literal('UserAssigned'),
        ),
      ),
    );

    add(
      AzurermCognitiveAccountRaiBlocklist(
        'cognitive_account_rai_blocklist',
        cognitiveAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.CognitiveServices/accounts/accountName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermCognitiveAccountRaiPolicy(
        'cognitive_account_rai_policy',
        basePolicyName: .literal(leftover),
        cognitiveAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.CognitiveServices/accounts/accountName',
        ),
        name: .literal(leftover),
        contentFilter: [
          CognitiveAccountRaiPolicyContentFilter(
            blockEnabled: .literal(true),
            filterEnabled: .literal(true),
            name: .literal(leftover),
            source: .completion,
          ),
        ],
      ),
    );

    add(
      AzurermCognitiveDeployment(
        'cognitive_deployment',
        cognitiveAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.CognitiveServices/accounts/accountName',
        ),
        name: .literal(leftover),
        model: CognitiveDeploymentModel(
          format: .literal(leftover),
          name: .literal(leftover),
        ),
        sku: CognitiveDeploymentSku(name: .standard),
      ),
    );

    add(
      AzurermCommunicationService(
        'communication_service',
        dataLocation: .africa,
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCommunicationServiceEmailDomainAssociation(
        'communication_service_email_domain_association',
        communicationServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Communication/communicationServices/communicationServiceName',
        ),
        emailServiceDomainId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Communication/emailServices/emailServiceName/domains/domainName',
        ),
      ),
    );

    add(
      AzurermConfidentialLedger(
        'confidential_ledger',
        ledgerType: .literal('Private'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        azureadBasedServicePrincipal: [
          ConfidentialLedgerAzureadBasedServicePrincipal(
            ledgerRoleName: .administrator,
            principalId: .literal('11111111-1111-1111-1111-111111111111'),
            tenantId: .literal('11111111-1111-1111-1111-111111111111'),
          ),
        ],
      ),
    );

    add(
      AzurermContainerApp(
        'container_app',
        containerAppEnvironmentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.App/managedEnvironments/managedEnvironmentName',
        ),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        revisionMode: .multiple,
        template: ContainerAppTemplate(
          container: [
            .new(
              cpu: .literal(200),
              image: .literal(leftover),
              memory: .literal(leftover),
              name: .literal(leftover),
            ),
          ],
        ),
      ),
    );

    add(
      AzurermContainerAppCustomDomain(
        'container_app_custom_domain',
        containerAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.App/containerApps/containerAppName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermContainerAppEnvironment(
        'container_app_environment',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermContainerAppEnvironmentCustomDomain(
        'container_app_environment_custom_domain',
        certificateBlobBase64: .literal(leftover),
        certificatePassword: leftoverSecret,
        containerAppEnvironmentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.App/managedEnvironments/managedEnvironmentName',
        ),
        dnsSuffix: .literal(leftover),
      ),
    );

    add(
      AzurermContainerAppEnvironmentDaprComponent(
        'container_app_environment_dapr_component',
        componentType: .literal(leftover),
        containerAppEnvironmentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.App/managedEnvironments/managedEnvironmentName',
        ),
        name: .literal(leftover),
        version: .literal(leftover),
      ),
    );

    add(
      AzurermContainerAppEnvironmentManagedCertificate(
        'container_app_environment_managed_certificate',
        containerAppEnvironmentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.App/managedEnvironments/managedEnvironmentName',
        ),
        name: .literal(leftover),
        subjectName: .literal(leftover),
      ),
    );

    add(
      AzurermContainerAppEnvironmentStorage(
        'container_app_environment_storage',
        accessMode: .readonly,
        containerAppEnvironmentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.App/managedEnvironments/managedEnvironmentName',
        ),
        name: .literal(leftover),
        shareName: .literal(leftover),
      ),
    );

    add(
      AzurermContainerAppJob(
        'container_app_job',
        containerAppEnvironmentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.App/managedEnvironments/managedEnvironmentName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        replicaTimeoutInSeconds: .literal(200),
        resourceGroupName: .literal(resourceGroupName),
        triggerConfig: .eventTriggerConfig(.new(parallelism: .literal(200))),
        template: ContainerAppJobTemplate(
          container: [
            .new(
              cpu: .literal(200),
              image: .literal(leftover),
              memory: .literal(leftover),
              name: .literal(leftover),
            ),
          ],
        ),
      ),
    );

    add(
      AzurermContainerConnectedRegistry(
        'container_connected_registry',
        containerRegistryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerRegistry/registries/registryName',
        ),
        name: .literal(leftover),
        syncTokenId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerRegistry/registries/registryName/tokens/tokenName',
        ),
      ),
    );

    add(
      AzurermContainerGroup(
        'container_group',
        location: .literal(location),
        name: .literal(leftover),
        osType: .linux,
        resourceGroupName: .literal(resourceGroupName),
        container: [
          ContainerGroupContainer(
            cpu: .literal(200),
            image: .literal(leftover),
            memory: .literal(200),
            name: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermContainerRegistry(
        'container_registry',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .literal('Basic'),
      ),
    );

    add(
      AzurermContainerRegistryAgentPool(
        'container_registry_agent_pool',
        containerRegistryName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermContainerRegistryCacheRule(
        'container_registry_cache_rule',
        containerRegistryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerRegistry/registries/registryName',
        ),
        name: .literal(leftover),
        sourceRepo: .literal(leftover),
        targetRepo: .literal(leftover),
      ),
    );

    add(
      AzurermContainerRegistryScopeMap(
        'container_registry_scope_map',
        actions: .literal([leftover]),
        containerRegistryName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermContainerRegistryTask(
        'container_registry_task',
        containerRegistryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerRegistry/registries/registryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermContainerRegistryTaskScheduleRunNow(
        'container_registry_task_schedule_run_now',
        containerRegistryTaskId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerRegistry/registries/registryName/tasks/taskName',
        ),
      ),
    );

    add(
      AzurermContainerRegistryToken(
        'container_registry_token',
        containerRegistryName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scopeMapId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerRegistry/registries/registryName/scopeMaps/scopeMapName',
        ),
      ),
    );

    add(
      AzurermContainerRegistryTokenPassword(
        'container_registry_token_password',
        containerRegistryTokenId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerRegistry/registries/registryName/tokens/tokenName',
        ),
        password1: ContainerRegistryTokenPasswordPassword1(
          expiry: .literal('2024-01-01T00:00:00Z'),
        ),
      ),
    );

    add(
      AzurermCosmosdbAccount(
        'cosmosdb_account',
        location: .literal(location),
        name: .literal(leftover),
        offerType: .literal('Standard'),
        resourceGroupName: .literal(resourceGroupName),
        consistencyPolicy: CosmosdbAccountConsistencyPolicy(
          consistencyLevel: .boundedstaleness,
        ),
        geoLocation: [
          CosmosdbAccountGeoLocation(
            failoverPriority: .literal(200),
            location: .literal(location),
          ),
        ],
      ),
    );

    add(
      AzurermCosmosdbCassandraCluster(
        'cosmosdb_cassandra_cluster',
        defaultAdminPassword: leftoverSecret,
        delegatedManagementSubnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCosmosdbCassandraDatacenter(
        'cosmosdb_cassandra_datacenter',
        cassandraClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/cassandraClusters/cassandraClusterName',
        ),
        delegatedManagementSubnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
        location: .literal(location),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermCosmosdbCassandraKeyspace(
        'cosmosdb_cassandra_keyspace',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCosmosdbCassandraTable(
        'cosmosdb_cassandra_table',
        cassandraKeyspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/databaseAccounts/databaseAccountName/cassandraKeyspaces/cassandraKeyspaceName',
        ),
        name: .literal(leftover),
        schema: CosmosdbCassandraTableSchema(
          column: [.new(name: .literal(leftover), type: .literal(leftover))],
          partitionKey: [.new(name: .literal(leftover))],
        ),
      ),
    );

    add(
      AzurermCosmosdbGremlinDatabase(
        'cosmosdb_gremlin_database',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCosmosdbGremlinGraph(
        'cosmosdb_gremlin_graph',
        accountName: .literal(leftover),
        databaseName: .literal(leftover),
        name: .literal(leftover),
        partitionKeyPath: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCosmosdbMongoCollection(
        'cosmosdb_mongo_collection',
        accountName: .literal(leftover),
        databaseName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCosmosdbMongoDatabase(
        'cosmosdb_mongo_database',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCosmosdbMongoRoleDefinition(
        'cosmosdb_mongo_role_definition',
        cosmosMongoDatabaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/databaseAccounts/databaseAccountName/mongodbDatabases/mongodbDatabaseName',
        ),
        roleName: .literal(leftover),
      ),
    );

    add(
      AzurermCosmosdbMongoUserDefinition(
        'cosmosdb_mongo_user_definition',
        cosmosMongoDatabaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/databaseAccounts/databaseAccountName/mongodbDatabases/mongodbDatabaseName',
        ),
        password: leftoverSecret,
        username: .literal(leftover),
      ),
    );

    add(
      AzurermCosmosdbPostgresqlCluster(
        'cosmosdb_postgresql_cluster',
        location: .literal(location),
        name: .literal(leftover),
        nodeCount: .literal(0),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCosmosdbPostgresqlCoordinatorConfiguration(
        'cosmosdb_postgresql_coordinator_configuration',
        clusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/serverGroupsv2Name',
        ),
        name: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(
      AzurermCosmosdbPostgresqlFirewallRule(
        'cosmosdb_postgresql_firewall_rule',
        clusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/serverGroupsv2Name',
        ),
        endIpAddress: .literal('10.0.0.1'),
        name: .literal(leftover),
        startIpAddress: .literal('10.0.0.1'),
      ),
    );

    add(
      AzurermCosmosdbPostgresqlNodeConfiguration(
        'cosmosdb_postgresql_node_configuration',
        clusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/serverGroupsv2Name',
        ),
        name: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(
      AzurermCosmosdbPostgresqlRole(
        'cosmosdb_postgresql_role',
        clusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/serverGroupsv2Name',
        ),
        name: .literal(leftover),
        password: leftoverSecret,
      ),
    );

    add(
      AzurermCosmosdbSqlContainer(
        'cosmosdb_sql_container',
        accountName: .literal(leftover),
        databaseName: .literal(leftover),
        name: .literal(leftover),
        partitionKeyPaths: .literal([leftover]),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCosmosdbSqlDatabase(
        'cosmosdb_sql_database',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCosmosdbSqlDedicatedGateway(
        'cosmosdb_sql_dedicated_gateway',
        cosmosdbAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/databaseAccounts/databaseAccountName',
        ),
        instanceCount: .literal(1),
        instanceSize: .cosmosD8s,
      ),
    );

    add(
      AzurermCosmosdbSqlFunction(
        'cosmosdb_sql_function',
        body: .literal(leftover),
        containerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/databaseAccounts/databaseAccountName/sqlDatabases/sqlDatabaseName/containers/containerName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermCosmosdbSqlRoleAssignment(
        'cosmosdb_sql_role_assignment',
        accountName: .literal(leftover),
        principalId: .literal('11111111-1111-1111-1111-111111111111'),
        resourceGroupName: .literal(resourceGroupName),
        roleDefinitionId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/databaseAccounts/databaseAccountName/sqlRoleDefinitions/roleDefinitionId',
        ),
        scope: .literal(leftover),
      ),
    );

    add(
      AzurermCosmosdbSqlRoleDefinition(
        'cosmosdb_sql_role_definition',
        accountName: .literal(leftover),
        assignableScopes: .literal([leftover]),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        permissions: [
          CosmosdbSqlRoleDefinitionPermissions(
            dataActions: .literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AzurermCosmosdbSqlStoredProcedure(
        'cosmosdb_sql_stored_procedure',
        accountName: .literal(leftover),
        body: .literal(leftover),
        containerName: .literal(leftover),
        databaseName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCosmosdbSqlTrigger(
        'cosmosdb_sql_trigger',
        body: .literal(leftover),
        containerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/databaseAccounts/databaseAccountName/sqlDatabases/sqlDatabaseName/containers/containerName',
        ),
        name: .literal(leftover),
        operation: .all,
        type: .post,
      ),
    );

    add(
      AzurermCosmosdbTable(
        'cosmosdb_table',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermCostAnomalyAlert(
        'cost_anomaly_alert',
        displayName: .literal(leftover),
        emailAddresses: .literal([leftover]),
        emailSubject: .literal('leftover@example.com'),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermCostManagementScheduledAction(
        'cost_management_scheduled_action',
        displayName: .literal(leftover),
        emailAddressSender: .literal('leftover@example.com'),
        emailAddresses: .literal([leftover]),
        emailSubject: .literal('leftover@example.com'),
        endDate: .literal('2024-01-01T00:00:00Z'),
        frequency: .daily,
        name: .literal(leftover),
        startDate: .literal('2024-01-01T00:00:00Z'),
        viewId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermCustomIpPrefix(
        'custom_ip_prefix',
        cidr: .literal('192.0.2.0/24'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDashboardGrafana(
        'dashboard_grafana',
        grafanaMajorVersion: .v12,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDashboardGrafanaManagedPrivateEndpoint(
        'dashboard_grafana_managed_private_endpoint',
        grafanaId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Dashboard/grafana/grafanaName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        privateLinkResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermDataFactory(
        'data_factory',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDataFactoryCredentialServicePrincipal(
        'data_factory_credential_service_principal',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
        servicePrincipalId: .literal('11111111-1111-1111-1111-111111111111'),
        tenantId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermDataFactoryCredentialUserManagedIdentity(
        'data_factory_credential_user_managed_identity',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        identityId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/userAssignedIdentityValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryCustomDataset(
        'data_factory_custom_dataset',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
        type: .literal(leftover),
        typePropertiesJson: .literal(leftover),
        linkedService: DataFactoryCustomDatasetLinkedService(
          name: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermDataFactoryDatasetAzureBlob(
        'data_factory_dataset_azure_blob',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        linkedServiceName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryDatasetBinary(
        'data_factory_dataset_binary',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        linkedServiceName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryDatasetCosmosdbSqlapi(
        'data_factory_dataset_cosmosdb_sqlapi',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        linkedServiceName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryDatasetHttp(
        'data_factory_dataset_http',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        linkedServiceName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryDatasetJson(
        'data_factory_dataset_json',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        linkedServiceName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryDatasetMysql(
        'data_factory_dataset_mysql',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        linkedServiceName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryDatasetPostgresql(
        'data_factory_dataset_postgresql',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        linkedServiceName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryDatasetSnowflake(
        'data_factory_dataset_snowflake',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        linkedServiceName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryDatasetSqlServerTable(
        'data_factory_dataset_sql_server_table',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        linkedServiceName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryIntegrationRuntimeAzure(
        'data_factory_integration_runtime_azure',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        location: .literal(location),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryIntegrationRuntimeAzureSsis(
        'data_factory_integration_runtime_azure_ssis',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        nodeSize: .standardD2V3,
      ),
    );

    add(
      AzurermDataFactoryIntegrationRuntimeSelfHosted(
        'data_factory_integration_runtime_self_hosted',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedCustomService(
        'data_factory_linked_custom_service',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
        type: .literal(leftover),
        typePropertiesJson: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceAzureFileStorage(
        'data_factory_linked_service_azure_file_storage',
        connectionString: leftoverSecret,
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceAzureSearch(
        'data_factory_linked_service_azure_search',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
        searchServiceKey: .literal(leftover),
        url: .literal('https://example.com'),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceAzureTableStorage(
        'data_factory_linked_service_azure_table_storage',
        connectionString: leftoverSecret,
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceCosmosdb(
        'data_factory_linked_service_cosmosdb',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceCosmosdbMongoapi(
        'data_factory_linked_service_cosmosdb_mongoapi',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceKeyVault(
        'data_factory_linked_service_key_vault',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceMysql(
        'data_factory_linked_service_mysql',
        connectionString: .literal(leftover),
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceOdata(
        'data_factory_linked_service_odata',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
        url: .literal('https://example.com'),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceOdbc(
        'data_factory_linked_service_odbc',
        connectionString: .literal(leftover),
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServicePostgresql(
        'data_factory_linked_service_postgresql',
        connectionString: .literal(leftover),
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceSftp(
        'data_factory_linked_service_sftp',
        authenticationType: .basic,
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        host: .literal(leftover),
        name: .literal(leftover),
        port: .literal(200),
        username: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceSnowflake(
        'data_factory_linked_service_snowflake',
        connectionString: .literal(leftover),
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceSqlManagedInstance(
        'data_factory_linked_service_sql_managed_instance',
        connectionString: .connectionString(leftoverSecret),
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceSynapse(
        'data_factory_linked_service_synapse',
        connectionString: .literal(leftover),
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryLinkedServiceWeb(
        'data_factory_linked_service_web',
        authenticationType: .literal(leftover),
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
        url: .literal('https://example.com'),
      ),
    );

    add(
      AzurermDataFactoryManagedPrivateEndpoint(
        'data_factory_managed_private_endpoint',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermDataFactoryPipeline(
        'data_factory_pipeline',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataFactoryTriggerCustomEvent(
        'data_factory_trigger_custom_event',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        eventgridTopicId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.EventGrid/topics/topicName',
        ),
        events: .literal([leftover]),
        name: .literal(leftover),
        pipeline: [
          DataFactoryTriggerCustomEventPipeline(name: .literal(leftover)),
        ],
      ),
    );

    add(
      AzurermDataFactoryTriggerTumblingWindow(
        'data_factory_trigger_tumbling_window',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        frequency: .literal('Hour'),
        interval: .literal(200),
        name: .literal(leftover),
        startTime: .literal('2024-01-01T00:00:00Z'),
        pipeline: DataFactoryTriggerTumblingWindowPipeline(
          name: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermDataProtectionBackupInstanceBlobStorage(
        'data_protection_backup_instance_blob_storage',
        backupPolicyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName/backupPolicies/backupPolicyName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        vaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName',
        ),
      ),
    );

    add(
      AzurermDataProtectionBackupInstanceDataLakeStorage(
        'data_protection_backup_instance_data_lake_storag',
        backupPolicyDataLakeStorageId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName/backupPolicies/backupPolicyName',
        ),
        dataProtectionBackupVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        storageContainerNames: .literal([leftover]),
      ),
    );

    add(
      AzurermDataProtectionBackupInstanceDisk(
        'data_protection_backup_instance_disk',
        backupPolicyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName/backupPolicies/backupPolicyName',
        ),
        diskId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/disks/diskValue',
        ),
        location: .literal(location),
        name: .literal(leftover),
        snapshotResourceGroupName: .literal(leftover),
        vaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName',
        ),
      ),
    );

    add(
      AzurermDataProtectionBackupInstanceKubernetesCluster(
        'data_protection_backup_instance_kubernetes_clust',
        backupPolicyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName/backupPolicies/backupPolicyName',
        ),
        kubernetesClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerService/managedClusters/managedClusterValue',
        ),
        location: .literal(location),
        name: .literal(leftover),
        snapshotResourceGroupName: .literal(leftover),
        vaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName',
        ),
      ),
    );

    add(
      AzurermDataProtectionBackupInstanceMysqlFlexibleServer(
        'data_protection_backup_instance_mysql_flexible_s',
        backupPolicyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName/backupPolicies/backupPolicyName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforMySQL/flexibleServers/flexibleServerName',
        ),
        vaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName',
        ),
      ),
    );

    add(
      AzurermDataProtectionBackupInstancePostgresqlFlexibleServer(
        'data_protection_backup_instance_postgresql_flexi',
        backupPolicyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName/backupPolicies/backupPolicyName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/flexibleServers/flexibleServerName',
        ),
        vaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName',
        ),
      ),
    );

    add(
      AzurermDataProtectionBackupPolicyDisk(
        'data_protection_backup_policy_disk',
        backupRepeatingTimeIntervals: .literal([leftover]),
        defaultRetentionDuration: .literal('P1D'),
        name: .literal(leftover),
        vaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName',
        ),
      ),
    );

    add(
      AzurermDataProtectionBackupPolicyKubernetesCluster(
        'data_protection_backup_policy_kubernetes_cluster',
        backupRepeatingTimeIntervals: .literal([leftover]),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        vaultName: .literal(leftover),
        defaultRetentionRule:
            DataProtectionBackupPolicyKubernetesClusterDefaultRetentionRule(
              lifeCycle: [
                .new(
                  dataStoreType: .literal('OperationalStore'),
                  duration: .literal('P1D'),
                ),
              ],
            ),
      ),
    );

    add(
      AzurermDataProtectionBackupPolicyPostgresqlFlexibleServer(
        'data_protection_backup_policy_postgresql_flexibl',
        backupRepeatingTimeIntervals: .literal([leftover]),
        name: .literal(leftover),
        vaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/backupVaults/backupVaultName',
        ),
        defaultRetentionRule:
            DataProtectionBackupPolicyPostgresqlFlexibleServerDefaultRetentionRule(
              lifeCycle: [
                .new(
                  dataStoreType: .literal('VaultStore'),
                  duration: .literal('P1D'),
                ),
              ],
            ),
      ),
    );

    add(
      AzurermDataProtectionBackupVault(
        'data_protection_backup_vault',
        datastoreType: .archivestore,
        location: .literal(location),
        name: .literal(leftover),
        redundancy: .georedundant,
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDataProtectionResourceGuard(
        'data_protection_resource_guard',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDataShare(
        'data_share',
        accountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataShare/accounts/accountName',
        ),
        kind: .copybased,
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDataShareAccount(
        'data_share_account',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        identity: DataShareAccountIdentity(type: .literal('SystemAssigned')),
      ),
    );

    add(
      AzurermDataShareDatasetBlobStorage(
        'data_share_dataset_blob_storage',
        containerName: .literal(leftover),
        dataShareId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataShare/accounts/accountName/shares/shareName',
        ),
        name: .literal(leftover),
        storageAccount: DataShareDatasetBlobStorageAccount(
          name: .literal(leftover),
          resourceGroupName: .literal(resourceGroupName),
          subscriptionId: .literal('11111111-1111-1111-1111-111111111111'),
        ),
      ),
    );

    add(
      AzurermDataShareDatasetDataLakeGen2(
        'data_share_dataset_data_lake_gen2',
        fileSystemName: .literal(leftover),
        name: .literal(leftover),
        shareId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataShare/accounts/accountName/shares/shareName',
        ),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermDataShareDatasetKustoCluster(
        'data_share_dataset_kusto_cluster',
        kustoClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Kusto/clusters/clusterValue',
        ),
        name: .literal(leftover),
        shareId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataShare/accounts/accountName/shares/shareName',
        ),
      ),
    );

    add(
      AzurermDataShareDatasetKustoDatabase(
        'data_share_dataset_kusto_database',
        kustoDatabaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Kusto/clusters/clusterValue/databases/databaseValue',
        ),
        name: .literal(leftover),
        shareId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataShare/accounts/accountName/shares/shareName',
        ),
      ),
    );

    add(
      AzurermDatabaseMigrationProject(
        'database_migration_project',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serviceName: .literal(leftover),
        sourcePlatform: .mongodb,
        targetPlatform: .azuredbformysql,
      ),
    );

    add(
      AzurermDatabaseMigrationService(
        'database_migration_service',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .premium4vcores,
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermDatabricksAccessConnector(
        'databricks_access_connector',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDatabricksVirtualNetworkPeering(
        'databricks_virtual_network_peering',
        name: .literal(leftover),
        remoteAddressSpacePrefixes: .literal(['10.0.0.0/24']),
        remoteVirtualNetworkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
        ),
        resourceGroupName: .literal(resourceGroupName),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Databricks/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermDatabricksWorkspace(
        'databricks_workspace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .standard,
      ),
    );

    add(
      AzurermDatadogMonitor(
        'datadog_monitor',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .literal(leftover),
        datadogOrganization: DatadogMonitorDatadogOrganization(
          apiKey: leftoverSecret,
          applicationKey: leftoverSecret,
        ),
        user: DatadogMonitorUser(
          email: .literal('leftover@example.com'),
          name: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermDatadogMonitorSsoConfiguration(
        'datadog_monitor_sso_configuration',
        datadogMonitorId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Datadog/monitors/monitorName',
        ),
        enterpriseApplicationId: .literal(
          '11111111-1111-1111-1111-111111111111',
        ),
        singleSignOn: .disable,
      ),
    );

    add(
      AzurermDatadogMonitorTagRule(
        'datadog_monitor_tag_rule',
        datadogMonitorId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Datadog/monitors/monitorName',
        ),
      ),
    );

    add(
      AzurermDedicatedHardwareSecurityModule(
        'dedicated_hardware_security_module',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .payshield10kLmk1Cps60,
        networkProfile: DedicatedHardwareSecurityModuleNetworkProfile(
          networkInterfacePrivateIpAddresses: .literal(['10.0.0.1']),
          subnetId: .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
          ),
        ),
      ),
    );

    add(
      AzurermDedicatedHost(
        'dedicated_host',
        dedicatedHostGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/hostGroups/hostGroupValue',
        ),
        location: .literal(location),
        name: .literal(leftover),
        platformFaultDomain: .literal(200),
        skuName: .dadsv5Type1,
      ),
    );

    add(
      AzurermDedicatedHostGroup(
        'dedicated_host_group',
        location: .literal(location),
        name: .literal(leftover),
        platformFaultDomainCount: .literal(1),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDevCenter(
        'dev_center',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDevCenterAttachedNetwork(
        'dev_center_attached_network',
        devCenterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/devCenters/devCenterName',
        ),
        name: .literal(leftover),
        networkConnectionId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/networkConnections/networkConnectionName',
        ),
      ),
    );

    add(
      AzurermDevCenterCatalog(
        'dev_center_catalog',
        devCenterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/devCenters/devCenterName',
        ),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDevCenterDevBoxDefinition(
        'dev_center_dev_box_definition',
        devCenterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/devCenters/devCenterName',
        ),
        imageReferenceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/devCenters/devCenterName/galleries/galleryName/images/imageName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        skuName: .literal(leftover),
      ),
    );

    add(
      AzurermDevCenterEnvironmentType(
        'dev_center_environment_type',
        devCenterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/devCenters/devCenterName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDevCenterGallery(
        'dev_center_gallery',
        devCenterId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        name: .literal(leftover),
        sharedGalleryId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermDevCenterNetworkConnection(
        'dev_center_network_connection',
        domainJoinType: .azureadjoin,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermDevCenterProject(
        'dev_center_project',
        devCenterId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDevCenterProjectPool(
        'dev_center_project_pool',
        devBoxDefinitionName: .literal(leftover),
        devCenterAttachedNetworkName: .literal(leftover),
        devCenterProjectId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/projects/projectName',
        ),
        localAdministratorEnabled: .literal(true),
        location: .literal(location),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDevTestLab(
        'dev_test_lab',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDevTestLinuxVirtualMachine(
        'dev_test_linux_virtual_machine',
        labName: .literal(leftover),
        labSubnetName: .literal(leftover),
        labVirtualNetworkId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        size: .literal(leftover),
        storageType: .standard,
        username: .literal(leftover),
        galleryImageReference: DevTestLinuxVirtualMachineGalleryImageReference(
          offer: .literal(leftover),
          publisher: .literal(leftover),
          sku: .literal(leftover),
          version: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermDevTestPolicy(
        'dev_test_policy',
        evaluatorType: .allowedvaluespolicy,
        labName: .literal(leftover),
        name: .literal('GalleryImage'),
        policySetName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        threshold: .literal(leftover),
      ),
    );

    add(
      AzurermDevTestSchedule(
        'dev_test_schedule',
        labName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        taskType: .literal(leftover),
        timeZoneId: .literal('Afghanistan Standard Time'),
        notificationSettings: DevTestScheduleNotificationSettings(
          status: .disabled,
        ),
      ),
    );

    add(
      AzurermDevTestVirtualNetwork(
        'dev_test_virtual_network',
        labName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDevTestWindowsVirtualMachine(
        'dev_test_windows_virtual_machine',
        labName: .literal(leftover),
        labSubnetName: .literal(leftover),
        labVirtualNetworkId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        location: .literal(location),
        name: .literal(leftover),
        password: leftoverSecret,
        resourceGroupName: .literal(resourceGroupName),
        size: .literal(leftover),
        storageType: .standard,
        username: .literal(leftover),
        galleryImageReference:
            DevTestWindowsVirtualMachineGalleryImageReference(
              offer: .literal(leftover),
              publisher: .literal(leftover),
              sku: .literal(leftover),
              version: .literal(leftover),
            ),
      ),
    );

    add(
      AzurermDigitalTwinsEndpointEventgrid(
        'digital_twins_endpoint_eventgrid',
        digitalTwinsId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DigitalTwins/digitalTwinsInstances/digitalTwinsInstanceName',
        ),
        eventgridTopicEndpoint: .literal('https://example.com/leftover'),
        eventgridTopicPrimaryAccessKey: .literal(leftover),
        eventgridTopicSecondaryAccessKey: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDigitalTwinsEndpointEventhub(
        'digital_twins_endpoint_eventhub',
        digitalTwinsId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DigitalTwins/digitalTwinsInstances/digitalTwinsInstanceName',
        ),
        eventhubPrimaryConnectionString: leftoverSecret,
        eventhubSecondaryConnectionString: leftoverSecret,
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDigitalTwinsEndpointServicebus(
        'digital_twins_endpoint_servicebus',
        digitalTwinsId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DigitalTwins/digitalTwinsInstances/digitalTwinsInstanceName',
        ),
        name: .literal(leftover),
        servicebusPrimaryConnectionString: leftoverSecret,
        servicebusSecondaryConnectionString: leftoverSecret,
      ),
    );

    add(
      AzurermDigitalTwinsInstance(
        'digital_twins_instance',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDigitalTwinsTimeSeriesDatabaseConnection(
        'digital_twins_time_series_database_connection',
        digitalTwinsId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DigitalTwins/digitalTwinsInstances/digitalTwinsInstanceName',
        ),
        eventhubName: .literal(leftover),
        eventhubNamespaceEndpointUri: .literal('https://example.com'),
        eventhubNamespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.EventHub/namespaces/namespaceName',
        ),
        kustoClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Kusto/clusters/clusterValue',
        ),
        kustoClusterUri: .literal('https://example.com'),
        kustoDatabaseName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermDiskAccess(
        'disk_access',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDnsARecord(
        'dns_a_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        ttl: .literal(200),
        zoneName: .literal(leftover),
      ),
    );

    add(
      AzurermDnsAaaaRecord(
        'dns_aaaa_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        ttl: .literal(200),
        zoneName: .literal(leftover),
      ),
    );

    add(
      AzurermDnsCaaRecord(
        'dns_caa_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        ttl: .literal(200),
        zoneName: .literal(leftover),
        record: [
          DnsCaaRecord(
            flags: .literal(200),
            tag: .issue,
            value: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermDnsCnameRecord(
        'dns_cname_record',
        name: .literal(leftover),
        target: .record(.literal(leftover)),
        resourceGroupName: .literal(resourceGroupName),
        ttl: .literal(200),
        zoneName: .literal(leftover),
      ),
    );

    add(
      AzurermDnsMxRecord(
        'dns_mx_record',
        resourceGroupName: .literal(resourceGroupName),
        ttl: .literal(200),
        zoneName: .literal(leftover),
        record: [
          DnsMxRecord(
            exchange: .literal(leftover),
            preference: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermDnsNsRecord(
        'dns_ns_record',
        name: .literal(leftover),
        records: .literal([leftover]),
        resourceGroupName: .literal(resourceGroupName),
        ttl: .literal(200),
        zoneName: .literal(leftover),
      ),
    );

    add(
      AzurermDnsPtrRecord(
        'dns_ptr_record',
        name: .literal(leftover),
        records: .literal([leftover]),
        resourceGroupName: .literal(resourceGroupName),
        ttl: .literal(200),
        zoneName: .literal(leftover),
      ),
    );

    add(
      AzurermDnsSrvRecord(
        'dns_srv_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        ttl: .literal(200),
        zoneName: .literal(leftover),
        record: [
          DnsSrvRecord(
            port: .literal(200),
            priority: .literal(200),
            target: .literal(leftover),
            weight: .literal(200),
          ),
        ],
      ),
    );

    add(
      AzurermDnsTxtRecord(
        'dns_txt_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        ttl: .literal(200),
        zoneName: .literal(leftover),
        record: [DnsTxtRecord(value: .literal(leftover))],
      ),
    );

    add(
      AzurermDnsZone(
        'dns_zone',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermDynatraceMonitor(
        'dynatrace_monitor',
        location: .literal(location),
        marketplaceSubscription: .active,
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        identity: DynatraceMonitorIdentity(type: .literal('SystemAssigned')),
        plan: DynatraceMonitorPlan(plan: .literal(leftover)),
        user: DynatraceMonitorUser(
          email: .literal('leftover@example.com'),
          firstName: .literal(leftover),
          lastName: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermDynatraceTagRules(
        'dynatrace_tag_rules',
        monitorId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Dynatrace.Observability/monitors/monitorName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermElasticCloudElasticsearch(
        'elastic_cloud_elasticsearch',
        elasticCloudEmailAddress: .literal('leftover@example.com'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .literal(leftover),
      ),
    );

    add(
      AzurermElasticSan(
        'elastic_san',
        baseSizeInTib: .literal(1),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: ElasticSanSku(name: .premiumLrs),
      ),
    );

    add(
      AzurermElasticSanVolume(
        'elastic_san_volume',
        name: .literal(leftover),
        sizeInGib: .literal(200),
        volumeGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ElasticSan/elasticSans/elasticSanName/volumeGroups/volumeGroupName',
        ),
      ),
    );

    add(
      AzurermElasticSanVolumeGroup(
        'elastic_san_volume_group',
        elasticSanId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ElasticSan/elasticSans/elasticSanName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermEmailCommunicationService(
        'email_communication_service',
        dataLocation: .africa,
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEmailCommunicationServiceDomain(
        'email_communication_service_domain',
        domainManagement: .azuremanaged,
        emailServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Communication/emailServices/emailServiceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermEmailCommunicationServiceDomainSenderUsername(
        'email_communication_service_domain_sender_userna',
        emailServiceDomainId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Communication/emailServices/emailServiceName/domains/domainName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermEventgridDomain(
        'eventgrid_domain',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventgridDomainTopic(
        'eventgrid_domain_topic',
        domainName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventgridEventSubscription(
        'eventgrid_event_subscription',
        name: .literal(leftover),
        scope: .literal(leftover),
      ),
    );

    add(
      AzurermEventgridNamespace(
        'eventgrid_namespace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventgridNamespaceTopic(
        'eventgrid_namespace_topic',
        eventgridNamespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.EventGrid/namespaces/namespaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermEventgridPartnerConfiguration(
        'eventgrid_partner_configuration',
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventgridPartnerNamespace(
        'eventgrid_partner_namespace',
        location: .literal(location),
        name: .literal(leftover),
        partnerRegistrationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.EventGrid/partnerRegistrations/partnerRegistrationName',
        ),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventgridPartnerRegistration(
        'eventgrid_partner_registration',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventgridSystemTopic(
        'eventgrid_system_topic',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sourceResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        topicType: .literal(leftover),
      ),
    );

    add(
      AzurermEventgridSystemTopicEventSubscription(
        'eventgrid_system_topic_event_subscription',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        systemTopic: .literal(leftover),
      ),
    );

    add(
      AzurermEventgridTopic(
        'eventgrid_topic',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventhubAuthorizationRule(
        'eventhub_authorization_rule',
        eventhubName: .literal(leftover),
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventhubConsumerGroup(
        'eventhub_consumer_group',
        eventhubName: .literal(leftover),
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventhubNamespace(
        'eventhub_namespace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .basic,
      ),
    );

    add(
      AzurermEventhubNamespaceAuthorizationRule(
        'eventhub_namespace_authorization_rule',
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventhubNamespaceDisasterRecoveryConfig(
        'eventhub_namespace_disaster_recovery_config',
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        partnerNamespaceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermEventhubNamespaceSchemaGroup(
        'eventhub_namespace_schema_group',
        name: .literal(leftover),
        namespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.EventHub/namespaces/namespaceName',
        ),
        schemaCompatibility: .backward,
        schemaType: .literal('Unknown'),
      ),
    );

    add(
      AzurermExpressRouteCircuit(
        'express_route_circuit',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: ExpressRouteCircuitSku(family: .metereddata, tier: .basic),
      ),
    );

    add(
      AzurermExpressRouteCircuitAuthorization(
        'express_route_circuit_authorization',
        expressRouteCircuitName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermExpressRouteCircuitConnection(
        'express_route_circuit_connection',
        addressPrefixIpv4: .literal('10.0.0.0/24'),
        name: .literal(leftover),
        peerPeeringId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/expressRouteCircuits/circuitValue/peerings/peeringValue',
        ),
        peeringId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/expressRouteCircuits/circuitValue/peerings/peeringValue',
        ),
      ),
    );

    add(
      AzurermExpressRouteCircuitPeering(
        'express_route_circuit_peering',
        expressRouteCircuitName: .literal(leftover),
        peeringType: .azureprivatepeering,
        resourceGroupName: .literal(resourceGroupName),
        vlanId: .literal(200),
      ),
    );

    add(
      AzurermExpressRouteConnection(
        'express_route_connection',
        expressRouteCircuitPeeringId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/expressRouteCircuits/circuitValue/peerings/peeringValue',
        ),
        expressRouteGatewayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/expressRouteGateways/expressRouteGatewayName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermExpressRouteGateway(
        'express_route_gateway',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scaleUnits: .literal(1),
        virtualHubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
        ),
      ),
    );

    add(
      AzurermExpressRoutePort(
        'express_route_port',
        bandwidthInGbps: .literal(200),
        encapsulation: .dot1q,
        location: .literal(location),
        name: .literal(leftover),
        peeringLocation: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermExpressRoutePortAuthorization(
        'express_route_port_authorization',
        expressRoutePortName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermFabricCapacity(
        'fabric_capacity',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: FabricCapacitySku(name: .f2, tier: .literal('Fabric')),
      ),
    );

    add(
      AzurermFederatedIdentityCredential(
        'federated_identity_credential',
        audience: .literal([leftover]),
        issuer: .literal(leftover),
        name: .literal(leftover),
        subject: .literal(leftover),
        userAssignedIdentityId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/userAssignedIdentityValue',
        ),
      ),
    );

    add(
      AzurermFirewall(
        'firewall',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .azfwHub,
        skuTier: .basic,
      ),
    );

    add(
      AzurermFirewallApplicationRuleCollection(
        'firewall_application_rule_collection',
        action: .allow,
        azureFirewallName: .literal(leftover),
        name: .literal(leftover),
        priority: .literal(200),
        resourceGroupName: .literal(resourceGroupName),
        rule: [FirewallApplicationRuleCollectionRule(name: .literal(leftover))],
      ),
    );

    add(
      AzurermFirewallNatRuleCollection(
        'firewall_nat_rule_collection',
        action: .dnat,
        azureFirewallName: .literal(leftover),
        name: .literal(leftover),
        priority: .literal(200),
        resourceGroupName: .literal(resourceGroupName),
        rule: [
          FirewallNatRuleCollectionRule(
            destinationAddresses: .literal([leftover]),
            destinationPorts: .literal([leftover]),
            name: .literal(leftover),
            protocols: [.any],
            translatedAddress: .literal(leftover),
            translatedPort: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermFirewallNetworkRuleCollection(
        'firewall_network_rule_collection',
        action: .allow,
        azureFirewallName: .literal(leftover),
        name: .literal(leftover),
        priority: .literal(200),
        resourceGroupName: .literal(resourceGroupName),
        rule: [
          FirewallNetworkRuleCollectionRule(
            destinationPorts: .literal([leftover]),
            name: .literal(leftover),
            protocols: [.any],
          ),
        ],
      ),
    );

    add(
      AzurermFirewallPolicy(
        'firewall_policy',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermFirewallPolicyRuleCollectionGroup(
        'firewall_policy_rule_collection_group',
        firewallPolicyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/firewallPolicies/firewallPolicyName',
        ),
        name: .literal(leftover),
        priority: .literal(200),
      ),
    );

    add(
      AzurermFluidRelayServer(
        'fluid_relay_server',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermFrontdoor(
        'frontdoor',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        backendPool: [
          FrontdoorBackendPool(
            healthProbeName: .literal(leftover),
            loadBalancingName: .literal(leftover),
            name: .literal(leftover),
            backend: [
              .new(
                address: .literal(leftover),
                hostHeader: .literal(leftover),
                httpPort: .literal(200),
                httpsPort: .literal(200),
              ),
            ],
          ),
        ],
        backendPoolHealthProbe: [
          FrontdoorBackendPoolHealthProbe(name: .literal(leftover)),
        ],
        backendPoolLoadBalancing: [
          FrontdoorBackendPoolLoadBalancing(name: .literal(leftover)),
        ],
        frontendEndpoint: [
          FrontdoorFrontendEndpoint(
            hostName: .literal(leftover),
            name: .literal(leftover),
          ),
        ],
        routingRule: [
          FrontdoorRoutingRule(
            acceptedProtocols: [.http],
            frontendEndpoints: .literal([leftover]),
            name: .literal(leftover),
            patternsToMatch: .literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AzurermFrontdoorCustomHttpsConfiguration(
        'frontdoor_custom_https_configuration',
        customHttpsProvisioningEnabled: .literal(true),
        frontendEndpointId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/frontDoors/frontDoorName/frontendEndpoints/frontendEndpointName',
        ),
      ),
    );

    add(
      AzurermFrontdoorFirewallPolicy(
        'frontdoor_firewall_policy',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermFrontdoorRulesEngine(
        'frontdoor_rules_engine',
        frontdoorName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermFunctionAppActiveSlot(
        'function_app_active_slot',
        slotId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteName/slots/slotName',
        ),
      ),
    );

    add(
      AzurermFunctionAppConnection(
        'function_app_connection',
        functionAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
        name: .literal(leftover),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        authentication: FunctionAppConnectionAuthentication(
          type: .literal('secret'),
        ),
      ),
    );

    add(
      AzurermFunctionAppFlexConsumption(
        'function_app_flex_consumption',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        runtimeName: .custom,
        runtimeVersion: .literal(leftover),
        servicePlanId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/serverFarms/serverFarmValue',
        ),
        storageAuthenticationType: .storageaccountconnectionstring,
        storageContainerEndpoint: .literal(leftover),
        storageContainerType: .literal('blobContainer'),
        siteConfig: FunctionAppFlexConsumptionSiteConfig(
          apiDefinitionUrl: .literal('https://example.com'),
        ),
      ),
    );

    add(
      AzurermFunctionAppHybridConnection(
        'function_app_hybrid_connection',
        functionAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
        hostname: .literal(leftover),
        port: .literal(200),
        relayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Relay/namespaces/namespaceName/hybridConnections/hybridConnectionName',
        ),
      ),
    );

    add(
      AzurermGalleryApplication(
        'gallery_application',
        galleryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/galleries/galleryValue',
        ),
        location: .literal(location),
        name: .literal(leftover),
        supportedOsType: .linux,
      ),
    );

    add(
      AzurermGalleryApplicationVersion(
        'gallery_application_version',
        galleryApplicationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/galleries/galleryName/applications/applicationName',
        ),
        location: .literal(location),
        name: .literal('latest'),
        manageAction: GalleryApplicationVersionManageAction(
          install: .literal(leftover),
          remove: .literal(leftover),
        ),
        source: GalleryApplicationVersionSource(
          mediaLink: .literal('https://example.com/leftover'),
        ),
        targetRegion: [
          GalleryApplicationVersionTargetRegion(
            name: .literal(leftover),
            regionalReplicaCount: .literal(1),
          ),
        ],
      ),
    );

    add(
      AzurermGraphServicesAccount(
        'graph_services_account',
        applicationId: .literal('11111111-1111-1111-1111-111111111111'),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermHdinsightHadoopCluster(
        'hdinsight_hadoop_cluster',
        clusterVersion: .literal('1.1'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        tier: .literal('Premium'),
        tlsMinVersion: .literal('1.0'),
        componentVersion: HdinsightHadoopClusterComponentVersion(
          hadoop: .literal(leftover),
        ),
        gateway: HdinsightHadoopClusterGateway(
          password: leftoverSecret,
          username: .literal(leftover),
        ),
        roles: HdinsightHadoopClusterRoles(
          headNode: .new(
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
          workerNode: .new(
            targetInstanceCount: .literal(200),
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
          zookeeperNode: .new(
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
        ),
      ),
    );

    add(
      AzurermHdinsightHbaseCluster(
        'hdinsight_hbase_cluster',
        clusterVersion: .literal('1.1'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        tier: .literal('Premium'),
        tlsMinVersion: .literal('1.0'),
        componentVersion: HdinsightHbaseClusterComponentVersion(
          hbase: .literal(leftover),
        ),
        gateway: HdinsightHbaseClusterGateway(
          password: leftoverSecret,
          username: .literal(leftover),
        ),
        roles: HdinsightHbaseClusterRoles(
          headNode: .new(
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
          workerNode: .new(
            targetInstanceCount: .literal(200),
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
          zookeeperNode: .new(
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
        ),
      ),
    );

    add(
      AzurermHdinsightInteractiveQueryCluster(
        'hdinsight_interactive_query_cluster',
        clusterVersion: .literal('1.1'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        tier: .literal('Premium'),
        tlsMinVersion: .literal('1.0'),
        componentVersion: HdinsightInteractiveQueryClusterComponentVersion(
          interactiveHive: .literal(leftover),
        ),
        gateway: HdinsightInteractiveQueryClusterGateway(
          password: leftoverSecret,
          username: .literal(leftover),
        ),
        roles: HdinsightInteractiveQueryClusterRoles(
          headNode: .new(
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
          workerNode: .new(
            targetInstanceCount: .literal(200),
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
          zookeeperNode: .new(
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
        ),
      ),
    );

    add(
      AzurermHdinsightKafkaCluster(
        'hdinsight_kafka_cluster',
        clusterVersion: .literal('1.1'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        tier: .literal('Premium'),
        tlsMinVersion: .literal('1.0'),
        componentVersion: HdinsightKafkaClusterComponentVersion(
          kafka: .literal(leftover),
        ),
        gateway: HdinsightKafkaClusterGateway(
          password: leftoverSecret,
          username: .literal(leftover),
        ),
        roles: HdinsightKafkaClusterRoles(
          headNode: .new(
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
          workerNode: .new(
            numberOfDisksPerNode: .literal(1),
            targetInstanceCount: .literal(200),
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
          zookeeperNode: .new(
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
        ),
      ),
    );

    add(
      AzurermHdinsightSparkCluster(
        'hdinsight_spark_cluster',
        clusterVersion: .literal('1.1'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        tier: .literal('Premium'),
        tlsMinVersion: .literal('1.0'),
        componentVersion: HdinsightSparkClusterComponentVersion(
          spark: .literal(leftover),
        ),
        gateway: HdinsightSparkClusterGateway(
          password: leftoverSecret,
          username: .literal(leftover),
        ),
        roles: HdinsightSparkClusterRoles(
          headNode: .new(
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
          workerNode: .new(
            targetInstanceCount: .literal(200),
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
          zookeeperNode: .new(
            username: .literal(leftover),
            vmSize: .literal('ExtraSmall'),
          ),
        ),
      ),
    );

    add(
      AzurermHealthbot(
        'healthbot',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .c1,
      ),
    );

    add(
      AzurermHealthcareDicomService(
        'healthcare_dicom_service',
        location: .literal(location),
        name: .literal(leftover),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HealthcareApis/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermHealthcareFhirService(
        'healthcare_fhir_service',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HealthcareApis/workspaces/workspaceName',
        ),
        authentication: HealthcareFhirServiceAuthentication(
          audience: .literal(leftover),
          authority: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermHealthcareMedtechService(
        'healthcare_medtech_service',
        deviceMappingJson: .literal(leftover),
        eventhubConsumerGroupName: .literal(leftover),
        eventhubName: .literal(leftover),
        eventhubNamespaceName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HealthcareApis/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermHealthcareMedtechServiceFhirDestination(
        'healthcare_medtech_service_fhir_destination',
        destinationFhirMappingJson: .literal(leftover),
        destinationFhirServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HealthcareApis/workspaces/workspaceName/fhirServices/fhirServiceName',
        ),
        destinationIdentityResolutionType: .create,
        location: .literal(location),
        medtechServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HealthcareApis/workspaces/workspaceName/iotConnectors/iotConnectorName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermHealthcareService(
        'healthcare_service',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermHealthcareWorkspace(
        'healthcare_workspace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermImage(
        'image',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermIotcentralApplication(
        'iotcentral_application',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        subDomain: .literal(leftover),
      ),
    );

    add(
      AzurermIotcentralApplicationNetworkRuleSet(
        'iotcentral_application_network_rule_set',
        iotcentralApplicationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.IoTCentral/iotApps/iotAppName',
        ),
      ),
    );

    add(
      AzurermIothub(
        'iothub',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: IothubSku(capacity: .literal(200), name: .literal('B1')),
      ),
    );

    add(
      AzurermIothubCertificate(
        'iothub_certificate',
        certificateContent: leftoverSecret,
        iothubName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermIothubConsumerGroup(
        'iothub_consumer_group',
        eventhubEndpointName: .literal(leftover),
        iothubName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermIothubDeviceUpdateAccount(
        'iothub_device_update_account',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermIothubDps(
        'iothub_dps',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: IothubDpsSku(capacity: .literal(200), name: .literal('S1')),
      ),
    );

    add(
      AzurermIothubDpsCertificate(
        'iothub_dps_certificate',
        certificateContent: leftoverSecret,
        iotDpsName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermIothubDpsSharedAccessPolicy(
        'iothub_dps_shared_access_policy',
        iothubDpsName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermIothubEnrichment(
        'iothub_enrichment',
        endpointNames: .literal([leftover]),
        iothubName: .literal(leftover),
        key: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        value: .literal(leftover),
      ),
    );

    add(
      AzurermIothubFallbackRoute(
        'iothub_fallback_route',
        enabled: .literal(true),
        endpointNames: .literal([leftover]),
        iothubName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermIothubRoute(
        'iothub_route',
        enabled: .literal(true),
        endpointNames: .literal([leftover]),
        iothubName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        source: .literal('DeviceConnectionStateEvents'),
      ),
    );

    add(
      AzurermIothubSharedAccessPolicy(
        'iothub_shared_access_policy',
        iothubName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermIpGroup(
        'ip_group',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermIpGroupCidr(
        'ip_group_cidr',
        cidr: .literal('192.0.2.0/24'),
        ipGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/ipGroups/ipGroupName',
        ),
      ),
    );

    add(
      AzurermKeyVault(
        'key_vault',
        location: .literal(location),
        name: .literal(leftover),
        rbacAuthorizationEnabled: .literal(true),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .premium,
        tenantId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermKeyVaultAccessPolicy(
        'key_vault_access_policy',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        objectId: .literal('11111111-1111-1111-1111-111111111111'),
        tenantId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermKeyVaultCertificateContacts(
        'key_vault_certificate_contacts',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        contact: [
          KeyVaultCertificateContactsContact(
            email: .literal('leftover@example.com'),
          ),
        ],
      ),
    );

    add(
      AzurermKeyVaultCertificateIssuer(
        'key_vault_certificate_issuer',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        name: .literal(leftover),
        providerName: .digicert,
      ),
    );

    add(
      AzurermKeyVaultKey(
        'key_vault_key',
        keyOpts: .literal(['decrypt']),
        keyType: .literal('EC'),
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition(
        'key_vault_managed_hardware_security_module_role_',
        managedHsmId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/managedHSMs/managedHSMName',
        ),
        name: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermKeyVaultManagedStorageAccount(
        'key_vault_managed_storage_account',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        storageAccountKey: .key1,
      ),
    );

    add(
      AzurermKeyVaultSecret(
        'key_vault_secret',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        name: .literal(leftover),
        value: .value(leftoverSecret),
      ),
    );

    add(
      AzurermKubernetesAutomaticCluster(
        'kubernetes_automatic_cluster',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        identity: KubernetesAutomaticClusterIdentity(
          type: .literal('UserAssigned'),
        ),
      ),
    );

    add(
      AzurermKubernetesClusterDeploymentSafeguard(
        'kubernetes_cluster_deployment_safeguard',
        kubernetesClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerService/managedClusters/managedClusterValue',
        ),
        level: .enforce,
      ),
    );

    add(
      AzurermKubernetesClusterExtension(
        'kubernetes_cluster_extension',
        clusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerService/managedClusters/managedClusterValue',
        ),
        extensionType: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermKubernetesClusterNodePool(
        'kubernetes_cluster_node_pool',
        kubernetesClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerService/managedClusters/managedClusterValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermKubernetesClusterTrustedAccessRoleBinding(
        'kubernetes_cluster_trusted_access_role_binding',
        kubernetesClusterId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        name: .literal(leftover),
        roles: .literal([leftover]),
        sourceResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermKubernetesFleetManager(
        'kubernetes_fleet_manager',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermKubernetesFleetMember(
        'kubernetes_fleet_member',
        kubernetesClusterId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        kubernetesFleetId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermKubernetesFleetUpdateRun(
        'kubernetes_fleet_update_run',
        kubernetesFleetManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerService/fleets/fleetValue',
        ),
        name: .literal(leftover),
        managedClusterUpdate: KubernetesFleetUpdateRunManagedClusterUpdate(
          upgrade: .new(type: .literal('Full')),
        ),
      ),
    );

    add(
      AzurermKubernetesFleetUpdateStrategy(
        'kubernetes_fleet_update_strategy',
        kubernetesFleetManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerService/fleets/fleetName',
        ),
        name: .literal(leftover),
        stage: [
          KubernetesFleetUpdateStrategyStage(
            name: .literal(leftover),
            group: [.new(name: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      AzurermKubernetesFluxConfiguration(
        'kubernetes_flux_configuration',
        clusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerService/managedClusters/managedClusterValue',
        ),
        name: .literal(leftover),
        namespace: .literal(leftover),
        source: .blobStorage(
          .new(
            credentials: .accountKey(leftoverSecret),
            containerId: .literal(
              '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
            ),
          ),
        ),
        kustomizations: [
          KubernetesFluxConfigurationKustomizations(name: .literal(leftover)),
        ],
      ),
    );

    add(
      AzurermKustoAttachedDatabaseConfiguration(
        'kusto_attached_database_configuration',
        clusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Kusto/clusters/clusterValue',
        ),
        clusterName: .literal(leftover),
        databaseName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermKustoCluster(
        'kusto_cluster',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: KustoClusterSku(name: .devNoSlaStandardD11V2),
      ),
    );

    add(
      AzurermKustoClusterCustomerManagedKey(
        'kusto_cluster_customer_managed_key',
        clusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Kusto/clusters/clusterValue',
        ),
        keyIdentifier: .keyVaultId(
          .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
          ),
        ),
      ),
    );

    add(
      AzurermKustoClusterManagedPrivateEndpoint(
        'kusto_cluster_managed_private_endpoint',
        clusterName: .literal(leftover),
        groupId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        name: .literal(leftover),
        privateLinkResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermKustoClusterPrincipalAssignment(
        'kusto_cluster_principal_assignment',
        clusterName: .literal(leftover),
        name: .literal(leftover),
        principalId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        principalType: .app,
        resourceGroupName: .literal(resourceGroupName),
        role: .alldatabasesadmin,
        tenantId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermKustoCosmosdbDataConnection(
        'kusto_cosmosdb_data_connection',
        cosmosdbContainerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/databaseAccounts/databaseAccountName/sqlDatabases/sqlDatabaseName/containers/containerName',
        ),
        kustoDatabaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Kusto/clusters/clusterValue/databases/databaseValue',
        ),
        location: .literal(location),
        managedIdentityId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        name: .literal(leftover),
        tableName: .literal(leftover),
      ),
    );

    add(
      AzurermKustoDatabase(
        'kusto_database',
        clusterName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermKustoDatabasePrincipalAssignment(
        'kusto_database_principal_assignment',
        clusterName: .literal(leftover),
        databaseName: .literal(leftover),
        name: .literal(leftover),
        principalId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        principalType: .app,
        resourceGroupName: .literal(resourceGroupName),
        role: .admin,
        tenantId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermKustoEventgridDataConnection(
        'kusto_eventgrid_data_connection',
        clusterName: .literal(leftover),
        databaseName: .literal(leftover),
        eventhubConsumerGroupName: .literal(leftover),
        eventhubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.EventHub/namespaces/namespaceName/eventhubs/eventhubName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermKustoEventhubDataConnection(
        'kusto_eventhub_data_connection',
        clusterName: .literal(leftover),
        consumerGroup: .literal(leftover),
        databaseName: .literal(leftover),
        eventhubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.EventHub/namespaces/namespaceName/eventhubs/eventhubName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermKustoScript(
        'kusto_script',
        databaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Kusto/clusters/clusterValue/databases/databaseValue',
        ),
        name: .literal(leftover),
        content: .scriptContent(leftoverSecret),
      ),
    );

    add(
      AzurermLb(
        'lb',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermLbBackendAddressPool(
        'lb_backend_address_pool',
        loadbalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroupName/providers/Microsoft.Network/loadBalancers/loadBalancerName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermLbBackendAddressPoolAddress(
        'lb_backend_address_pool_address',
        backendAddressPoolId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/loadBalancers/loadBalancerName/backendAddressPools/backendAddressPoolName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermLbNatPool(
        'lb_nat_pool',
        backendPort: .literal(200),
        frontendIpConfigurationName: .literal(leftover),
        frontendPortEnd: .literal(200),
        frontendPortStart: .literal(200),
        loadbalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroupName/providers/Microsoft.Network/loadBalancers/loadBalancerName',
        ),
        name: .literal(leftover),
        protocol: .literal('All'),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermLbNatRule(
        'lb_nat_rule',
        backendPort: .literal(200),
        frontendIpConfigurationName: .literal(leftover),
        loadbalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroupName/providers/Microsoft.Network/loadBalancers/loadBalancerName',
        ),
        name: .literal(leftover),
        protocol: .literal('All'),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermLbOutboundRule(
        'lb_outbound_rule',
        backendAddressPoolId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        loadbalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroupName/providers/Microsoft.Network/loadBalancers/loadBalancerName',
        ),
        name: .literal(leftover),
        protocol: .literal('All'),
      ),
    );

    add(
      AzurermLbProbe(
        'lb_probe',
        loadbalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroupName/providers/Microsoft.Network/loadBalancers/loadBalancerName',
        ),
        name: .literal(leftover),
        port: .literal(200),
      ),
    );

    add(
      AzurermLbRule(
        'lb_rule',
        backendPort: .literal(200),
        frontendIpConfigurationName: .literal(leftover),
        frontendPort: .literal(200),
        loadbalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroupName/providers/Microsoft.Network/loadBalancers/loadBalancerName',
        ),
        name: .literal(leftover),
        protocol: .literal('All'),
      ),
    );

    add(
      AzurermLinuxFunctionApp(
        'linux_function_app',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        servicePlanId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/serverFarms/serverFarmValue',
        ),
        storage: .storageAccountName(.literal(leftover)),
        siteConfig: LinuxFunctionAppSiteConfig(alwaysOn: .literal(true)),
      ),
    );

    add(
      AzurermLinuxFunctionAppSlot(
        'linux_function_app_slot',
        functionAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
        name: .literal(leftover),
        storage: .storageAccountName(.literal(leftover)),
        siteConfig: LinuxFunctionAppSlotSiteConfig(alwaysOn: .literal(true)),
      ),
    );

    add(
      AzurermLinuxWebApp(
        'linux_web_app',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        servicePlanId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/serverFarms/serverFarmValue',
        ),
        siteConfig: LinuxWebAppSiteConfig(alwaysOn: .literal(true)),
      ),
    );

    add(
      AzurermLinuxWebAppSlot(
        'linux_web_app_slot',
        appServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
        name: .literal(leftover),
        siteConfig: LinuxWebAppSlotSiteConfig(alwaysOn: .literal(true)),
      ),
    );

    add(
      AzurermLoadTest(
        'load_test',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermLocalNetworkGateway(
        'local_network_gateway',
        address: .gatewayAddress(.literal(leftover)),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermLogAnalyticsCluster(
        'log_analytics_cluster',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        identity: LogAnalyticsClusterIdentity(type: .literal('UserAssigned')),
      ),
    );

    add(
      AzurermLogAnalyticsDataExportRule(
        'log_analytics_data_export_rule',
        destinationResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        tableNames: .literal([leftover]),
        workspaceResourceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermLogAnalyticsDatasourceWindowsEvent(
        'log_analytics_datasource_windows_event',
        eventLogName: .literal(leftover),
        eventTypes: [.error],
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        workspaceName: .literal(leftover),
      ),
    );

    add(
      AzurermLogAnalyticsDatasourceWindowsPerformanceCounter(
        'log_analytics_datasource_windows_performance_cou',
        counterName: .literal(leftover),
        instanceName: .literal(leftover),
        intervalSeconds: .literal(200),
        name: .literal(leftover),
        objectName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        workspaceName: .literal(leftover),
      ),
    );

    add(
      AzurermLogAnalyticsLinkedService(
        'log_analytics_linked_service',
        accessId: .readAccessId(
          .literal(
            '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
          ),
        ),
        resourceGroupName: .literal(resourceGroupName),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermLogAnalyticsQueryPack(
        'log_analytics_query_pack',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermLogAnalyticsQueryPackQuery(
        'log_analytics_query_pack_query',
        body: .literal(leftover),
        displayName: .literal(leftover),
        queryPackId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/queryPacks/queryPackName',
        ),
      ),
    );

    add(
      AzurermLogAnalyticsSavedSearch(
        'log_analytics_saved_search',
        category: .literal(leftover),
        displayName: .literal(leftover),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
        query: .literal(leftover),
      ),
    );

    add(
      AzurermLogAnalyticsSolution(
        'log_analytics_solution',
        location: .literal(location),
        resourceGroupName: .literal(resourceGroupName),
        solutionName: .literal(leftover),
        workspaceName: .literal(leftover),
        workspaceResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        plan: LogAnalyticsSolutionPlan(
          product: .literal(leftover),
          publisher: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermLogAnalyticsStorageInsights(
        'log_analytics_storage_insights',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        storageAccountKey: leftoverSecret,
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermLogAnalyticsWorkspace(
        'log_analytics_workspace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermLogAnalyticsWorkspaceTable(
        'log_analytics_workspace_table',
        name: .literal(leftover),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermLogAnalyticsWorkspaceTableMicrosoft(
        'log_analytics_workspace_table_microsoft',
        name: .alert,
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermLogicAppActionHttp(
        'logic_app_action_http',
        logicAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Logic/workflows/workflowName',
        ),
        method: .literal('DELETE'),
        name: .literal(leftover),
        uri: .literal('https://example.com'),
      ),
    );

    add(
      AzurermLogicAppIntegrationAccount(
        'logic_app_integration_account',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .literal('Basic'),
      ),
    );

    add(
      AzurermLogicAppIntegrationAccountBatchConfiguration(
        'logic_app_integration_account_batch_configuratio',
        batchGroupName: .literal(leftover),
        integrationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        releaseCriteria:
            LogicAppIntegrationAccountBatchConfigurationReleaseCriteria(
              batchSize: .literal(200),
            ),
      ),
    );

    add(
      AzurermLogicAppIntegrationAccountMap(
        'logic_app_integration_account_map',
        content: .literal(leftover),
        integrationAccountName: .literal(leftover),
        mapType: .liquid,
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermLogicAppIntegrationAccountPartner(
        'logic_app_integration_account_partner',
        integrationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        businessIdentity: [
          LogicAppIntegrationAccountPartnerBusinessIdentity(
            qualifier: .literal(leftover),
            value: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermLogicAppIntegrationAccountSchema(
        'logic_app_integration_account_schema',
        content: .literal(leftover),
        integrationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermLogicAppTriggerRecurrence(
        'logic_app_trigger_recurrence',
        frequency: .month,
        interval: .literal(200),
        logicAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Logic/workflows/workflowName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermLogicAppWorkflow(
        'logic_app_workflow',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermMachineLearningComputeCluster(
        'machine_learning_compute_cluster',
        location: .literal(location),
        machineLearningWorkspaceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        name: .literal(leftover),
        vmPriority: .dedicated,
        vmSize: .literal(leftover),
        scaleSettings: MachineLearningComputeClusterScaleSettings(
          maxNodeCount: .literal(200),
          minNodeCount: .literal(200),
          scaleDownNodesAfterIdleDuration: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermMachineLearningComputeInstance(
        'machine_learning_compute_instance',
        machineLearningWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.MachineLearningServices/workspaces/workspaceName',
        ),
        name: .literal(leftover),
        virtualMachineSize: .literal(leftover),
      ),
    );

    add(
      AzurermMachineLearningDatastoreBlobstorage(
        'machine_learning_datastore_blobstorage',
        name: .literal(leftover),
        storageContainerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue/blobServices/default/containers/containerValue',
        ),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.MachineLearningServices/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermMachineLearningDatastoreDatalakeGen2(
        'machine_learning_datastore_datalake_gen2',
        name: .literal(leftover),
        storageContainerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue/blobServices/default/containers/containerValue',
        ),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.MachineLearningServices/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermMachineLearningDatastoreFileshare(
        'machine_learning_datastore_fileshare',
        credentials: .accountKey(leftoverSecret),
        name: .literal(leftover),
        storageFileshareId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountName/fileServices/default/shares/shareName',
        ),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.MachineLearningServices/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermMachineLearningInferenceCluster(
        'machine_learning_inference_cluster',
        kubernetesClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerService/managedClusters/managedClusterValue',
        ),
        location: .literal(location),
        machineLearningWorkspaceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermMachineLearningWorkspace(
        'machine_learning_workspace',
        applicationInsightsId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Insights/components/componentName',
        ),
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        identity: MachineLearningWorkspaceIdentity(
          type: .literal('UserAssigned'),
        ),
      ),
    );

    add(
      AzurermMachineLearningWorkspaceNetworkOutboundRuleFqdn(
        'machine_learning_workspace_network_outbound_rule',
        destinationFqdn: .literal(leftover),
        name: .literal(leftover),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.MachineLearningServices/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermMachineLearningWorkspaceNetworkOutboundRulePrivateEndpoint(
        'machine_learning_workspace_network_outbound_ru_2',
        name: .literal(leftover),
        serviceResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        subResourceTarget: .account,
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.MachineLearningServices/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermMachineLearningWorkspaceNetworkOutboundRuleServiceTag(
        'machine_learning_workspace_network_outbound_ru_3',
        name: .literal(leftover),
        portRanges: .literal(leftover),
        protocol: .value,
        serviceTag: .appconfiguration,
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.MachineLearningServices/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermMaintenanceAssignmentDedicatedHost(
        'maintenance_assignment_dedicated_host',
        dedicatedHostId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/hostGroups/hostGroupValue/hosts/hostValue',
        ),
        location: .literal(location),
        maintenanceConfigurationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Maintenance/maintenanceConfigurations/maintenanceConfigurationName',
        ),
      ),
    );

    add(
      AzurermMaintenanceAssignmentDynamicScope(
        'maintenance_assignment_dynamic_scope',
        maintenanceConfigurationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Maintenance/maintenanceConfigurations/maintenanceConfigurationName',
        ),
        name: .literal(leftover),
        filter: MaintenanceAssignmentDynamicScopeFilter(
          locations: .literal([leftover]),
        ),
      ),
    );

    add(
      AzurermMaintenanceAssignmentVirtualMachine(
        'maintenance_assignment_virtual_machine',
        location: .literal(location),
        maintenanceConfigurationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Maintenance/maintenanceConfigurations/maintenanceConfigurationName',
        ),
        virtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineName',
        ),
      ),
    );

    add(
      AzurermMaintenanceAssignmentVirtualMachineScaleSet(
        'maintenance_assignment_virtual_machine_scale_set',
        location: .literal(location),
        maintenanceConfigurationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Maintenance/maintenanceConfigurations/maintenanceConfigurationName',
        ),
        virtualMachineScaleSetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachineScaleSets/virtualMachineScaleSetValue',
        ),
      ),
    );

    add(
      AzurermMaintenanceConfiguration(
        'maintenance_configuration',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scope: .literal('Extension'),
      ),
    );

    add(
      AzurermManagedApplication(
        'managed_application',
        kind: .marketplace,
        location: .literal(location),
        managedResourceGroupName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermManagedApplicationDefinition(
        'managed_application_definition',
        displayName: .literal(leftover),
        location: .literal(location),
        lockLevel: .cannotdelete,
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermManagedDisk(
        'managed_disk',
        createOption: .literal('Copy'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageAccountType: .premiumLrs,
      ),
    );

    add(
      AzurermManagedDiskSasToken(
        'managed_disk_sas_token',
        accessLevel: .literal('Read'),
        durationInSeconds: .literal(200),
        managedDiskId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/disks/diskValue',
        ),
      ),
    );

    add(
      AzurermManagedRedis(
        'managed_redis',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .literal('Balanced_B0'),
      ),
    );

    add(
      AzurermManagedRedisAccessPolicyAssignment(
        'managed_redis_access_policy_assignment',
        managedRedisId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cache/redisEnterprise/redisEnterpriseName',
        ),
        objectId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(AzurermManagementGroup('management_group'));

    add(
      AzurermManagementGroupTemplateDeployment(
        'management_group_template_deployment',
        location: .literal(location),
        managementGroupId: .literal(
          '/providers/Microsoft.Management/managementGroups/leftover',
        ),
        name: .literal(leftover),
        template: .templateContent(.literal(leftover)),
      ),
    );

    add(
      AzurermManagementLock(
        'management_lock',
        lockLevel: .literal('CanNotDelete'),
        name: .literal(leftover),
        scope: .literal(leftover),
      ),
    );

    add(
      AzurermMapsAccount(
        'maps_account',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .g2,
      ),
    );

    add(
      AzurermMarketplaceAgreement(
        'marketplace_agreement',
        offer: .literal(leftover),
        plan: .literal(leftover),
        publisher: .literal(leftover),
      ),
    );

    add(
      AzurermMarketplaceRoleAssignment(
        'marketplace_role_assignment',
        principalId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermMongoCluster(
        'mongo_cluster',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermMongoClusterFirewallRule(
        'mongo_cluster_firewall_rule',
        endIpAddress: .literal('10.0.0.1'),
        mongoClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/mongoClusters/mongoClusterName',
        ),
        name: .literal(leftover),
        startIpAddress: .literal('10.0.0.1'),
      ),
    );

    add(
      AzurermMongoClusterUser(
        'mongo_cluster_user',
        identityProviderType: .literal('MicrosoftEntraID'),
        mongoClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/mongoClusters/mongoClusterName',
        ),
        objectId: .literal('11111111-1111-1111-1111-111111111111'),
        principalType: .serviceprincipal,
        role: [
          MongoClusterUserRole(
            database: .literal(leftover),
            name: .literal('root'),
          ),
        ],
      ),
    );

    add(
      AzurermMonitorActionGroup(
        'monitor_action_group',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        shortName: .literal(leftover),
      ),
    );

    add(
      AzurermMonitorActivityLogAlert(
        'monitor_activity_log_alert',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scopes: .literal([leftover]),
        criteria: MonitorActivityLogAlertCriteria(category: .administrative),
      ),
    );

    add(
      AzurermMonitorAlertProcessingRuleActionGroup(
        'monitor_alert_processing_rule_action_group',
        addActionGroupIds: .literal([
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Insights/actionGroups/actionGroupName',
        ]),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scopes: .literal([
          '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
        ]),
      ),
    );

    add(
      AzurermMonitorAlertProcessingRuleSuppression(
        'monitor_alert_processing_rule_suppression',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scopes: .literal([
          '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
        ]),
      ),
    );

    add(
      AzurermMonitorAlertPrometheusRuleGroup(
        'monitor_alert_prometheus_rule_group',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scopes: .literal([leftover]),
        rule: [
          MonitorAlertPrometheusRuleGroupRule(expression: .literal(leftover)),
        ],
      ),
    );

    add(
      AzurermMonitorAutoscaleSetting(
        'monitor_autoscale_setting',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        profile: [
          MonitorAutoscaleSettingProfile(
            name: .literal(leftover),
            capacity: .new(
              defaultCase: .literal(200),
              maximum: .literal(200),
              minimum: .literal(200),
            ),
          ),
        ],
      ),
    );

    add(
      AzurermMonitorDataCollectionEndpoint(
        'monitor_data_collection_endpoint',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermMonitorDataCollectionRule(
        'monitor_data_collection_rule',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        dataFlow: [
          MonitorDataCollectionRuleDataFlow(
            destinations: .literal([leftover]),
            streams: .literal([leftover]),
          ),
        ],
        destinations: MonitorDataCollectionRuleDestinations(
          azureMonitorMetrics: .new(name: .literal(leftover)),
        ),
      ),
    );

    add(
      AzurermMonitorDataCollectionRuleAssociation(
        'monitor_data_collection_rule_association',
        dataCollection: .dataCollectionEndpointId(
          .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Insights/dataCollectionEndpoints/dataCollectionEndpointName',
          ),
        ),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermMonitorPrivateLinkScope(
        'monitor_private_link_scope',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermMonitorPrivateLinkScopedService(
        'monitor_private_link_scoped_service',
        linkedResourceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Insights/components/componentName',
        ),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scopeName: .literal(leftover),
      ),
    );

    add(
      AzurermMonitorScheduledQueryRulesAlert(
        'monitor_scheduled_query_rules_alert',
        dataSourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        frequency: .literal(200),
        location: .literal(location),
        name: .literal(leftover),
        query: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        timeWindow: .literal(200),
        action: MonitorScheduledQueryRulesAlertAction(
          actionGroup: .literal([
            '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
          ]),
        ),
        trigger: MonitorScheduledQueryRulesAlertTrigger(
          operator: .greaterthan,
          threshold: .literal(200),
        ),
      ),
    );

    add(
      AzurermMonitorScheduledQueryRulesAlertV2(
        'monitor_scheduled_query_rules_alert_v2',
        evaluationFrequency: .pt1m,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scopes: .literal([
          '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
        ]),
        severity: .literal(0),
        windowDuration: .pt1m,
        criteria: [
          MonitorScheduledQueryRulesAlertV2Criteria(
            operator: .literal('Equal'),
            query: .literal(leftover),
            threshold: .literal(200),
            timeAggregationMethod: .average,
          ),
        ],
      ),
    );

    add(
      AzurermMonitorScheduledQueryRulesLog(
        'monitor_scheduled_query_rules_log',
        dataSourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        criteria: MonitorScheduledQueryRulesLogCriteria(
          metricName: .literal(leftover),
          dimension: [
            .new(name: .literal(leftover), values: .literal([leftover])),
          ],
        ),
      ),
    );

    add(
      AzurermMonitorWorkspace(
        'monitor_workspace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermMssqlDatabase(
        'mssql_database',
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue',
        ),
      ),
    );

    add(
      AzurermMssqlDatabaseExtendedAuditingPolicy(
        'mssql_database_extended_auditing_policy',
        databaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue/databases/databaseValue',
        ),
      ),
    );

    add(
      AzurermMssqlElasticpool(
        'mssql_elasticpool',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serverName: .literal(leftover),
        perDatabaseSettings: MssqlElasticpoolPerDatabaseSettings(
          maxCapacity: .literal(200),
          minCapacity: .literal(200),
        ),
        sku: MssqlElasticpoolSku(
          capacity: .literal(200),
          name: .basicpool,
          tier: .basic,
        ),
      ),
    );

    add(
      AzurermMssqlFailoverGroup(
        'mssql_failover_group',
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue',
        ),
        partnerServer: [
          MssqlFailoverGroupPartnerServer(
            id: .literal(
              '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
            ),
          ),
        ],
        readWriteEndpointFailoverPolicy:
            MssqlFailoverGroupReadWriteEndpointFailoverPolicy(mode: .automatic),
      ),
    );

    add(
      AzurermMssqlJob(
        'mssql_job',
        jobAgentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverName/jobAgents/jobAgentName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermMssqlJobAgent(
        'mssql_job_agent',
        databaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue/databases/databaseValue',
        ),
        location: .literal(location),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermMssqlJobCredential(
        'mssql_job_credential',
        jobAgentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverName/jobAgents/jobAgentName',
        ),
        name: .literal(leftover),
        password: .password(leftoverSecret),
        username: .literal(leftover),
      ),
    );

    add(
      AzurermMssqlJobSchedule(
        'mssql_job_schedule',
        jobId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverName/jobAgents/jobAgentName/jobs/jobName',
        ),
        type: .once,
      ),
    );

    add(
      AzurermMssqlJobStep(
        'mssql_job_step',
        jobId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverName/jobAgents/jobAgentName/jobs/jobName',
        ),
        jobStepIndex: .literal(200),
        jobTargetGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverName/jobAgents/jobAgentName/targetGroups/targetGroupName',
        ),
        name: .literal(leftover),
        sqlScript: .literal(leftover),
      ),
    );

    add(
      AzurermMssqlJobTargetGroup(
        'mssql_job_target_group',
        jobAgentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverName/jobAgents/jobAgentName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermMssqlManagedDatabase(
        'mssql_managed_database',
        managedInstanceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/managedInstances/managedInstanceValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermMssqlManagedInstanceActiveDirectoryAdministrator(
        'mssql_managed_instance_active_directory_administ',
        loginUsername: .literal(leftover),
        managedInstanceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/managedInstances/managedInstanceValue',
        ),
        objectId: .literal('11111111-1111-1111-1111-111111111111'),
        tenantId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermMssqlManagedInstanceFailoverGroup(
        'mssql_managed_instance_failover_group',
        location: .literal(location),
        managedInstanceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/managedInstances/managedInstanceValue',
        ),
        name: .literal(leftover),
        partnerManagedInstanceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        readWriteEndpointFailoverPolicy:
            MssqlManagedInstanceFailoverGroupReadWriteEndpointFailoverPolicy(
              mode: .automatic,
            ),
      ),
    );

    add(
      AzurermMssqlManagedInstanceSecurityAlertPolicy(
        'mssql_managed_instance_security_alert_policy',
        managedInstanceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermMssqlManagedInstanceStartStopSchedule(
        'mssql_managed_instance_start_stop_schedule',
        managedInstanceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/managedInstances/managedInstanceValue',
        ),
        schedule: [
          MssqlManagedInstanceStartStopSchedule(
            startDay: .friday,
            startTime: .literal(leftover),
            stopDay: .friday,
            stopTime: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermMssqlManagedInstanceTransparentDataEncryption(
        'mssql_managed_instance_transparent_data_encrypti',
        managedInstanceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/managedInstances/managedInstanceValue',
        ),
      ),
    );

    add(
      AzurermMssqlManagedInstanceVulnerabilityAssessment(
        'mssql_managed_instance_vulnerability_assessment',
        managedInstanceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/managedInstances/managedInstanceValue',
        ),
        storageContainerPath: .literal(leftover),
      ),
    );

    add(
      AzurermMssqlOutboundFirewallRule(
        'mssql_outbound_firewall_rule',
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue',
        ),
      ),
    );

    add(
      AzurermMssqlServerDnsAlias(
        'mssql_server_dns_alias',
        mssqlServerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermMssqlServerExtendedAuditingPolicy(
        'mssql_server_extended_auditing_policy',
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue',
        ),
      ),
    );

    add(
      AzurermMssqlServerMicrosoftSupportAuditingPolicy(
        'mssql_server_microsoft_support_auditing_policy',
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue',
        ),
      ),
    );

    add(
      AzurermMssqlServerSecurityAlertPolicy(
        'mssql_server_security_alert_policy',
        resourceGroupName: .literal(resourceGroupName),
        serverName: .literal(leftover),
        state: .disabled,
      ),
    );

    add(
      AzurermMssqlServerTransparentDataEncryption(
        'mssql_server_transparent_data_encryption',
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue',
        ),
      ),
    );

    add(
      AzurermMssqlServerVulnerabilityAssessment(
        'mssql_server_vulnerability_assessment',
        serverSecurityAlertPolicyId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        storageContainerPath: .literal(leftover),
      ),
    );

    add(
      AzurermMssqlVirtualMachine(
        'mssql_virtual_machine',
        virtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineValue',
        ),
      ),
    );

    add(
      AzurermMssqlVirtualNetworkRule(
        'mssql_virtual_network_rule',
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue',
        ),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermMysqlFlexibleDatabase(
        'mysql_flexible_database',
        charset: .literal(leftover),
        collation: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serverName: .literal(leftover),
      ),
    );

    add(
      AzurermMysqlFlexibleServer(
        'mysql_flexible_server',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermMysqlFlexibleServerActiveDirectoryAdministrator(
        'mysql_flexible_server_active_directory_administr',
        identityId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ManagedIdentity/userAssignedIdentities/userAssignedIdentityValue',
        ),
        login: .literal(leftover),
        objectId: .literal('11111111-1111-1111-1111-111111111111'),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforMySQL/flexibleServers/flexibleServerName',
        ),
        tenantId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermMysqlFlexibleServerConfiguration(
        'mysql_flexible_server_configuration',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serverName: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(
      AzurermMysqlFlexibleServerFirewallRule(
        'mysql_flexible_server_firewall_rule',
        endIpAddress: .literal('10.0.0.1'),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serverName: .literal(leftover),
        startIpAddress: .literal('10.0.0.1'),
      ),
    );

    add(
      AzurermNatGateway(
        'nat_gateway',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNatGatewayPublicIpAssociation(
        'nat_gateway_public_ip_association',
        natGatewayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/natGateways/natGatewayName',
        ),
        publicIpAddressId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPAddresses/publicIPAddressesValue',
        ),
      ),
    );

    add(
      AzurermNatGatewayPublicIpPrefixAssociation(
        'nat_gateway_public_ip_prefix_association',
        natGatewayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/natGateways/natGatewayName',
        ),
        publicIpPrefixId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPPrefixes/publicIPPrefixName',
        ),
      ),
    );

    add(
      AzurermNetappAccount(
        'netapp_account',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNetappBackupPolicy(
        'netapp_backup_policy',
        accountName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNetappBackupVault(
        'netapp_backup_vault',
        accountName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNetappPool(
        'netapp_pool',
        accountName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serviceLevel: .literal('Premium'),
        sizeInTb: .literal(200),
      ),
    );

    add(
      AzurermNetappSnapshot(
        'netapp_snapshot',
        accountName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        poolName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        volumeName: .literal(leftover),
      ),
    );

    add(
      AzurermNetappSnapshotPolicy(
        'netapp_snapshot_policy',
        accountName: .literal(leftover),
        enabled: .literal(true),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNetappVolume(
        'netapp_volume',
        accountName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        poolName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serviceLevel: .literal('Premium'),
        storageQuotaInGb: .literal(200),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
        volumePath: .literal(leftover),
      ),
    );

    add(
      AzurermNetappVolumeGroupOracle(
        'netapp_volume_group_oracle',
        accountName: .literal(leftover),
        applicationIdentifier: .literal(leftover),
        groupDescription: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        volume: [
          NetappVolumeGroupOracleVolume(
            capacityPoolId: .literal(
              '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
            ),
            name: .literal(leftover),
            protocols: [.nfsv4p1],
            securityStyle: .ntfs,
            serviceLevel: .literal('Premium'),
            snapshotDirectoryVisible: .literal(true),
            storageQuotaInGb: .literal(200),
            subnetId: .literal(
              '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
            ),
            throughputInMibps: .literal(200),
            volumePath: .literal(leftover),
            volumeSpecName: .oraData1,
            exportPolicyRule: [
              .new(
                allowedClients: .literal(leftover),
                nfsv3Enabled: .literal(true),
                nfsv41Enabled: .literal(true),
                ruleIndex: .literal(1),
              ),
            ],
          ),
          NetappVolumeGroupOracleVolume(
            capacityPoolId: .literal(
              '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
            ),
            name: .literal(leftover),
            protocols: [.nfsv4p1],
            securityStyle: .ntfs,
            serviceLevel: .literal('Premium'),
            snapshotDirectoryVisible: .literal(true),
            storageQuotaInGb: .literal(200),
            subnetId: .literal(
              '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
            ),
            throughputInMibps: .literal(200),
            volumePath: .literal(leftover),
            volumeSpecName: .oraData1,
            exportPolicyRule: [
              .new(
                allowedClients: .literal(leftover),
                nfsv3Enabled: .literal(true),
                nfsv41Enabled: .literal(true),
                ruleIndex: .literal(1),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AzurermNetappVolumeQuotaRule(
        'netapp_volume_quota_rule',
        location: .literal(location),
        name: .literal(leftover),
        quotaSizeInKib: .literal(200),
        quotaType: .defaultgroupquota,
        volumeId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.NetApp/netAppAccounts/netAppAccountName/capacityPools/capacityPoolName/volumes/volumeName',
        ),
      ),
    );

    add(
      AzurermNetworkConnectionMonitor(
        'network_connection_monitor',
        location: .literal(location),
        name: .literal(leftover),
        networkWatcherId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkWatchers/networkWatcherName',
        ),
        endpoint: [NetworkConnectionMonitorEndpoint(name: .literal(leftover))],
        testConfiguration: [
          NetworkConnectionMonitorTestConfiguration(
            name: .literal(leftover),
            protocol: .http,
          ),
        ],
        testGroup: [
          NetworkConnectionMonitorTestGroup(
            destinationEndpoints: .literal([leftover]),
            name: .literal(leftover),
            sourceEndpoints: .literal([leftover]),
            testConfigurationNames: .literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AzurermNetworkDdosProtectionPlan(
        'network_ddos_protection_plan',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNetworkFunctionAzureTrafficCollector(
        'network_function_azure_traffic_collector',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNetworkFunctionCollectorPolicy(
        'network_function_collector_policy',
        location: .literal(location),
        name: .literal(leftover),
        trafficCollectorId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.NetworkFunction/azureTrafficCollectors/azureTrafficCollectorName',
        ),
        ipfxEmission: NetworkFunctionCollectorPolicyIpfxEmission(
          destinationTypes: .literal(['AzureMonitor']),
        ),
        ipfxIngestion: NetworkFunctionCollectorPolicyIpfxIngestion(
          sourceResourceIds: .literal([
            '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
          ]),
        ),
      ),
    );

    add(
      AzurermNetworkInterface(
        'network_interface',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        ipConfiguration: [
          NetworkInterfaceIpConfiguration(
            name: .literal(leftover),
            privateIpAddressAllocation: .dynamic,
          ),
        ],
      ),
    );

    add(
      AzurermNetworkInterfaceApplicationSecurityGroupAssociation(
        'network_interface_application_security_group_ass',
        applicationSecurityGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/applicationSecurityGroups/applicationSecurityGroupName',
        ),
        networkInterfaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkInterfaces/networkInterfaceValue',
        ),
      ),
    );

    add(
      AzurermNetworkInterfaceBackendAddressPoolAssociation(
        'network_interface_backend_address_pool_associati',
        backendAddressPoolId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroupName/providers/Microsoft.Network/loadBalancers/loadBalancerName/backendAddressPools/backendAddressPoolName',
        ),
        ipConfigurationName: .literal(leftover),
        networkInterfaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkInterfaces/networkInterfaceValue',
        ),
      ),
    );

    add(
      AzurermNetworkInterfaceNatRuleAssociation(
        'network_interface_nat_rule_association',
        ipConfigurationName: .literal(leftover),
        natRuleId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/loadBalancers/loadBalancerName/inboundNatRules/inboundNatRuleName',
        ),
        networkInterfaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkInterfaces/networkInterfaceValue',
        ),
      ),
    );

    add(
      AzurermNetworkInterfaceSecurityGroupAssociation(
        'network_interface_security_group_association',
        networkInterfaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkInterfaces/networkInterfaceValue',
        ),
        networkSecurityGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkSecurityGroups/networkSecurityGroupName',
        ),
      ),
    );

    add(
      AzurermNetworkManager(
        'network_manager',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scope: NetworkManagerScope(
          managementGroupIds: .literal([
            '/providers/Microsoft.Management/managementGroups/leftover',
          ]),
        ),
      ),
    );

    add(
      AzurermNetworkManagerAdminRule(
        'network_manager_admin_rule',
        action: .allow,
        adminRuleCollectionId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName/securityAdminConfigurations/securityAdminConfigurationName/ruleCollections/ruleCollectionName',
        ),
        direction: .inbound,
        name: .literal(leftover),
        priority: .literal(200),
        protocol: .ah,
      ),
    );

    add(
      AzurermNetworkManagerAdminRuleCollection(
        'network_manager_admin_rule_collection',
        name: .literal(leftover),
        networkGroupIds: .literal([
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName/networkGroups/networkGroupName',
        ]),
        securityAdminConfigurationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName/securityAdminConfigurations/securityAdminConfigurationName',
        ),
      ),
    );

    add(
      AzurermNetworkManagerConnectivityConfiguration(
        'network_manager_connectivity_configuration',
        connectivityTopology: .hubandspoke,
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
        appliesToGroup: [
          NetworkManagerConnectivityConfigurationAppliesToGroup(
            groupConnectivity: .directlyconnected,
            networkGroupId: .literal(
              '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
            ),
          ),
        ],
      ),
    );

    add(
      AzurermNetworkManagerDeployment(
        'network_manager_deployment',
        configurationIds: .literal([
          '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
        ]),
        location: .literal(location),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
        scopeAccess: .literal('Connectivity'),
      ),
    );

    add(
      AzurermNetworkManagerIpamPool(
        'network_manager_ipam_pool',
        addressPrefixes: .literal(['10.0.0.0/24']),
        location: .literal(location),
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
      ),
    );

    add(
      AzurermNetworkManagerIpamPoolStaticCidr(
        'network_manager_ipam_pool_static_cidr',
        allocation: .addressPrefixes(.literal(['10.0.0.0/24'])),
        ipamPoolId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName/ipamPools/ipamPoolName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermNetworkManagerManagementGroupConnection(
        'network_manager_management_group_connection',
        managementGroupId: .literal(
          '/providers/Microsoft.Management/managementGroups/leftover',
        ),
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
      ),
    );

    add(
      AzurermNetworkManagerNetworkGroup(
        'network_manager_network_group',
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
      ),
    );

    add(
      AzurermNetworkManagerRoutingConfiguration(
        'network_manager_routing_configuration',
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
      ),
    );

    add(
      AzurermNetworkManagerRoutingRule(
        'network_manager_routing_rule',
        name: .literal(leftover),
        ruleCollectionId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName/routingConfigurations/routingConfigurationName/ruleCollections/ruleCollectionName',
        ),
        destination: NetworkManagerRoutingRuleDestination(
          address: .literal(leftover),
          type: .addressprefix,
        ),
        nextHop: NetworkManagerRoutingRuleNextHop(type: .internet),
      ),
    );

    add(
      AzurermNetworkManagerRoutingRuleCollection(
        'network_manager_routing_rule_collection',
        name: .literal(leftover),
        networkGroupIds: .literal([
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName/networkGroups/networkGroupName',
        ]),
        routingConfigurationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName/routingConfigurations/routingConfigurationName',
        ),
      ),
    );

    add(
      AzurermNetworkManagerScopeConnection(
        'network_manager_scope_connection',
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
        targetScopeId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        tenantId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermNetworkManagerSecurityAdminConfiguration(
        'network_manager_security_admin_configuration',
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
      ),
    );

    add(
      AzurermNetworkManagerStaticMember(
        'network_manager_static_member',
        name: .literal(leftover),
        networkGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName/networkGroups/networkGroupName',
        ),
        targetVirtualNetworkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
        ),
      ),
    );

    add(
      AzurermNetworkManagerVerifierWorkspace(
        'network_manager_verifier_workspace',
        location: .literal(location),
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
      ),
    );

    add(
      AzurermNetworkProfile(
        'network_profile',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        containerNetworkInterface: NetworkProfileContainerNetworkInterface(
          name: .literal(leftover),
          ipConfiguration: [
            .new(
              name: .literal(leftover),
              subnetId: .literal(
                '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
              ),
            ),
          ],
        ),
      ),
    );

    add(
      AzurermNetworkSecurityGroup(
        'network_security_group',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNetworkSecurityPerimeter(
        'network_security_perimeter',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNetworkSecurityPerimeterAccessRule(
        'network_security_perimeter_access_rule',
        source: .addressPrefixes(.literal(['10.0.0.0/24'])),
        direction: .inbound,
        name: .literal(leftover),
        networkSecurityPerimeterProfileId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkSecurityPerimeters/networkSecurityPerimeterName/profiles/profileName',
        ),
      ),
    );

    add(
      AzurermNetworkSecurityPerimeterAssociation(
        'network_security_perimeter_association',
        accessMode: .audit,
        name: .literal(leftover),
        networkSecurityPerimeterProfileId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkSecurityPerimeters/networkSecurityPerimeterName/profiles/profileName',
        ),
        resourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermNetworkSecurityPerimeterProfile(
        'network_security_perimeter_profile',
        name: .literal(leftover),
        networkSecurityPerimeterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkSecurityPerimeters/networkSecurityPerimeterName',
        ),
      ),
    );

    add(
      AzurermNetworkSecurityRule(
        'network_security_rule',
        access: .allow,
        destination: .destinationAddressPrefix(.literal(leftover)),
        direction: .inbound,
        name: .literal(leftover),
        networkSecurityGroupName: .literal('https://example.com'),
        priority: .literal(200),
        protocol: .ah,
        resourceGroupName: .literal(resourceGroupName),
        source: .sourceAddressPrefix(.literal(leftover)),
      ),
    );

    add(
      AzurermNetworkWatcher(
        'network_watcher',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNetworkWatcherFlowLog(
        'network_watcher_flow_log',
        enabled: .literal(true),
        name: .literal(leftover),
        networkWatcherName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        targetResourceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkSecurityGroups/networkSecurityGroupName',
        ),
        retentionPolicy: NetworkWatcherFlowLogRetentionPolicy(
          days: .literal(200),
          enabled: .literal(true),
        ),
      ),
    );

    add(
      AzurermNewRelicMonitor(
        'new_relic_monitor',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        plan: NewRelicMonitorPlan(
          effectiveDate: .literal('2024-01-01T00:00:00Z'),
        ),
        user: NewRelicMonitorUser(
          email: .literal('leftover@example.com'),
          firstName: .literal(leftover),
          lastName: .literal(leftover),
          phoneNumber: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermNewRelicTagRule(
        'new_relic_tag_rule',
        monitorId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/NewRelic.Observability/monitors/monitorName',
        ),
      ),
    );

    add(
      AzurermNginxConfiguration(
        'nginx_configuration',
        nginxDeploymentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Nginx.NginxPlus/nginxDeployments/nginxDeploymentName',
        ),
        content: .configFile([
          .new(content: leftoverSecret, virtualPath: .literal(leftover)),
        ]),
        rootFile: .literal(leftover),
      ),
    );

    add(
      AzurermNginxDeployment(
        'nginx_deployment',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .literal(leftover),
      ),
    );

    add(
      AzurermNotificationHub(
        'notification_hub',
        location: .literal(location),
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNotificationHubAuthorizationRule(
        'notification_hub_authorization_rule',
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        notificationHubName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermNotificationHubNamespace(
        'notification_hub_namespace',
        location: .literal(location),
        name: .literal(leftover),
        namespaceType: .messaging,
        resourceGroupName: .literal(resourceGroupName),
        skuName: .basic,
      ),
    );

    add(
      AzurermOracleAutonomousDatabaseBackup(
        'oracle_autonomous_database_backup',
        autonomousDatabaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Oracle.Database/autonomousDatabases/autonomousDatabaseName',
        ),
        name: .literal(leftover),
        retentionPeriodInDays: .literal(200),
      ),
    );

    add(
      AzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery(
        'oracle_autonomous_database_cross_region_disaster',
        displayName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sourceAutonomousDatabaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Oracle.Database/autonomousDatabases/autonomousDatabaseName',
        ),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermOracleCloudVmCluster(
        'oracle_cloud_vm_cluster',
        cloudExadataInfrastructureId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Oracle.Database/cloudExadataInfrastructures/cloudExadataInfrastructureName',
        ),
        cpuCoreCount: .literal(200),
        dbServers: .literal([leftover]),
        displayName: .literal(leftover),
        giVersion: .literal(leftover),
        hostname: .literal(leftover),
        licenseModel: .literal('BringYourOwnLicense'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sshPublicKeys: .literal([leftover]),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
        virtualNetworkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
        ),
      ),
    );

    add(
      AzurermOracleExadataInfrastructure(
        'oracle_exadata_infrastructure',
        computeCount: .literal(2),
        displayName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        shape: .literal(leftover),
        storageCount: .literal(3),
      ),
    );

    add(
      AzurermOracleExascaleDatabaseStorageVault(
        'oracle_exascale_database_storage_vault',
        additionalFlashCachePercentage: .literal(0),
        displayName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zones: .literal([leftover]),
        highCapacityDatabaseStorage:
            OracleExascaleDatabaseStorageVaultHighCapacityDatabaseStorage(
              totalSizeInGb: .literal(200),
            ),
      ),
    );

    add(
      AzurermOracleResourceAnchor(
        'oracle_resource_anchor',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermOrchestratedVirtualMachineScaleSet(
        'orchestrated_virtual_machine_scale_set',
        location: .literal(location),
        name: .literal(leftover),
        platformFaultDomainCount: .literal(200),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermPaloAltoLocalRulestack(
        'palo_alto_local_rulestack',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermPaloAltoLocalRulestackFqdnList(
        'palo_alto_local_rulestack_fqdn_list',
        fullyQualifiedDomainNames: .literal([leftover]),
        name: .literal(leftover),
        rulestackId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/localRulestackName',
        ),
      ),
    );

    add(
      AzurermPaloAltoLocalRulestackOutboundTrustCertificateAssociation(
        'palo_alto_local_rulestack_outbound_trust_certifi',
        certificateId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/localRulestackName/certificates/certificateName',
        ),
      ),
    );

    add(
      AzurermPaloAltoLocalRulestackOutboundUntrustCertificateAssociation(
        'palo_alto_local_rulestack_outbound_untrust_certi',
        certificateId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/localRulestackName/certificates/certificateName',
        ),
      ),
    );

    add(
      AzurermPaloAltoLocalRulestackPrefixList(
        'palo_alto_local_rulestack_prefix_list',
        name: .literal(leftover),
        prefixList: .literal(['10.0.0.0/24']),
        rulestackId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/localRulestackName',
        ),
      ),
    );

    add(
      AzurermPaloAltoLocalRulestackRule(
        'palo_alto_local_rulestack_rule',
        action: .allow,
        applications: .literal([leftover]),
        name: .literal(leftover),
        priority: .literal(200),
        protocol: .protocol(.literal('application-default')),
        rulestackId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/localRulestackName',
        ),
        destination: PaloAltoLocalRulestackRuleDestination(
          cidrs: .literal(['10.0.0.0/24']),
        ),
        source: PaloAltoLocalRulestackRuleSource(
          cidrs: .literal(['10.0.0.0/24']),
        ),
      ),
    );

    add(
      AzurermPaloAltoNextGenerationFirewallVirtualHubLocalRulestack(
        'palo_alto_next_generation_firewall_virtual_hub_l',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        rulestackId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/localRulestackName',
        ),
        networkProfile: PaloAltoNextGenerationFirewallVirtualHubLocalRulestackNetworkProfile(
          networkVirtualApplianceId: .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkVirtualAppliances/networkVirtualApplianceName',
          ),
          publicIpAddressIds: .literal([
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPAddresses/publicIPAddressesValue',
          ]),
          virtualHubId: .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
          ),
        ),
      ),
    );

    add(
      AzurermPaloAltoNextGenerationFirewallVirtualHubPanorama(
        'palo_alto_next_generation_firewall_virtual_hub_p',
        location: .literal(location),
        name: .literal(leftover),
        panoramaBase64Config: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        networkProfile: PaloAltoNextGenerationFirewallVirtualHubPanoramaNetworkProfile(
          networkVirtualApplianceId: .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkVirtualAppliances/networkVirtualApplianceName',
          ),
          publicIpAddressIds: .literal([
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPAddresses/publicIPAddressesValue',
          ]),
          virtualHubId: .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
          ),
        ),
      ),
    );

    add(
      AzurermPaloAltoNextGenerationFirewallVirtualHubStrataCloudManager(
        'palo_alto_next_generation_firewall_virtual_hub_s',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        strataCloudManagerTenantName: .literal(leftover),
        networkProfile: PaloAltoNextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile(
          networkVirtualApplianceId: .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkVirtualAppliances/networkVirtualApplianceName',
          ),
          publicIpAddressIds: .literal([
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPAddresses/publicIPAddressesValue',
          ]),
          virtualHubId: .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
          ),
        ),
      ),
    );

    add(
      AzurermPaloAltoNextGenerationFirewallVirtualNetworkLocalRulestack(
        'palo_alto_next_generation_firewall_virtual_netwo',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        rulestackId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/localRulestackName',
        ),
        networkProfile:
            PaloAltoNextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile(
              publicIpAddressIds: .literal([
                '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPAddresses/publicIPAddressesValue',
              ]),
              vnetConfiguration: .new(
                virtualNetworkId: .literal(
                  '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
                ),
              ),
            ),
      ),
    );

    add(
      AzurermPaloAltoNextGenerationFirewallVirtualNetworkPanorama(
        'palo_alto_next_generation_firewall_virtual_net_2',
        location: .literal(location),
        name: .literal(leftover),
        panoramaBase64Config: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        networkProfile:
            PaloAltoNextGenerationFirewallVirtualNetworkPanoramaNetworkProfile(
              publicIpAddressIds: .literal([
                '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPAddresses/publicIPAddressesValue',
              ]),
              vnetConfiguration: .new(
                virtualNetworkId: .literal(
                  '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
                ),
              ),
            ),
      ),
    );

    add(
      AzurermPaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManager(
        'palo_alto_next_generation_firewall_virtual_net_3',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        strataCloudManagerTenantName: .literal(leftover),
        networkProfile:
            PaloAltoNextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile(
              publicIpAddressIds: .literal([
                '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPAddresses/publicIPAddressesValue',
              ]),
              vnetConfiguration: .new(
                virtualNetworkId: .literal(
                  '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
                ),
              ),
            ),
      ),
    );

    add(
      AzurermPaloAltoVirtualNetworkAppliance(
        'palo_alto_virtual_network_appliance',
        name: .literal(leftover),
        virtualHubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
        ),
      ),
    );

    add(
      AzurermPimActiveRoleAssignment(
        'pim_active_role_assignment',
        principalId: .literal('11111111-1111-1111-1111-111111111111'),
        roleDefinitionId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        scope: .literal(
          '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermPimEligibleRoleAssignment(
        'pim_eligible_role_assignment',
        principalId: .literal('11111111-1111-1111-1111-111111111111'),
        roleDefinitionId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        scope: .literal(
          '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermPlaywrightWorkspace(
        'playwright_workspace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermPolicyDefinition(
        'policy_definition',
        displayName: .literal(leftover),
        mode: .all,
        name: .literal(leftover),
        policyType: .literal('BuiltIn'),
      ),
    );

    add(
      AzurermPolicyVirtualMachineConfigurationAssignment(
        'policy_virtual_machine_configuration_assignment',
        location: .literal(location),
        name: .literal(leftover),
        virtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineValue',
        ),
        configuration: PolicyVirtualMachineConfigurationAssignmentConfiguration(
          assignmentType: .applyandautocorrect,
        ),
      ),
    );

    add(
      AzurermPortalTenantConfiguration(
        'portal_tenant_configuration',
        privateMarkdownStorageEnforced: .literal(true),
      ),
    );

    add(
      AzurermPostgresqlFlexibleServer(
        'postgresql_flexible_server',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermPostgresqlFlexibleServerActiveDirectoryAdministrator(
        'postgresql_flexible_server_active_directory_admi',
        objectId: .literal('11111111-1111-1111-1111-111111111111'),
        principalName: .literal(leftover),
        principalType: .literal('Group'),
        resourceGroupName: .literal(resourceGroupName),
        serverName: .literal(leftover),
        tenantId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermPostgresqlFlexibleServerBackup(
        'postgresql_flexible_server_backup',
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/flexibleServers/flexibleServerName',
        ),
      ),
    );

    add(
      AzurermPostgresqlFlexibleServerConfiguration(
        'postgresql_flexible_server_configuration',
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/flexibleServers/flexibleServerName',
        ),
        value: .literal(leftover),
      ),
    );

    add(
      AzurermPostgresqlFlexibleServerDatabase(
        'postgresql_flexible_server_database',
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/flexibleServers/flexibleServerName',
        ),
      ),
    );

    add(
      AzurermPostgresqlFlexibleServerFirewallRule(
        'postgresql_flexible_server_firewall_rule',
        endIpAddress: .literal('10.0.0.1'),
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/flexibleServers/flexibleServerName',
        ),
        startIpAddress: .literal('10.0.0.1'),
      ),
    );

    add(
      AzurermPostgresqlFlexibleServerVirtualEndpoint(
        'postgresql_flexible_server_virtual_endpoint',
        name: .literal(leftover),
        replicaServerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/flexibleServers/flexibleServerName',
        ),
        sourceServerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforPostgreSQL/flexibleServers/flexibleServerName',
        ),
        type: .literal('ReadWrite'),
      ),
    );

    add(
      AzurermPrivateDnsARecord(
        'private_dns_a_record',
        name: .literal(leftover),
        privateDnsZoneId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateDnsZones/privateDnsZoneName',
        ),
        records: .literal([leftover]),
        ttl: .literal(200),
      ),
    );

    add(
      AzurermPrivateDnsAaaaRecord(
        'private_dns_aaaa_record',
        name: .literal(leftover),
        privateDnsZoneId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateDnsZones/privateDnsZoneName',
        ),
        records: .literal([leftover]),
        ttl: .literal(200),
      ),
    );

    add(
      AzurermPrivateDnsCnameRecord(
        'private_dns_cname_record',
        name: .literal(leftover),
        privateDnsZoneId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateDnsZones/privateDnsZoneName',
        ),
        record: .literal(leftover),
        ttl: .literal(200),
      ),
    );

    add(
      AzurermPrivateDnsMxRecord(
        'private_dns_mx_record',
        privateDnsZoneId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateDnsZones/privateDnsZoneName',
        ),
        ttl: .literal(200),
        record: [
          PrivateDnsMxRecord(
            exchange: .literal(leftover),
            preference: .literal(200),
          ),
        ],
      ),
    );

    add(
      AzurermPrivateDnsPtrRecord(
        'private_dns_ptr_record',
        name: .literal(leftover),
        privateDnsZoneId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateDnsZones/privateDnsZoneName',
        ),
        records: .literal([leftover]),
        ttl: .literal(200),
      ),
    );

    add(
      AzurermPrivateDnsResolver(
        'private_dns_resolver',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualNetworkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
        ),
      ),
    );

    add(
      AzurermPrivateDnsResolverDnsForwardingRuleset(
        'private_dns_resolver_dns_forwarding_ruleset',
        location: .literal(location),
        name: .literal(leftover),
        privateDnsResolverOutboundEndpointIds: .literal([
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/dnsResolvers/dnsResolverName/outboundEndpoints/outboundEndpointName',
        ]),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermPrivateDnsResolverForwardingRule(
        'private_dns_resolver_forwarding_rule',
        dnsForwardingRulesetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/dnsForwardingRulesets/dnsForwardingRulesetName',
        ),
        domainName: .literal(leftover),
        name: .literal(leftover),
        targetDnsServers: [
          PrivateDnsResolverForwardingRuleTargetDnsServers(
            ipAddress: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermPrivateDnsResolverInboundEndpoint(
        'private_dns_resolver_inbound_endpoint',
        location: .literal(location),
        name: .literal(leftover),
        privateDnsResolverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/dnsResolvers/dnsResolverName',
        ),
        ipConfigurations: PrivateDnsResolverInboundEndpointIpConfigurations(
          subnetId: .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
          ),
        ),
      ),
    );

    add(
      AzurermPrivateDnsResolverOutboundEndpoint(
        'private_dns_resolver_outbound_endpoint',
        location: .literal(location),
        name: .literal(leftover),
        privateDnsResolverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/dnsResolvers/dnsResolverName',
        ),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermPrivateDnsResolverVirtualNetworkLink(
        'private_dns_resolver_virtual_network_link',
        dnsForwardingRulesetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/dnsForwardingRulesets/dnsForwardingRulesetName',
        ),
        name: .literal(leftover),
        virtualNetworkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
        ),
      ),
    );

    add(
      AzurermPrivateDnsSrvRecord(
        'private_dns_srv_record',
        name: .literal(leftover),
        privateDnsZoneId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateDnsZones/privateDnsZoneName',
        ),
        ttl: .literal(200),
        record: [
          PrivateDnsSrvRecord(
            port: .literal(200),
            priority: .literal(200),
            target: .literal(leftover),
            weight: .literal(200),
          ),
        ],
      ),
    );

    add(
      AzurermPrivateDnsTxtRecord(
        'private_dns_txt_record',
        name: .literal(leftover),
        privateDnsZoneId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateDnsZones/privateDnsZoneName',
        ),
        ttl: .literal(200),
        record: [PrivateDnsTxtRecord(value: .literal(leftover))],
      ),
    );

    add(
      AzurermPrivateDnsZone(
        'private_dns_zone',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermPrivateDnsZoneVirtualNetworkLink(
        'private_dns_zone_virtual_network_link',
        name: .literal(leftover),
        privateDnsZoneId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateDnsZones/privateDnsZoneName',
        ),
        virtualNetworkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
        ),
      ),
    );

    add(
      AzurermPrivateEndpointApplicationSecurityGroupAssociation(
        'private_endpoint_application_security_group_asso',
        applicationSecurityGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/applicationSecurityGroups/applicationSecurityGroupName',
        ),
        privateEndpointId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateEndpoints/privateEndpointName',
        ),
      ),
    );

    add(
      AzurermPrivateLinkService(
        'private_link_service',
        destination: .destinationIpAddress(.literal('10.0.0.1')),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        natIpConfiguration: [
          PrivateLinkServiceNatIpConfiguration(
            name: .literal(leftover),
            primary: .literal(true),
            subnetId: .literal(
              '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
            ),
          ),
        ],
      ),
    );

    add(
      AzurermProximityPlacementGroup(
        'proximity_placement_group',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermPublicIp(
        'public_ip',
        allocationMethod: .dynamic,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermPublicIpPrefix(
        'public_ip_prefix',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermPurviewAccount(
        'purview_account',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        identity: PurviewAccountIdentity(type: .literal('SystemAssigned')),
      ),
    );

    add(
      AzurermQumuloFileSystem(
        'qumulo_file_system',
        adminPassword: leftoverSecret,
        email: .literal('leftover@example.com'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageSku: .coldLrs,
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
        zone: .literal(leftover),
      ),
    );

    add(
      AzurermRecoveryServicesVault(
        'recovery_services_vault',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .rs0,
      ),
    );

    add(
      AzurermRecoveryServicesVaultResourceGuardAssociation(
        'recovery_services_vault_resource_guard_associati',
        resourceGuardId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataProtection/resourceGuards/resourceGuardName',
        ),
        vaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName',
        ),
      ),
    );

    add(
      AzurermRedisCache(
        'redis_cache',
        capacity: .literal(200),
        family: .c,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .basic,
      ),
    );

    add(
      AzurermRedisCacheAccessPolicy(
        'redis_cache_access_policy',
        name: .literal(leftover),
        permissions: .literal(leftover),
        redisCacheId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cache/redis/redisName',
        ),
      ),
    );

    add(
      AzurermRedisCacheAccessPolicyAssignment(
        'redis_cache_access_policy_assignment',
        accessPolicyName: .literal(leftover),
        name: .literal(leftover),
        objectId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        objectIdAlias: .literal(leftover),
        redisCacheId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cache/redis/redisName',
        ),
      ),
    );

    add(
      AzurermRedisLinkedServer(
        'redis_linked_server',
        linkedRedisCacheId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cache/redis/redisName',
        ),
        linkedRedisCacheLocation: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serverRole: .primary,
        targetRedisCacheName: .literal(leftover),
      ),
    );

    add(
      AzurermRelayHybridConnection(
        'relay_hybrid_connection',
        name: .literal(leftover),
        relayNamespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermRelayHybridConnectionAuthorizationRule(
        'relay_hybrid_connection_authorization_rule',
        hybridConnectionName: .literal(leftover),
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermRelayNamespace(
        'relay_namespace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .literal('Standard'),
      ),
    );

    add(
      AzurermRelayNamespaceAuthorizationRule(
        'relay_namespace_authorization_rule',
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermResourceGroup(
        'resource_group',
        location: .literal(location),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermResourceGroupCostManagementExport(
        'resource_group_cost_management_export',
        name: .literal(leftover),
        recurrencePeriodEndDate: .literal('2024-01-01T00:00:00Z'),
        recurrencePeriodStartDate: .literal('2024-01-01T00:00:00Z'),
        recurrenceType: .literal('Annually'),
        resourceGroupId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        exportDataOptions: ResourceGroupCostManagementExportDataOptions(
          timeFrame: .literal('Custom'),
          type: .literal('ActualCost'),
        ),
        exportDataStorageLocation:
            ResourceGroupCostManagementExportDataStorageLocation(
              containerId: .literal(
                '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue/blobServices/default/containers/containerValue',
              ),
              rootFolderPath: .literal(leftover),
            ),
      ),
    );

    add(
      AzurermResourceGroupCostManagementView(
        'resource_group_cost_management_view',
        accumulated: .literal(true),
        chartType: .literal('Area'),
        displayName: .literal(leftover),
        name: .literal(leftover),
        reportType: .literal('Usage'),
        resourceGroupId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        timeframe: .literal('Custom'),
        dataset: ResourceGroupCostManagementViewDataset(
          granularity: .literal('Daily'),
          aggregation: [
            .new(columnName: .literal(leftover), name: .literal(leftover)),
          ],
        ),
      ),
    );

    add(
      AzurermResourceGroupTemplateDeployment(
        'resource_group_template_deployment',
        deploymentMode: .literal('Complete'),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        template: .templateContent(.literal(leftover)),
      ),
    );

    add(
      AzurermResourceManagementPrivateLink(
        'resource_management_private_link',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermResourceManagementPrivateLinkAssociation(
        'resource_management_private_link_association',
        managementGroupId: .literal(
          '/providers/Microsoft.Management/managementGroups/groupIdValue',
        ),
        publicNetworkAccessEnabled: .literal(true),
        resourceManagementPrivateLinkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Authorization/resourceManagementPrivateLinks/resourceManagementPrivateLinkName',
        ),
      ),
    );

    add(
      AzurermResourceProviderFeatureRegistration(
        'resource_provider_feature_registration',
        name: .literal(leftover),
        providerName: .literal(leftover),
      ),
    );

    add(
      AzurermResourceProviderRegistration(
        'resource_provider_registration',
        name: .literal(leftover),
      ),
    );

    add(
      AzurermRoleManagementPolicy(
        'role_management_policy',
        roleDefinitionId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        scope: .literal(
          '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermRoute(
        'route',
        addressPrefix: .literal(leftover),
        name: .literal(leftover),
        nextHopType: .internet,
        resourceGroupName: .literal(resourceGroupName),
        routeTableName: .literal(leftover),
      ),
    );

    add(
      AzurermRouteFilter(
        'route_filter',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermRouteMap(
        'route_map',
        name: .literal(leftover),
        virtualHubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
        ),
      ),
    );

    add(
      AzurermRouteServer(
        'route_server',
        location: .literal(location),
        name: .literal(leftover),
        publicIpAddressId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPAddresses/publicIPAddressesValue',
        ),
        resourceGroupName: .literal(resourceGroupName),
        sku: .literal('Standard'),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermRouteServerBgpConnection(
        'route_server_bgp_connection',
        name: .literal(leftover),
        peerAsn: .literal(200),
        peerIp: .literal('10.0.0.1'),
        routeServerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
        ),
      ),
    );

    add(
      AzurermRouteTable(
        'route_table',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermSearchService(
        'search_service',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .basic,
      ),
    );

    add(
      AzurermSearchSharedPrivateLinkService(
        'search_shared_private_link_service',
        name: .literal(leftover),
        searchServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Search/searchServices/searchServiceName',
        ),
        subresourceName: .literal(leftover),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermSecurityCenterAssessment(
        'security_center_assessment',
        assessmentPolicyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/providers/Microsoft.Security/assessmentMetadata/assessmentMetadataName',
        ),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        status: SecurityCenterAssessmentStatus(code: .literal('Healthy')),
      ),
    );

    add(
      AzurermSecurityCenterAssessmentPolicy(
        'security_center_assessment_policy',
        description: .literal(leftover),
        displayName: .literal(leftover),
      ),
    );

    add(
      AzurermSecurityCenterAutomation(
        'security_center_automation',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        scopes: .literal([leftover]),
        action: [
          SecurityCenterAutomationAction(
            resourceId: .literal(
              '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
            ),
            type: .eventhub,
          ),
        ],
        source: [SecurityCenterAutomationSource(eventSource: .alerts)],
      ),
    );

    add(
      AzurermSecurityCenterContact(
        'security_center_contact',
        alertNotifications: .literal(true),
        alertsToAdmins: .literal(true),
        email: .literal('leftover@example.com'),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSecurityCenterServerVulnerabilityAssessmentVirtualMachine(
        'security_center_server_vulnerability_assessment_',
        virtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineValue',
        ),
      ),
    );

    add(
      AzurermSecurityCenterServerVulnerabilityAssessmentsSetting(
        'security_center_server_vulnerability_assessments',
        vulnerabilityAssessmentProvider: .literal('MdeTvm'),
      ),
    );

    add(
      AzurermSecurityCenterSetting(
        'security_center_setting',
        enabled: .literal(true),
        settingName: .literal('current'),
      ),
    );

    add(
      AzurermSecurityCenterStorageDefender(
        'security_center_storage_defender',
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermSecurityCenterSubscriptionPricing(
        'security_center_subscription_pricing',
        tier: .literal('Free'),
      ),
    );

    add(
      AzurermSecurityCenterWorkspace(
        'security_center_workspace',
        scope: .literal(leftover),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSentinelAlertRuleAnomalyBuiltIn(
        'sentinel_alert_rule_anomaly_built_in',
        identifier: .displayName(.literal(leftover)),
        enabled: .literal(true),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        mode: .flighting,
      ),
    );

    add(
      AzurermSentinelAlertRuleAnomalyDuplicate(
        'sentinel_alert_rule_anomaly_duplicate',
        builtInRuleId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName/providers/Microsoft.SecurityInsights/securityMLAnalyticsSettings/securityMLAnalyticsSettingName',
        ),
        displayName: .literal(leftover),
        enabled: .literal(true),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        mode: .flighting,
      ),
    );

    add(
      AzurermSentinelAlertRuleFusion(
        'sentinel_alert_rule_fusion',
        alertRuleTemplateGuid: .literal('11111111-1111-1111-1111-111111111111'),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSentinelAlertRuleMachineLearningBehaviorAnalytics(
        'sentinel_alert_rule_machine_learning_behavior_an',
        alertRuleTemplateGuid: .literal('11111111-1111-1111-1111-111111111111'),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelAlertRuleMsSecurityIncident(
        'sentinel_alert_rule_ms_security_incident',
        displayName: .literal(leftover),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
        productFilter: .azureActiveDirectoryIdentityProtection,
        severityFilter: [.high],
      ),
    );

    add(
      AzurermSentinelAlertRuleNrt(
        'sentinel_alert_rule_nrt',
        displayName: .literal(leftover),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
        query: .literal(leftover),
        severity: .high,
        eventGrouping: SentinelAlertRuleNrtEventGrouping(
          aggregationMethod: .alertperresult,
        ),
      ),
    );

    add(
      AzurermSentinelAlertRuleScheduled(
        'sentinel_alert_rule_scheduled',
        displayName: .literal(leftover),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
        query: .literal(leftover),
        severity: .high,
      ),
    );

    add(
      AzurermSentinelAlertRuleThreatIntelligence(
        'sentinel_alert_rule_threat_intelligence',
        alertRuleTemplateGuid: .literal('11111111-1111-1111-1111-111111111111'),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorAzureActiveDirectory(
        'sentinel_data_connector_azure_active_directory',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorAzureAdvancedThreatProtection(
        'sentinel_data_connector_azure_advanced_threat_pr',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorAzureSecurityCenter(
        'sentinel_data_connector_azure_security_center',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorDynamics365(
        'sentinel_data_connector_dynamics_365',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorIot(
        'sentinel_data_connector_iot',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorMicrosoftCloudAppSecurity(
        'sentinel_data_connector_microsoft_cloud_app_secu',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorMicrosoftDefenderAdvancedThreatProtection(
        'sentinel_data_connector_microsoft_defender_advan',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorMicrosoftThreatIntelligence(
        'sentinel_data_connector_microsoft_threat_intelli',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        microsoftEmergingThreatFeedLookbackDate: .literal(
          '2024-01-01T00:00:00Z',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorMicrosoftThreatProtection(
        'sentinel_data_connector_microsoft_threat_protect',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorOffice365(
        'sentinel_data_connector_office_365',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorOffice365Project(
        'sentinel_data_connector_office_365_project',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorOfficeAtp(
        'sentinel_data_connector_office_atp',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorOfficeIrm(
        'sentinel_data_connector_office_irm',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorOfficePowerBi(
        'sentinel_data_connector_office_power_bi',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorThreatIntelligence(
        'sentinel_data_connector_threat_intelligence',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelDataConnectorThreatIntelligenceTaxii(
        'sentinel_data_connector_threat_intelligence_taxi',
        apiRootUrl: .literal('https://example.com'),
        collectionId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        displayName: .literal(leftover),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelLogAnalyticsWorkspaceOnboarding(
        'sentinel_log_analytics_workspace_onboarding',
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSentinelMetadata(
        'sentinel_metadata',
        contentId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        kind: .analyticsrule,
        name: .literal(leftover),
        parentId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSentinelThreatIntelligenceIndicator(
        'sentinel_threat_intelligence_indicator',
        displayName: .literal(leftover),
        pattern: .literal(leftover),
        patternType: .domainName,
        source: .literal(leftover),
        validateFromUtc: .literal('2024-01-01T00:00:00Z'),
        workspaceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermSentinelWatchlist(
        'sentinel_watchlist',
        displayName: .literal(leftover),
        itemSearchKey: .literal(leftover),
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AzurermSentinelWatchlistItem(
        'sentinel_watchlist_item',
        properties: .literal({'k': leftover}),
        watchlistId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName/providers/Microsoft.SecurityInsights/watchlists/watchlistAlias',
        ),
      ),
    );

    add(
      AzurermServiceFabricCluster(
        'service_fabric_cluster',
        location: .literal(location),
        managementEndpoint: .literal(leftover),
        name: .literal(leftover),
        reliabilityLevel: .bronze,
        resourceGroupName: .literal(resourceGroupName),
        upgradeMode: .automatic,
        vmImage: .literal(leftover),
        nodeType: [
          ServiceFabricClusterNodeType(
            clientEndpointPort: .literal(200),
            httpEndpointPort: .literal(200),
            instanceCount: .literal(200),
            isPrimary: .literal(true),
            name: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermServiceFabricManagedCluster(
        'service_fabric_managed_cluster',
        clientConnectionPort: .literal(1500),
        httpGatewayPort: .literal(1500),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        lbRule: [
          ServiceFabricManagedClusterLbRule(
            backendPort: .literal(200),
            frontendPort: .literal(200),
            probeProtocol: .literal('http'),
            protocol: .literal('tcp'),
          ),
        ],
      ),
    );

    add(
      AzurermServicePlan(
        'service_plan',
        location: .literal(location),
        name: .literal(leftover),
        osType: .linux,
        resourceGroupName: .literal(resourceGroupName),
        skuName: .literal('B1'),
      ),
    );

    add(
      AzurermServicebusNamespace(
        'servicebus_namespace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .basic,
      ),
    );

    add(
      AzurermServicebusNamespaceAuthorizationRule(
        'servicebus_namespace_authorization_rule',
        name: .literal(leftover),
        namespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName',
        ),
      ),
    );

    add(
      AzurermServicebusNamespaceDisasterRecoveryConfig(
        'servicebus_namespace_disaster_recovery_config',
        name: .literal(leftover),
        partnerNamespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName',
        ),
        primaryNamespaceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermServicebusQueue(
        'servicebus_queue',
        name: .literal(leftover),
        namespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName',
        ),
      ),
    );

    add(
      AzurermServicebusQueueAuthorizationRule(
        'servicebus_queue_authorization_rule',
        name: .literal(leftover),
        queueId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName/queues/queueName',
        ),
      ),
    );

    add(
      AzurermServicebusSubscription(
        'servicebus_subscription',
        maxDeliveryCount: .literal(200),
        name: .literal(leftover),
        topicId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName/topics/topicName',
        ),
      ),
    );

    add(
      AzurermServicebusSubscriptionRule(
        'servicebus_subscription_rule',
        filterType: .correlationfilter,
        name: .literal(leftover),
        subscriptionId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName/topics/topicName/subscriptions/subscriptionName',
        ),
      ),
    );

    add(
      AzurermServicebusTopic(
        'servicebus_topic',
        name: .literal(leftover),
        namespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName',
        ),
      ),
    );

    add(
      AzurermServicebusTopicAuthorizationRule(
        'servicebus_topic_authorization_rule',
        name: .literal(leftover),
        topicId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName/topics/topicName',
        ),
      ),
    );

    add(
      AzurermSharedImage(
        'shared_image',
        galleryName: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        osType: .linux,
        resourceGroupName: .literal(resourceGroupName),
        identifier: SharedImageIdentifier(
          offer: .literal(leftover),
          publisher: .literal(leftover),
          sku: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermSharedImageGallery(
        'shared_image_gallery',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermSignalrService(
        'signalr_service',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: SignalrServiceSku(capacity: .literal(200), name: .freeF1),
      ),
    );

    add(
      AzurermSignalrServiceCustomDomain(
        'signalr_service_custom_domain',
        domainName: .literal(leftover),
        name: .literal(leftover),
        signalrCustomCertificateId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.SignalRService/signalR/signalRName/customCertificates/customCertificateName',
        ),
        signalrServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.SignalRService/signalR/signalRName',
        ),
      ),
    );

    add(
      AzurermSignalrServiceNetworkAcl(
        'signalr_service_network_acl',
        defaultAction: .allow,
        signalrServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.SignalRService/signalR/signalRName',
        ),
        publicNetwork: SignalrServiceNetworkAclPublicNetwork(
          requestTypes: .allowedRequestTypes([.clientconnection]),
        ),
      ),
    );

    add(
      AzurermSignalrSharedPrivateLinkResource(
        'signalr_shared_private_link_resource',
        name: .literal(leftover),
        signalrServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.SignalRService/signalR/signalRName',
        ),
        subResourceName: .literal(leftover),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermSiteRecoveryFabric(
        'site_recovery_fabric',
        location: .literal(location),
        name: .literal(leftover),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermSiteRecoveryHypervNetworkMapping(
        'site_recovery_hyperv_network_mapping',
        name: .literal(leftover),
        recoveryVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName',
        ),
        sourceNetworkName: .literal(leftover),
        sourceSystemCenterVirtualMachineManagerName: .literal(leftover),
        targetNetworkId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermSiteRecoveryHypervReplicationPolicy(
        'site_recovery_hyperv_replication_policy',
        applicationConsistentSnapshotFrequencyInHours: .literal(0),
        name: .literal(leftover),
        recoveryPointRetentionInHours: .literal(0),
        recoveryVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName',
        ),
        replicationIntervalInSeconds: .literal(30),
      ),
    );

    add(
      AzurermSiteRecoveryHypervReplicationPolicyAssociation(
        'site_recovery_hyperv_replication_policy_associat',
        hypervSiteId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName/replicationFabrics/replicationFabricName',
        ),
        name: .literal(leftover),
        policyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName/replicationPolicies/replicationPolicyName',
        ),
      ),
    );

    add(
      AzurermSiteRecoveryNetworkMapping(
        'site_recovery_network_mapping',
        name: .literal(leftover),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sourceNetworkId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        sourceRecoveryFabricName: .literal(leftover),
        targetNetworkId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        targetRecoveryFabricName: .literal(leftover),
      ),
    );

    add(
      AzurermSiteRecoveryProtectionContainer(
        'site_recovery_protection_container',
        name: .literal(leftover),
        recoveryFabricName: .literal(leftover),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermSiteRecoveryProtectionContainerMapping(
        'site_recovery_protection_container_mapping',
        name: .literal(leftover),
        recoveryFabricName: .literal(leftover),
        recoveryReplicationPolicyId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        recoverySourceProtectionContainerName: .literal(leftover),
        recoveryTargetProtectionContainerId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermSiteRecoveryReplicatedVm(
        'site_recovery_replicated_vm',
        name: .literal(leftover),
        recoveryReplicationPolicyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName/replicationPolicies/replicationPolicyName',
        ),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sourceRecoveryFabricName: .literal(leftover),
        sourceRecoveryProtectionContainerName: .literal(leftover),
        sourceVmId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        targetRecoveryFabricId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName/replicationFabrics/replicationFabricName',
        ),
        targetRecoveryProtectionContainerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName/replicationFabrics/replicationFabricName/replicationProtectionContainers/replicationProtectionContainerName',
        ),
        targetResourceGroupId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermSiteRecoveryReplicationPolicy(
        'site_recovery_replication_policy',
        applicationConsistentSnapshotFrequencyInMinutes: .literal(200),
        name: .literal(leftover),
        recoveryPointRetentionInMinutes: .literal(200),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermSiteRecoveryReplicationRecoveryPlan(
        'site_recovery_replication_recovery_plan',
        name: .literal(leftover),
        recoveryVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName',
        ),
        sourceRecoveryFabricId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName/replicationFabrics/replicationFabricName',
        ),
        targetRecoveryFabricId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName/replicationFabrics/replicationFabricName',
        ),
        bootRecoveryGroup: [
          SiteRecoveryReplicationRecoveryPlanBootRecoveryGroup(
            replicatedProtectedItems: .literal([
              '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
            ]),
          ),
        ],
        failoverRecoveryGroup:
            SiteRecoveryReplicationRecoveryPlanFailoverRecoveryGroup(
              postAction: [
                .new(
                  failOverDirections: .literal(['PrimaryToRecovery']),
                  failOverTypes: .literal(['PlannedFailover']),
                  name: .literal(leftover),
                  type: .literal('AutomationRunbookActionDetails'),
                ),
              ],
            ),
        shutdownRecoveryGroup:
            SiteRecoveryReplicationRecoveryPlanShutdownRecoveryGroup(
              postAction: [
                .new(
                  failOverDirections: .literal(['PrimaryToRecovery']),
                  failOverTypes: .literal(['PlannedFailover']),
                  name: .literal(leftover),
                  type: .literal('AutomationRunbookActionDetails'),
                ),
              ],
            ),
      ),
    );

    add(
      AzurermSiteRecoveryServicesVaultHypervSite(
        'site_recovery_services_vault_hyperv_site',
        name: .literal(leftover),
        recoveryVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName',
        ),
      ),
    );

    add(
      AzurermSiteRecoveryVmwareReplicationPolicy(
        'site_recovery_vmware_replication_policy',
        applicationConsistentSnapshotFrequencyInMinutes: .literal(200),
        name: .literal(leftover),
        recoveryPointRetentionInMinutes: .literal(200),
        recoveryVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName',
        ),
      ),
    );

    add(
      AzurermSiteRecoveryVmwareReplicationPolicyAssociation(
        'site_recovery_vmware_replication_policy_associat',
        name: .literal(leftover),
        policyId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName/replicationPolicies/replicationPolicyName',
        ),
        recoveryVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName',
        ),
      ),
    );

    add(
      AzurermSnapshot(
        'snapshot',
        createOption: .literal('Copy'),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermSourceControlToken(
        'source_control_token',
        token: leftoverSecret,
        type: .bitbucket,
      ),
    );

    add(
      AzurermSpringCloudAccelerator(
        'spring_cloud_accelerator',
        name: .literal('default'),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
      ),
    );

    add(
      AzurermSpringCloudActiveDeployment(
        'spring_cloud_active_deployment',
        deploymentName: .literal(leftover),
        springCloudAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/apps/appName',
        ),
      ),
    );

    add(
      AzurermSpringCloudApiPortal(
        'spring_cloud_api_portal',
        name: .literal('default'),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
      ),
    );

    add(
      AzurermSpringCloudApiPortalCustomDomain(
        'spring_cloud_api_portal_custom_domain',
        name: .literal(leftover),
        springCloudApiPortalId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/apiPortals/apiPortalName',
        ),
      ),
    );

    add(
      AzurermSpringCloudApp(
        'spring_cloud_app',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serviceName: .literal(leftover),
      ),
    );

    add(
      AzurermSpringCloudAppCosmosdbAssociation(
        'spring_cloud_app_cosmosdb_association',
        apiType: .literal('cassandra'),
        cosmosdbAccessKey: .literal(leftover),
        cosmosdbAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/databaseAccounts/databaseAccountName',
        ),
        name: .literal(leftover),
        springCloudAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/apps/appName',
        ),
      ),
    );

    add(
      AzurermSpringCloudAppDynamicsApplicationPerformanceMonitoring(
        'spring_cloud_app_dynamics_application_performanc',
        agentAccountAccessKey: leftoverSecret,
        agentAccountName: leftoverSecret,
        controllerHostName: .literal(leftover),
        name: .literal(leftover),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
      ),
    );

    add(
      AzurermSpringCloudAppMysqlAssociation(
        'spring_cloud_app_mysql_association',
        databaseName: .literal(leftover),
        mysqlServerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DBforMySQL/servers/serverName',
        ),
        name: .literal(leftover),
        password: leftoverSecret,
        springCloudAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/apps/appName',
        ),
        username: .literal(leftover),
      ),
    );

    add(
      AzurermSpringCloudAppRedisAssociation(
        'spring_cloud_app_redis_association',
        name: .literal(leftover),
        redisAccessKey: .literal(leftover),
        redisCacheId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Cache/redis/redisName',
        ),
        springCloudAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/apps/appName',
        ),
      ),
    );

    add(
      AzurermSpringCloudApplicationInsightsApplicationPerformanceMonitoring(
        'spring_cloud_application_insights_application_pe',
        name: .literal(leftover),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
      ),
    );

    add(
      AzurermSpringCloudApplicationLiveView(
        'spring_cloud_application_live_view',
        name: .literal('default'),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
      ),
    );

    add(
      AzurermSpringCloudBuildDeployment(
        'spring_cloud_build_deployment',
        buildResultId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        name: .literal(leftover),
        springCloudAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/apps/appName',
        ),
      ),
    );

    add(
      AzurermSpringCloudBuildPackBinding(
        'spring_cloud_build_pack_binding',
        name: .literal(leftover),
        springCloudBuilderId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/buildServices/buildServiceName/builders/builderName',
        ),
      ),
    );

    add(
      AzurermSpringCloudBuilder(
        'spring_cloud_builder',
        name: .literal(leftover),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
        buildPackGroup: [
          SpringCloudBuilderBuildPackGroup(name: .literal(leftover)),
        ],
        stack: SpringCloudBuilderStack(
          id: .literal(leftover),
          version: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermSpringCloudConfigurationService(
        'spring_cloud_configuration_service',
        name: .literal('default'),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
      ),
    );

    add(
      AzurermSpringCloudConnection(
        'spring_cloud_connection',
        name: .literal(leftover),
        springCloudId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/apps/appName/deployments/deploymentName',
        ),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        authentication: SpringCloudConnectionAuthentication(
          type: .literal('secret'),
        ),
      ),
    );

    add(
      AzurermSpringCloudContainerDeployment(
        'spring_cloud_container_deployment',
        image: .literal(leftover),
        name: .literal(leftover),
        server: .literal(leftover),
        springCloudAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/apps/appName',
        ),
      ),
    );

    add(
      AzurermSpringCloudCustomizedAccelerator(
        'spring_cloud_customized_accelerator',
        name: .literal(leftover),
        springCloudAcceleratorId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/applicationAccelerators/applicationAcceleratorName',
        ),
        gitRepository: SpringCloudCustomizedAcceleratorGitRepository(
          reference: .branch(.literal(leftover)),
          url: .literal('https://example.com'),
        ),
      ),
    );

    add(
      AzurermSpringCloudDevToolPortal(
        'spring_cloud_dev_tool_portal',
        name: .literal('default'),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
      ),
    );

    add(
      AzurermSpringCloudDynatraceApplicationPerformanceMonitoring(
        'spring_cloud_dynatrace_application_performance_m',
        connectionPoint: .literal(leftover),
        name: .literal(leftover),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
        tenant: leftoverSecret,
        tenantToken: leftoverSecret,
      ),
    );

    add(
      AzurermSpringCloudElasticApplicationPerformanceMonitoring(
        'spring_cloud_elastic_application_performance_mon',
        applicationPackages: .literal([leftover]),
        name: .literal(leftover),
        serverUrl: .literal('https://example.com'),
        serviceName: .literal(leftover),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
      ),
    );

    add(
      AzurermSpringCloudGateway(
        'spring_cloud_gateway',
        name: .literal('default'),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
      ),
    );

    add(
      AzurermSpringCloudGatewayCustomDomain(
        'spring_cloud_gateway_custom_domain',
        name: .literal(leftover),
        springCloudGatewayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/gateways/gatewayName',
        ),
      ),
    );

    add(
      AzurermSpringCloudGatewayRouteConfig(
        'spring_cloud_gateway_route_config',
        name: .literal(leftover),
        protocol: .literal('HTTP'),
        springCloudGatewayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/gateways/gatewayName',
        ),
      ),
    );

    add(
      AzurermSpringCloudJavaDeployment(
        'spring_cloud_java_deployment',
        name: .literal(leftover),
        springCloudAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/springName/apps/appName',
        ),
      ),
    );

    add(
      AzurermSpringCloudNewRelicApplicationPerformanceMonitoring(
        'spring_cloud_new_relic_application_performance_m',
        appName: .literal(leftover),
        licenseKey: leftoverSecret,
        name: .literal(leftover),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
      ),
    );

    add(
      AzurermSpringCloudService(
        'spring_cloud_service',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermSpringCloudStorage(
        'spring_cloud_storage',
        name: .literal(leftover),
        springCloudServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppPlatform/spring/serviceValue',
        ),
        storageAccountKey: .literal(leftover),
        storageAccountName: .literal(leftover),
      ),
    );

    add(
      AzurermStackHciCluster(
        'stack_hci_cluster',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermStackHciExtension(
        'stack_hci_extension',
        arcSettingId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AzureStackHCI/clusters/clusterName/arcSettings/arcSettingName',
        ),
        name: .literal(leftover),
        publisher: .literal(leftover),
        type: .literal(leftover),
      ),
    );

    add(
      AzurermStackHciLogicalNetwork(
        'stack_hci_logical_network',
        customLocationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ExtendedLocation/customLocations/customLocationName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualSwitchName: .literal(leftover),
        subnet: StackHciLogicalNetworkSubnet(ipAllocationMethod: .dynamic),
      ),
    );

    add(
      AzurermStackHciMarketplaceGalleryImage(
        'stack_hci_marketplace_gallery_image',
        customLocationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ExtendedLocation/customLocations/customLocationName',
        ),
        hypervGeneration: .v1,
        location: .literal(location),
        name: .literal(leftover),
        osType: .linux,
        resourceGroupName: .literal(resourceGroupName),
        version: .literal(leftover),
        identifier: StackHciMarketplaceGalleryImageIdentifier(
          offer: .literal(leftover),
          publisher: .literal(leftover),
          sku: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermStackHciNetworkInterface(
        'stack_hci_network_interface',
        customLocationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ExtendedLocation/customLocations/customLocationName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        ipConfiguration: StackHciNetworkInterfaceIpConfiguration(
          subnetId: .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AzureStackHCI/logicalNetworks/logicalNetworkName',
          ),
        ),
      ),
    );

    add(
      AzurermStackHciStoragePath(
        'stack_hci_storage_path',
        customLocationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ExtendedLocation/customLocations/customLocationName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        path: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermStackHciVirtualHardDisk(
        'stack_hci_virtual_hard_disk',
        customLocationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ExtendedLocation/customLocations/customLocationName',
        ),
        diskSizeInGb: .literal(200),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermStaticWebApp(
        'static_web_app',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermStaticWebAppCustomDomain(
        'static_web_app_custom_domain',
        domainName: .literal(leftover),
        staticWebAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/staticSites/staticSiteName',
        ),
        validationType: .literal('dns-txt-token'),
      ),
    );

    add(
      AzurermStaticWebAppFunctionAppRegistration(
        'static_web_app_function_app_registration',
        functionAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
        staticWebAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/staticSites/staticSiteName',
        ),
      ),
    );

    add(
      AzurermStorageAccount(
        'storage_account',
        accountReplicationType: .lrs,
        accountTier: .premium,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermStorageAccountNetworkRules(
        'storage_account_network_rules',
        defaultAction: .allow,
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermStorageBlob(
        'storage_blob',
        name: .literal(leftover),
        storageContainerId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        type: .append,
      ),
    );

    add(
      AzurermStorageBlobInventoryPolicy(
        'storage_blob_inventory_policy',
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        rules: [
          StorageBlobInventoryPolicyRules(
            format: .csv,
            name: .literal(leftover),
            schedule: .daily,
            schemaFields: .literal([leftover]),
            scope: .blob,
            storageContainerName: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermStorageContainer(
        'storage_container',
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermStorageContainerImmutabilityPolicy(
        'storage_container_immutability_policy',
        immutabilityPeriodInDays: .literal(200),
        storageContainerResourceManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue/blobServices/default/containers/containerValue',
        ),
      ),
    );

    add(
      AzurermStorageDataLakeGen2Filesystem(
        'storage_data_lake_gen2_filesystem',
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermStorageDataLakeGen2Path(
        'storage_data_lake_gen2_path',
        filesystemName: .literal(leftover),
        path: .literal(leftover),
        resource: .literal('directory'),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermStorageEncryptionScope(
        'storage_encryption_scope',
        name: .literal(leftover),
        source: .microsoftKeyvault,
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermStorageManagementPolicy(
        'storage_management_policy',
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermStorageMover(
        'storage_mover',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermStorageMoverAgent(
        'storage_mover_agent',
        arcVirtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HybridCompute/machines/machineName',
        ),
        arcVirtualMachineUuid: .literal('11111111-1111-1111-1111-111111111111'),
        name: .literal(leftover),
        storageMoverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StorageMover/storageMovers/storageMoverName',
        ),
      ),
    );

    add(
      AzurermStorageMoverJobDefinition(
        'storage_mover_job_definition',
        copyMode: .additive,
        name: .literal(leftover),
        sourceName: .literal(leftover),
        storageMoverProjectId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StorageMover/storageMovers/storageMoverName/projects/projectName',
        ),
        targetName: .literal(leftover),
      ),
    );

    add(
      AzurermStorageMoverProject(
        'storage_mover_project',
        name: .literal(leftover),
        storageMoverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StorageMover/storageMovers/storageMoverName',
        ),
      ),
    );

    add(
      AzurermStorageMoverSourceEndpoint(
        'storage_mover_source_endpoint',
        host: .literal(leftover),
        name: .literal(leftover),
        storageMoverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StorageMover/storageMovers/storageMoverName',
        ),
      ),
    );

    add(
      AzurermStorageMoverTargetEndpoint(
        'storage_mover_target_endpoint',
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        storageContainerName: .literal(leftover),
        storageMoverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StorageMover/storageMovers/storageMoverName',
        ),
      ),
    );

    add(
      AzurermStorageObjectReplication(
        'storage_object_replication',
        destinationStorageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        sourceStorageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        rules: [
          StorageObjectReplicationRules(
            destinationContainerName: .literal(leftover),
            sourceContainerName: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermStorageQueue(
        'storage_queue',
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermStorageShare(
        'storage_share',
        name: .literal(leftover),
        quota: .literal(200),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermStorageSync(
        'storage_sync',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermStorageSyncCloudEndpoint(
        'storage_sync_cloud_endpoint',
        fileShareName: .literal(leftover),
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
        storageSyncGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StorageSync/storageSyncServices/storageSyncServiceName/syncGroups/syncGroupName',
        ),
      ),
    );

    add(
      AzurermStorageSyncGroup(
        'storage_sync_group',
        name: .literal(leftover),
        storageSyncId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StorageSync/storageSyncServices/storageSyncServiceName',
        ),
      ),
    );

    add(
      AzurermStorageSyncServerEndpoint(
        'storage_sync_server_endpoint',
        name: .literal(leftover),
        registeredServerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StorageSync/storageSyncServices/storageSyncServiceName/registeredServers/serverId',
        ),
        serverLocalPath: .literal(leftover),
        storageSyncGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StorageSync/storageSyncServices/storageSyncServiceName/syncGroups/syncGroupName',
        ),
      ),
    );

    add(
      AzurermStorageTable(
        'storage_table',
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      AzurermStorageTableEntity(
        'storage_table_entity',
        entity: .literal({'k': leftover}),
        partitionKey: .literal(leftover),
        rowKey: .literal(leftover),
        storageTableId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountName/tableServices/default/tables/tableName',
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsFunctionJavascriptUda(
        'stream_analytics_function_javascript_uda',
        name: .literal(leftover),
        script: .literal(leftover),
        streamAnalyticsJobId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StreamAnalytics/streamingJobs/streamingJobName',
        ),
        input: [StreamAnalyticsFunctionJavascriptUdaInput(type: .any)],
        output: StreamAnalyticsFunctionJavascriptUdaOutput(type: .any),
      ),
    );

    add(
      AzurermStreamAnalyticsFunctionJavascriptUdf(
        'stream_analytics_function_javascript_udf',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        script: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        input: [StreamAnalyticsFunctionJavascriptUdfInput(type: .any)],
        output: StreamAnalyticsFunctionJavascriptUdfOutput(type: .any),
      ),
    );

    add(
      AzurermStreamAnalyticsJob(
        'stream_analytics_job',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        transformationQuery: .literal(leftover),
      ),
    );

    add(
      AzurermStreamAnalyticsJobSchedule(
        'stream_analytics_job_schedule',
        startMode: .customtime,
        streamAnalyticsJobId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StreamAnalytics/streamingJobs/streamingJobName',
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsJobStorageAccount(
        'stream_analytics_job_storage_account',
        authenticationMode: .literal('Msi'),
        storageAccountName: .literal(leftover),
        streamAnalyticsJobId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StreamAnalytics/streamingJobs/streamingJobName',
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsManagedPrivateEndpoint(
        'stream_analytics_managed_private_endpoint',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        streamAnalyticsClusterName: .literal(leftover),
        subresourceName: .literal(leftover),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsOutputBlob(
        'stream_analytics_output_blob',
        dateFormat: .literal(leftover),
        name: .literal(leftover),
        pathPattern: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageAccountName: .literal(leftover),
        storageContainerName: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        timeFormat: .literal(leftover),
        serialization: StreamAnalyticsOutputBlobSerialization(
          type: .literal('Avro'),
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsOutputCosmosdb(
        'stream_analytics_output_cosmosdb',
        containerName: .literal(leftover),
        cosmosdbAccountKey: leftoverSecret,
        cosmosdbSqlDatabaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DocumentDB/databaseAccounts/databaseAccountName/sqlDatabases/sqlDatabaseName',
        ),
        name: .literal(leftover),
        streamAnalyticsJobId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StreamAnalytics/streamingJobs/streamingJobName',
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsOutputEventhub(
        'stream_analytics_output_eventhub',
        eventhubName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        servicebusNamespace: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        serialization: StreamAnalyticsOutputEventhubSerialization(
          type: .literal('Avro'),
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsOutputFunction(
        'stream_analytics_output_function',
        apiKey: leftoverSecret,
        functionApp: .literal(leftover),
        functionName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        streamAnalyticsJobName: .literal(leftover),
      ),
    );

    add(
      AzurermStreamAnalyticsOutputMssql(
        'stream_analytics_output_mssql',
        database: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        server: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        table: .literal(leftover),
      ),
    );

    add(
      AzurermStreamAnalyticsOutputPowerbi(
        'stream_analytics_output_powerbi',
        dataset: .literal(leftover),
        groupId: .literal('11111111-1111-1111-1111-111111111111'),
        groupName: .literal(leftover),
        name: .literal(leftover),
        streamAnalyticsJobId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StreamAnalytics/streamingJobs/streamingJobName',
        ),
        table: .literal(leftover),
      ),
    );

    add(
      AzurermStreamAnalyticsOutputServicebusQueue(
        'stream_analytics_output_servicebus_queue',
        name: .literal(leftover),
        queueName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        servicebusNamespace: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        serialization: StreamAnalyticsOutputServicebusQueueSerialization(
          type: .literal('Avro'),
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsOutputServicebusTopic(
        'stream_analytics_output_servicebus_topic',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        servicebusNamespace: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        topicName: .literal(leftover),
        serialization: StreamAnalyticsOutputServicebusTopicSerialization(
          type: .literal('Avro'),
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsOutputSynapse(
        'stream_analytics_output_synapse',
        database: .literal(leftover),
        name: .literal(leftover),
        password: leftoverSecret,
        resourceGroupName: .literal(resourceGroupName),
        server: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        table: .literal(leftover),
        user: .literal(leftover),
      ),
    );

    add(
      AzurermStreamAnalyticsOutputTable(
        'stream_analytics_output_table',
        batchSize: .literal(1),
        name: .literal(leftover),
        partitionKey: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        rowKey: .literal(leftover),
        storageAccountKey: leftoverSecret,
        storageAccountName: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        table: .literal(leftover),
      ),
    );

    add(
      AzurermStreamAnalyticsReferenceInputBlob(
        'stream_analytics_reference_input_blob',
        dateFormat: .literal(leftover),
        name: .literal(leftover),
        pathPattern: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageAccountName: .literal(leftover),
        storageContainerName: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        timeFormat: .literal(leftover),
        serialization: StreamAnalyticsReferenceInputBlobSerialization(
          type: .literal('Avro'),
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsReferenceInputMssql(
        'stream_analytics_reference_input_mssql',
        database: .literal(leftover),
        fullSnapshotQuery: .literal(leftover),
        name: .literal(leftover),
        password: leftoverSecret,
        refreshType: .static,
        resourceGroupName: .literal(resourceGroupName),
        server: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        username: .literal(leftover),
      ),
    );

    add(
      AzurermStreamAnalyticsStreamInputBlob(
        'stream_analytics_stream_input_blob',
        dateFormat: .literal(leftover),
        name: .literal(leftover),
        pathPattern: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageAccountKey: leftoverSecret,
        storageAccountName: .literal(leftover),
        storageContainerName: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        timeFormat: .literal(leftover),
        serialization: StreamAnalyticsStreamInputBlobSerialization(
          type: .literal('Avro'),
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsStreamInputEventhub(
        'stream_analytics_stream_input_eventhub',
        eventhubName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        servicebusNamespace: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        serialization: StreamAnalyticsStreamInputEventhubSerialization(
          type: .literal('Avro'),
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsStreamInputEventhubV2(
        'stream_analytics_stream_input_eventhub_v2',
        eventhubName: .literal(leftover),
        name: .literal(leftover),
        servicebusNamespace: .literal(leftover),
        streamAnalyticsJobId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StreamAnalytics/streamingJobs/streamingJobName',
        ),
        serialization: StreamAnalyticsStreamInputEventhubV2Serialization(
          type: .literal('Avro'),
        ),
      ),
    );

    add(
      AzurermStreamAnalyticsStreamInputIothub(
        'stream_analytics_stream_input_iothub',
        endpoint: .literal(leftover),
        eventhubConsumerGroupName: .literal(leftover),
        iothubNamespace: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sharedAccessPolicyKey: leftoverSecret,
        sharedAccessPolicyName: .literal(leftover),
        streamAnalyticsJobName: .literal(leftover),
        serialization: StreamAnalyticsStreamInputIothubSerialization(
          type: .literal('Avro'),
        ),
      ),
    );

    add(
      AzurermSubnet(
        'subnet',
        addressing: .addressPrefixes(.literal([leftover])),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualNetworkName: .literal(leftover),
      ),
    );

    add(
      AzurermSubnetNatGatewayAssociation(
        'subnet_nat_gateway_association',
        natGatewayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/natGateways/natGatewayName',
        ),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermSubnetNetworkSecurityGroupAssociation(
        'subnet_network_security_group_association',
        networkSecurityGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkSecurityGroups/networkSecurityGroupName',
        ),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermSubnetRouteTableAssociation(
        'subnet_route_table_association',
        routeTableId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/routeTables/routeTableName',
        ),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
      ),
    );

    add(
      AzurermSubnetServiceEndpointStoragePolicy(
        'subnet_service_endpoint_storage_policy',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermSubscriptionTemplateDeployment(
        'subscription_template_deployment',
        location: .literal(location),
        name: .literal(leftover),
        template: .templateContent(.literal(leftover)),
      ),
    );

    add(
      AzurermSynapseFirewallRule(
        'synapse_firewall_rule',
        endIpAddress: .literal('10.0.0.1'),
        name: .literal(leftover),
        startIpAddress: .literal('10.0.0.1'),
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSynapseIntegrationRuntimeAzure(
        'synapse_integration_runtime_azure',
        location: .literal(location),
        name: .literal(leftover),
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSynapseIntegrationRuntimeSelfHosted(
        'synapse_integration_runtime_self_hosted',
        name: .literal(leftover),
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSynapseLinkedService(
        'synapse_linked_service',
        name: .literal(leftover),
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
        type: .literal('AmazonMWS'),
        typePropertiesJson: .literal(leftover),
      ),
    );

    add(
      AzurermSynapseManagedPrivateEndpoint(
        'synapse_managed_private_endpoint',
        name: .literal(leftover),
        subresourceName: .literal(leftover),
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermSynapsePrivateLinkHub(
        'synapse_private_link_hub',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermSynapseSparkPool(
        'synapse_spark_pool',
        name: .literal(leftover),
        scale: .autoScale(
          .new(maxNodeCount: .literal(200), minNodeCount: .literal(200)),
        ),
        nodeSize: .large,
        nodeSizeFamily: .hardwareacceleratedfpga,
        sparkVersion: .v3p4,
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSynapseSqlPool(
        'synapse_sql_pool',
        name: .literal(leftover),
        skuName: .dw100c,
        storageAccountType: .literal('GRS'),
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSynapseWorkspace(
        'synapse_workspace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        storageDataLakeGen2FilesystemId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermSynapseWorkspaceAadAdmin(
        'synapse_workspace_aad_admin',
        login: .literal(leftover),
        objectId: .literal('11111111-1111-1111-1111-111111111111'),
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
        tenantId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermSynapseWorkspaceExtendedAuditingPolicy(
        'synapse_workspace_extended_auditing_policy',
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSynapseWorkspaceKey(
        'synapse_workspace_key',
        active: .literal(true),
        customerManagedKeyName: .literal(leftover),
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSynapseWorkspaceSecurityAlertPolicy(
        'synapse_workspace_security_alert_policy',
        policyState: .literal('Disabled'),
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermSynapseWorkspaceSqlAadAdmin(
        'synapse_workspace_sql_aad_admin',
        login: .literal(leftover),
        objectId: .literal('11111111-1111-1111-1111-111111111111'),
        synapseWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Synapse/workspaces/workspaceName',
        ),
        tenantId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      AzurermSystemCenterVirtualMachineManagerAvailabilitySet(
        'system_center_virtual_machine_manager_availabili',
        customLocationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ExtendedLocation/customLocations/customLocationName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        systemCenterVirtualMachineManagerServerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ScVmm/vmmServers/vmmServerName',
        ),
      ),
    );

    add(
      AzurermSystemCenterVirtualMachineManagerCloud(
        'system_center_virtual_machine_manager_cloud',
        customLocationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ExtendedLocation/customLocations/customLocationName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        systemCenterVirtualMachineManagerServerInventoryItemId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ScVmm/vmmServers/vmmServerName/inventoryItems/inventoryItemName',
        ),
      ),
    );

    add(
      AzurermSystemCenterVirtualMachineManagerServer(
        'system_center_virtual_machine_manager_server',
        customLocationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ExtendedLocation/customLocations/customLocationName',
        ),
        fqdn: .literal(leftover),
        location: .literal(location),
        name: .literal(leftover),
        password: leftoverSecret,
        resourceGroupName: .literal(resourceGroupName),
        username: .literal(leftover),
      ),
    );

    add(
      AzurermSystemCenterVirtualMachineManagerVirtualMachineInstanceGuestAgent(
        'system_center_virtual_machine_manager_virtual_ma',
        password: leftoverSecret,
        scopedResourceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HybridCompute/machines/machineName',
        ),
        username: .literal(leftover),
      ),
    );

    add(
      AzurermSystemCenterVirtualMachineManagerVirtualMachineTemplate(
        'system_center_virtual_machine_manager_virtual__2',
        customLocationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ExtendedLocation/customLocations/customLocationName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        systemCenterVirtualMachineManagerServerInventoryItemId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ScVmm/vmmServers/vmmServerName/inventoryItems/inventoryItemName',
        ),
      ),
    );

    add(
      AzurermSystemCenterVirtualMachineManagerVirtualNetwork(
        'system_center_virtual_machine_manager_virtual_ne',
        customLocationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ExtendedLocation/customLocations/customLocationName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        systemCenterVirtualMachineManagerServerInventoryItemId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ScVmm/vmmServers/vmmServerName/inventoryItems/inventoryItemName',
        ),
      ),
    );

    add(
      AzurermTenantTemplateDeployment(
        'tenant_template_deployment',
        location: .literal(location),
        name: .literal(leftover),
        template: .templateContent(.literal(leftover)),
      ),
    );

    add(
      AzurermTrafficManagerAzureEndpoint(
        'traffic_manager_azure_endpoint',
        name: .literal(leftover),
        profileId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/trafficManagerProfiles/trafficManagerProfileName',
        ),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermTrafficManagerExternalEndpoint(
        'traffic_manager_external_endpoint',
        name: .literal(leftover),
        profileId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/trafficManagerProfiles/trafficManagerProfileName',
        ),
        target: .literal(leftover),
      ),
    );

    add(
      AzurermTrafficManagerNestedEndpoint(
        'traffic_manager_nested_endpoint',
        minimumChildEndpoints: .literal(200),
        name: .literal(leftover),
        profileId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/trafficManagerProfiles/trafficManagerProfileName',
        ),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      AzurermTrafficManagerProfile(
        'traffic_manager_profile',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        trafficRoutingMethod: .geographic,
        dnsConfig: TrafficManagerProfileDnsConfig(
          relativeName: .literal(leftover),
          ttl: .literal(200),
        ),
        monitorConfig: TrafficManagerProfileMonitorConfig(
          port: .literal(200),
          protocol: .http,
        ),
      ),
    );

    add(
      AzurermTrustedSigningAccount(
        'trusted_signing_account',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .basic,
      ),
    );

    add(
      AzurermUserAssignedIdentity(
        'user_assigned_identity',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermVideoIndexerAccount(
        'video_indexer_account',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        identity: VideoIndexerAccountIdentity(type: .literal('UserAssigned')),
        storage: VideoIndexerAccountStorage(
          storageAccountId: .literal(
            '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
          ),
        ),
      ),
    );

    add(
      AzurermVirtualDesktopApplication(
        'virtual_desktop_application',
        applicationGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DesktopVirtualization/applicationGroups/applicationGroupName',
        ),
        commandLineArgumentPolicy: .allow,
        name: .literal(leftover),
        path: .literal(leftover),
      ),
    );

    add(
      AzurermVirtualDesktopApplicationGroup(
        'virtual_desktop_application_group',
        hostPoolId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DesktopVirtualization/hostPools/hostPoolName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        type: .desktop,
      ),
    );

    add(
      AzurermVirtualDesktopHostPool(
        'virtual_desktop_host_pool',
        loadBalancerType: .breadthfirst,
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        type: .literal('Personal'),
      ),
    );

    add(
      AzurermVirtualDesktopHostPoolRegistrationInfo(
        'virtual_desktop_host_pool_registration_info',
        expirationDate: .literal('2024-01-01T00:00:00Z'),
        hostpoolId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DesktopVirtualization/hostPools/hostPoolName',
        ),
      ),
    );

    add(
      AzurermVirtualDesktopScalingPlanHostPoolAssociation(
        'virtual_desktop_scaling_plan_host_pool_associati',
        enabled: .literal(true),
        hostPoolId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DesktopVirtualization/hostPools/hostPoolName',
        ),
        scalingPlanId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DesktopVirtualization/scalingPlans/scalingPlanName',
        ),
      ),
    );

    add(
      AzurermVirtualDesktopWorkspace(
        'virtual_desktop_workspace',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermVirtualDesktopWorkspaceApplicationGroupAssociation(
        'virtual_desktop_workspace_application_group_asso',
        applicationGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DesktopVirtualization/applicationGroups/applicationGroupName',
        ),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DesktopVirtualization/workspaces/workspaceName',
        ),
      ),
    );

    add(
      AzurermVirtualHub(
        'virtual_hub',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermVirtualHubBgpConnection(
        'virtual_hub_bgp_connection',
        name: .literal(leftover),
        peerAsn: .literal(200),
        peerIp: .literal('10.0.0.1'),
        virtualHubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
        ),
      ),
    );

    add(
      AzurermVirtualHubConnection(
        'virtual_hub_connection',
        name: .literal(leftover),
        remoteVirtualNetworkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
        ),
        virtualHubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
        ),
      ),
    );

    add(
      AzurermVirtualHubIp(
        'virtual_hub_ip',
        name: .literal(leftover),
        publicIpAddressId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/publicIPAddresses/publicIPAddressesValue',
        ),
        subnetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue/subnets/subnetValue',
        ),
        virtualHubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
        ),
      ),
    );

    add(
      AzurermVirtualHubRouteTable(
        'virtual_hub_route_table',
        name: .literal(leftover),
        virtualHubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
        ),
      ),
    );

    add(
      AzurermVirtualHubRouteTableRoute(
        'virtual_hub_route_table_route',
        destinations: .literal([leftover]),
        destinationsType: .cidr,
        name: .literal(leftover),
        nextHop: .literal(
          '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
        ),
        routeTableId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName/hubRouteTables/hubRouteTableName',
        ),
      ),
    );

    add(
      AzurermVirtualHubRoutingIntent(
        'virtual_hub_routing_intent',
        name: .literal(leftover),
        virtualHubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
        ),
        routingPolicy: [
          VirtualHubRoutingIntentRoutingPolicy(
            destinations: [.internet],
            name: .literal(leftover),
            nextHop: .literal(
              '/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/leftover',
            ),
          ),
        ],
      ),
    );

    add(
      AzurermVirtualHubSecurityPartnerProvider(
        'virtual_hub_security_partner_provider',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        securityProviderName: .checkpoint,
      ),
    );

    add(
      AzurermVirtualMachine(
        'virtual_machine',
        location: .literal(location),
        name: .literal(leftover),
        networkInterfaceIds: .literal([leftover]),
        resourceGroupName: .literal(resourceGroupName),
        vmSize: .literal(leftover),
        storageOsDisk: VirtualMachineStorageOsDisk(
          createOption: .literal(leftover),
          name: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermVirtualMachineAutomanageConfigurationAssignment(
        'virtual_machine_automanage_configuration_assignm',
        configurationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AutoManage/configurationProfiles/configurationProfileName',
        ),
        virtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineName',
        ),
      ),
    );

    add(
      AzurermVirtualMachineDataDiskAttachment(
        'virtual_machine_data_disk_attachment',
        caching: .none,
        lun: .literal(200),
        managedDiskId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/disks/diskValue',
        ),
        virtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineValue',
        ),
      ),
    );

    add(
      AzurermVirtualMachineExtension(
        'virtual_machine_extension',
        name: .literal(leftover),
        publisher: .literal(leftover),
        type: .literal(leftover),
        typeHandlerVersion: .literal(leftover),
        virtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineValue',
        ),
      ),
    );

    add(
      AzurermVirtualMachineGalleryApplicationAssignment(
        'virtual_machine_gallery_application_assignment',
        galleryApplicationVersionId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/galleries/galleryName/applications/applicationName/versions/versionName',
        ),
        virtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineName',
        ),
      ),
    );

    add(
      AzurermVirtualMachineImplicitDataDiskFromSource(
        'virtual_machine_implicit_data_disk_from_source',
        createOption: .literal('Copy'),
        diskSizeGb: .literal(200),
        lun: .literal(200),
        name: .literal(leftover),
        sourceResourceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/snapshots/snapshotName',
        ),
        virtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineValue',
        ),
      ),
    );

    add(
      AzurermVirtualMachineRestorePoint(
        'virtual_machine_restore_point',
        name: .literal(leftover),
        virtualMachineRestorePointCollectionId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/restorePointCollections/restorePointCollectionName',
        ),
      ),
    );

    add(
      AzurermVirtualMachineRestorePointCollection(
        'virtual_machine_restore_point_collection',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sourceVirtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineValue',
        ),
      ),
    );

    add(
      AzurermVirtualMachineRunCommand(
        'virtual_machine_run_command',
        location: .literal(location),
        name: leftoverSecret,
        virtualMachineId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachines/virtualMachineValue',
        ),
        source: VirtualMachineRunCommandSource(
          command: .commandId(
            .literal(
              '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
            ),
          ),
        ),
      ),
    );

    add(
      AzurermVirtualMachineScaleSet(
        'virtual_machine_scale_set',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        upgradePolicyMode: .automatic,
        networkProfile: [
          VirtualMachineScaleSetNetworkProfile(
            name: .literal(leftover),
            primary: .literal(true),
            ipConfiguration: [
              .new(
                name: .literal(leftover),
                primary: .literal(true),
                subnetId: .literal(
                  '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
                ),
              ),
            ],
          ),
        ],
        osProfile: VirtualMachineScaleSetOsProfile(
          adminUsername: .literal(leftover),
          computerNamePrefix: .literal(leftover),
        ),
        sku: VirtualMachineScaleSetSku(
          capacity: .literal(200),
          name: .literal(leftover),
        ),
        storageProfileOsDisk: VirtualMachineScaleSetStorageProfileOsDisk(
          createOption: .literal(leftover),
        ),
      ),
    );

    add(
      AzurermVirtualMachineScaleSetExtension(
        'virtual_machine_scale_set_extension',
        name: .literal(leftover),
        publisher: .literal(leftover),
        type: .literal(leftover),
        typeHandlerVersion: .literal(leftover),
        virtualMachineScaleSetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachineScaleSets/virtualMachineScaleSetValue',
        ),
      ),
    );

    add(
      AzurermVirtualMachineScaleSetStandbyPool(
        'virtual_machine_scale_set_standby_pool',
        attachedVirtualMachineScaleSetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Compute/virtualMachineScaleSets/virtualMachineScaleSetName',
        ),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualMachineState: .deallocated,
        elasticityProfile: VirtualMachineScaleSetStandbyPoolElasticityProfile(
          maxReadyCapacity: .literal(200),
          minReadyCapacity: .literal(200),
        ),
      ),
    );

    add(
      AzurermVirtualNetwork(
        'virtual_network',
        addressing: .addressSpace(.literal([leftover])),
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermVirtualNetworkDnsServers(
        'virtual_network_dns_servers',
        virtualNetworkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
        ),
      ),
    );

    add(
      AzurermVirtualNetworkGatewayConnection(
        'virtual_network_gateway_connection',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        type: .literal('ExpressRoute'),
        virtualNetworkGatewayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworkGateways/virtualNetworkGatewayName',
        ),
      ),
    );

    add(
      AzurermVirtualNetworkGatewayNatRule(
        'virtual_network_gateway_nat_rule',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualNetworkGatewayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworkGateways/virtualNetworkGatewayName',
        ),
        externalMapping: [
          VirtualNetworkGatewayNatRuleExternalMapping(
            addressSpace: .literal('10.0.0.0/24'),
          ),
        ],
        internalMapping: [
          VirtualNetworkGatewayNatRuleInternalMapping(
            addressSpace: .literal('10.0.0.0/24'),
          ),
        ],
      ),
    );

    add(
      AzurermVirtualNetworkPeering(
        'virtual_network_peering',
        name: .literal(leftover),
        remoteVirtualNetworkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
        ),
        resourceGroupName: .literal(resourceGroupName),
        virtualNetworkName: .literal(leftover),
      ),
    );

    add(
      AzurermVirtualWan(
        'virtual_wan',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      AzurermVmwareCluster(
        'vmware_cluster',
        clusterNodeCount: .literal(3),
        name: .literal(leftover),
        skuName: .av20,
        vmwareCloudId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AVS/privateClouds/privateCloudName',
        ),
      ),
    );

    add(
      AzurermVmwareExpressRouteAuthorization(
        'vmware_express_route_authorization',
        name: .literal(leftover),
        privateCloudId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AVS/privateClouds/privateCloudName',
        ),
      ),
    );

    add(
      AzurermVmwareNetappVolumeAttachment(
        'vmware_netapp_volume_attachment',
        name: .literal(leftover),
        netappVolumeId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        vmwareClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AVS/privateClouds/privateCloudName/clusters/clusterName',
        ),
      ),
    );

    add(
      AzurermVmwarePrivateCloud(
        'vmware_private_cloud',
        location: .literal(location),
        name: .literal(leftover),
        networkSubnetCidr: .literal('192.0.2.0/24'),
        resourceGroupName: .literal(resourceGroupName),
        skuName: .av20,
        managementCluster: VmwarePrivateCloudManagementCluster(
          size: .literal(3),
        ),
      ),
    );

    add(
      AzurermVpnGateway(
        'vpn_gateway',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualHubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualHubs/virtualHubName',
        ),
      ),
    );

    add(
      AzurermVpnGatewayConnection(
        'vpn_gateway_connection',
        name: .literal(leftover),
        remoteVpnSiteId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/vpnSites/vpnSiteName',
        ),
        vpnGatewayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/vpnGateways/vpnGatewayName',
        ),
        vpnLink: [
          VpnGatewayConnectionVpnLink(
            name: .literal(leftover),
            vpnSiteLinkId: .literal(
              '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/vpnSites/vpnSiteName/vpnSiteLinks/vpnSiteLinkName',
            ),
          ),
        ],
      ),
    );

    add(
      AzurermVpnGatewayNatRule(
        'vpn_gateway_nat_rule',
        name: .literal(leftover),
        vpnGatewayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/vpnGateways/vpnGatewayName',
        ),
      ),
    );

    add(
      AzurermVpnServerConfiguration(
        'vpn_server_configuration',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        vpnAuthenticationTypes: [.aad],
      ),
    );

    add(
      AzurermVpnServerConfigurationPolicyGroup(
        'vpn_server_configuration_policy_group',
        name: .literal(leftover),
        vpnServerConfigurationId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/vpnServerConfigurations/vpnServerConfigurationName',
        ),
        policy: [
          VpnServerConfigurationPolicyGroupPolicy(
            name: .literal(leftover),
            type: .aadgroupid,
            value: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AzurermVpnSite(
        'vpn_site',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualWanId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualWans/virtualWanName',
        ),
      ),
    );

    add(
      AzurermWebAppActiveSlot(
        'web_app_active_slot',
        slotId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteName/slots/slotName',
        ),
      ),
    );

    add(
      AzurermWebAppHybridConnection(
        'web_app_hybrid_connection',
        hostname: .literal(leftover),
        port: .literal(200),
        relayId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Relay/namespaces/namespaceName/hybridConnections/hybridConnectionName',
        ),
        webAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
      ),
    );

    add(
      AzurermWebApplicationFirewallPolicy(
        'web_application_firewall_policy',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        managedRules: WebApplicationFirewallPolicyManagedRules(
          managedRuleSet: [.new(version: .literal('0.1'))],
        ),
      ),
    );

    add(
      AzurermWebPubsub(
        'web_pubsub',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: .premiumP1,
      ),
    );

    add(
      AzurermWebPubsubCustomDomain(
        'web_pubsub_custom_domain',
        domainName: .literal(leftover),
        name: .literal(leftover),
        webPubsubCustomCertificateId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.SignalRService/webPubSub/webPubSubName/customCertificates/customCertificateName',
        ),
        webPubsubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.SignalRService/webPubSub/webPubSubName',
        ),
      ),
    );

    add(
      AzurermWebPubsubHub(
        'web_pubsub_hub',
        name: .literal(leftover),
        webPubsubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.SignalRService/webPubSub/webPubSubName',
        ),
      ),
    );

    add(
      AzurermWebPubsubNetworkAcl(
        'web_pubsub_network_acl',
        webPubsubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.SignalRService/webPubSub/webPubSubName',
        ),
        publicNetwork: WebPubsubNetworkAclPublicNetwork(
          requestTypes: .allowedRequestTypes([.clientconnection]),
        ),
      ),
    );

    add(
      AzurermWebPubsubSharedPrivateLinkResource(
        'web_pubsub_shared_private_link_resource',
        name: .literal(leftover),
        subresourceName: .literal(leftover),
        targetResourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        webPubsubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.SignalRService/webPubSub/webPubSubName',
        ),
      ),
    );

    add(
      AzurermWebPubsubSocketio(
        'web_pubsub_socketio',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        sku: WebPubsubSocketioSku(name: .literal('Free_F1')),
      ),
    );

    add(
      AzurermWindowsFunctionApp(
        'windows_function_app',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        servicePlanId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/serverFarms/serverFarmValue',
        ),
        storage: .storageAccountName(.literal(leftover)),
        siteConfig: WindowsFunctionAppSiteConfig(alwaysOn: .literal(true)),
      ),
    );

    add(
      AzurermWindowsFunctionAppSlot(
        'windows_function_app_slot',
        functionAppId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
        name: .literal(leftover),
        storage: .storageAccountName(.literal(leftover)),
        siteConfig: WindowsFunctionAppSlotSiteConfig(alwaysOn: .literal(true)),
      ),
    );

    add(
      AzurermWindowsWebApp(
        'windows_web_app',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        servicePlanId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/serverFarms/serverFarmValue',
        ),
        siteConfig: WindowsWebAppSiteConfig(alwaysOn: .literal(true)),
      ),
    );

    add(
      AzurermWindowsWebAppSlot(
        'windows_web_app_slot',
        appServiceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Web/sites/siteValue',
        ),
        name: .literal(leftover),
        siteConfig: WindowsWebAppSlotSiteConfig(alwaysOn: .literal(true)),
      ),
    );

    add(
      DataAzurermAadb2cDirectory(
        'd_aadb2c_directory',
        domainName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermActiveDirectoryDomainService(
        'd_active_directory_domain_service',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(DataAzurermAdvisorRecommendations('d_advisor_recommendations'));

    add(
      DataAzurermApiConnection(
        'd_api_connection',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermApiManagement(
        'd_api_management',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermApiManagementApi(
        'd_api_management_api',
        apiManagementName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        revision: .literal(leftover),
      ),
    );

    add(
      DataAzurermApiManagementApiVersionSet(
        'd_api_management_api_version_set',
        apiManagementName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermApiManagementGateway(
        'd_api_management_gateway',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermApiManagementGatewayHostNameConfiguration(
        'd_api_management_gateway_host_name_configuration',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        gatewayName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermApiManagementGroup(
        'd_api_management_group',
        apiManagementName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermApiManagementProduct(
        'd_api_management_product',
        apiManagementName: .literal(leftover),
        productId: .literal('leftover'),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermApiManagementSubscription(
        'd_api_management_subscription',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        subscriptionId: .literal('leftover'),
      ),
    );

    add(
      DataAzurermApiManagementWorkspace(
        'd_api_management_workspace',
        apiManagementId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ApiManagement/service/serviceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermAppConfiguration(
        'd_app_configuration',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAppConfigurationKey(
        'd_app_configuration_key',
        configurationStoreId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppConfiguration/configurationStores/configurationStoreName',
        ),
        key: .literal(leftover),
      ),
    );

    add(
      DataAzurermAppConfigurationKeys(
        'd_app_configuration_keys',
        configurationStoreId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.AppConfiguration/configurationStores/configurationStoreName',
        ),
      ),
    );

    add(
      DataAzurermAppServiceCertificate(
        'd_app_service_certificate',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAppServiceCertificateOrder(
        'd_app_service_certificate_order',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAppServiceEnvironmentV3(
        'd_app_service_environment_v3',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermApplicationGateway(
        'd_application_gateway',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermApplicationInsights(
        'd_application_insights',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermApplicationSecurityGroup(
        'd_application_security_group',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermArcMachine(
        'd_arc_machine',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermArcResourceBridgeAppliance(
        'd_arc_resource_bridge_appliance',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAttestationProvider(
        'd_attestation_provider',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAutomationAccount(
        'd_automation_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAutomationRunbook(
        'd_automation_runbook',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAutomationVariableBool(
        'd_automation_variable_bool',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAutomationVariableDatetime(
        'd_automation_variable_datetime',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAutomationVariableInt(
        'd_automation_variable_int',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAutomationVariableObject(
        'd_automation_variable_object',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAutomationVariableString(
        'd_automation_variable_string',
        automationAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermAutomationVariables(
        'd_automation_variables',
        automationAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Automation/automationAccounts/automationAccountName',
        ),
      ),
    );

    add(
      DataAzurermAvailabilitySet(
        'd_availability_set',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermBackupPolicyFileShare(
        'd_backup_policy_file_share',
        name: .literal(leftover),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermBackupPolicyVm(
        'd_backup_policy_vm',
        name: .literal(leftover),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermBastionHost(
        'd_bastion_host',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermBatchAccount(
        'd_batch_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermBatchApplication(
        'd_batch_application',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermBatchPool(
        'd_batch_pool',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermBillingEnrollmentAccountScope(
        'd_billing_enrollment_account_scope',
        billingAccountName: .literal(leftover),
        enrollmentAccountName: .literal(leftover),
      ),
    );

    add(
      DataAzurermBillingMcaAccountScope(
        'd_billing_mca_account_scope',
        billingAccountName: .literal(leftover),
        billingProfileName: .literal(leftover),
        invoiceSectionName: .literal(leftover),
      ),
    );

    add(
      DataAzurermBillingMpaAccountScope(
        'd_billing_mpa_account_scope',
        billingAccountName: .literal(leftover),
        customerName: .literal(leftover),
      ),
    );

    add(
      DataAzurermBlueprintDefinition(
        'd_blueprint_definition',
        name: .literal(leftover),
        scopeId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      DataAzurermBlueprintPublishedVersion(
        'd_blueprint_published_version',
        blueprintName: .literal(leftover),
        scopeId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
        version: .literal(leftover),
      ),
    );

    add(
      DataAzurermCdnFrontdoorBatchRuleSet(
        'd_cdn_frontdoor_batch_rule_set',
        name: .literal(leftover),
        profileName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCdnFrontdoorCustomDomain(
        'd_cdn_frontdoor_custom_domain',
        name: .literal(leftover),
        profileName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCdnFrontdoorEndpoint(
        'd_cdn_frontdoor_endpoint',
        name: .literal(leftover),
        profileName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCdnFrontdoorFirewallPolicy(
        'd_cdn_frontdoor_firewall_policy',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCdnFrontdoorOriginGroup(
        'd_cdn_frontdoor_origin_group',
        name: .literal(leftover),
        profileName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCdnFrontdoorProfile(
        'd_cdn_frontdoor_profile',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCdnFrontdoorRuleSet(
        'd_cdn_frontdoor_rule_set',
        name: .literal(leftover),
        profileName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCdnFrontdoorSecret(
        'd_cdn_frontdoor_secret',
        name: .literal(leftover),
        profileName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCdnFrontdoorSecurityPolicy(
        'd_cdn_frontdoor_security_policy',
        name: .literal(leftover),
        profileName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCdnProfile(
        'd_cdn_profile',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(DataAzurermClientConfig('d_client_config'));

    add(
      DataAzurermCognitiveAccount(
        'd_cognitive_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCognitiveAccountProject(
        'd_cognitive_account_project',
        cognitiveAccountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCommunicationService(
        'd_communication_service',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermConfidentialLedger(
        'd_confidential_ledger',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermConsumptionBudgetResourceGroup(
        'd_consumption_budget_resource_group',
        name: .literal(leftover),
        resourceGroupId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      DataAzurermConsumptionBudgetSubscription(
        'd_consumption_budget_subscription',
        name: .literal(leftover),
        subscriptionId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      DataAzurermContainerApp(
        'd_container_app',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermContainerAppEnvironment(
        'd_container_app_environment',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermContainerAppEnvironmentCertificate(
        'd_container_app_environment_certificate',
        containerAppEnvironmentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.App/managedEnvironments/managedEnvironmentName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermContainerAppEnvironmentStorage(
        'd_container_app_environment_storage',
        containerAppEnvironmentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.App/managedEnvironments/managedEnvironmentName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermContainerGroup(
        'd_container_group',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermContainerRegistry(
        'd_container_registry',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermContainerRegistryCacheRule(
        'd_container_registry_cache_rule',
        containerRegistryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ContainerRegistry/registries/registryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermContainerRegistryScopeMap(
        'd_container_registry_scope_map',
        containerRegistryName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermContainerRegistryToken(
        'd_container_registry_token',
        containerRegistryName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCosmosdbAccount(
        'd_cosmosdb_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCosmosdbMongoDatabase(
        'd_cosmosdb_mongo_database',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCosmosdbRestorableDatabaseAccounts(
        'd_cosmosdb_restorable_database_accounts',
        location: .literal(location),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermCosmosdbSqlDatabase(
        'd_cosmosdb_sql_database',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermCosmosdbSqlRoleDefinition(
        'd_cosmosdb_sql_role_definition',
        accountName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        roleDefinitionId: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      DataAzurermDashboardGrafana(
        'd_dashboard_grafana',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDataFactory(
        'd_data_factory',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDataFactoryTriggerSchedule(
        'd_data_factory_trigger_schedule',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermDataFactoryTriggerSchedules(
        'd_data_factory_trigger_schedules',
        dataFactoryId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataFactory/factories/factoryName',
        ),
      ),
    );

    add(
      DataAzurermDataProtectionBackupVault(
        'd_data_protection_backup_vault',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDataShare(
        'd_data_share',
        accountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataShare/accounts/accountName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermDataShareAccount(
        'd_data_share_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDataShareDatasetBlobStorage(
        'd_data_share_dataset_blob_storage',
        dataShareId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataShare/accounts/accountName/shares/shareName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermDataShareDatasetDataLakeGen2(
        'd_data_share_dataset_data_lake_gen2',
        name: .literal(leftover),
        shareId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataShare/accounts/accountName/shares/shareName',
        ),
      ),
    );

    add(
      DataAzurermDataShareDatasetKustoCluster(
        'd_data_share_dataset_kusto_cluster',
        name: .literal(leftover),
        shareId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataShare/accounts/accountName/shares/shareName',
        ),
      ),
    );

    add(
      DataAzurermDataShareDatasetKustoDatabase(
        'd_data_share_dataset_kusto_database',
        name: .literal(leftover),
        shareId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DataShare/accounts/accountName/shares/shareName',
        ),
      ),
    );

    add(
      DataAzurermDatabaseMigrationProject(
        'd_database_migration_project',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serviceName: .literal(leftover),
      ),
    );

    add(
      DataAzurermDatabaseMigrationService(
        'd_database_migration_service',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDataboxEdgeDevice(
        'd_databox_edge_device',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDatabricksAccessConnector(
        'd_databricks_access_connector',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDatabricksWorkspace(
        'd_databricks_workspace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDatabricksWorkspacePrivateEndpointConnection(
        'd_databricks_workspace_private_endpoint_connecti',
        privateEndpointId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateEndpoints/privateEndpointName',
        ),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Databricks/workspaces/workspaceName',
        ),
      ),
    );

    add(
      DataAzurermDedicatedHost(
        'd_dedicated_host',
        dedicatedHostGroupName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDedicatedHostGroup(
        'd_dedicated_host_group',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDevCenter(
        'd_dev_center',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDevCenterAttachedNetwork(
        'd_dev_center_attached_network',
        devCenterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/devCenters/devCenterName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermDevCenterCatalog(
        'd_dev_center_catalog',
        devCenterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/devCenters/devCenterName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermDevCenterDevBoxDefinition(
        'd_dev_center_dev_box_definition',
        devCenterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/devCenters/devCenterName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermDevCenterEnvironmentType(
        'd_dev_center_environment_type',
        devCenterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/devCenters/devCenterName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermDevCenterGallery(
        'd_dev_center_gallery',
        devCenterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/devCenters/devCenterName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermDevCenterNetworkConnection(
        'd_dev_center_network_connection',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDevCenterProject(
        'd_dev_center_project',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDevCenterProjectEnvironmentType(
        'd_dev_center_project_environment_type',
        devCenterProjectId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/projects/projectName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermDevCenterProjectPool(
        'd_dev_center_project_pool',
        devCenterProjectId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.DevCenter/projects/projectName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermDevTestLab(
        'd_dev_test_lab',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDevTestVirtualNetwork(
        'd_dev_test_virtual_network',
        labName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDigitalTwinsInstance(
        'd_digital_twins_instance',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDiskAccess(
        'd_disk_access',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDiskEncryptionSet(
        'd_disk_encryption_set',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermDnsARecord(
        'd_dns_a_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermDnsAaaaRecord(
        'd_dns_aaaa_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermDnsCaaRecord(
        'd_dns_caa_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermDnsCnameRecord(
        'd_dns_cname_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermDnsMxRecord(
        'd_dns_mx_record',
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermDnsNsRecord(
        'd_dns_ns_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermDnsPtrRecord(
        'd_dns_ptr_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermDnsSoaRecord(
        'd_dns_soa_record',
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermDnsSrvRecord(
        'd_dns_srv_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermDnsTxtRecord(
        'd_dns_txt_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(DataAzurermDnsZone('d_dns_zone', name: .literal(leftover)));

    add(
      DataAzurermDynatraceMonitor(
        'd_dynatrace_monitor',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermElasticCloudElasticsearch(
        'd_elastic_cloud_elasticsearch',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermElasticSan(
        'd_elastic_san',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermElasticSanVolumeGroup(
        'd_elastic_san_volume_group',
        elasticSanId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ElasticSan/elasticSans/elasticSanName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermElasticSanVolumeSnapshot(
        'd_elastic_san_volume_snapshot',
        name: .literal(leftover),
        volumeGroupId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ElasticSan/elasticSans/elasticSanName/volumeGroups/volumeGroupName',
        ),
      ),
    );

    add(
      DataAzurermEventgridDomain(
        'd_eventgrid_domain',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventgridDomainTopic(
        'd_eventgrid_domain_topic',
        domainName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventgridPartnerNamespace(
        'd_eventgrid_partner_namespace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventgridPartnerRegistration(
        'd_eventgrid_partner_registration',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventgridSystemTopic(
        'd_eventgrid_system_topic',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventgridTopic(
        'd_eventgrid_topic',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventhub(
        'd_eventhub',
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventhubAuthorizationRule(
        'd_eventhub_authorization_rule',
        eventhubName: .literal(leftover),
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventhubCluster(
        'd_eventhub_cluster',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventhubConsumerGroup(
        'd_eventhub_consumer_group',
        eventhubName: .literal(leftover),
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventhubNamespace(
        'd_eventhub_namespace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventhubNamespaceAuthorizationRule(
        'd_eventhub_namespace_authorization_rule',
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermEventhubSas(
        'd_eventhub_sas',
        connectionString: leftoverSecret,
        expiry: .literal('2024-01-01T00:00:00Z'),
      ),
    );

    add(
      DataAzurermExpressRouteCircuit(
        'd_express_route_circuit',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermExpressRouteCircuitPeering(
        'd_express_route_circuit_peering',
        expressRouteCircuitName: .literal(leftover),
        peeringType: .azureprivatepeering,
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermExtendedLocationCustomLocation(
        'd_extended_location_custom_location',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermExtendedLocations(
        'd_extended_locations',
        location: .literal(location),
      ),
    );

    add(
      DataAzurermFirewall(
        'd_firewall',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermFirewallPolicy(
        'd_firewall_policy',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermFunctionAppHostKeys(
        'd_function_app_host_keys',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermGraphServicesAccount(
        'd_graph_services_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermHdinsightCluster(
        'd_hdinsight_cluster',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermHealthcareDicomService(
        'd_healthcare_dicom_service',
        name: .literal(leftover),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HealthcareApis/workspaces/workspaceName',
        ),
      ),
    );

    add(
      DataAzurermHealthcareFhirService(
        'd_healthcare_fhir_service',
        name: .literal(leftover),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HealthcareApis/workspaces/workspaceName',
        ),
      ),
    );

    add(
      DataAzurermHealthcareMedtechService(
        'd_healthcare_medtech_service',
        name: .literal(leftover),
        workspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.HealthcareApis/workspaces/workspaceName',
        ),
      ),
    );

    add(
      DataAzurermHealthcareService(
        'd_healthcare_service',
        location: .literal(location),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermHealthcareWorkspace(
        'd_healthcare_workspace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermImages(
        'd_images',
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermIothub(
        'd_iothub',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermIothubDps(
        'd_iothub_dps',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermIothubDpsSharedAccessPolicy(
        'd_iothub_dps_shared_access_policy',
        iothubDpsName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermIothubSharedAccessPolicy(
        'd_iothub_shared_access_policy',
        iothubName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermIpGroup(
        'd_ip_group',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermIpGroups(
        'd_ip_groups',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermKeyVault(
        'd_key_vault',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermKeyVaultAccessPolicy(
        'd_key_vault_access_policy',
        name: .keyManagement,
      ),
    );

    add(
      DataAzurermKeyVaultCertificate(
        'd_key_vault_certificate',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermKeyVaultCertificateData(
        'd_key_vault_certificate_data',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermKeyVaultCertificateIssuer(
        'd_key_vault_certificate_issuer',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermKeyVaultCertificates(
        'd_key_vault_certificates',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
      ),
    );

    add(
      DataAzurermKeyVaultKey(
        'd_key_vault_key',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermKeyVaultManagedHardwareSecurityModule(
        'd_key_vault_managed_hardware_security_module',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermKeyVaultManagedHardwareSecurityModuleKey(
        'd_key_vault_managed_hardware_security_module_key',
        managedHsmId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/managedHSMs/managedHSMName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermKeyVaultManagedHardwareSecurityModuleRoleDefinition(
        'd_key_vault_managed_hardware_security_module_rol',
        managedHsmId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/managedHSMs/managedHSMName',
        ),
        name: .literal('11111111-1111-1111-1111-111111111111'),
      ),
    );

    add(
      DataAzurermKeyVaultSecret(
        'd_key_vault_secret',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermKeyVaultSecrets(
        'd_key_vault_secrets',
        keyVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.KeyVault/vaults/vaultValue',
        ),
      ),
    );

    add(
      DataAzurermKubernetesAutomaticCluster(
        'd_kubernetes_automatic_cluster',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermKubernetesCluster(
        'd_kubernetes_cluster',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermKubernetesClusterNodePool(
        'd_kubernetes_cluster_node_pool',
        kubernetesClusterName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermKubernetesFleetManager(
        'd_kubernetes_fleet_manager',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermKubernetesNodePoolSnapshot(
        'd_kubernetes_node_pool_snapshot',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermKubernetesServiceVersions(
        'd_kubernetes_service_versions',
        location: .literal(location),
      ),
    );

    add(
      DataAzurermKustoCluster(
        'd_kusto_cluster',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermKustoDatabase(
        'd_kusto_database',
        clusterName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermLb(
        'd_lb',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermLbBackendAddressPool(
        'd_lb_backend_address_pool',
        loadbalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroupName/providers/Microsoft.Network/loadBalancers/loadBalancerName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermLbOutboundRule(
        'd_lb_outbound_rule',
        loadbalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroupName/providers/Microsoft.Network/loadBalancers/loadBalancerName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermLbRule(
        'd_lb_rule',
        loadbalancerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resourceGroupName/providers/Microsoft.Network/loadBalancers/loadBalancerName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermLinuxFunctionApp(
        'd_linux_function_app',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermLinuxWebApp(
        'd_linux_web_app',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermLoadTest(
        'd_load_test',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermLocalNetworkGateway(
        'd_local_network_gateway',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(DataAzurermLocation('d_location', location: .literal(location)));

    add(
      DataAzurermLogAnalyticsWorkspace(
        'd_log_analytics_workspace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermLogAnalyticsWorkspaceTable(
        'd_log_analytics_workspace_table',
        name: .literal(leftover),
        workspaceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      DataAzurermLogicAppIntegrationAccount(
        'd_logic_app_integration_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermLogicAppStandard(
        'd_logic_app_standard',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermLogicAppWorkflow(
        'd_logic_app_workflow',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMachineLearningWorkspace(
        'd_machine_learning_workspace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMaintenanceConfiguration(
        'd_maintenance_configuration',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermManagedApi(
        'd_managed_api',
        location: .literal(location),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermManagedApplicationDefinition(
        'd_managed_application_definition',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermManagedDevopsPool(
        'd_managed_devops_pool',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermManagedDisk(
        'd_managed_disk',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermManagedDisks(
        'd_managed_disks',
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermManagedRedis(
        'd_managed_redis',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermManagedRedisAccessPolicyAssignment(
        'd_managed_redis_access_policy_assignment',
        managedRedisName: .literal(leftover),
        objectId: .literal('11111111-1111-1111-1111-111111111111'),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermManagementGroup(
        'd_management_group',
        identifier: .displayName(.literal(leftover)),
      ),
    );

    add(
      DataAzurermManagementGroupTemplateDeployment(
        'd_management_group_template_deployment',
        managementGroupId: .literal(
          '/providers/Microsoft.Management/managementGroups/leftover',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermMapsAccount(
        'd_maps_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMarketplaceAgreement(
        'd_marketplace_agreement',
        offer: .literal(leftover),
        plan: .literal(leftover),
        publisher: .literal(leftover),
      ),
    );

    add(
      DataAzurermMonitorActionGroup(
        'd_monitor_action_group',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMonitorDataCollectionEndpoint(
        'd_monitor_data_collection_endpoint',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMonitorDataCollectionRule(
        'd_monitor_data_collection_rule',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMonitorDiagnosticCategories(
        'd_monitor_diagnostic_categories',
        resourceId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      DataAzurermMonitorScheduledQueryRulesAlert(
        'd_monitor_scheduled_query_rules_alert',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMonitorScheduledQueryRulesLog(
        'd_monitor_scheduled_query_rules_log',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMonitorWorkspace(
        'd_monitor_workspace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMssqlDatabase(
        'd_mssql_database',
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue',
        ),
      ),
    );

    add(
      DataAzurermMssqlElasticpool(
        'd_mssql_elasticpool',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serverName: .literal(leftover),
      ),
    );

    add(
      DataAzurermMssqlFailoverGroup(
        'd_mssql_failover_group',
        name: .literal(leftover),
        serverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/servers/serverValue',
        ),
      ),
    );

    add(
      DataAzurermMssqlManagedDatabase(
        'd_mssql_managed_database',
        managedInstanceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Sql/managedInstances/managedInstanceValue',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermMssqlManagedInstance(
        'd_mssql_managed_instance',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMssqlServer(
        'd_mssql_server',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermMysqlFlexibleServer(
        'd_mysql_flexible_server',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNatGateway(
        'd_nat_gateway',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetappAccount(
        'd_netapp_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetappAccountEncryption(
        'd_netapp_account_encryption',
        netappAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.NetApp/netAppAccounts/netAppAccountName',
        ),
      ),
    );

    add(
      DataAzurermNetappBackupPolicy(
        'd_netapp_backup_policy',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetappBackupVault(
        'd_netapp_backup_vault',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetappPool(
        'd_netapp_pool',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetappSnapshot(
        'd_netapp_snapshot',
        accountName: .literal(leftover),
        name: .literal(leftover),
        poolName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        volumeName: .literal(leftover),
      ),
    );

    add(
      DataAzurermNetappSnapshotPolicy(
        'd_netapp_snapshot_policy',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetappVolume(
        'd_netapp_volume',
        accountName: .literal(leftover),
        name: .literal(leftover),
        poolName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetappVolumeBucket(
        'd_netapp_volume_bucket',
        name: .literal(leftover),
        netappVolumeId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.NetApp/netAppAccounts/netAppAccountName/capacityPools/capacityPoolName/volumes/volumeName',
        ),
      ),
    );

    add(
      DataAzurermNetappVolumeBucketWithServer(
        'd_netapp_volume_bucket_with_server',
        name: .literal(leftover),
        netappVolumeId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.NetApp/netAppAccounts/netAppAccountName/capacityPools/capacityPoolName/volumes/volumeName',
        ),
      ),
    );

    add(
      DataAzurermNetappVolumeGroupOracle(
        'd_netapp_volume_group_oracle',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetappVolumeGroupSapHana(
        'd_netapp_volume_group_sap_hana',
        accountName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetappVolumeQuotaRule(
        'd_netapp_volume_quota_rule',
        name: .literal(leftover),
        volumeId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.NetApp/netAppAccounts/netAppAccountName/capacityPools/capacityPoolName/volumes/volumeName',
        ),
      ),
    );

    add(
      DataAzurermNetworkDdosProtectionPlan(
        'd_network_ddos_protection_plan',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetworkInterface(
        'd_network_interface',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetworkManager(
        'd_network_manager',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetworkManagerConnectivityConfiguration(
        'd_network_manager_connectivity_configuration',
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
      ),
    );

    add(
      DataAzurermNetworkManagerIpamPool(
        'd_network_manager_ipam_pool',
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
      ),
    );

    add(
      DataAzurermNetworkManagerNetworkGroup(
        'd_network_manager_network_group',
        name: .literal(leftover),
        networkManagerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkManagers/networkManagerName',
        ),
      ),
    );

    add(
      DataAzurermNetworkSecurityGroup(
        'd_network_security_group',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetworkSecurityPerimeter(
        'd_network_security_perimeter',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNetworkSecurityPerimeterProfile(
        'd_network_security_perimeter_profile',
        name: .literal(leftover),
        networkSecurityPerimeterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/networkSecurityPerimeters/networkSecurityPerimeterName',
        ),
      ),
    );

    add(
      DataAzurermNetworkServiceTags(
        'd_network_service_tags',
        location: .literal(location),
        service: .literal(leftover),
      ),
    );

    add(
      DataAzurermNetworkWatcher(
        'd_network_watcher',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNginxApiKey(
        'd_nginx_api_key',
        name: .literal(leftover),
        nginxDeploymentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Nginx.NginxPlus/nginxDeployments/nginxDeploymentName',
        ),
      ),
    );

    add(
      DataAzurermNginxCertificate(
        'd_nginx_certificate',
        name: .literal(leftover),
        nginxDeploymentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Nginx.NginxPlus/nginxDeployments/nginxDeploymentName',
        ),
      ),
    );

    add(
      DataAzurermNginxConfiguration(
        'd_nginx_configuration',
        nginxDeploymentId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Nginx.NginxPlus/nginxDeployments/nginxDeploymentName',
        ),
      ),
    );

    add(
      DataAzurermNginxDeployment(
        'd_nginx_deployment',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNotificationHub(
        'd_notification_hub',
        name: .literal(leftover),
        namespaceName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermNotificationHubNamespace(
        'd_notification_hub_namespace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermOracleAdbsCharacterSets(
        'd_oracle_adbs_character_sets',
        location: .literal(location),
      ),
    );

    add(
      DataAzurermOracleAdbsNationalCharacterSets(
        'd_oracle_adbs_national_character_sets',
        location: .literal(location),
      ),
    );

    add(
      DataAzurermOracleAutonomousDatabase(
        'd_oracle_autonomous_database',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermOracleAutonomousDatabaseBackup(
        'd_oracle_autonomous_database_backup',
        autonomousDatabaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Oracle.Database/autonomousDatabases/autonomousDatabaseName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermOracleAutonomousDatabaseBackups(
        'd_oracle_autonomous_database_backups',
        autonomousDatabaseId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Oracle.Database/autonomousDatabases/autonomousDatabaseName',
        ),
      ),
    );

    add(
      DataAzurermOracleAutonomousDatabaseCloneFromBackup(
        'd_oracle_autonomous_database_clone_from_backup',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermOracleAutonomousDatabaseCloneFromDatabase(
        'd_oracle_autonomous_database_clone_from_database',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermOracleAutonomousDatabaseCrossRegionDisasterRecovery(
        'd_oracle_autonomous_database_cross_region_disast',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermOracleCloudVmCluster(
        'd_oracle_cloud_vm_cluster',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermOracleDatabaseSystemVersions(
        'd_oracle_database_system_versions',
        location: .literal(location),
      ),
    );

    add(
      DataAzurermOracleDbNodes(
        'd_oracle_db_nodes',
        cloudVmClusterId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Oracle.Database/cloudVmClusters/cloudVmClusterName',
        ),
      ),
    );

    add(
      DataAzurermOracleDbServers(
        'd_oracle_db_servers',
        cloudExadataInfrastructureName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermOracleDbSystemShapes(
        'd_oracle_db_system_shapes',
        location: .literal(location),
      ),
    );

    add(
      DataAzurermOracleExadataInfrastructure(
        'd_oracle_exadata_infrastructure',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermOracleExascaleDatabaseStorageVault(
        'd_oracle_exascale_database_storage_vault',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermOracleGiVersions(
        'd_oracle_gi_versions',
        location: .literal(location),
      ),
    );

    add(
      DataAzurermOracleResourceAnchor(
        'd_oracle_resource_anchor',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermOrchestratedVirtualMachineScaleSet(
        'd_orchestrated_virtual_machine_scale_set',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPaloAltoLocalRulestack(
        'd_palo_alto_local_rulestack',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPlatformImage(
        'd_platform_image',
        location: .literal(location),
        offer: .literal(leftover),
        publisher: .literal(leftover),
        sku: .literal(leftover),
      ),
    );

    add(
      DataAzurermPlaywrightWorkspace(
        'd_playwright_workspace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPolicyAssignment(
        'd_policy_assignment',
        name: .literal(leftover),
        scopeId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      DataAzurermPolicyDefinition(
        'd_policy_definition',
        identifier: .displayName(.literal(leftover)),
      ),
    );

    add(
      DataAzurermPolicyDefinitionBuiltIn(
        'd_policy_definition_built_in',
        identifier: .displayName(.literal(leftover)),
      ),
    );

    add(
      DataAzurermPolicySetDefinition(
        'd_policy_set_definition',
        identifier: .displayName(.literal(leftover)),
      ),
    );

    add(
      DataAzurermPolicyVirtualMachineConfigurationAssignment(
        'd_policy_virtual_machine_configuration_assignmen',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualMachineName: .literal(leftover),
      ),
    );

    add(
      DataAzurermPostgresqlFlexibleServer(
        'd_postgresql_flexible_server',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPrivateDnsARecord(
        'd_private_dns_a_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermPrivateDnsAaaaRecord(
        'd_private_dns_aaaa_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermPrivateDnsCnameRecord(
        'd_private_dns_cname_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermPrivateDnsMxRecord(
        'd_private_dns_mx_record',
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermPrivateDnsPtrRecord(
        'd_private_dns_ptr_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermPrivateDnsResolver(
        'd_private_dns_resolver',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPrivateDnsResolverDnsForwardingRuleset(
        'd_private_dns_resolver_dns_forwarding_ruleset',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPrivateDnsResolverForwardingRule(
        'd_private_dns_resolver_forwarding_rule',
        dnsForwardingRulesetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/dnsForwardingRulesets/dnsForwardingRulesetName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermPrivateDnsResolverInboundEndpoint(
        'd_private_dns_resolver_inbound_endpoint',
        name: .literal(leftover),
        privateDnsResolverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/dnsResolvers/dnsResolverName',
        ),
      ),
    );

    add(
      DataAzurermPrivateDnsResolverOutboundEndpoint(
        'd_private_dns_resolver_outbound_endpoint',
        name: .literal(leftover),
        privateDnsResolverId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/dnsResolvers/dnsResolverName',
        ),
      ),
    );

    add(
      DataAzurermPrivateDnsResolverVirtualNetworkLink(
        'd_private_dns_resolver_virtual_network_link',
        dnsForwardingRulesetId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/dnsForwardingRulesets/dnsForwardingRulesetName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermPrivateDnsSoaRecord(
        'd_private_dns_soa_record',
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermPrivateDnsSrvRecord(
        'd_private_dns_srv_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermPrivateDnsTxtRecord(
        'd_private_dns_txt_record',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        zoneName: .literal(leftover),
      ),
    );

    add(
      DataAzurermPrivateDnsZone('d_private_dns_zone', name: .literal(leftover)),
    );

    add(
      DataAzurermPrivateDnsZoneVirtualNetworkLink(
        'd_private_dns_zone_virtual_network_link',
        name: .literal(leftover),
        privateDnsZoneName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPrivateEndpointConnection(
        'd_private_endpoint_connection',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPrivateLinkService(
        'd_private_link_service',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPrivateLinkServiceEndpointConnections(
        'd_private_link_service_endpoint_connections',
        resourceGroupName: .literal(resourceGroupName),
        serviceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/privateLinkServices/privateLinkServiceName',
        ),
      ),
    );

    add(
      DataAzurermProximityPlacementGroup(
        'd_proximity_placement_group',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPublicIp(
        'd_public_ip',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPublicIpPrefix(
        'd_public_ip_prefix',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPublicIps(
        'd_public_ips',
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermPublicMaintenanceConfigurations(
        'd_public_maintenance_configurations',
      ),
    );

    add(
      DataAzurermRecoveryServicesVault(
        'd_recovery_services_vault',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermRedisCache(
        'd_redis_cache',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(DataAzurermResourceGroup('d_resource_group', name: .literal(leftover)));

    add(
      DataAzurermResourceGroupTemplateDeployment(
        'd_resource_group_template_deployment',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(DataAzurermResources('d_resources', name: .literal(leftover)));

    add(
      DataAzurermRoleAssignments(
        'd_role_assignments',
        scope: .literal(leftover),
      ),
    );

    add(
      DataAzurermRoleDefinition(
        'd_role_definition',
        lookup: .name(.literal(leftover)),
      ),
    );

    add(
      DataAzurermRouteFilter(
        'd_route_filter',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermRouteTable(
        'd_route_table',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSearchService(
        'd_search_service',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSentinelAlertRule(
        'd_sentinel_alert_rule',
        logAnalyticsWorkspaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.OperationalInsights/workspaces/workspaceName',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermServicePlan(
        'd_service_plan',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermServicebusNamespace(
        'd_servicebus_namespace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermServicebusNamespaceAuthorizationRule(
        'd_servicebus_namespace_authorization_rule',
        name: .literal(leftover),
        namespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName',
        ),
      ),
    );

    add(
      DataAzurermServicebusNamespaceDisasterRecoveryConfig(
        'd_servicebus_namespace_disaster_recovery_config',
        name: .literal(leftover),
        namespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName',
        ),
      ),
    );

    add(
      DataAzurermServicebusQueue(
        'd_servicebus_queue',
        name: .literal(leftover),
        namespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName',
        ),
      ),
    );

    add(
      DataAzurermServicebusSubscription(
        'd_servicebus_subscription',
        name: .literal(leftover),
        topicId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName/topics/topicName',
        ),
      ),
    );

    add(
      DataAzurermServicebusTopic(
        'd_servicebus_topic',
        name: .literal(leftover),
        namespaceId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ServiceBus/namespaces/namespaceName',
        ),
      ),
    );

    add(
      DataAzurermSharedImage(
        'd_shared_image',
        galleryName: .literal(leftover),
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSharedImageGallery(
        'd_shared_image_gallery',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSharedImageVersion(
        'd_shared_image_version',
        galleryName: .literal(leftover),
        imageName: .literal(leftover),
        name: .literal('latest'),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSharedImageVersions(
        'd_shared_image_versions',
        galleryName: .literal(leftover),
        imageName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSignalrService(
        'd_signalr_service',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSiteRecoveryFabric(
        'd_site_recovery_fabric',
        name: .literal(leftover),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSiteRecoveryProtectionContainer(
        'd_site_recovery_protection_container',
        name: .literal(leftover),
        recoveryFabricName: .literal(leftover),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSiteRecoveryReplicationPolicy(
        'd_site_recovery_replication_policy',
        name: .literal(leftover),
        recoveryVaultName: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSiteRecoveryReplicationRecoveryPlan(
        'd_site_recovery_replication_recovery_plan',
        name: .literal(leftover),
        recoveryVaultId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.RecoveryServices/vaults/vaultName',
        ),
      ),
    );

    add(
      DataAzurermSnapshot(
        'd_snapshot',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSourceControlToken('d_source_control_token', type: .bitbucket),
    );

    add(
      DataAzurermSpringCloudApp(
        'd_spring_cloud_app',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        serviceName: .literal(leftover),
      ),
    );

    add(
      DataAzurermSpringCloudService(
        'd_spring_cloud_service',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSshPublicKey(
        'd_ssh_public_key',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermStackHciCluster(
        'd_stack_hci_cluster',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermStackHciStoragePath(
        'd_stack_hci_storage_path',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermStaticWebApp(
        'd_static_web_app',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermStorageAccount(
        'd_storage_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermStorageAccountBlobContainerSas(
        'd_storage_account_blob_container_sas',
        connectionString: leftoverSecret,
        containerName: .literal(leftover),
        expiry: .literal('2024-01-01T00:00:00Z'),
        start: .literal('2024-01-01T00:00:00Z'),
      ),
    );

    add(
      DataAzurermStorageAccountSas(
        'd_storage_account_sas',
        connectionString: leftoverSecret,
        expiry: .literal('2024-01-01T00:00:00Z'),
        start: .literal('2024-01-01T00:00:00Z'),
        resourceTypes: DataStorageAccountSasResourceTypes(
          container: .literal(true),
          object: .literal(true),
          service: .literal(true),
        ),
        services: DataStorageAccountSasServices(
          blob: .literal(true),
          file: .literal(true),
          queue: .literal(true),
          table: .literal(true),
        ),
      ),
    );

    add(
      DataAzurermStorageAccountStaticWebsite(
        'd_storage_account_static_website',
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      DataAzurermStorageBlob(
        'd_storage_blob',
        name: .literal(leftover),
        storageContainerId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      DataAzurermStorageContainer(
        'd_storage_container',
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      DataAzurermStorageContainers(
        'd_storage_containers',
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      DataAzurermStorageEncryptionScope(
        'd_storage_encryption_scope',
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      DataAzurermStorageManagementPolicy(
        'd_storage_management_policy',
        storageAccountId: .literal(
          '/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/leftover',
        ),
      ),
    );

    add(
      DataAzurermStorageQueue(
        'd_storage_queue',
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      DataAzurermStorageShare(
        'd_storage_share',
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      DataAzurermStorageSync(
        'd_storage_sync',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermStorageSyncGroup(
        'd_storage_sync_group',
        name: .literal(leftover),
        storageSyncId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.StorageSync/storageSyncServices/storageSyncServiceName',
        ),
      ),
    );

    add(
      DataAzurermStorageTable(
        'd_storage_table',
        name: .literal(leftover),
        storageAccountId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountValue',
        ),
      ),
    );

    add(
      DataAzurermStorageTableEntities(
        'd_storage_table_entities',
        filter: .literal(leftover),
        storageTableId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountName/tableServices/default/tables/tableName',
        ),
      ),
    );

    add(
      DataAzurermStorageTableEntity(
        'd_storage_table_entity',
        partitionKey: .literal(leftover),
        rowKey: .literal(leftover),
        storageTableId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Storage/storageAccounts/storageAccountName/tableServices/default/tables/tableName',
        ),
      ),
    );

    add(
      DataAzurermStreamAnalyticsJob(
        'd_stream_analytics_job',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSubnet(
        'd_subnet',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualNetworkName: .literal(leftover),
      ),
    );

    add(DataAzurermSubscription('d_subscription'));

    add(
      DataAzurermSubscriptionTemplateDeployment(
        'd_subscription_template_deployment',
        name: .literal(leftover),
      ),
    );

    add(DataAzurermSubscriptions('d_subscriptions'));

    add(
      DataAzurermSynapseWorkspace(
        'd_synapse_workspace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermSystemCenterVirtualMachineManagerInventoryItems(
        'd_system_center_virtual_machine_manager_inventor',
        inventoryType: .cloud,
        systemCenterVirtualMachineManagerServerId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.ScVmm/vmmServers/vmmServerName',
        ),
      ),
    );

    add(
      DataAzurermTemplateSpecVersion(
        'd_template_spec_version',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        version: .literal(leftover),
      ),
    );

    add(
      DataAzurermTenantTemplateDeployment(
        'd_tenant_template_deployment',
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermTrafficManagerGeographicalLocation(
        'd_traffic_manager_geographical_location',
        name: .literal(leftover),
      ),
    );

    add(
      DataAzurermTrafficManagerProfile(
        'd_traffic_manager_profile',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermTrustedSigningAccount(
        'd_trusted_signing_account',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermUserAssignedIdentity(
        'd_user_assigned_identity',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVirtualDesktopApplicationGroup(
        'd_virtual_desktop_application_group',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVirtualDesktopHostPool(
        'd_virtual_desktop_host_pool',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVirtualDesktopWorkspace(
        'd_virtual_desktop_workspace',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVirtualHub(
        'd_virtual_hub',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVirtualHubConnection(
        'd_virtual_hub_connection',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualHubName: .literal(leftover),
      ),
    );

    add(
      DataAzurermVirtualHubRouteTable(
        'd_virtual_hub_route_table',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
        virtualHubName: .literal(leftover),
      ),
    );

    add(
      DataAzurermVirtualMachine(
        'd_virtual_machine',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVirtualMachineScaleSet(
        'd_virtual_machine_scale_set',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVirtualNetwork(
        'd_virtual_network',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVirtualNetworkGateway(
        'd_virtual_network_gateway',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVirtualNetworkGatewayConnection(
        'd_virtual_network_gateway_connection',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVirtualNetworkPeering(
        'd_virtual_network_peering',
        name: .literal(leftover),
        virtualNetworkId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualNetworks/virtualNetworksValue',
        ),
      ),
    );

    add(
      DataAzurermVirtualWan(
        'd_virtual_wan',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVmwarePrivateCloud(
        'd_vmware_private_cloud',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVpnGateway(
        'd_vpn_gateway',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermVpnServerConfiguration(
        'd_vpn_server_configuration',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermWebApplicationFirewallPolicy(
        'd_web_application_firewall_policy',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermWebPubsub(
        'd_web_pubsub',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermWebPubsubPrivateLinkResource(
        'd_web_pubsub_private_link_resource',
        webPubsubId: .literal(
          '/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/example-resource-group/providers/Microsoft.SignalRService/webPubSub/webPubSubName',
        ),
      ),
    );

    add(
      DataAzurermWindowsFunctionApp(
        'd_windows_function_app',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );

    add(
      DataAzurermWindowsWebApp(
        'd_windows_web_app',
        name: .literal(leftover),
        resourceGroupName: .literal(resourceGroupName),
      ),
    );
  }
}
