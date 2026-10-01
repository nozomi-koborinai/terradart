// GENERATED — dart run tool/generate_aws_leftover_example.dart
// ignore_for_file: unused_element

/// Coverage stack for leftover AWS factories at the current pin.
/// Dummy constructor values; synth + terraform validate only.
/// Never apply.
library;

import 'package:terradart_aws/terradart_aws.dart';
import 'package:terradart_core/terradart_core.dart';

final class AwsLeftoverStack extends Stack {
  AwsLeftoverStack()
    : super(providers: [const AwsProvider(region: 'us-east-1')]) {
    const leftover = 'leftover';
    const arn = 'arn:aws:iam::123456789012:role/leftover';
    const policy =
        '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Action":"s3:GetObject","Resource":"*"}]}';

    addVariable(
      'leftover_secret',
      const TfVariable(type: 'string', sensitive: true),
    );

    add(
      AwsAccessanalyzerAnalyzer(
        localName: 'accessanalyzer_analyzer',
        analyzerName: .literal(leftover),
      ),
    );

    add(
      AwsAccessanalyzerArchiveRule(
        localName: 'accessanalyzer_archive_rule',
        analyzerName: .literal(leftover),
        ruleName: .literal(leftover),
        filter: [AccessanalyzerArchiveRuleFilter(criteria: .literal(leftover))],
      ),
    );

    add(
      AwsAccountAlternateContact(
        localName: 'account_alternate_contact',
        alternateContactType: .literal(.billing),
        emailAddress: .literal('leftover@example.com'),
        name: .literal(leftover),
        phoneNumber: .literal('+12065550100'),
        title: .literal(leftover),
      ),
    );

    add(
      AwsAccountPrimaryContact(
        localName: 'account_primary_contact',
        addressLine1: .literal(leftover),
        city: .literal(leftover),
        countryCode: .literal(leftover),
        fullName: .literal(leftover),
        phoneNumber: .literal('+12065550100'),
        postalCode: .literal(leftover),
      ),
    );

    add(
      AwsAccountRegion(
        localName: 'account_region',
        enabled: .literal(true),
        regionName: .literal(leftover),
      ),
    );

    add(
      AwsAccountaccessApplication(
        localName: 'accountaccess_application',
        identitySource: [
          AccountaccessApplicationIdentitySource(
            identityCenter: [
              AccountaccessApplicationIdentityCenter(
                instanceArn: .literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsAccountaccessEntitlement(
        localName: 'accountaccess_entitlement',
        applicationArn: .literal(arn),
        entitlement: [
          AccountaccessEntitlementEntitlement(
            principalRole: [
              AccountaccessEntitlementPrincipalRole(
                roleArn: .literal(arn),
                principal: [
                  AccountaccessEntitlementPrincipal(
                    identityCenter: [
                      AccountaccessEntitlementIdentityCenter(
                        groupId: .literal(leftover),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsAcmpcaCertificate(
        localName: 'acmpca_certificate',
        certificateAuthorityArn: .literal(arn),
        certificateSigningRequest: .literal(leftover),
        signingAlgorithm: .literal(.sha256withrsa),
        validity: AcmpcaCertificateValidity(
          type: .literal(.endDate),
          value: .literal('2026-01-01T00:00:00Z'),
        ),
      ),
    );

    add(
      AwsAcmpcaCertificateAuthority(
        localName: 'acmpca_certificate_authority',
        certificateAuthorityConfiguration:
            AcmpcaCertificateAuthorityConfiguration(
              keyAlgorithm: .literal(.rsa2048),
              signingAlgorithm: .literal(.sha256withrsa),
              subject: AcmpcaCertificateAuthoritySubject(
                commonName: .literal(leftover),
              ),
            ),
      ),
    );

    add(
      AwsAcmpcaCertificateAuthorityCertificate(
        localName: 'acmpca_certificate_authority_certificate',
        certificate: .literal(leftover),
        certificateAuthorityArn: .literal(arn),
      ),
    );

    add(
      AwsAcmpcaPermission(
        localName: 'acmpca_permission',
        actions: [.literal(.issuecertificate)],
        certificateAuthorityArn: .literal(arn),
        principal: .literal(.acmAmazonawsCom),
      ),
    );

    add(
      AwsAcmpcaPolicy(
        localName: 'acmpca_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsAgentregistryRegistry(
        localName: 'agentregistry_registry',
        name: .literal(leftover),
        discoveryConfiguration: [
          AgentregistryRegistryDiscoveryConfiguration(
            authorizerType: .literal(.customJwt),
            authorizerConfiguration: [
              AgentregistryRegistryAuthorizerConfiguration(
                customJwtAuthorizer: [
                  AgentregistryRegistryCustomJwtAuthorizer(
                    discoveryUrl: .literal('https://example.com'),
                    allowedAudience: .literal([leftover]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsAlb(
        localName: 'alb',
        subnet: .subnetMapping([
          AlbSubnetMapping(subnetId: .literal('subnet-0123456789abcdef0')),
        ]),
      ),
    );

    add(
      AwsAlbListener(
        localName: 'alb_listener',
        loadBalancerArn: .literal(arn),
        defaultAction: [AlbListenerDefaultAction(type: .literal(.forward))],
      ),
    );

    add(
      AwsAlbListenerCertificate(
        localName: 'alb_listener_certificate',
        certificateArn: .literal(arn),
        listenerArn: .literal(arn),
      ),
    );

    add(
      AwsAlbListenerRule(
        localName: 'alb_listener_rule',
        listenerArn: .literal(arn),
        action: [AlbListenerRuleAction(type: .literal(.forward))],
        condition: [
          AlbListenerRuleCondition(
            hostHeader: AlbListenerRuleHostHeader(
              regexValues: .literal([leftover]),
            ),
          ),
        ],
      ),
    );

    add(AwsAlbTargetGroup(localName: 'alb_target_group'));

    add(
      AwsAlbTargetGroupAttachment(
        localName: 'alb_target_group_attachment',
        targetGroupArn: .literal(arn),
        targetId: .literal(leftover),
      ),
    );

    add(AwsAmi(localName: 'ami', name: .literal(leftover)));

    add(
      AwsAmiCopy(
        localName: 'ami_copy',
        name: .literal(leftover),
        sourceAmiId: .literal(leftover),
        sourceAmiRegion: .literal('us-east-1'),
      ),
    );

    add(
      AwsAmiFromInstance(
        localName: 'ami_from_instance',
        name: .literal(leftover),
        sourceInstanceId: .literal(leftover),
      ),
    );

    add(
      AwsAmiLaunchPermission(
        localName: 'ami_launch_permission',
        grantee: .accountId(.literal('123456789012')),
        imageId: .literal(leftover),
      ),
    );

    add(AwsAmplifyApp(localName: 'amplify_app', name: .literal(leftover)));

    add(
      AwsAmplifyBackendEnvironment(
        localName: 'amplify_backend_environment',
        appId: .literal(leftover),
        environmentName: .literal(leftover),
      ),
    );

    add(
      AwsAmplifyBranch(
        localName: 'amplify_branch',
        appId: .literal(leftover),
        branchName: .literal(leftover),
      ),
    );

    add(
      AwsAmplifyDomainAssociation(
        localName: 'amplify_domain_association',
        appId: .literal(leftover),
        domainName: .literal(leftover),
        subDomain: [
          AmplifyDomainAssociationSubDomain(
            branchName: .literal(leftover),
            prefix: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsAmplifyWebhook(
        localName: 'amplify_webhook',
        appId: .literal(leftover),
        branchName: .literal(leftover),
      ),
    );

    add(AwsApiGatewayAccount(localName: 'api_gateway_account'));

    add(
      AwsApiGatewayApiKey(
        localName: 'api_gateway_api_key',
        name: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayAuthorizer(
        localName: 'api_gateway_authorizer',
        name: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayBasePathMapping(
        localName: 'api_gateway_base_path_mapping',
        apiId: .literal(leftover),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayClientCertificate(
        localName: 'api_gateway_client_certificate',
      ),
    );

    add(
      AwsApiGatewayDeployment(
        localName: 'api_gateway_deployment',
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayDocumentationPart(
        localName: 'api_gateway_documentation_part',
        properties: .literal(leftover),
        restApiId: .literal(leftover),
        location: ApiGatewayDocumentationPartLocation(type: .literal(leftover)),
      ),
    );

    add(
      AwsApiGatewayDocumentationVersion(
        localName: 'api_gateway_documentation_version',
        restApiId: .literal(leftover),
        version: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayDomainName(
        localName: 'api_gateway_domain_name',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayDomainNameAccessAssociation(
        localName: 'api_gateway_domain_name_access_association',
        accessAssociationSource: .literal(leftover),
        accessAssociationSourceType: .literal(.vpce),
        domainNameArn: .literal(arn),
      ),
    );

    add(
      AwsApiGatewayGatewayResponse(
        localName: 'api_gateway_gateway_response',
        responseType: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayIntegration(
        localName: 'api_gateway_integration',
        httpMethod: .literal('ANY'),
        resourceId: .literal(leftover),
        restApiId: .literal(leftover),
        type: .literal(.http),
      ),
    );

    add(
      AwsApiGatewayIntegrationResponse(
        localName: 'api_gateway_integration_response',
        httpMethod: .literal('ANY'),
        resourceId: .literal(leftover),
        restApiId: .literal(leftover),
        statusCode: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayMethod(
        localName: 'api_gateway_method',
        authorization: .literal(leftover),
        httpMethod: .literal('ANY'),
        resourceId: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayMethodResponse(
        localName: 'api_gateway_method_response',
        httpMethod: .literal('ANY'),
        resourceId: .literal(leftover),
        restApiId: .literal(leftover),
        statusCode: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayMethodSettings(
        localName: 'api_gateway_method_settings',
        methodPath: .literal(leftover),
        restApiId: .literal(leftover),
        stageName: .literal(leftover),
        settings: ApiGatewayMethodSettingsSettings(
          cacheDataEncrypted: .literal(true),
        ),
      ),
    );

    add(
      AwsApiGatewayModel(
        localName: 'api_gateway_model',
        contentType: .literal(leftover),
        name: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayRequestValidator(
        localName: 'api_gateway_request_validator',
        name: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayResource(
        localName: 'api_gateway_resource',
        parentId: .literal(leftover),
        pathPart: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayRestApi(
        localName: 'api_gateway_rest_api',
        name: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayRestApiPolicy(
        localName: 'api_gateway_rest_api_policy',
        policy: .literal(policy),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayRestApiPut(
        localName: 'api_gateway_rest_api_put',
        body: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayStage(
        localName: 'api_gateway_stage',
        deploymentId: .literal(leftover),
        restApiId: .literal(leftover),
        stageName: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayUsagePlan(
        localName: 'api_gateway_usage_plan',
        name: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayUsagePlanKey(
        localName: 'api_gateway_usage_plan_key',
        keyId: .literal(leftover),
        keyType: .literal(leftover),
        usagePlanId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayVpcLink(
        localName: 'api_gateway_vpc_link',
        name: .literal(leftover),
        targetArns: .literal([arn]),
      ),
    );

    add(
      AwsApigatewayv2Api(
        localName: 'apigatewayv2_api',
        name: .literal(leftover),
        protocolType: .literal(.websocket),
      ),
    );

    add(
      AwsApigatewayv2ApiMapping(
        localName: 'apigatewayv2_api_mapping',
        apiId: .literal(leftover),
        domainName: .literal(leftover),
        stage: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2Authorizer(
        localName: 'apigatewayv2_authorizer',
        apiId: .literal(leftover),
        authorizerType: .literal(.request),
        name: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2Deployment(
        localName: 'apigatewayv2_deployment',
        apiId: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2DomainName(
        localName: 'apigatewayv2_domain_name',
        domainName: .literal(leftover),
        domainNameConfiguration: Apigatewayv2DomainNameConfiguration(
          certificateArn: .literal(arn),
          endpointType: .literal(.regional),
          securityPolicy: .literal(.tls12),
        ),
      ),
    );

    add(
      AwsApigatewayv2Integration(
        localName: 'apigatewayv2_integration',
        apiId: .literal(leftover),
        integrationType: .literal(.aws),
      ),
    );

    add(
      AwsApigatewayv2IntegrationResponse(
        localName: 'apigatewayv2_integration_response',
        apiId: .literal(leftover),
        integrationId: .literal(leftover),
        integrationResponseKey: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2Model(
        localName: 'apigatewayv2_model',
        apiId: .literal(leftover),
        contentType: .literal(leftover),
        name: .literal(leftover),
        schema: .literal(policy),
      ),
    );

    add(
      AwsApigatewayv2Route(
        localName: 'apigatewayv2_route',
        apiId: .literal(leftover),
        routeKey: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2RouteResponse(
        localName: 'apigatewayv2_route_response',
        apiId: .literal(leftover),
        routeId: .literal(leftover),
        routeResponseKey: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2RoutingRule(
        localName: 'apigatewayv2_routing_rule',
        domainName: .literal(leftover),
        priority: .literal(200),
        action: [
          Apigatewayv2RoutingRuleAction(
            invokeApi: [
              Apigatewayv2RoutingRuleInvokeApi(
                apiId: .literal(leftover),
                stage: .literal(leftover),
              ),
            ],
          ),
        ],
        condition: [
          Apigatewayv2RoutingRuleCondition(
            matchBasePaths: [
              Apigatewayv2RoutingRuleMatchBasePaths(
                anyOf: .literal([leftover]),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsApigatewayv2Stage(
        localName: 'apigatewayv2_stage',
        apiId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2VpcLink(
        localName: 'apigatewayv2_vpc_link',
        name: .literal(leftover),
        securityGroupIds: .literal([.literal(leftover)]),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsAppCookieStickinessPolicy(
        localName: 'app_cookie_stickiness_policy',
        cookieName: .literal(leftover),
        lbPort: .literal(200),
        loadBalancer: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppautoscalingPolicy(
        localName: 'appautoscaling_policy',
        name: .literal(leftover),
        resourceId: .literal(leftover),
        scalableDimension: .literal(leftover),
        serviceNamespace: .literal(leftover),
      ),
    );

    add(
      AwsAppautoscalingScheduledAction(
        localName: 'appautoscaling_scheduled_action',
        name: .literal(leftover),
        resourceId: .literal(leftover),
        scalableDimension: .literal(leftover),
        schedule: .literal(leftover),
        serviceNamespace: .literal(leftover),
        scalableTargetAction: AppautoscalingScheduledActionScalableTargetAction(
          maxCapacity: .literal('64512'),
        ),
      ),
    );

    add(
      AwsAppautoscalingTarget(
        localName: 'appautoscaling_target',
        maxCapacity: .literal(200),
        minCapacity: .literal(200),
        resourceId: .literal(leftover),
        scalableDimension: .literal(leftover),
        serviceNamespace: .literal(leftover),
      ),
    );

    add(
      AwsAppconfigApplication(
        localName: 'appconfig_application',
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppconfigConfigurationProfile(
        localName: 'appconfig_configuration_profile',
        applicationId: .literal(leftover),
        locationUri: .literal('https://example.com'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppconfigDeployment(
        localName: 'appconfig_deployment',
        applicationId: .literal(leftover),
        configurationProfileId: .literal(leftover),
        configurationVersion: .literal(leftover),
        deploymentStrategyId: .literal('yh1uqgz'),
        environmentId: .literal(leftover),
      ),
    );

    add(
      AwsAppconfigDeploymentStrategy(
        localName: 'appconfig_deployment_strategy',
        deploymentDurationInMinutes: .literal(200),
        growthFactor: .literal(1),
        name: .literal(leftover),
        replicateTo: .literal(.none),
      ),
    );

    add(
      AwsAppconfigEnvironment(
        localName: 'appconfig_environment',
        applicationId: .literal('abc1234'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppconfigExtension(
        localName: 'appconfig_extension',
        name: .literal(leftover),
        actionPoint: [
          AppconfigExtensionActionPoint(
            point: .literal(.preCreateHostedConfigurationVersion),
            action: [
              AppconfigExtensionAction(
                name: .literal(leftover),
                uri: .literal('https://example.com'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsAppconfigExtensionAssociation(
        localName: 'appconfig_extension_association',
        extensionArn: .literal(arn),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsAppconfigHostedConfigurationVersion(
        localName: 'appconfig_hosted_configuration_version',
        applicationId: .literal(leftover),
        configurationProfileId: .literal(leftover),
        content: .variable('leftover_secret'),
        contentType: .literal(leftover),
      ),
    );

    add(
      AwsAppfabricAppAuthorization(
        localName: 'appfabric_app_authorization',
        app: .literal(leftover),
        appBundleArn: .literal(arn),
        authType: .literal(.oauth2),
        credential: [
          AppfabricAppAuthorizationCredential(
            apiKeyCredential: [
              AppfabricAppAuthorizationApiKeyCredential(
                apiKey: .variable('leftover_secret'),
              ),
            ],
          ),
        ],
        tenant: [
          AppfabricAppAuthorizationTenant(
            tenantDisplayName: .literal(leftover),
            tenantIdentifier: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsAppfabricAppAuthorizationConnection(
        localName: 'appfabric_app_authorization_connection',
        appAuthorizationArn: .literal(arn),
        appBundleArn: .literal(arn),
      ),
    );

    add(AwsAppfabricAppBundle(localName: 'appfabric_app_bundle'));

    add(
      AwsAppfabricIngestion(
        localName: 'appfabric_ingestion',
        app: .literal(leftover),
        appBundleArn: .literal(arn),
        ingestionType: .literal(.auditlog),
        tenantId: .literal(leftover),
      ),
    );

    add(
      AwsAppfabricIngestionDestination(
        localName: 'appfabric_ingestion_destination',
        appBundleArn: .literal(arn),
        ingestionArn: .literal(arn),
        destinationConfiguration: [
          AppfabricIngestionDestinationConfiguration(
            auditLog: [
              AppfabricIngestionDestinationConfigurationAuditLog(
                destination: [
                  AppfabricIngestionDestinationDestination(
                    firehoseStream: [
                      AppfabricIngestionDestinationFirehoseStream(
                        streamName: .literal(leftover),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
        processingConfiguration: [
          AppfabricIngestionDestinationProcessingConfiguration(
            auditLog: [
              AppfabricIngestionDestinationProcessingConfigurationAuditLog(
                format: .literal(.json),
                schema: .literal(.ocsf),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsAppflowConnectorProfile(
        localName: 'appflow_connector_profile',
        connectionMode: .literal(.public),
        connectorType: .literal(.salesforce),
        name: .literal(leftover),
        connectorProfileConfig: AppflowConnectorProfileConfig(
          connectorProfileCredentials: AppflowConnectorProfileCredentials(
            amplitude: AppflowConnectorProfileCredentialsAmplitude(
              apiKey: .literal(leftover),
              secretKey: .variable('leftover_secret'),
            ),
          ),
          connectorProfileProperties: AppflowConnectorProfileProperties(
            amplitude: AppflowConnectorProfilePropertiesAmplitude(),
          ),
        ),
      ),
    );

    add(
      AwsAppflowFlow(
        localName: 'appflow_flow',
        name: .literal(leftover),
        destinationFlowConfig: [
          AppflowFlowDestinationFlowConfig(
            connectorType: .literal(.salesforce),
            destinationConnectorProperties:
                AppflowFlowDestinationConnectorProperties(
                  customConnector:
                      AppflowFlowDestinationConnectorPropertiesCustomConnector(
                        entityName: .literal(leftover),
                      ),
                ),
          ),
        ],
        sourceFlowConfig: AppflowFlowSourceFlowConfig(
          connectorType: .literal(.salesforce),
          sourceConnectorProperties: AppflowFlowSourceConnectorProperties(
            amplitude: AppflowFlowSourceConnectorPropertiesAmplitude(
              object: .literal(leftover),
            ),
          ),
        ),
        task: [AppflowFlowTask(taskType: .literal(.arithmetic))],
        triggerConfig: AppflowFlowTriggerConfig(
          triggerType: .literal(.scheduled),
        ),
      ),
    );

    add(
      AwsAppintegrationsDataIntegration(
        localName: 'appintegrations_data_integration',
        kmsKey: .literal(leftover),
        name: .literal(leftover),
        sourceUri: .literal('https://example.com'),
        scheduleConfig: AppintegrationsDataIntegrationScheduleConfig(
          firstExecutionFrom: .literal(leftover),
          object: .literal(leftover),
          scheduleExpression: .literal(leftover),
        ),
      ),
    );

    add(
      AwsAppintegrationsEventIntegration(
        localName: 'appintegrations_event_integration',
        eventbridgeBus: .literal(leftover),
        name: .literal(leftover),
        eventFilter: AppintegrationsEventIntegrationEventFilter(
          source: .literal('aws.partner/example.com/leftover'),
        ),
      ),
    );

    add(
      AwsApplicationinsightsApplication(
        localName: 'applicationinsights_application',
        resourceGroupName: .literal(leftover),
      ),
    );

    add(
      AwsAppmeshGatewayRoute(
        localName: 'appmesh_gateway_route',
        meshName: .literal(leftover),
        name: .literal(leftover),
        virtualGatewayName: .literal(leftover),
        spec: AppmeshGatewayRouteSpec(
          route: .grpcRoute(
            AppmeshGatewayRouteGrpcRoute(
              action: AppmeshGatewayRouteGrpcRouteAction(
                target: AppmeshGatewayRouteTarget(
                  virtualService: AppmeshGatewayRouteVirtualService(
                    virtualServiceName: .literal(leftover),
                  ),
                ),
              ),
              match: AppmeshGatewayRouteGrpcRouteMatch(
                serviceName: .literal(leftover),
              ),
            ),
          ),
        ),
      ),
    );

    add(AwsAppmeshMesh(localName: 'appmesh_mesh', name: .literal(leftover)));

    add(
      AwsAppmeshRoute(
        localName: 'appmesh_route',
        meshName: .literal(leftover),
        name: .literal(leftover),
        virtualRouterName: .literal(leftover),
        spec: AppmeshRouteSpec(priority: .literal(200)),
      ),
    );

    add(
      AwsAppmeshVirtualGateway(
        localName: 'appmesh_virtual_gateway',
        meshName: .literal(leftover),
        name: .literal(leftover),
        spec: AppmeshVirtualGatewaySpec(
          listener: [
            AppmeshVirtualGatewayListener(
              portMapping: AppmeshVirtualGatewayPortMapping(
                port: .literal(200),
                protocol: .literal(.http),
              ),
            ),
          ],
        ),
      ),
    );

    add(
      AwsAppmeshVirtualNode(
        localName: 'appmesh_virtual_node',
        meshName: .literal(leftover),
        name: .literal(leftover),
        spec: AppmeshVirtualNodeSpec(
          backend: [
            AppmeshVirtualNodeBackend(
              virtualService: AppmeshVirtualNodeVirtualService(
                virtualServiceName: .literal(leftover),
              ),
            ),
          ],
        ),
      ),
    );

    add(
      AwsAppmeshVirtualRouter(
        localName: 'appmesh_virtual_router',
        meshName: .literal(leftover),
        name: .literal(leftover),
        spec: AppmeshVirtualRouterSpec(
          listener: [
            AppmeshVirtualRouterListener(
              portMapping: AppmeshVirtualRouterPortMapping(
                port: .literal(200),
                protocol: .literal(.http),
              ),
            ),
          ],
        ),
      ),
    );

    add(
      AwsAppmeshVirtualService(
        localName: 'appmesh_virtual_service',
        meshName: .literal(leftover),
        name: .literal(leftover),
        spec: AppmeshVirtualServiceSpec(
          provider: .virtualNode(
            AppmeshVirtualServiceVirtualNode(
              virtualNodeName: .literal(leftover),
            ),
          ),
        ),
      ),
    );

    add(
      AwsApprunnerAutoScalingConfigurationVersion(
        localName: 'apprunner_auto_scaling_configuration_version',
        autoScalingConfigurationName: .literal(leftover),
      ),
    );

    add(
      AwsApprunnerConnection(
        localName: 'apprunner_connection',
        connectionName: .literal(leftover),
        providerType: .literal(.github),
      ),
    );

    add(
      AwsApprunnerCustomDomainAssociation(
        localName: 'apprunner_custom_domain_association',
        domainName: .literal(leftover),
        serviceArn: .literal(arn),
      ),
    );

    add(
      AwsApprunnerDefaultAutoScalingConfigurationVersion(
        localName: 'apprunner_default_auto_scaling_configuration_ver',
        autoScalingConfigurationArn: .literal(arn),
      ),
    );

    add(
      AwsApprunnerDeployment(
        localName: 'apprunner_deployment',
        serviceArn: .literal(arn),
      ),
    );

    add(
      AwsApprunnerObservabilityConfiguration(
        localName: 'apprunner_observability_configuration',
        observabilityConfigurationName: .literal(leftover),
      ),
    );

    add(
      AwsApprunnerService(
        localName: 'apprunner_service',
        serviceName: .literal(leftover),
        sourceConfiguration: ApprunnerServiceSourceConfiguration(
          repository: .codeRepository(
            ApprunnerServiceCodeRepository(
              repositoryUrl: .literal('https://example.com'),
              sourceCodeVersion: ApprunnerServiceSourceCodeVersion(
                type: .literal(.branch),
                value: .literal('BRANCH'),
              ),
            ),
          ),
        ),
      ),
    );

    add(
      AwsApprunnerVpcConnector(
        localName: 'apprunner_vpc_connector',
        securityGroups: .literal([.literal(leftover)]),
        subnets: .literal([.literal(leftover)]),
        vpcConnectorName: .literal(leftover),
      ),
    );

    add(
      AwsApprunnerVpcIngressConnection(
        localName: 'apprunner_vpc_ingress_connection',
        name: .literal(leftover),
        serviceArn: .literal(arn),
        ingressVpcConfiguration:
            ApprunnerVpcIngressConnectionIngressVpcConfiguration(
              vpcEndpointId: .literal(leftover),
            ),
      ),
    );

    add(
      AwsAppstreamDirectoryConfig(
        localName: 'appstream_directory_config',
        directoryName: .literal(leftover),
        organizationalUnitDistinguishedNames: .literal([leftover]),
        serviceAccountCredentials:
            AppstreamDirectoryConfigServiceAccountCredentials(
              accountName: .literal(leftover),
              accountPassword: .variable('leftover_secret'),
            ),
      ),
    );

    add(
      AwsAppstreamFleet(
        localName: 'appstream_fleet',
        instanceType: .literal(leftover),
        name: .literal(leftover),
        computeCapacity: AppstreamFleetComputeCapacity(
          desiredInstances: .literal(200),
        ),
      ),
    );

    add(
      AwsAppstreamFleetStackAssociation(
        localName: 'appstream_fleet_stack_association',
        fleetName: .literal(leftover),
        stackName: .literal(leftover),
      ),
    );

    add(
      AwsAppstreamImageBuilder(
        localName: 'appstream_image_builder',
        image: .imageArn(.literal(arn)),
        instanceType: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppstreamStack(localName: 'appstream_stack', name: .literal(leftover)),
    );

    add(
      AwsAppstreamUser(
        localName: 'appstream_user',
        authenticationType: .literal(.api),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsAppstreamUserStackAssociation(
        localName: 'appstream_user_stack_association',
        authenticationType: .literal(.api),
        stackName: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncApi(
        localName: 'appsync_api',
        name: .literal(leftover),
        eventConfig: [
          AppsyncApiEventConfig(
            defaultSubscribeAuthMode: [
              AppsyncApiDefaultSubscribeAuthMode(authType: .literal(.apiKey)),
            ],
            connectionAuthMode: [
              AppsyncApiConnectionAuthMode(authType: .literal(.apiKey)),
            ],
            defaultPublishAuthMode: [
              AppsyncApiDefaultPublishAuthMode(authType: .literal(.apiKey)),
            ],
            authProvider: [AppsyncApiAuthProvider(authType: .literal(.apiKey))],
          ),
        ],
      ),
    );

    add(
      AwsAppsyncApiCache(
        localName: 'appsync_api_cache',
        apiCachingBehavior: .literal(.fullRequestCaching),
        apiId: .literal(leftover),
        ttl: .literal(200),
        type: .literal(.t2Small),
      ),
    );

    add(
      AwsAppsyncApiKey(localName: 'appsync_api_key', apiId: .literal(leftover)),
    );

    add(
      AwsAppsyncChannelNamespace(
        localName: 'appsync_channel_namespace',
        apiId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncDatasource(
        localName: 'appsync_datasource',
        apiId: .literal(leftover),
        name: .literal(leftover),
        type: .literal(.awsLambda),
      ),
    );

    add(
      AwsAppsyncDomainName(
        localName: 'appsync_domain_name',
        certificateArn: .literal(arn),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncDomainNameApiAssociation(
        localName: 'appsync_domain_name_api_association',
        apiId: .literal(leftover),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncFunction(
        localName: 'appsync_function',
        apiId: .literal(leftover),
        dataSource: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncGraphqlApi(
        localName: 'appsync_graphql_api',
        authenticationType: .literal(.apiKey),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncResolver(
        localName: 'appsync_resolver',
        apiId: .literal(leftover),
        field: .literal(leftover),
        type: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncSourceApiAssociation(
        localName: 'appsync_source_api_association',
        mergedApi: .mergedApiArn(.literal(arn)),
        sourceApi: .sourceApiArn(.literal(arn)),
      ),
    );

    add(
      AwsAppsyncType(
        localName: 'appsync_type',
        apiId: .literal(leftover),
        definition: .literal(leftover),
        format: .literal(.sdl),
      ),
    );

    add(
      AwsArcregionswitchPlan(
        localName: 'arcregionswitch_plan',
        executionRole: .literal(arn),
        name: .literal(leftover),
        recoveryApproach: .literal(.activeactive),
        regions: .literal([leftover, 'leftover1']),
      ),
    );

    add(
      AwsArczonalshiftAutoshiftObserverNotificationStatus(
        localName: 'arczonalshift_autoshift_observer_notification_st',
        status: .literal(.enabled),
      ),
    );

    add(
      AwsArczonalshiftZonalAutoshiftConfiguration(
        localName: 'arczonalshift_zonal_autoshift_configuration',
        resourceArn: .literal(arn),
        zonalAutoshiftStatus: .literal(.enabled),
      ),
    );

    add(
      AwsAthenaCapacityReservation(
        localName: 'athena_capacity_reservation',
        name: .literal(leftover),
        targetDpus: .literal(200),
      ),
    );

    add(
      AwsAthenaDataCatalog(
        localName: 'athena_data_catalog',
        description: .literal(leftover),
        name: .literal(leftover),
        parameters: .literal({'k': leftover}),
        type: .literal(.lambda),
      ),
    );

    add(
      AwsAthenaDatabase(localName: 'athena_database', name: .literal(leftover)),
    );

    add(
      AwsAthenaNamedQuery(
        localName: 'athena_named_query',
        database: .literal(leftover),
        name: .literal(leftover),
        query: .literal(leftover),
      ),
    );

    add(
      AwsAthenaPreparedStatement(
        localName: 'athena_prepared_statement',
        name: .literal(leftover),
        queryStatement: .literal(leftover),
        workgroup: .literal(leftover),
      ),
    );

    add(
      AwsAthenaWorkgroup(
        localName: 'athena_workgroup',
        name: .literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerAccountRegistration(
        localName: 'auditmanager_account_registration',
      ),
    );

    add(
      AwsAuditmanagerAssessment(
        localName: 'auditmanager_assessment',
        frameworkId: .literal(leftover),
        name: .literal(leftover),
        roles: [
          AuditmanagerAssessmentRoles(
            roleArn: .literal(arn),
            roleType: .literal(.processOwner),
          ),
        ],
      ),
    );

    add(
      AwsAuditmanagerAssessmentDelegation(
        localName: 'auditmanager_assessment_delegation',
        assessmentId: .literal(leftover),
        controlSetId: .literal(leftover),
        roleArn: .literal(arn),
        roleType: .literal(.processOwner),
      ),
    );

    add(
      AwsAuditmanagerAssessmentReport(
        localName: 'auditmanager_assessment_report',
        assessmentId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerControl(
        localName: 'auditmanager_control',
        name: .literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerFramework(
        localName: 'auditmanager_framework',
        name: .literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerFrameworkShare(
        localName: 'auditmanager_framework_share',
        destinationAccount: .literal('123456789012'),
        destinationRegion: .literal('us-east-1'),
        frameworkId: .literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerOrganizationAdminAccountRegistration(
        localName: 'auditmanager_organization_admin_account_registra',
        adminAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsAutoscalingAttachment(
        localName: 'autoscaling_attachment',
        autoscalingGroupName: .literal(leftover),
        target: .elb(.literal(leftover)),
      ),
    );

    add(
      AwsAutoscalingGroup(
        localName: 'autoscaling_group',
        instanceSource: .launchConfiguration(.literal(leftover)),
        maxSize: .literal(200),
        minSize: .literal(200),
      ),
    );

    add(
      AwsAutoscalingGroupTag(
        localName: 'autoscaling_group_tag',
        autoscalingGroupName: .literal(leftover),
        tag: AutoscalingGroupTagTag(
          key: .literal(leftover),
          propagateAtLaunch: .literal(true),
          value: .literal(leftover),
        ),
      ),
    );

    add(
      AwsAutoscalingLifecycleHook(
        localName: 'autoscaling_lifecycle_hook',
        autoscalingGroupName: .literal(leftover),
        lifecycleTransition: .literal(.autoscalingEc2InstanceLaunching),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAutoscalingNotification(
        localName: 'autoscaling_notification',
        groupNames: .literal([leftover]),
        notifications: .literal([leftover]),
        topicArn: .literal(arn),
      ),
    );

    add(
      AwsAutoscalingPolicy(
        localName: 'autoscaling_policy',
        autoscalingGroupName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAutoscalingSchedule(
        localName: 'autoscaling_schedule',
        autoscalingGroupName: .literal(leftover),
        scheduledActionName: .literal(leftover),
      ),
    );

    add(
      AwsAutoscalingTrafficSourceAttachment(
        localName: 'autoscaling_traffic_source_attachment',
        autoscalingGroupName: .literal(leftover),
      ),
    );

    add(
      AwsAutoscalingplansScalingPlan(
        localName: 'autoscalingplans_scaling_plan',
        name: .literal(leftover),
        applicationSource: AutoscalingplansScalingPlanApplicationSource(
          selector: .cloudformationStackArn(.literal(arn)),
        ),
        scalingInstruction: [
          AutoscalingplansScalingPlanScalingInstruction(
            maxCapacity: .literal(200),
            minCapacity: .literal(200),
            resourceId: .literal(leftover),
            scalableDimension: .literal(
              .autoscalingAutoscalinggroupDesiredcapacity,
            ),
            serviceNamespace: .literal(.autoscaling),
            targetTrackingConfiguration: [
              AutoscalingplansScalingPlanTargetTrackingConfiguration(
                targetValue: .literal(200),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBackupFramework(
        localName: 'backup_framework',
        name: .literal(leftover),
        control: [BackupFrameworkControl(name: .literal(leftover))],
      ),
    );

    add(
      AwsBackupGlobalSettings(
        localName: 'backup_global_settings',
        globalSettings: .literal({'k': leftover}),
      ),
    );

    add(
      AwsBackupLogicallyAirGappedVault(
        localName: 'backup_logically_air_gapped_vault',
        maxRetentionDays: .literal(200),
        minRetentionDays: .literal(200),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBackupPlan(
        localName: 'backup_plan',
        name: .literal(leftover),
        rule: [
          BackupPlanRule(
            ruleName: .literal(leftover),
            targetVaultName: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsBackupRegionSettings(
        localName: 'backup_region_settings',
        resourceTypeOptInPreference: .literal({'k': true}),
      ),
    );

    add(
      AwsBackupReportPlan(
        localName: 'backup_report_plan',
        name: .literal(leftover),
        reportDeliveryChannel: BackupReportPlanReportDeliveryChannel(
          s3BucketName: .literal(leftover),
        ),
        reportSetting: BackupReportPlanReportSetting(
          reportTemplate: .literal(.backupJobReport),
        ),
      ),
    );

    add(
      AwsBackupRestoreTestingPlan(
        localName: 'backup_restore_testing_plan',
        name: .literal(leftover),
        scheduleExpression: .literal(leftover),
        recoveryPointSelection: [
          BackupRestoreTestingPlanRecoveryPointSelection(
            algorithm: .literal(.latestWithinWindow),
            includeVaults: .literal(['*']),
            recoveryPointTypes: [.literal(.continuous)],
          ),
        ],
      ),
    );

    add(
      AwsBackupRestoreTestingSelection(
        localName: 'backup_restore_testing_selection',
        iamRoleArn: .literal(arn),
        name: .literal(leftover),
        protectedResource: .protectedResourceArns(.literal([arn])),
        protectedResourceType: .literal(leftover),
        restoreTestingPlanName: .literal(leftover),
      ),
    );

    add(
      AwsBackupSelection(
        localName: 'backup_selection',
        iamRoleArn: .literal(arn),
        name: .literal(leftover),
        planId: .literal(leftover),
      ),
    );

    add(AwsBackupVault(localName: 'backup_vault', name: .literal(leftover)));

    add(
      AwsBackupVaultLockConfiguration(
        localName: 'backup_vault_lock_configuration',
        backupVaultName: .literal(leftover),
      ),
    );

    add(
      AwsBackupVaultNotifications(
        localName: 'backup_vault_notifications',
        backupVaultEvents: [.literal(.backupJobStarted)],
        backupVaultName: .literal(leftover),
        snsTopicArn: .literal(arn),
      ),
    );

    add(
      AwsBackupVaultPolicy(
        localName: 'backup_vault_policy',
        backupVaultName: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsBatchComputeEnvironment(
        localName: 'batch_compute_environment',
        type: .literal(.managed),
      ),
    );

    add(
      AwsBatchJobDefinition(
        localName: 'batch_job_definition',
        name: .literal(leftover),
        type: .literal(.container),
      ),
    );

    add(
      AwsBatchJobQueue(
        localName: 'batch_job_queue',
        name: .literal(leftover),
        priority: .literal(200),
        state: .literal('ENABLED'),
      ),
    );

    add(
      AwsBatchSchedulingPolicy(
        localName: 'batch_scheduling_policy',
        name: .literal(leftover),
      ),
    );

    add(AwsBcmdataexportsExport(localName: 'bcmdataexports_export'));

    add(
      AwsBedrockCustomModel(
        localName: 'bedrock_custom_model',
        baseModelIdentifier: .literal(arn),
        customModelName: .literal(leftover),
        hyperparameters: .literal({'k': leftover}),
        jobName: .literal(leftover),
        roleArn: .literal(arn),
        outputDataConfig: [
          BedrockCustomModelOutputDataConfig(
            s3Uri: .literal('s3://leftover-bucket/leftover'),
          ),
        ],
        trainingDataConfig: [
          BedrockCustomModelTrainingDataConfig(
            s3Uri: .literal('s3://leftover-bucket/leftover'),
          ),
        ],
      ),
    );

    add(
      AwsBedrockEvaluationJob(
        localName: 'bedrock_evaluation_job',
        jobName: .literal(leftover),
        roleArn: .literal(arn),
        evaluationConfig: [
          .automated([
            BedrockEvaluationJobAutomated(
              datasetMetricConfig: [
                BedrockEvaluationJobDatasetMetricConfig(
                  metricNames: .literal([leftover]),
                  taskType: .literal(.summarization),
                  dataset: [
                    BedrockEvaluationJobDataset(name: .literal(leftover)),
                  ],
                ),
              ],
            ),
          ]),
        ],
        inferenceConfig: [
          .model([
            .bedrockModel([
              BedrockEvaluationJobBedrockModel(
                modelIdentifier: .literal(leftover),
              ),
            ]),
          ]),
        ],
        outputDataConfig: [
          BedrockEvaluationJobOutputDataConfig(
            s3Uri: .literal('s3://leftover-bucket/leftover'),
          ),
        ],
      ),
    );

    add(
      AwsBedrockFoundationModelAgreement(
        localName: 'bedrock_foundation_model_agreement',
        modelId: .literal(leftover),
        offerToken: .literal(leftover),
      ),
    );

    add(
      AwsBedrockGuardrail(
        localName: 'bedrock_guardrail',
        blockedInputMessaging: .literal(leftover),
        blockedOutputsMessaging: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockGuardrailVersion(
        localName: 'bedrock_guardrail_version',
        guardrailArn: .literal(arn),
      ),
    );

    add(
      AwsBedrockInferenceProfile(
        localName: 'bedrock_inference_profile',
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockModelInvocationJob(
        localName: 'bedrock_model_invocation_job',
        jobName: .literal(leftover),
        modelId: .literal(leftover),
        roleArn: .literal(arn),
        inputDataConfig: [
          BedrockModelInvocationJobInputDataConfig(
            s3InputDataConfig: [
              BedrockModelInvocationJobS3InputDataConfig(
                s3Uri: .literal('s3://leftover-bucket/leftover'),
              ),
            ],
          ),
        ],
        outputDataConfig: [
          BedrockModelInvocationJobOutputDataConfig(
            s3OutputDataConfig: [
              BedrockModelInvocationJobS3OutputDataConfig(
                s3Uri: .literal('s3://leftover-bucket/leftover'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockModelInvocationLoggingConfiguration(
        localName: 'bedrock_model_invocation_logging_configuration',
        loggingConfig: [
          BedrockModelInvocationLoggingConfigurationLoggingConfig(
            embeddingDataDeliveryEnabled: .literal(true),
          ),
        ],
      ),
    );

    add(
      AwsBedrockProvisionedModelThroughput(
        localName: 'bedrock_provisioned_model_throughput',
        modelArn: .literal(arn),
        modelUnits: .literal(200),
        provisionedModelName: .literal(leftover),
      ),
    );

    add(
      AwsBedrockUseCaseForModelAccess(
        localName: 'bedrock_use_case_for_model_access',
        formData: .literal(policy),
      ),
    );

    add(
      AwsBedrockagentAgent(
        localName: 'bedrockagent_agent',
        agentName: .literal(leftover),
        agentResourceRoleArn: .literal(arn),
        foundationModel: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentAgentActionGroup(
        localName: 'bedrockagent_agent_action_group',
        actionGroupName: .literal(leftover),
        agentId: .literal(leftover),
        agentVersion: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentAgentAlias(
        localName: 'bedrockagent_agent_alias',
        agentAliasName: .literal(leftover),
        agentId: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentAgentCollaborator(
        localName: 'bedrockagent_agent_collaborator',
        agentId: .literal(leftover),
        collaborationInstruction: .literal(leftover),
        collaboratorName: .literal(leftover),
        agentDescriptor: [
          BedrockagentAgentCollaboratorAgentDescriptor(aliasArn: .literal(arn)),
        ],
      ),
    );

    add(
      AwsBedrockagentAgentKnowledgeBaseAssociation(
        localName: 'bedrockagent_agent_knowledge_base_association',
        agentId: .literal(leftover),
        description: .literal(leftover),
        knowledgeBaseId: .literal(leftover),
        knowledgeBaseState: .literal(.enabled),
      ),
    );

    add(
      AwsBedrockagentDataSource(
        localName: 'bedrockagent_data_source',
        knowledgeBaseId: .literal(leftover),
        name: .literal(leftover),
        dataSourceConfiguration: [
          BedrockagentDataSourceConfiguration(
            type: .literal(.s3),
            s3Configuration: [
              BedrockagentDataSourceS3Configuration(bucketArn: .literal(arn)),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentFlow(
        localName: 'bedrockagent_flow',
        executionRoleArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentKnowledgeBase(
        localName: 'bedrockagent_knowledge_base',
        name: .literal(leftover),
        roleArn: .literal(arn),
        knowledgeBaseConfiguration: [
          BedrockagentKnowledgeBaseConfiguration(
            type: .literal(.vector),
            vectorKnowledgeBaseConfiguration: [
              BedrockagentKnowledgeBaseVectorKnowledgeBaseConfiguration(
                embeddingModelArn: .literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentPrompt(
        localName: 'bedrockagent_prompt',
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreAgentRuntime(
        localName: 'bedrockagentcore_agent_runtime',
        agentRuntimeName: .literal(leftover),
        roleArn: .literal(arn),
        agentRuntimeArtifact: [
          BedrockagentcoreAgentRuntimeArtifact(
            codeConfiguration: [
              BedrockagentcoreAgentRuntimeCodeConfiguration(
                entryPoint: .literal([leftover]),
                runtime: .literal(.python310),
              ),
            ],
          ),
        ],
        networkConfiguration: [
          BedrockagentcoreAgentRuntimeNetworkConfiguration(
            networkMode: .literal(.public),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreAgentRuntimeEndpoint(
        localName: 'bedrockagentcore_agent_runtime_endpoint',
        agentRuntimeId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreApiKeyCredentialProvider(
        localName: 'bedrockagentcore_api_key_credential_provider',
        apiKey: .apiKey(.variable('leftover_secret')),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreBrowser(
        localName: 'bedrockagentcore_browser',
        name: .literal(leftover),
        networkConfiguration: [
          BedrockagentcoreBrowserNetworkConfiguration(
            networkMode: .literal(.public),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreBrowserProfile(
        localName: 'bedrockagentcore_browser_profile',
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreCodeInterpreter(
        localName: 'bedrockagentcore_code_interpreter',
        name: .literal(leftover),
        networkConfiguration: [
          BedrockagentcoreCodeInterpreterNetworkConfiguration(
            networkMode: .literal(.public),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreEvaluator(
        localName: 'bedrockagentcore_evaluator',
        evaluatorName: .literal(leftover),
        level: .literal(.toolCall),
        evaluatorConfig: [
          .codeBased([
            BedrockagentcoreEvaluatorCodeBased(
              lambdaConfig: [
                BedrockagentcoreEvaluatorLambdaConfig(lambdaArn: .literal(arn)),
              ],
            ),
          ]),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreGateway(
        localName: 'bedrockagentcore_gateway',
        authorizerType: .literal(.awsIam),
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsBedrockagentcoreGatewayRule(
        localName: 'bedrockagentcore_gateway_rule',
        gatewayIdentifier: .literal(leftover),
        priority: .literal(200),
      ),
    );

    add(
      AwsBedrockagentcoreGatewayTarget(
        localName: 'bedrockagentcore_gateway_target',
        gatewayIdentifier: .literal(leftover),
        name: .literal(leftover),
        targetConfiguration: [
          BedrockagentcoreGatewayTargetConfiguration(
            http: [
              BedrockagentcoreGatewayTargetHttp(
                agentcoreRuntime: [
                  BedrockagentcoreGatewayTargetAgentcoreRuntime(
                    arn: .literal(arn),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreHarness(
        localName: 'bedrockagentcore_harness',
        executionRoleArn: .literal(arn),
        harnessName: .literal(leftover),
        model: [
          BedrockagentcoreHarnessModel(
            bedrockModelConfig: [
              BedrockagentcoreHarnessBedrockModelConfig(
                modelId: .literal(leftover),
              ),
            ],
          ),
        ],
        systemPrompt: [
          BedrockagentcoreHarnessSystemPrompt(
            text: .variable('leftover_secret'),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreMemory(
        localName: 'bedrockagentcore_memory',
        eventExpiryDuration: .literal(200),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreMemoryStrategy(
        localName: 'bedrockagentcore_memory_strategy',
        memoryId: .literal(leftover),
        name: .literal(leftover),
        type: .literal(.semantic),
        namespaces: .literal([leftover]),
      ),
    );

    add(
      AwsBedrockagentcoreOauth2CredentialProvider(
        localName: 'bedrockagentcore_oauth2_credential_provider',
        credentialProviderVendor: .literal(.googleoauth2),
        name: .literal(leftover),
        oauth2ProviderConfig: [
          BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfig(
            googleOauth2ProviderConfig: [
              BedrockagentcoreOauth2CredentialProviderGoogleOauth2ProviderConfig(
                clientId: .variable('leftover_secret'),
                clientSecret: .variable('leftover_secret'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreOnlineEvaluationConfig(
        localName: 'bedrockagentcore_online_evaluation_config',
        enableOnCreate: .literal(true),
        evaluationExecutionRoleArn: .literal(arn),
        onlineEvaluationConfigName: .literal(leftover),
        dataSourceConfig: [
          BedrockagentcoreOnlineEvaluationConfigDataSourceConfig(
            cloudwatchLogs: [
              BedrockagentcoreOnlineEvaluationConfigCloudwatchLogs(
                logGroupNames: .literal([leftover]),
                serviceNames: .literal([leftover]),
              ),
            ],
          ),
        ],
        evaluator: [
          BedrockagentcoreOnlineEvaluationConfigEvaluator(
            evaluatorId: .literal('Builtin.Helpfulness'),
          ),
        ],
        rule: [
          BedrockagentcoreOnlineEvaluationConfigRule(
            samplingConfig: [
              BedrockagentcoreOnlineEvaluationConfigSamplingConfig(
                samplingPercentage: .literal(50),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcorePolicy(
        localName: 'bedrockagentcore_policy',
        name: .literal(leftover),
        policyEngineId: .literal('T0OLrnw-qkcm9dd3b0'),
        definition: [
          BedrockagentcorePolicyDefinition(
            cedar: [BedrockagentcorePolicyCedar(statement: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcorePolicyEngine(
        localName: 'bedrockagentcore_policy_engine',
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreRegistry(
        localName: 'bedrockagentcore_registry',
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreResourcePolicy(
        localName: 'bedrockagentcore_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsBedrockagentcoreTokenVaultCmk(
        localName: 'bedrockagentcore_token_vault_cmk',
        kmsConfiguration: [
          BedrockagentcoreTokenVaultCmkKmsConfiguration(
            keyType: .literal(.customermanagedkey),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreWorkloadIdentity(
        localName: 'bedrockagentcore_workload_identity',
        name: .literal(leftover),
      ),
    );

    add(AwsBillingView(localName: 'billing_view', name: .literal(leftover)));

    add(
      AwsBudgetsBudget(
        localName: 'budgets_budget',
        budgetType: .literal(.usage),
        timeUnit: .literal(.daily),
      ),
    );

    add(
      AwsBudgetsBudgetAction(
        localName: 'budgets_budget_action',
        actionType: .literal(.applyIamPolicy),
        approvalModel: .literal(.automatic),
        budgetName: .literal(leftover),
        executionRoleArn: .literal(arn),
        notificationType: .literal(.actual),
        actionThreshold: BudgetsBudgetActionThreshold(
          actionThresholdType: .literal(.percentage),
          actionThresholdValue: .literal(200),
        ),
        definition: BudgetsBudgetActionDefinition(
          iamActionDefinition: BudgetsBudgetActionIamActionDefinition(
            policyArn: .literal(arn),
          ),
        ),
        subscriber: [
          BudgetsBudgetActionSubscriber(
            address: .literal(leftover),
            subscriptionType: .literal(.sns),
          ),
        ],
      ),
    );

    add(
      AwsCeAnomalyMonitor(
        localName: 'ce_anomaly_monitor',
        monitorType: .literal(.dimensional),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCeAnomalySubscription(
        localName: 'ce_anomaly_subscription',
        frequency: .literal(.daily),
        monitorArnList: .literal([arn]),
        name: .literal(leftover),
        subscriber: [
          CeAnomalySubscriptionSubscriber(
            address: .literal(leftover),
            type: .literal(.email),
          ),
        ],
      ),
    );

    add(
      AwsCeCostAllocationTag(
        localName: 'ce_cost_allocation_tag',
        status: .literal(.active),
        tagKey: .literal(leftover),
      ),
    );

    add(
      AwsCeCostCategory(
        localName: 'ce_cost_category',
        name: .literal(leftover),
        ruleVersion: .literal(leftover),
        rule: [CeCostCategoryRule(type: .literal(.regular))],
      ),
    );

    add(
      AwsChatbotSlackChannelConfiguration(
        localName: 'chatbot_slack_channel_configuration',
        configurationName: .literal(leftover),
        iamRoleArn: .literal(arn),
        slackChannelId: .literal(leftover),
        slackTeamId: .literal(leftover),
      ),
    );

    add(
      AwsChatbotTeamsChannelConfiguration(
        localName: 'chatbot_teams_channel_configuration',
        channelId: .literal(leftover),
        configurationName: .literal(leftover),
        iamRoleArn: .literal(arn),
        teamId: .literal(leftover),
        tenantId: .literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnector(
        localName: 'chime_voice_connector',
        name: .literal(leftover),
        requireEncryption: .literal(true),
      ),
    );

    add(
      AwsChimeVoiceConnectorGroup(
        localName: 'chime_voice_connector_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorLogging(
        localName: 'chime_voice_connector_logging',
        voiceConnectorId: .literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorOrigination(
        localName: 'chime_voice_connector_origination',
        voiceConnectorId: .literal(leftover),
        route: [
          ChimeVoiceConnectorOriginationRoute(
            host: .literal('10.0.0.1'),
            priority: .literal(1),
            protocol: .literal(.tcp),
            weight: .literal(1),
          ),
        ],
      ),
    );

    add(
      AwsChimeVoiceConnectorStreaming(
        localName: 'chime_voice_connector_streaming',
        dataRetention: .literal(200),
        voiceConnectorId: .literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorTermination(
        localName: 'chime_voice_connector_termination',
        callingRegions: .literal(['US']),
        cidrAllowList: .literal(['10.0.0.0/28']),
        voiceConnectorId: .literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorTerminationCredentials(
        localName: 'chime_voice_connector_termination_credentials',
        voiceConnectorId: .literal(leftover),
        credentials: [
          ChimeVoiceConnectorTerminationCredentialsCredentials(
            password: .variable('leftover_secret'),
            username: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsChimesdkmediapipelinesMediaInsightsPipelineConfiguration(
        localName: 'chimesdkmediapipelines_media_insights_pipeline_c',
        name: .literal(leftover),
        resourceAccessRoleArn: .literal(arn),
        elements: [
          ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElements(
            type: .literal(.amazontranscribecallanalyticsprocessor),
          ),
        ],
      ),
    );

    add(
      AwsChimesdkvoiceGlobalSettings(
        localName: 'chimesdkvoice_global_settings',
        voiceConnector: ChimesdkvoiceGlobalSettingsVoiceConnector(
          cdrBucket: .literal(leftover),
        ),
      ),
    );

    add(
      AwsChimesdkvoiceSipMediaApplication(
        localName: 'chimesdkvoice_sip_media_application',
        awsRegion: .literal('us-east-1'),
        name: .literal(leftover),
        endpoints: ChimesdkvoiceSipMediaApplicationEndpoints(
          lambdaArn: .literal(arn),
        ),
      ),
    );

    add(
      AwsChimesdkvoiceSipRule(
        localName: 'chimesdkvoice_sip_rule',
        name: .literal(leftover),
        triggerType: .literal(.tophonenumber),
        triggerValue: .literal(leftover),
        targetApplications: [
          ChimesdkvoiceSipRuleTargetApplications(
            awsRegion: .literal('us-east-1'),
            priority: .literal(200),
            sipMediaApplicationId: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsChimesdkvoiceVoiceProfileDomain(
        localName: 'chimesdkvoice_voice_profile_domain',
        name: .literal(leftover),
        serverSideEncryptionConfiguration:
            ChimesdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration(
              kmsKeyArn: .literal(arn),
            ),
      ),
    );

    add(
      AwsCleanroomsCollaboration(
        localName: 'cleanrooms_collaboration',
        creatorDisplayName: .literal(leftover),
        creatorMemberAbilities: .literal([leftover]),
        description: .literal(leftover),
        name: .literal(leftover),
        queryLogStatus: .literal(leftover),
      ),
    );

    add(
      AwsCleanroomsConfiguredTable(
        localName: 'cleanrooms_configured_table',
        allowedColumns: .literal([leftover]),
        analysisMethod: .literal(leftover),
        name: .literal(leftover),
        tableReference: CleanroomsConfiguredTableReference(
          databaseName: .literal(leftover),
          tableName: .literal(leftover),
        ),
      ),
    );

    add(
      AwsCleanroomsMembership(
        localName: 'cleanrooms_membership',
        collaborationId: .literal(leftover),
        queryLogStatus: .literal(.enabled),
      ),
    );

    add(
      AwsCloud9EnvironmentEc2(
        localName: 'cloud9_environment_ec2',
        imageId: .literal(.amazonlinux1X8664),
        instanceType: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloud9EnvironmentMembership(
        localName: 'cloud9_environment_membership',
        environmentId: .literal(leftover),
        permissions: .literal(.owner),
        userArn: .literal(arn),
      ),
    );

    add(
      AwsCloudcontrolapiResource(
        localName: 'cloudcontrolapi_resource',
        desiredState: .literal(leftover),
        typeName: .literal('AWS::S3::Bucket'),
      ),
    );

    add(
      AwsCloudformationStack(
        localName: 'cloudformation_stack',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudformationStackInstances(
        localName: 'cloudformation_stack_instances',
        stackSetName: .literal(leftover),
      ),
    );

    add(
      AwsCloudformationStackSet(
        localName: 'cloudformation_stack_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudformationStackSetInstance(
        localName: 'cloudformation_stack_set_instance',
        stackSetName: .literal(leftover),
      ),
    );

    add(
      AwsCloudformationType(
        localName: 'cloudformation_type',
        schemaHandlerPackage: .literal('s3://leftover-bucket/leftover'),
        typeName: .literal('Leftover::Example::Thing'),
      ),
    );

    add(
      AwsCloudfrontAnycastIpList(
        localName: 'cloudfront_anycast_ip_list',
        ipCount: .literal(3),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontCachePolicy(
        localName: 'cloudfront_cache_policy',
        name: .literal(leftover),
        parametersInCacheKeyAndForwardedToOrigin:
            CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOrigin(
              cookiesConfig: CloudfrontCachePolicyCookiesConfig(
                cookieBehavior: .literal(.none),
              ),
              headersConfig: CloudfrontCachePolicyHeadersConfig(
                headerBehavior: .literal(.none),
              ),
              queryStringsConfig: CloudfrontCachePolicyQueryStringsConfig(
                queryStringBehavior: .literal(.none),
              ),
            ),
      ),
    );

    add(
      AwsCloudfrontConnectionFunction(
        localName: 'cloudfront_connection_function',
        connectionFunctionCode: .literal(leftover),
        name: .literal(leftover),
        connectionFunctionConfig: [
          CloudfrontConnectionFunctionConfig(
            comment: .literal(leftover),
            runtime: .literal(.cloudfrontJs1p0),
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontConnectionGroup(
        localName: 'cloudfront_connection_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontContinuousDeploymentPolicy(
        localName: 'cloudfront_continuous_deployment_policy',
        enabled: .literal(true),
        stagingDistributionDnsNames: [
          CloudfrontContinuousDeploymentPolicyStagingDistributionDnsNames(
            quantity: .literal(200),
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontDistributionTenant(
        localName: 'cloudfront_distribution_tenant',
        distributionId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontFieldLevelEncryptionConfig(
        localName: 'cloudfront_field_level_encryption_config',
        contentTypeProfileConfig:
            CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfig(
              forwardWhenContentTypeIsUnknown: .literal(true),
              contentTypeProfiles:
                  CloudfrontFieldLevelEncryptionConfigContentTypeProfiles(
                    items: [
                      CloudfrontFieldLevelEncryptionConfigContentTypeProfilesItems(
                        contentType: .literal(leftover),
                        format: .literal('URLEncoded'),
                      ),
                    ],
                  ),
            ),
        queryArgProfileConfig:
            CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfig(
              forwardWhenQueryArgProfileIsUnknown: .literal(true),
            ),
      ),
    );

    add(
      AwsCloudfrontFieldLevelEncryptionProfile(
        localName: 'cloudfront_field_level_encryption_profile',
        name: .literal(leftover),
        encryptionEntities:
            CloudfrontFieldLevelEncryptionProfileEncryptionEntities(
              items: [
                CloudfrontFieldLevelEncryptionProfileItems(
                  providerId: .literal(leftover),
                  publicKeyId: .literal(leftover),
                  fieldPatterns:
                      CloudfrontFieldLevelEncryptionProfileFieldPatterns(
                        items: .literal([leftover]),
                      ),
                ),
              ],
            ),
      ),
    );

    add(
      AwsCloudfrontFunction(
        localName: 'cloudfront_function',
        code: .literal(leftover),
        name: .literal(leftover),
        runtime: .literal(.cloudfrontJs1p0),
      ),
    );

    add(
      AwsCloudfrontKeyGroup(
        localName: 'cloudfront_key_group',
        items: .literal([leftover]),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontKeyValueStore(
        localName: 'cloudfront_key_value_store',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontMonitoringSubscription(
        localName: 'cloudfront_monitoring_subscription',
        distributionId: .literal(leftover),
        monitoringSubscription:
            CloudfrontMonitoringSubscriptionMonitoringSubscription(
              realtimeMetricsSubscriptionConfig:
                  CloudfrontMonitoringSubscriptionRealtimeMetricsSubscriptionConfig(
                    realtimeMetricsSubscriptionStatus: .literal(.enabled),
                  ),
            ),
      ),
    );

    add(
      AwsCloudfrontMultitenantDistribution(
        localName: 'cloudfront_multitenant_distribution',
        comment: .literal(leftover),
        enabled: .literal(true),
        viewerCertificate: [
          CloudfrontMultitenantDistributionViewerCertificate(
            acmCertificateArn: .literal(arn),
          ),
        ],
        defaultCacheBehavior: [
          CloudfrontMultitenantDistributionDefaultCacheBehavior(
            targetOriginId: .literal(leftover),
            viewerProtocolPolicy: .literal(.allowAll),
            allowedMethods: [
              CloudfrontMultitenantDistributionAllowedMethods(
                cachedMethods: [.literal(.get)],
                items: .literal(['GET']),
              ),
            ],
          ),
        ],
        tenantConfig: [
          CloudfrontMultitenantDistributionTenantConfig(
            parameterDefinition: [
              CloudfrontMultitenantDistributionParameterDefinition(
                name: .literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontOriginAccessIdentity(
        localName: 'cloudfront_origin_access_identity',
      ),
    );

    add(
      AwsCloudfrontOriginRequestPolicy(
        localName: 'cloudfront_origin_request_policy',
        name: .literal(leftover),
        cookiesConfig: CloudfrontOriginRequestPolicyCookiesConfig(
          cookieBehavior: .literal(.none),
        ),
        headersConfig: CloudfrontOriginRequestPolicyHeadersConfig(
          headerBehavior: .literal(.none),
        ),
        queryStringsConfig: CloudfrontOriginRequestPolicyQueryStringsConfig(
          queryStringBehavior: .literal(.none),
        ),
      ),
    );

    add(
      AwsCloudfrontPublicKey(
        localName: 'cloudfront_public_key',
        encodedKey: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontRealtimeLogConfig(
        localName: 'cloudfront_realtime_log_config',
        fields: .literal([leftover]),
        name: .literal(leftover),
        samplingRate: .literal(1),
        endpoint: CloudfrontRealtimeLogConfigEndpoint(
          streamType: .literal(.kinesis),
          kinesisStreamConfig: CloudfrontRealtimeLogConfigKinesisStreamConfig(
            roleArn: .literal(arn),
            streamArn: .literal(arn),
          ),
        ),
      ),
    );

    add(
      AwsCloudfrontResponseHeadersPolicy(
        localName: 'cloudfront_response_headers_policy',
        name: .literal(leftover),
        corsConfig: CloudfrontResponseHeadersPolicyCorsConfig(
          accessControlAllowCredentials: .literal(true),
          originOverride: .literal(true),
          accessControlAllowHeaders:
              CloudfrontResponseHeadersPolicyAccessControlAllowHeaders(
                items: .literal([leftover]),
              ),
          accessControlAllowMethods:
              CloudfrontResponseHeadersPolicyAccessControlAllowMethods(
                items: .literal([leftover]),
              ),
          accessControlAllowOrigins:
              CloudfrontResponseHeadersPolicyAccessControlAllowOrigins(
                items: .literal([leftover]),
              ),
        ),
        customHeadersConfig: CloudfrontResponseHeadersPolicyCustomHeadersConfig(
          items: [
            CloudfrontResponseHeadersPolicyCustomHeadersConfigItems(
              header: .literal(leftover),
              override: .literal(true),
              value: .literal(leftover),
            ),
          ],
        ),
        removeHeadersConfig: CloudfrontResponseHeadersPolicyRemoveHeadersConfig(
          items: [
            CloudfrontResponseHeadersPolicyRemoveHeadersConfigItems(
              header: .literal(leftover),
            ),
          ],
        ),
        securityHeadersConfig:
            CloudfrontResponseHeadersPolicySecurityHeadersConfig(
              contentSecurityPolicy:
                  CloudfrontResponseHeadersPolicyContentSecurityPolicy(
                    contentSecurityPolicy: .literal(policy),
                    override: .literal(true),
                  ),
            ),
        serverTimingHeadersConfig:
            CloudfrontResponseHeadersPolicyServerTimingHeadersConfig(
              enabled: .literal(true),
              samplingRate: .literal(0),
            ),
      ),
    );

    add(
      AwsCloudfrontTrustStore(
        localName: 'cloudfront_trust_store',
        name: .literal(leftover),
        caCertificatesBundleSource: [
          CloudfrontTrustStoreCaCertificatesBundleSource(
            caCertificatesBundleS3Location: [
              CloudfrontTrustStoreCaCertificatesBundleS3Location(
                bucket: .literal(leftover),
                key: .literal(leftover),
                region: .literal('us-east-1'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontVpcOrigin(
        localName: 'cloudfront_vpc_origin',
        vpcOriginEndpointConfig: [
          CloudfrontVpcOriginEndpointConfig(
            arn: .literal(arn),
            httpPort: .literal(200),
            httpsPort: .literal(200),
            name: .literal(leftover),
            originProtocolPolicy: .literal(.httpOnly),
            originSslProtocols: [
              CloudfrontVpcOriginSslProtocols(
                items: .literal(['SSLv3']),
                quantity: .literal(200),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontkeyvaluestoreKey(
        localName: 'cloudfrontkeyvaluestore_key',
        key: .literal(leftover),
        keyValueStoreArn: .literal(arn),
        value: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontkeyvaluestoreKeysExclusive(
        localName: 'cloudfrontkeyvaluestore_keys_exclusive',
        keyValueStoreArn: .literal(arn),
      ),
    );

    add(
      AwsCloudhsmV2Cluster(
        localName: 'cloudhsm_v2_cluster',
        hsmType: .literal(.hsm1Medium),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsCloudhsmV2Hsm(
        localName: 'cloudhsm_v2_hsm',
        placement: .availabilityZone(.literal('us-east-1a')),
        clusterId: .literal(leftover),
      ),
    );

    add(
      AwsCloudsearchDomain(
        localName: 'cloudsearch_domain',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudsearchDomainServiceAccessPolicy(
        localName: 'cloudsearch_domain_service_access_policy',
        accessPolicy: .literal(policy),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsCloudtrail(
        localName: 'cloudtrail',
        name: .literal(leftover),
        s3BucketName: .literal(leftover),
      ),
    );

    add(
      AwsCloudtrailEventDataStore(
        localName: 'cloudtrail_event_data_store',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudtrailOrganizationDelegatedAdminAccount(
        localName: 'cloudtrail_organization_delegated_admin_account',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      AwsCloudwatchAlarmMuteRule(
        localName: 'cloudwatch_alarm_mute_rule',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchCompositeAlarm(
        localName: 'cloudwatch_composite_alarm',
        alarmName: .literal(leftover),
        alarmRule: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchContributorInsightRule(
        localName: 'cloudwatch_contributor_insight_rule',
        ruleDefinition: .literal(policy),
        ruleName: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchContributorManagedInsightRule(
        localName: 'cloudwatch_contributor_managed_insight_rule',
        resourceArn: .literal(arn),
        templateName: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchDashboard(
        localName: 'cloudwatch_dashboard',
        dashboardBody: .literal(policy),
        dashboardName: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventApiDestination(
        localName: 'cloudwatch_event_api_destination',
        connectionArn: .literal(arn),
        httpMethod: .literal(.post),
        invocationEndpoint: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventArchive(
        localName: 'cloudwatch_event_archive',
        eventSourceArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventBus(
        localName: 'cloudwatch_event_bus',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventBusPolicy(
        localName: 'cloudwatch_event_bus_policy',
        policy: .literal(policy),
      ),
    );

    add(
      AwsCloudwatchEventConnection(
        localName: 'cloudwatch_event_connection',
        authorizationType: .literal(.basic),
        name: .literal(leftover),
        authParameters: CloudwatchEventConnectionAuthParameters(
          auth: .apiKey(
            CloudwatchEventConnectionApiKey(
              key: .literal(leftover),
              value: .variable('leftover_secret'),
            ),
          ),
        ),
      ),
    );

    add(
      AwsCloudwatchEventEndpoint(
        localName: 'cloudwatch_event_endpoint',
        name: .literal(leftover),
        eventBus: [
          CloudwatchEventEndpointEventBus(eventBusArn: .literal(arn)),
          CloudwatchEventEndpointEventBus(eventBusArn: .literal(arn)),
        ],
        routingConfig: CloudwatchEventEndpointRoutingConfig(
          failoverConfig: CloudwatchEventEndpointFailoverConfig(
            primary: CloudwatchEventEndpointPrimary(healthCheck: .literal(arn)),
            secondary: CloudwatchEventEndpointSecondary(
              route: .literal('us-east-1'),
            ),
          ),
        ),
      ),
    );

    add(
      AwsCloudwatchEventPermission(
        localName: 'cloudwatch_event_permission',
        principal: .literal('123456789012'),
        statementId: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventRule(
        localName: 'cloudwatch_event_rule',
        eventPattern: .literal(policy),
        scheduleExpression: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventTarget(
        localName: 'cloudwatch_event_target',
        arn: .literal(arn),
        rule: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogAccountPolicy(
        localName: 'cloudwatch_log_account_policy',
        policyDocument: .literal(policy),
        policyName: .literal(leftover),
        policyType: .literal(.dataProtectionPolicy),
      ),
    );

    add(
      AwsCloudwatchLogAnomalyDetector(
        localName: 'cloudwatch_log_anomaly_detector',
        enabled: .literal(true),
        logGroupArnList: .literal([leftover]),
      ),
    );

    add(
      AwsCloudwatchLogDataProtectionPolicy(
        localName: 'cloudwatch_log_data_protection_policy',
        logGroupName: .literal(leftover),
        policyDocument: .literal(policy),
      ),
    );

    add(
      AwsCloudwatchLogDelivery(
        localName: 'cloudwatch_log_delivery',
        deliveryDestinationArn: .literal(arn),
        deliverySourceName: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogDeliveryDestination(
        localName: 'cloudwatch_log_delivery_destination',
        name: .literal(leftover),
        deliveryDestinationConfiguration: [
          CloudwatchLogDeliveryDestinationConfiguration(
            destinationResourceArn: .literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsCloudwatchLogDeliveryDestinationPolicy(
        localName: 'cloudwatch_log_delivery_destination_policy',
        deliveryDestinationName: .literal(leftover),
        deliveryDestinationPolicy: .literal(policy),
      ),
    );

    add(
      AwsCloudwatchLogDeliverySource(
        localName: 'cloudwatch_log_delivery_source',
        logType: .literal(leftover),
        name: .literal(leftover),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsCloudwatchLogDestination(
        localName: 'cloudwatch_log_destination',
        name: .literal(leftover),
        roleArn: .literal(arn),
        targetArn: .literal(arn),
      ),
    );

    add(
      AwsCloudwatchLogDestinationPolicy(
        localName: 'cloudwatch_log_destination_policy',
        accessPolicy: .literal(policy),
        destinationName: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogIndexPolicy(
        localName: 'cloudwatch_log_index_policy',
        logGroupName: .literal(leftover),
        policyDocument: .literal(policy),
      ),
    );

    add(
      AwsCloudwatchLogMetricFilter(
        localName: 'cloudwatch_log_metric_filter',
        logGroupName: .literal(leftover),
        name: .literal(leftover),
        pattern: .literal(leftover),
        metricTransformation: CloudwatchLogMetricFilterMetricTransformation(
          name: .literal(leftover),
          namespace: .literal(leftover),
          value: .literal(leftover),
        ),
      ),
    );

    add(
      AwsCloudwatchLogResourcePolicy(
        localName: 'cloudwatch_log_resource_policy',
        policyDocument: .literal(policy),
        scope: .policyName(.literal(leftover)),
      ),
    );

    add(
      AwsCloudwatchLogS3TableIntegrationSource(
        localName: 'cloudwatch_log_s3_table_integration_source',
        integrationArn: .literal(arn),
        dataSource: [
          CloudwatchLogS3TableIntegrationSourceDataSource(
            name: .literal(leftover),
            type: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsCloudwatchLogStorageTierPolicy(
        localName: 'cloudwatch_log_storage_tier_policy',
        storageTier: .literal(.standard),
      ),
    );

    add(
      AwsCloudwatchLogStream(
        localName: 'cloudwatch_log_stream',
        logGroupName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogSubscriptionFilter(
        localName: 'cloudwatch_log_subscription_filter',
        destinationArn: .literal(arn),
        filterPattern: .literal(leftover),
        logGroupName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogTransformer(
        localName: 'cloudwatch_log_transformer',
        logGroupArn: .literal(arn),
        transformerConfig: [
          CloudwatchLogTransformerConfig(
            addKeys: [
              CloudwatchLogTransformerAddKeys(
                entry: [
                  CloudwatchLogTransformerAddKeysEntry(
                    key: .literal(leftover),
                    value: .literal(leftover),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsCloudwatchMetricAlarm(
        localName: 'cloudwatch_metric_alarm',
        alarmName: .literal(leftover),
        signal: .metricName(.literal(leftover)),
      ),
    );

    add(
      AwsCloudwatchMetricStream(
        localName: 'cloudwatch_metric_stream',
        firehoseArn: .literal(arn),
        outputFormat: .literal(.json),
        roleArn: .literal(arn),
      ),
    );

    add(AwsCloudwatchOtelEnrichment(localName: 'cloudwatch_otel_enrichment'));

    add(
      AwsCloudwatchQueryDefinition(
        localName: 'cloudwatch_query_definition',
        name: .literal(leftover),
        queryString: .literal(leftover),
      ),
    );

    add(
      AwsCodeartifactDomain(
        localName: 'codeartifact_domain',
        domain: .literal(leftover),
      ),
    );

    add(
      AwsCodeartifactDomainPermissionsPolicy(
        localName: 'codeartifact_domain_permissions_policy',
        domain: .literal(leftover),
      ),
    );

    add(
      AwsCodeartifactRepository(
        localName: 'codeartifact_repository',
        domain: .literal(leftover),
        repository: .literal(leftover),
      ),
    );

    add(
      AwsCodeartifactRepositoryPermissionsPolicy(
        localName: 'codeartifact_repository_permissions_policy',
        domain: .literal(leftover),
        policyDocument: .literal(policy),
        repository: .literal(leftover),
      ),
    );

    add(
      AwsCodebuildFleet(
        localName: 'codebuild_fleet',
        baseCapacity: .literal(200),
        computeType: .literal(.buildGeneral1Small),
        environmentType: .literal(.windowsContainer),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCodebuildProject(
        localName: 'codebuild_project',
        name: .literal(leftover),
        serviceRole: .literal(arn),
        artifacts: CodebuildProjectArtifacts(type: .literal(.codepipeline)),
        environment: CodebuildProjectEnvironment(
          computeType: .literal(.buildGeneral1Small),
          image: .literal(leftover),
          type: .literal(.windowsContainer),
        ),
        source: CodebuildProjectSource(type: .literal(.codecommit)),
      ),
    );

    add(
      AwsCodebuildReportGroup(
        localName: 'codebuild_report_group',
        name: .literal(leftover),
        type: .literal(.test),
        exportConfig: CodebuildReportGroupExportConfig(type: .literal(.s3)),
      ),
    );

    add(
      AwsCodebuildResourcePolicy(
        localName: 'codebuild_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsCodebuildSourceCredential(
        localName: 'codebuild_source_credential',
        authType: .literal(.oauth),
        serverType: .literal(.github),
        token: .variable('leftover_secret'),
      ),
    );

    add(
      AwsCodebuildWebhook(
        localName: 'codebuild_webhook',
        projectName: .literal(leftover),
      ),
    );

    add(
      AwsCodecatalystDevEnvironment(
        localName: 'codecatalyst_dev_environment',
        instanceType: .literal(.devStandard1Small),
        projectName: .literal(leftover),
        spaceName: .literal(leftover),
        ides: CodecatalystDevEnvironmentIdes(name: .literal(leftover)),
        persistentStorage: CodecatalystDevEnvironmentPersistentStorage(
          size: .literal(200),
        ),
      ),
    );

    add(
      AwsCodecatalystProject(
        localName: 'codecatalyst_project',
        displayName: .literal(leftover),
        spaceName: .literal(leftover),
      ),
    );

    add(
      AwsCodecatalystSourceRepository(
        localName: 'codecatalyst_source_repository',
        name: .literal(leftover),
        projectName: .literal(leftover),
        spaceName: .literal(leftover),
      ),
    );

    add(
      AwsCodecommitApprovalRuleTemplate(
        localName: 'codecommit_approval_rule_template',
        content: .literal(policy),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCodecommitApprovalRuleTemplateAssociation(
        localName: 'codecommit_approval_rule_template_association',
        approvalRuleTemplateName: .literal(leftover),
        repositoryName: .literal(leftover),
      ),
    );

    add(
      AwsCodecommitRepository(
        localName: 'codecommit_repository',
        repositoryName: .literal(leftover),
      ),
    );

    add(
      AwsCodecommitTrigger(
        localName: 'codecommit_trigger',
        repositoryName: .literal(leftover),
        trigger: [
          CodecommitTriggerTrigger(
            destinationArn: .literal(arn),
            events: [.literal(.all)],
            name: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsCodeconnectionsConnection(
        localName: 'codeconnections_connection',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCodeconnectionsHost(
        localName: 'codeconnections_host',
        name: .literal(leftover),
        providerEndpoint: .literal(leftover),
        providerType: .literal(.bitbucket),
      ),
    );

    add(
      AwsCodedeployApp(localName: 'codedeploy_app', name: .literal(leftover)),
    );

    add(
      AwsCodedeployDeploymentConfig(
        localName: 'codedeploy_deployment_config',
        deploymentConfigName: .literal(leftover),
      ),
    );

    add(
      AwsCodedeployDeploymentGroup(
        localName: 'codedeploy_deployment_group',
        appName: .literal(leftover),
        deploymentGroupName: .literal(leftover),
        serviceRoleArn: .literal(arn),
      ),
    );

    add(
      AwsCodeguruprofilerProfilingGroup(
        localName: 'codeguruprofiler_profiling_group',
        name: .literal(leftover),
        agentOrchestrationConfig: [
          CodeguruprofilerProfilingGroupAgentOrchestrationConfig(
            profilingEnabled: .literal(true),
          ),
        ],
      ),
    );

    add(
      AwsCodegurureviewerRepositoryAssociation(
        localName: 'codegurureviewer_repository_association',
        repository: CodegurureviewerRepositoryAssociationRepository(
          bitbucket: CodegurureviewerRepositoryAssociationBitbucket(
            connectionArn: .literal(arn),
            name: .literal(leftover),
            owner: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsCodepipeline(
        localName: 'codepipeline',
        name: .literal(leftover),
        roleArn: .literal(arn),
        artifactStore: [
          CodepipelineArtifactStore(
            location: .literal(leftover),
            type: .literal(.s3),
          ),
        ],
        stage: [
          CodepipelineStage(
            name: .literal(leftover),
            action: [
              CodepipelineAction(
                category: .literal(.source),
                name: .literal(leftover),
                owner: .literal(.aws),
                provider: .literal(leftover),
                version: .literal(leftover),
              ),
            ],
          ),
          CodepipelineStage(
            name: .literal('leftover1'),
            action: [
              CodepipelineAction(
                category: .literal(.source),
                name: .literal(leftover),
                owner: .literal(.aws),
                provider: .literal(leftover),
                version: .literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsCodepipelineCustomActionType(
        localName: 'codepipeline_custom_action_type',
        category: .literal(.source),
        providerName: .literal(leftover),
        version: .literal(leftover),
        inputArtifactDetails: CodepipelineCustomActionTypeInputArtifactDetails(
          maximumCount: .literal(0),
          minimumCount: .literal(0),
        ),
        outputArtifactDetails:
            CodepipelineCustomActionTypeOutputArtifactDetails(
              maximumCount: .literal(0),
              minimumCount: .literal(0),
            ),
      ),
    );

    add(
      AwsCodepipelineWebhook(
        localName: 'codepipeline_webhook',
        authentication: .literal(.githubHmac),
        name: .literal(leftover),
        targetAction: .literal(leftover),
        targetPipeline: .literal(leftover),
        filter: [
          CodepipelineWebhookFilter(
            jsonPath: .literal(leftover),
            matchEquals: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsCodestarconnectionsConnection(
        localName: 'codestarconnections_connection',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCodestarconnectionsHost(
        localName: 'codestarconnections_host',
        name: .literal(leftover),
        providerEndpoint: .literal(leftover),
        providerType: .literal(.bitbucket),
      ),
    );

    add(
      AwsCodestarnotificationsNotificationRule(
        localName: 'codestarnotifications_notification_rule',
        detailType: .literal(.basic),
        eventTypeIds: .literal([leftover]),
        name: .literal(leftover),
        resource: .literal(arn),
      ),
    );

    add(
      AwsCognitoIdentityPool(
        localName: 'cognito_identity_pool',
        identityPoolName: .literal(leftover),
      ),
    );

    add(
      AwsCognitoIdentityPoolProviderPrincipalTag(
        localName: 'cognito_identity_pool_provider_principal_tag',
        identityPoolId: .literal(
          'us-east-1:12345678-1234-1234-1234-123456789012',
        ),
        identityProviderName: .literal(leftover),
      ),
    );

    add(
      AwsCognitoIdentityPoolRolesAttachment(
        localName: 'cognito_identity_pool_roles_attachment',
        identityPoolId: .literal(leftover),
        roles: .literal({'k': leftover}),
      ),
    );

    add(
      AwsCognitoIdentityProvider(
        localName: 'cognito_identity_provider',
        providerDetails: .literal({'k': leftover}),
        providerName: .literal(leftover),
        providerType: .literal(.saml),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoLogDeliveryConfiguration(
        localName: 'cognito_log_delivery_configuration',
        userPoolId: .literal(leftover),
        logConfigurations: [
          CognitoLogDeliveryConfigurationLogConfigurations(
            eventSource: .literal(.usernotification),
            logLevel: .literal(.error),
          ),
        ],
      ),
    );

    add(
      AwsCognitoManagedLoginBranding(
        localName: 'cognito_managed_login_branding',
        clientId: .literal(leftover),
        style: .settings(.literal(policy)),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoManagedUserPoolClient(
        localName: 'cognito_managed_user_pool_client',
        name: .namePrefix(.literal(leftover)),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoResourceServer(
        localName: 'cognito_resource_server',
        identifier: .literal(leftover),
        name: .literal(leftover),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoRiskConfiguration(
        localName: 'cognito_risk_configuration',
        userPoolId: .literal('us-east-1_leftover'),
        accountTakeoverRiskConfiguration:
            CognitoRiskConfigurationAccountTakeoverRiskConfiguration(
              actions:
                  CognitoRiskConfigurationAccountTakeoverRiskConfigurationActions(
                    highAction: CognitoRiskConfigurationHighAction(
                      eventAction: .literal(.block),
                      notify: .literal(true),
                    ),
                  ),
            ),
        compromisedCredentialsRiskConfiguration:
            CognitoRiskConfigurationCompromisedCredentialsRiskConfiguration(
              actions:
                  CognitoRiskConfigurationCompromisedCredentialsRiskConfigurationActions(
                    eventAction: .literal(.block),
                  ),
            ),
      ),
    );

    add(
      AwsCognitoUser(
        localName: 'cognito_user',
        userPoolId: .literal(leftover),
        username: .literal(leftover),
      ),
    );

    add(
      AwsCognitoUserGroup(
        localName: 'cognito_user_group',
        name: .literal(leftover),
        userPoolId: .literal('us-east-1_leftover'),
      ),
    );

    add(
      AwsCognitoUserInGroup(
        localName: 'cognito_user_in_group',
        groupName: .literal(leftover),
        userPoolId: .literal('us-east-1_leftover'),
        username: .literal(leftover),
      ),
    );

    add(
      AwsCognitoUserPool(
        localName: 'cognito_user_pool',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCognitoUserPoolClient(
        localName: 'cognito_user_pool_client',
        name: .literal(leftover),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoUserPoolDomain(
        localName: 'cognito_user_pool_domain',
        domain: .literal(leftover),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoUserPoolUiCustomization(
        localName: 'cognito_user_pool_ui_customization',
        userPoolId: .literal(leftover),
        css: .literal(leftover),
        imageFile: .literal(leftover),
      ),
    );

    add(
      AwsComprehendDocumentClassifier(
        localName: 'comprehend_document_classifier',
        dataAccessRoleArn: .literal(arn),
        languageCode: .literal(.en),
        name: .literal(leftover),
        inputDataConfig: ComprehendDocumentClassifierInputDataConfig(
          source: .augmentedManifests([
            ComprehendDocumentClassifierAugmentedManifests(
              attributeNames: .literal([leftover]),
              s3Uri: .literal('https://example.com'),
            ),
          ]),
        ),
      ),
    );

    add(
      AwsComprehendEntityRecognizer(
        localName: 'comprehend_entity_recognizer',
        dataAccessRoleArn: .literal(arn),
        languageCode: .literal(.en),
        name: .literal(leftover),
        inputDataConfig: ComprehendEntityRecognizerInputDataConfig(
          labels: .annotations(
            ComprehendEntityRecognizerAnnotations(
              s3Uri: .literal('https://example.com'),
            ),
          ),
          source: .augmentedManifests([
            ComprehendEntityRecognizerAugmentedManifests(
              attributeNames: .literal([leftover]),
              s3Uri: .literal('https://example.com'),
            ),
          ]),
          entityTypes: [
            ComprehendEntityRecognizerEntityTypes(type: .literal(leftover)),
          ],
        ),
      ),
    );

    add(
      AwsComputeoptimizerEnrollmentStatus(
        localName: 'computeoptimizer_enrollment_status',
        status: .literal(.active),
      ),
    );

    add(
      AwsComputeoptimizerRecommendationPreferences(
        localName: 'computeoptimizer_recommendation_preferences',
        resourceType: .literal(.autoscalinggroup),
        enhancedInfrastructureMetrics: .literal(.active),
        scope: [
          ComputeoptimizerRecommendationPreferencesScope(
            name: .literal(.organization),
            value: .literal(leftover),
          ),
        ],
        externalMetricsPreference: [
          ComputeoptimizerRecommendationPreferencesExternalMetricsPreference(
            source: .literal(.datadog),
          ),
        ],
      ),
    );

    add(
      AwsConfigAggregateAuthorization(
        localName: 'config_aggregate_authorization',
        accountId: .literal('123456789012'),
        region: .authorizedAwsRegion(.literal('us-east-1')),
      ),
    );

    add(
      AwsConfigConfigRule(
        localName: 'config_config_rule',
        name: .literal(leftover),
        source: ConfigConfigRuleSource(owner: .literal(.customLambda)),
      ),
    );

    add(
      AwsConfigConfigurationAggregator(
        localName: 'config_configuration_aggregator',
        name: .literal(leftover),
      ),
    );

    add(
      AwsConfigConfigurationRecorder(
        localName: 'config_configuration_recorder',
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsConfigConfigurationRecorderStatus(
        localName: 'config_configuration_recorder_status',
        isEnabled: .literal(true),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConfigConformancePack(
        localName: 'config_conformance_pack',
        name: .literal(leftover),
        templateS3Uri: .literal('s3://leftover-bucket/leftover'),
      ),
    );

    add(
      AwsConfigDeliveryChannel(
        localName: 'config_delivery_channel',
        s3BucketName: .literal(leftover),
      ),
    );

    add(
      AwsConfigOrganizationConformancePack(
        localName: 'config_organization_conformance_pack',
        name: .literal(leftover),
      ),
    );

    add(
      AwsConfigOrganizationCustomPolicyRule(
        localName: 'config_organization_custom_policy_rule',
        name: .literal(leftover),
        policyRuntime: .literal(leftover),
        policyText: .literal(leftover),
        triggerTypes: [.literal(.configurationitemchangenotification)],
      ),
    );

    add(
      AwsConfigOrganizationCustomRule(
        localName: 'config_organization_custom_rule',
        lambdaFunctionArn: .literal(arn),
        name: .literal(leftover),
        triggerTypes: [.literal(.configurationitemchangenotification)],
      ),
    );

    add(
      AwsConfigOrganizationManagedRule(
        localName: 'config_organization_managed_rule',
        name: .literal(leftover),
        ruleIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsConfigRemediationConfiguration(
        localName: 'config_remediation_configuration',
        configRuleName: .literal(leftover),
        targetId: .literal(leftover),
        targetType: .literal(.ssmDocument),
      ),
    );

    add(
      AwsConfigRetentionConfiguration(
        localName: 'config_retention_configuration',
        retentionPeriodInDays: .literal(200),
      ),
    );

    add(
      AwsConnectBotAssociation(
        localName: 'connect_bot_association',
        instanceId: .literal('i-0123456789abcdef0'),
        lexBot: ConnectBotAssociationLexBot(name: .literal(leftover)),
      ),
    );

    add(
      AwsConnectContactFlow(
        localName: 'connect_contact_flow',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConnectContactFlowModule(
        localName: 'connect_contact_flow_module',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConnectHoursOfOperation(
        localName: 'connect_hours_of_operation',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
        timeZone: .literal(leftover),
        config: [
          ConnectHoursOfOperationConfig(
            day: .literal(.sunday),
            endTime: ConnectHoursOfOperationEndTime(
              hours: .literal(200),
              minutes: .literal(200),
            ),
            startTime: ConnectHoursOfOperationStartTime(
              hours: .literal(200),
              minutes: .literal(200),
            ),
          ),
        ],
      ),
    );

    add(
      AwsConnectInstance(
        localName: 'connect_instance',
        identityManagementType: .literal(.saml),
        inboundCallsEnabled: .literal(true),
        outboundCallsEnabled: .literal(true),
        instanceAlias: .literal(leftover),
      ),
    );

    add(
      AwsConnectInstanceStorageConfig(
        localName: 'connect_instance_storage_config',
        instanceId: .literal('i-0123456789abcdef0'),
        resourceType: .literal(.chatTranscripts),
        storageConfig: ConnectInstanceStorageConfigStorageConfig(
          storageType: .literal(.s3),
        ),
      ),
    );

    add(
      AwsConnectLambdaFunctionAssociation(
        localName: 'connect_lambda_function_association',
        functionArn: .literal(arn),
        instanceId: .literal('i-0123456789abcdef0'),
      ),
    );

    add(
      AwsConnectPhoneNumber(
        localName: 'connect_phone_number',
        countryCode: .literal(.af),
        targetArn: .literal(arn),
        type: .literal(.tollFree),
      ),
    );

    add(
      AwsConnectPhoneNumberContactFlowAssociation(
        localName: 'connect_phone_number_contact_flow_association',
        contactFlowId: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        phoneNumberId: .literal(leftover),
      ),
    );

    add(
      AwsConnectQueue(
        localName: 'connect_queue',
        hoursOfOperationId: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConnectQuickConnect(
        localName: 'connect_quick_connect',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
        quickConnectConfig: ConnectQuickConnectConfig(
          quickConnectType: .literal(.user),
        ),
      ),
    );

    add(
      AwsConnectRoutingProfile(
        localName: 'connect_routing_profile',
        defaultOutboundQueueId: .literal(leftover),
        description: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
        mediaConcurrencies: [
          ConnectRoutingProfileMediaConcurrencies(
            channel: .literal(.voice),
            concurrency: .literal(1),
          ),
        ],
      ),
    );

    add(
      AwsConnectSecurityProfile(
        localName: 'connect_security_profile',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConnectUser(
        localName: 'connect_user',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
        routingProfileId: .literal(leftover),
        securityProfileIds: .literal([leftover]),
        phoneConfig: ConnectUserPhoneConfig(phoneType: .literal(.softPhone)),
      ),
    );

    add(
      AwsConnectUserHierarchyGroup(
        localName: 'connect_user_hierarchy_group',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConnectUserHierarchyStructure(
        localName: 'connect_user_hierarchy_structure',
        instanceId: .literal('i-0123456789abcdef0'),
        hierarchyStructure: ConnectUserHierarchyStructureHierarchyStructure(
          levelFive: ConnectUserHierarchyStructureLevelFive(
            name: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsConnectVocabulary(
        localName: 'connect_vocabulary',
        content: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        languageCode: .literal(.arAe),
        name: .literal(leftover),
      ),
    );

    add(
      AwsControltowerBaseline(
        localName: 'controltower_baseline',
        baselineIdentifier: .literal(leftover),
        baselineVersion: .literal(leftover),
        targetIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsControltowerControl(
        localName: 'controltower_control',
        controlIdentifier: .literal(arn),
        targetIdentifier: .literal(arn),
      ),
    );

    add(
      AwsControltowerLandingZone(
        localName: 'controltower_landing_zone',
        manifestJson: .literal(policy),
        version: .literal(leftover),
      ),
    );

    add(
      AwsCostoptimizationhubEnrollmentStatus(
        localName: 'costoptimizationhub_enrollment_status',
      ),
    );

    add(
      AwsCostoptimizationhubPreferences(
        localName: 'costoptimizationhub_preferences',
      ),
    );

    add(
      AwsCurReportDefinition(
        localName: 'cur_report_definition',
        additionalSchemaElements: [.literal(.resources)],
        compression: .literal(.zip),
        format: .literal(.textorcsv),
        reportName: .literal(leftover),
        s3Bucket: .literal(leftover),
        s3Prefix: .literal(leftover),
        s3Region: .literal('us-east-1'),
        timeUnit: .literal(.hourly),
      ),
    );

    add(
      AwsCustomerGateway(
        localName: 'customer_gateway',
        type: .literal(.ipsec1),
      ),
    );

    add(
      AwsCustomerprofilesDomain(
        localName: 'customerprofiles_domain',
        defaultExpirationDays: .literal(200),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsCustomerprofilesProfile(
        localName: 'customerprofiles_profile',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsDataexchangeDataSet(
        localName: 'dataexchange_data_set',
        assetType: .literal(.s3Snapshot),
        description: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDataexchangeEventAction(
        localName: 'dataexchange_event_action',
        action: [
          DataexchangeEventActionAction(
            exportRevisionToS3: [
              DataexchangeEventActionExportRevisionToS3(
                revisionDestination: [
                  DataexchangeEventActionRevisionDestination(
                    bucket: .literal(leftover),
                  ),
                ],
              ),
            ],
          ),
        ],
        event: [
          DataexchangeEventActionEvent(
            revisionPublished: [
              DataexchangeEventActionRevisionPublished(
                dataSetId: .literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsDataexchangeRevision(
        localName: 'dataexchange_revision',
        dataSetId: .literal(leftover),
      ),
    );

    add(
      AwsDataexchangeRevisionAssets(
        localName: 'dataexchange_revision_assets',
        dataSetId: .literal(leftover),
      ),
    );

    add(
      AwsDatapipelinePipeline(
        localName: 'datapipeline_pipeline',
        name: .literal(leftover),
      ),
    );

    add(
      AwsDatapipelinePipelineDefinition(
        localName: 'datapipeline_pipeline_definition',
        pipelineId: .literal(leftover),
        pipelineObject: [
          DatapipelinePipelineDefinitionPipelineObject(
            id: .literal(leftover),
            name: .literal(leftover),
          ),
        ],
      ),
    );

    add(AwsDatasyncAgent(localName: 'datasync_agent'));

    add(
      AwsDatasyncLocationAzureBlob(
        localName: 'datasync_location_azure_blob',
        agentArns: .literal([arn]),
        authenticationType: .literal(.sas),
        containerUrl: .literal('https://example.com'),
      ),
    );

    add(
      AwsDatasyncLocationEfs(
        localName: 'datasync_location_efs',
        efsFileSystemArn: .literal(arn),
        ec2Config: DatasyncLocationEfsEc2Config(
          securityGroupArns: .literal([arn]),
          subnetArn: .literal(arn),
        ),
      ),
    );

    add(
      AwsDatasyncLocationFsxLustreFileSystem(
        localName: 'datasync_location_fsx_lustre_file_system',
        fsxFilesystemArn: .literal(arn),
        securityGroupArns: .literal([arn]),
      ),
    );

    add(
      AwsDatasyncLocationFsxOntapFileSystem(
        localName: 'datasync_location_fsx_ontap_file_system',
        securityGroupArns: .literal([arn]),
        storageVirtualMachineArn: .literal(arn),
        protocol: .nfs(
          DatasyncLocationFsxOntapFileSystemNfs(
            mountOptions: DatasyncLocationFsxOntapFileSystemNfsMountOptions(
              version: .literal(.nfs3),
            ),
          ),
        ),
      ),
    );

    add(
      AwsDatasyncLocationFsxOpenzfsFileSystem(
        localName: 'datasync_location_fsx_openzfs_file_system',
        fsxFilesystemArn: .literal(arn),
        securityGroupArns: .literal([arn]),
        protocol: DatasyncLocationFsxOpenzfsFileSystemProtocol(
          nfs: DatasyncLocationFsxOpenzfsFileSystemNfs(
            mountOptions: DatasyncLocationFsxOpenzfsFileSystemMountOptions(
              version: .literal(.automatic),
            ),
          ),
        ),
      ),
    );

    add(
      AwsDatasyncLocationFsxWindowsFileSystem(
        localName: 'datasync_location_fsx_windows_file_system',
        fsxFilesystemArn: .literal(arn),
        password: .variable('leftover_secret'),
        securityGroupArns: .literal([arn]),
        user: .literal(leftover),
      ),
    );

    add(
      AwsDatasyncLocationHdfs(
        localName: 'datasync_location_hdfs',
        agentArns: .literal([arn]),
        nameNode: [
          DatasyncLocationHdfsNameNode(
            hostname: .literal(leftover),
            port: .literal(200),
          ),
        ],
      ),
    );

    add(
      AwsDatasyncLocationNfs(
        localName: 'datasync_location_nfs',
        serverHostname: .literal(leftover),
        subdirectory: .literal(leftover),
        onPremConfig: DatasyncLocationNfsOnPremConfig(
          agentArns: .literal([arn]),
        ),
      ),
    );

    add(
      AwsDatasyncLocationObjectStorage(
        localName: 'datasync_location_object_storage',
        bucketName: .literal(leftover),
        serverHostname: .literal(leftover),
      ),
    );

    add(
      AwsDatasyncLocationS3(
        localName: 'datasync_location_s3',
        s3BucketArn: .literal(arn),
        subdirectory: .literal(leftover),
        s3Config: DatasyncLocationS3Config(bucketAccessRoleArn: .literal(arn)),
      ),
    );

    add(
      AwsDatasyncLocationSmb(
        localName: 'datasync_location_smb',
        agentArns: .literal([arn]),
        password: .variable('leftover_secret'),
        serverHostname: .literal(leftover),
        subdirectory: .literal(leftover),
        user: .literal(leftover),
      ),
    );

    add(
      AwsDatasyncTask(
        localName: 'datasync_task',
        destinationLocationArn: .literal(arn),
        sourceLocationArn: .literal(arn),
      ),
    );

    add(
      AwsDatazoneAssetType(
        localName: 'datazone_asset_type',
        domainIdentifier: .literal(leftover),
        name: .literal(leftover),
        owningProjectIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneDomain(
        localName: 'datazone_domain',
        domainExecutionRole: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneEnvironment(
        localName: 'datazone_environment',
        domainIdentifier: .literal(leftover),
        name: .literal(leftover),
        profileIdentifier: .literal(leftover),
        projectIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneEnvironmentBlueprintConfiguration(
        localName: 'datazone_environment_blueprint_configuration',
        domainId: .literal(leftover),
        enabledRegions: .literal([leftover]),
        environmentBlueprintId: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneEnvironmentProfile(
        localName: 'datazone_environment_profile',
        awsAccountRegion: .literal('us-east-1'),
        domainIdentifier: .literal(leftover),
        environmentBlueprintIdentifier: .literal(leftover),
        name: .literal(leftover),
        projectIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneFormType(
        localName: 'datazone_form_type',
        domainIdentifier: .literal('dzd-xRc'),
        name: .literal(leftover),
        owningProjectIdentifier: .literal(leftover),
        model: [DatazoneFormTypeModel(smithy: .literal(leftover))],
      ),
    );

    add(
      AwsDatazoneGlossary(
        localName: 'datazone_glossary',
        domainIdentifier: .literal(leftover),
        name: .literal(leftover),
        owningProjectIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneGlossaryTerm(
        localName: 'datazone_glossary_term',
        glossaryIdentifier: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDatazonePolicyGrant(
        localName: 'datazone_policy_grant',
        domainIdentifier: .literal(leftover),
        entityIdentifier: .literal(leftover),
        entityType: .literal(.domainUnit),
        policyType: .literal(.createDomainUnit),
        detail: [
          DatazonePolicyGrantDetail(
            addToProjectMemberPool: [
              DatazonePolicyGrantAddToProjectMemberPool(
                includeChildDomainUnits: .literal(true),
              ),
            ],
          ),
        ],
        principal: [
          DatazonePolicyGrantPrincipal(
            domainUnit: [
              DatazonePolicyGrantDomainUnit(
                domainUnitDesignation: .literal(.owner),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsDatazoneProject(
        localName: 'datazone_project',
        domainIdentifier: .literal('dzd-xRc'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneUserProfile(
        localName: 'datazone_user_profile',
        domainIdentifier: .literal(leftover),
        userIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDaxCluster(
        localName: 'dax_cluster',
        clusterName: .literal(leftover),
        iamRoleArn: .literal(arn),
        nodeType: .literal(leftover),
        replicationFactor: .literal(200),
      ),
    );

    add(
      AwsDaxParameterGroup(
        localName: 'dax_parameter_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsDaxSubnetGroup(
        localName: 'dax_subnet_group',
        name: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsDbClusterSnapshot(
        localName: 'db_cluster_snapshot',
        dbClusterIdentifier: .literal(leftover),
        dbClusterSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDbEventSubscription(
        localName: 'db_event_subscription',
        snsTopic: .literal(arn),
      ),
    );

    add(
      AwsDbInstance(
        localName: 'db_instance',
        instanceClass: .literal(leftover),
      ),
    );

    add(
      AwsDbInstanceAutomatedBackupsReplication(
        localName: 'db_instance_automated_backups_replication',
        sourceDbInstanceArn: .literal(arn),
      ),
    );

    add(
      AwsDbInstanceRoleAssociation(
        localName: 'db_instance_role_association',
        dbInstanceIdentifier: .literal(leftover),
        featureName: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsDbOptionGroup(
        localName: 'db_option_group',
        engineName: .literal(leftover),
        majorEngineVersion: .literal(leftover),
      ),
    );

    add(
      AwsDbParameterGroup(
        localName: 'db_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsDbProxy(
        localName: 'db_proxy',
        engineFamily: .literal(.mysql),
        name: .literal(leftover),
        roleArn: .literal(arn),
        vpcSubnetIds: .literal([leftover]),
      ),
    );

    add(
      AwsDbProxyDefaultTargetGroup(
        localName: 'db_proxy_default_target_group',
        dbProxyName: .literal(leftover),
      ),
    );

    add(
      AwsDbProxyEndpoint(
        localName: 'db_proxy_endpoint',
        dbProxyEndpointName: .literal(leftover),
        dbProxyName: .literal(leftover),
        vpcSubnetIds: .literal([leftover]),
      ),
    );

    add(
      AwsDbProxyTarget(
        localName: 'db_proxy_target',
        database: .dbClusterIdentifier(.literal(leftover)),
        dbProxyName: .literal(leftover),
        targetGroupName: .literal(leftover),
      ),
    );

    add(
      AwsDbSnapshot(
        localName: 'db_snapshot',
        dbInstanceIdentifier: .literal(leftover),
        dbSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDbSnapshotCopy(
        localName: 'db_snapshot_copy',
        sourceDbSnapshotIdentifier: .literal(leftover),
        targetDbSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDbSubnetGroup(
        localName: 'db_subnet_group',
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsDefaultNetworkAcl(
        localName: 'default_network_acl',
        defaultNetworkAclId: .literal(leftover),
      ),
    );

    add(
      AwsDefaultRouteTable(
        localName: 'default_route_table',
        defaultRouteTableId: .literal(leftover),
      ),
    );

    add(AwsDefaultSecurityGroup(localName: 'default_security_group'));

    add(
      AwsDefaultSubnet(
        localName: 'default_subnet',
        availabilityZone: .literal('us-east-1a'),
      ),
    );

    add(AwsDefaultVpc(localName: 'default_vpc'));

    add(AwsDefaultVpcDhcpOptions(localName: 'default_vpc_dhcp_options'));

    add(AwsDetectiveGraph(localName: 'detective_graph'));

    add(
      AwsDetectiveInvitationAccepter(
        localName: 'detective_invitation_accepter',
        graphArn: .literal(arn),
      ),
    );

    add(
      AwsDetectiveMember(
        localName: 'detective_member',
        accountId: .literal('123456789012'),
        emailAddress: .literal('leftover@example.com'),
        graphArn: .literal(arn),
      ),
    );

    add(
      AwsDetectiveOrganizationAdminAccount(
        localName: 'detective_organization_admin_account',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      AwsDetectiveOrganizationConfiguration(
        localName: 'detective_organization_configuration',
        autoEnable: .literal(true),
        graphArn: .literal(arn),
      ),
    );

    add(
      AwsDevicefarmDevicePool(
        localName: 'devicefarm_device_pool',
        name: .literal(leftover),
        projectArn: .literal(arn),
        rule: [DevicefarmDevicePoolRule(attribute: .literal(.arn))],
      ),
    );

    add(
      AwsDevicefarmInstanceProfile(
        localName: 'devicefarm_instance_profile',
        name: .literal(leftover),
      ),
    );

    add(
      AwsDevicefarmNetworkProfile(
        localName: 'devicefarm_network_profile',
        name: .literal(leftover),
        projectArn: .literal(arn),
      ),
    );

    add(
      AwsDevicefarmProject(
        localName: 'devicefarm_project',
        name: .literal(leftover),
      ),
    );

    add(
      AwsDevicefarmTestGridProject(
        localName: 'devicefarm_test_grid_project',
        name: .literal(leftover),
      ),
    );

    add(
      AwsDevicefarmUpload(
        localName: 'devicefarm_upload',
        name: .literal(leftover),
        projectArn: .literal(arn),
        type: .literal(.androidApp),
      ),
    );

    add(
      AwsDevopsguruEventSourcesConfig(
        localName: 'devopsguru_event_sources_config',
        eventSources: [
          DevopsguruEventSourcesConfigEventSources(
            amazonCodeGuruProfiler: [
              DevopsguruEventSourcesConfigAmazonCodeGuruProfiler(
                status: .literal(.enabled),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsDevopsguruNotificationChannel(
        localName: 'devopsguru_notification_channel',
        sns: [DevopsguruNotificationChannelSns(topicArn: .literal(arn))],
      ),
    );

    add(
      AwsDevopsguruResourceCollection(
        localName: 'devopsguru_resource_collection',
        type: .literal(.awsCloudFormation),
      ),
    );

    add(
      AwsDevopsguruServiceIntegration(
        localName: 'devopsguru_service_integration',
        kmsServerSideEncryption: [
          DevopsguruServiceIntegrationKmsServerSideEncryption(
            kmsKeyId: .literal(leftover),
          ),
        ],
        logsAnomalyDetection: [
          DevopsguruServiceIntegrationLogsAnomalyDetection(
            optInStatus: .literal(.enabled),
          ),
        ],
        opsCenter: [
          DevopsguruServiceIntegrationOpsCenter(
            optInStatus: .literal(.enabled),
          ),
        ],
      ),
    );

    add(
      AwsDirectoryServiceConditionalForwarder(
        localName: 'directory_service_conditional_forwarder',
        directoryId: .literal(leftover),
        dnsIps: .literal([leftover]),
        remoteDomainName: .literal('example.com'),
      ),
    );

    add(
      AwsDirectoryServiceDirectory(
        localName: 'directory_service_directory',
        name: .literal('example.com'),
        password: .variable('leftover_secret'),
      ),
    );

    add(
      AwsDirectoryServiceLogSubscription(
        localName: 'directory_service_log_subscription',
        directoryId: .literal(leftover),
        logGroupName: .literal(leftover),
      ),
    );

    add(
      AwsDirectoryServiceRadiusSettings(
        localName: 'directory_service_radius_settings',
        authenticationProtocol: .literal(.pap),
        directoryId: .literal(leftover),
        displayLabel: .literal(leftover),
        radiusPort: .literal(200),
        radiusRetries: .literal(0),
        radiusServers: .literal([leftover]),
        radiusTimeout: .literal(1),
        sharedSecret: .variable('leftover_secret'),
      ),
    );

    add(
      AwsDirectoryServiceRegion(
        localName: 'directory_service_region',
        directoryId: .literal(leftover),
        regionName: .literal('us-east-1'),
        vpcSettings: DirectoryServiceRegionVpcSettings(
          subnetIds: .literal([.literal(leftover)]),
          vpcId: .literal('vpc-0123456789abcdef0'),
        ),
      ),
    );

    add(
      AwsDirectoryServiceSharedDirectory(
        localName: 'directory_service_shared_directory',
        directoryId: .literal(leftover),
        target: DirectoryServiceSharedDirectoryTarget(id: .literal(leftover)),
      ),
    );

    add(
      AwsDirectoryServiceSharedDirectoryAccepter(
        localName: 'directory_service_shared_directory_accepter',
        sharedDirectoryId: .literal(leftover),
      ),
    );

    add(
      AwsDirectoryServiceTrust(
        localName: 'directory_service_trust',
        directoryId: .literal('d-1234567890'),
        remoteDomainName: .literal('example.com'),
        trustDirection: .literal(.twoWay),
        trustPassword: .literal(leftover),
      ),
    );

    add(
      AwsDlmLifecyclePolicy(
        localName: 'dlm_lifecycle_policy',
        description: .literal(leftover),
        executionRoleArn: .literal(arn),
        policyDetails: DlmLifecyclePolicyDetails(copyTags: .literal(true)),
        defaultPolicy: .literal(.volume),
      ),
    );

    add(
      AwsDmsCertificate(
        localName: 'dms_certificate',
        certificateId: .literal(leftover),
        content: .certificatePem(.variable('leftover_secret')),
      ),
    );

    add(
      AwsDmsDataProvider(
        localName: 'dms_data_provider',
        engine: .literal(.aurora),
        settings: [
          DmsDataProviderSettings(
            docDbSettings: [
              DmsDataProviderDocDbSettings(certificateArn: .literal(arn)),
            ],
          ),
        ],
      ),
    );

    add(
      AwsDmsEndpoint(
        localName: 'dms_endpoint',
        endpointId: .literal(leftover),
        endpointType: .literal(.source),
        engineName: .literal(.aurora),
      ),
    );

    add(
      AwsDmsEventSubscription(
        localName: 'dms_event_subscription',
        eventCategories: .literal([leftover]),
        name: .literal(leftover),
        snsTopicArn: .literal(arn),
        sourceType: .literal(.replicationInstance),
      ),
    );

    add(AwsDmsInstanceProfile(localName: 'dms_instance_profile'));

    add(
      AwsDmsMigrationProject(
        localName: 'dms_migration_project',
        instanceProfileArn: .literal(arn),
        sourceDataProviderDescriptor: [
          DmsMigrationProjectSourceDataProviderDescriptor(
            dataProviderArn: .literal(arn),
          ),
        ],
        targetDataProviderDescriptor: [
          DmsMigrationProjectTargetDataProviderDescriptor(
            dataProviderArn: .literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsDmsReplicationConfig(
        localName: 'dms_replication_config',
        replicationConfigIdentifier: .literal(leftover),
        replicationType: .literal(.fullLoad),
        sourceEndpointArn: .literal(arn),
        tableMappings: .literal(policy),
        targetEndpointArn: .literal(arn),
        computeConfig: DmsReplicationConfigComputeConfig(
          replicationSubnetGroupId: .literal(leftover),
        ),
      ),
    );

    add(
      AwsDmsReplicationInstance(
        localName: 'dms_replication_instance',
        replicationInstanceClass: .literal(leftover),
        replicationInstanceId: .literal(leftover),
      ),
    );

    add(
      AwsDmsReplicationSubnetGroup(
        localName: 'dms_replication_subnet_group',
        replicationSubnetGroupDescription: .literal(leftover),
        replicationSubnetGroupId: .literal(leftover),
        subnetIds: .literal([.literal(leftover), .literal('leftover1')]),
      ),
    );

    add(
      AwsDmsReplicationTask(
        localName: 'dms_replication_task',
        migrationType: .literal(.fullLoad),
        replicationInstanceArn: .literal(arn),
        replicationTaskId: .literal(leftover),
        sourceEndpointArn: .literal(arn),
        tableMappings: .literal(policy),
        targetEndpointArn: .literal(arn),
      ),
    );

    add(
      AwsDmsS3Endpoint(
        localName: 'dms_s3_endpoint',
        bucketName: .literal(leftover),
        endpointId: .literal(leftover),
        endpointType: .literal(.source),
        serviceAccessRoleArn: .literal(arn),
      ),
    );

    add(AwsDocdbCluster(localName: 'docdb_cluster'));

    add(
      AwsDocdbClusterInstance(
        localName: 'docdb_cluster_instance',
        clusterIdentifier: .literal(leftover),
        instanceClass: .literal(leftover),
      ),
    );

    add(
      AwsDocdbClusterParameterGroup(
        localName: 'docdb_cluster_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsDocdbClusterSnapshot(
        localName: 'docdb_cluster_snapshot',
        dbClusterIdentifier: .literal(leftover),
        dbClusterSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDocdbEventSubscription(
        localName: 'docdb_event_subscription',
        snsTopicArn: .literal(arn),
      ),
    );

    add(
      AwsDocdbGlobalCluster(
        localName: 'docdb_global_cluster',
        source: .engine(.literal(.docdb)),
        globalClusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDocdbSubnetGroup(
        localName: 'docdb_subnet_group',
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsDocdbelasticCluster(
        localName: 'docdbelastic_cluster',
        adminUserName: .literal(leftover),
        adminUserPassword: .variable('leftover_secret'),
        authType: .literal(.plainText),
        name: .literal(leftover),
        shardCapacity: .literal(200),
        shardCount: .literal(1),
      ),
    );

    add(
      AwsDrsReplicationConfigurationTemplate(
        localName: 'drs_replication_configuration_template',
        associateDefaultSecurityGroup: .literal(true),
        bandwidthThrottling: .literal(200),
        createPublicIp: .literal(true),
        dataPlaneRouting: .literal(.privateIp),
        defaultLargeStagingDiskType: .literal(.gp2),
        ebsEncryption: .literal(.defaultCase),
        replicationServerInstanceType: .literal(leftover),
        replicationServersSecurityGroupsIds: .literal([leftover]),
        stagingAreaSubnetId: .literal(leftover),
        stagingAreaTags: .literal({'k': leftover}),
        useDedicatedReplicationServer: .literal(true),
      ),
    );

    add(AwsDsqlCluster(localName: 'dsql_cluster'));

    add(
      AwsDsqlClusterPeering(
        localName: 'dsql_cluster_peering',
        clusters: .literal([leftover]),
        identifier: .literal(leftover),
        witnessRegion: .literal('us-east-1'),
      ),
    );

    add(
      AwsDsqlClusterPolicy(
        localName: 'dsql_cluster_policy',
        identifier: .literal('abcdefghijklmnopqrstuvwxyz'),
        policy: .literal(policy),
      ),
    );

    add(
      AwsDxBgpPeer(
        localName: 'dx_bgp_peer',
        addressFamily: .literal(.ipv4),
        virtualInterfaceId: .literal(leftover),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDxConnection(
        localName: 'dx_connection',
        bandwidth: .literal('1Gbps'),
        location: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDxConnectionAssociation(
        localName: 'dx_connection_association',
        connectionId: .literal(leftover),
        lagId: .literal(leftover),
      ),
    );

    add(
      AwsDxConnectionConfirmation(
        localName: 'dx_connection_confirmation',
        connectionId: .literal(leftover),
      ),
    );

    add(
      AwsDxGateway(
        localName: 'dx_gateway',
        amazonSideAsn: .literal('64512'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDxGatewayAssociation(
        localName: 'dx_gateway_association',
        dxGatewayId: .literal(leftover),
        associatedGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsDxGatewayAssociationProposal(
        localName: 'dx_gateway_association_proposal',
        associatedGatewayId: .literal(leftover),
        dxGatewayId: .literal(leftover),
        dxGatewayOwnerAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsDxHostedConnection(
        localName: 'dx_hosted_connection',
        bandwidth: .literal('1Gbps'),
        connectionId: .literal(leftover),
        name: .literal(leftover),
        ownerAccountId: .literal('123456789012'),
        vlan: .literal(200),
      ),
    );

    add(
      AwsDxHostedPrivateVirtualInterface(
        localName: 'dx_hosted_private_virtual_interface',
        addressFamily: .literal(.ipv4),
        connectionId: .literal(leftover),
        name: .literal(leftover),
        ownerAccountId: .literal('123456789012'),
        vlan: .literal(200),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDxHostedPrivateVirtualInterfaceAccepter(
        localName: 'dx_hosted_private_virtual_interface_accepter',
        gatewayId: .dxGatewayId(.literal(leftover)),
        virtualInterfaceId: .literal(leftover),
      ),
    );

    add(
      AwsDxHostedPublicVirtualInterface(
        localName: 'dx_hosted_public_virtual_interface',
        addressFamily: .literal(.ipv4),
        connectionId: .literal(leftover),
        name: .literal(leftover),
        ownerAccountId: .literal('123456789012'),
        routeFilterPrefixes: .literal([leftover]),
        vlan: .literal(200),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDxHostedPublicVirtualInterfaceAccepter(
        localName: 'dx_hosted_public_virtual_interface_accepter',
        virtualInterfaceId: .literal(leftover),
      ),
    );

    add(
      AwsDxHostedTransitVirtualInterface(
        localName: 'dx_hosted_transit_virtual_interface',
        addressFamily: .literal(.ipv4),
        connectionId: .literal(leftover),
        name: .literal(leftover),
        ownerAccountId: .literal('123456789012'),
        vlan: .literal(200),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDxHostedTransitVirtualInterfaceAccepter(
        localName: 'dx_hosted_transit_virtual_interface_accepter',
        dxGatewayId: .literal(leftover),
        virtualInterfaceId: .literal(leftover),
      ),
    );

    add(
      AwsDxLag(
        localName: 'dx_lag',
        connectionsBandwidth: .literal('1Gbps'),
        location: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDxMacsecKeyAssociation(
        localName: 'dx_macsec_key_association',
        connectionId: .literal(leftover),
        secretArn: .literal(
          'arn:aws:secretsmanager:us-east-1:123456789012:secret:leftover',
        ),
      ),
    );

    add(
      AwsDxPrivateVirtualInterface(
        localName: 'dx_private_virtual_interface',
        addressFamily: .literal(.ipv4),
        connectionId: .literal(leftover),
        gatewayId: .dxGatewayId(.literal(leftover)),
        name: .literal(leftover),
        vlan: .literal(200),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDxPublicVirtualInterface(
        localName: 'dx_public_virtual_interface',
        addressFamily: .literal(.ipv4),
        bgpAsn: .literal(200),
        connectionId: .literal(leftover),
        name: .literal(leftover),
        routeFilterPrefixes: .literal([leftover]),
        vlan: .literal(200),
      ),
    );

    add(
      AwsDxTransitVirtualInterface(
        localName: 'dx_transit_virtual_interface',
        addressFamily: .literal(.ipv4),
        connectionId: .literal(leftover),
        dxGatewayId: .literal(leftover),
        name: .literal(leftover),
        vlan: .literal(200),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDynamodbContributorInsights(
        localName: 'dynamodb_contributor_insights',
        tableName: .literal(leftover),
      ),
    );

    add(
      AwsDynamodbGlobalSecondaryIndex(
        localName: 'dynamodb_global_secondary_index',
        indexName: .literal(leftover),
        tableName: .literal(leftover),
        keySchema: [
          DynamodbGlobalSecondaryIndexKeySchema(
            attributeName: .literal(leftover),
            attributeType: .literal(.s),
            keyType: .literal(.hash),
          ),
        ],
      ),
    );

    add(
      AwsDynamodbGlobalTable(
        localName: 'dynamodb_global_table',
        name: .literal(leftover),
        replica: [DynamodbGlobalTableReplica(regionName: .literal(leftover))],
      ),
    );

    add(
      AwsDynamodbKinesisStreamingDestination(
        localName: 'dynamodb_kinesis_streaming_destination',
        streamArn: .literal(arn),
        tableName: .literal(leftover),
      ),
    );

    add(
      AwsDynamodbResourcePolicy(
        localName: 'dynamodb_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsDynamodbTable(localName: 'dynamodb_table', name: .literal(leftover)),
    );

    add(
      AwsDynamodbTableExport(
        localName: 'dynamodb_table_export',
        s3Bucket: .literal(leftover),
        tableArn: .literal(arn),
      ),
    );

    add(
      AwsDynamodbTableItem(
        localName: 'dynamodb_table_item',
        hashKey: .literal(leftover),
        item: .literal('{"pk": {"S": "leftover"}}'),
        tableName: .literal(leftover),
      ),
    );

    add(
      AwsDynamodbTableReplica(
        localName: 'dynamodb_table_replica',
        globalTableArn: .literal(arn),
      ),
    );

    add(
      AwsDynamodbTag(
        localName: 'dynamodb_tag',
        key: .literal(leftover),
        resourceArn: .literal(arn),
        value: .literal(leftover),
      ),
    );

    add(
      AwsEbsDefaultKmsKey(
        localName: 'ebs_default_kms_key',
        keyArn: .literal(arn),
      ),
    );

    add(AwsEbsEncryptionByDefault(localName: 'ebs_encryption_by_default'));

    add(
      AwsEbsFastSnapshotRestore(
        localName: 'ebs_fast_snapshot_restore',
        availabilityZone: .literal('us-east-1a'),
        snapshotId: .literal(leftover),
      ),
    );

    add(
      AwsEbsSnapshot(localName: 'ebs_snapshot', volumeId: .literal(leftover)),
    );

    add(
      AwsEbsSnapshotBlockPublicAccess(
        localName: 'ebs_snapshot_block_public_access',
        state: .literal(.blockAllSharing),
      ),
    );

    add(
      AwsEbsSnapshotCopy(
        localName: 'ebs_snapshot_copy',
        sourceRegion: .literal('us-east-1'),
        sourceSnapshotId: .literal(leftover),
      ),
    );

    add(
      AwsEbsSnapshotImport(
        localName: 'ebs_snapshot_import',
        diskContainer: EbsSnapshotImportDiskContainer(
          format: .literal(.vmdk),
          source: .url(.literal('https://example.com')),
        ),
      ),
    );

    add(
      AwsEbsVolume(
        localName: 'ebs_volume',
        availabilityZone: .literal('us-east-1a'),
        size: .literal(200),
        snapshotId: .literal(leftover),
      ),
    );

    add(
      AwsEbsVolumeCopy(
        localName: 'ebs_volume_copy',
        sourceVolumeId: .literal(leftover),
      ),
    );

    add(
      AwsEc2AllowedImagesSettings(
        localName: 'ec2_allowed_images_settings',
        state: .literal(.enabled),
      ),
    );

    add(
      AwsEc2AvailabilityZoneGroup(
        localName: 'ec2_availability_zone_group',
        groupName: .literal(leftover),
        optInStatus: .literal(.optedIn),
      ),
    );

    add(
      AwsEc2CapacityBlockReservation(
        localName: 'ec2_capacity_block_reservation',
        capacityBlockOfferingId: .literal(leftover),
        instancePlatform: .literal(.linuxUnix),
      ),
    );

    add(
      AwsEc2CapacityReservation(
        localName: 'ec2_capacity_reservation',
        availabilityZone: .literal('us-east-1a'),
        instanceCount: .literal(200),
        instancePlatform: .literal(.linuxUnix),
        instanceType: .literal(leftover),
      ),
    );

    add(
      AwsEc2CarrierGateway(
        localName: 'ec2_carrier_gateway',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2ClientVpnAuthorizationRule(
        localName: 'ec2_client_vpn_authorization_rule',
        audience: .accessGroupId(.literal(leftover)),
        clientVpnEndpointId: .literal(leftover),
        targetNetworkCidr: .literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsEc2ClientVpnEndpoint(
        localName: 'ec2_client_vpn_endpoint',
        serverCertificateArn: .literal(arn),
        authenticationOptions: [
          Ec2ClientVpnEndpointAuthenticationOptions(
            type: .literal(.certificateAuthentication),
          ),
        ],
        connectionLogOptions: Ec2ClientVpnEndpointConnectionLogOptions(
          enabled: .literal(true),
        ),
      ),
    );

    add(
      AwsEc2ClientVpnNetworkAssociation(
        localName: 'ec2_client_vpn_network_association',
        clientVpnEndpointId: .literal(leftover),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2ClientVpnRoute(
        localName: 'ec2_client_vpn_route',
        clientVpnEndpointId: .literal(leftover),
        destinationCidrBlock: .literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsEc2DefaultCreditSpecification(
        localName: 'ec2_default_credit_specification',
        cpuCredits: .literal(.standard),
        instanceFamily: .literal(.t2),
      ),
    );

    add(
      AwsEc2Fleet(
        localName: 'ec2_fleet',
        launchTemplateConfig: [
          Ec2FleetLaunchTemplateConfig(
            launchTemplateSpecification: Ec2FleetLaunchTemplateSpecification(
              version: .literal(leftover),
            ),
          ),
        ],
        targetCapacitySpecification: Ec2FleetTargetCapacitySpecification(
          defaultTargetCapacityType: .literal(.spot),
          totalTargetCapacity: .literal(200),
        ),
      ),
    );

    add(
      AwsEc2Host(
        localName: 'ec2_host',
        availabilityZone: .literal('us-east-1a'),
        instance: .instanceFamily(.literal(leftover)),
      ),
    );

    add(
      AwsEc2ImageBlockPublicAccess(
        localName: 'ec2_image_block_public_access',
        state: .literal(.blockNewSharing),
      ),
    );

    add(
      AwsEc2InstanceConnectEndpoint(
        localName: 'ec2_instance_connect_endpoint',
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2InstanceMetadataDefaults(
        localName: 'ec2_instance_metadata_defaults',
        httpEndpoint: .literal('disabled'),
        httpPutResponseHopLimit: .literal(1),
      ),
    );

    add(
      AwsEc2InstanceState(
        localName: 'ec2_instance_state',
        instanceId: .literal('i-0123456789abcdef0'),
        state: .literal(.running),
      ),
    );

    add(
      AwsEc2LocalGatewayRoute(
        localName: 'ec2_local_gateway_route',
        destinationCidrBlock: .literal('10.0.0.0/16'),
        localGatewayRouteTableId: .literal(leftover),
        localGatewayVirtualInterfaceGroupId: .literal(leftover),
      ),
    );

    add(
      AwsEc2LocalGatewayRouteTable(
        localName: 'ec2_local_gateway_route_table',
        localGatewayId: .literal(leftover),
        mode: .literal(.directVpcRouting),
      ),
    );

    add(
      AwsEc2LocalGatewayRouteTableVirtualInterfaceGroupAssociation(
        localName: 'ec2_local_gateway_route_table_virtual_interface_',
        localGatewayRouteTableId: .literal(leftover),
        localGatewayVirtualInterfaceGroupId: .literal(leftover),
      ),
    );

    add(
      AwsEc2LocalGatewayRouteTableVpcAssociation(
        localName: 'ec2_local_gateway_route_table_vpc_association',
        localGatewayRouteTableId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2ManagedPrefixList(
        localName: 'ec2_managed_prefix_list',
        addressFamily: .literal(.ipv4),
        maxEntries: .literal(200),
        name: .literal(leftover),
      ),
    );

    add(
      AwsEc2ManagedPrefixListEntry(
        localName: 'ec2_managed_prefix_list_entry',
        cidr: .literal('10.0.0.0/16'),
        prefixListId: .literal(leftover),
      ),
    );

    add(
      AwsEc2NetworkInsightsAccessScope(
        localName: 'ec2_network_insights_access_scope',
      ),
    );

    add(
      AwsEc2NetworkInsightsAnalysis(
        localName: 'ec2_network_insights_analysis',
        networkInsightsPathId: .literal(leftover),
      ),
    );

    add(
      AwsEc2NetworkInsightsPath(
        localName: 'ec2_network_insights_path',
        protocol: .literal(.tcp),
        source: .literal(leftover),
      ),
    );

    add(
      AwsEc2SecondaryNetwork(
        localName: 'ec2_secondary_network',
        ipv4CidrBlock: .literal('10.0.0.0/16'),
        networkType: .literal(.rdma),
      ),
    );

    add(
      AwsEc2SecondarySubnet(
        localName: 'ec2_secondary_subnet',
        ipv4CidrBlock: .literal('10.0.0.0/16'),
        secondaryNetworkId: .literal(leftover),
      ),
    );

    add(AwsEc2SerialConsoleAccess(localName: 'ec2_serial_console_access'));

    add(
      AwsEc2SubnetCidrReservation(
        localName: 'ec2_subnet_cidr_reservation',
        cidrBlock: .literal('10.0.0.0/16'),
        reservationType: .literal(.prefix),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2Tag(
        localName: 'ec2_tag',
        key: .literal(leftover),
        resourceId: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(AwsEc2TrafficMirrorFilter(localName: 'ec2_traffic_mirror_filter'));

    add(
      AwsEc2TrafficMirrorFilterRule(
        localName: 'ec2_traffic_mirror_filter_rule',
        destinationCidrBlock: .literal('10.0.0.0/16'),
        ruleAction: .literal(.accept),
        ruleNumber: .literal(200),
        sourceCidrBlock: .literal('10.0.0.0/16'),
        trafficDirection: .literal(.ingress),
        trafficMirrorFilterId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TrafficMirrorSession(
        localName: 'ec2_traffic_mirror_session',
        networkInterfaceId: .literal(leftover),
        sessionNumber: .literal(200),
        trafficMirrorFilterId: .literal(leftover),
        trafficMirrorTargetId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TrafficMirrorTarget(
        localName: 'ec2_traffic_mirror_target',
        destination: .gatewayLoadBalancerEndpointId(.literal(leftover)),
      ),
    );

    add(AwsEc2TransitGateway(localName: 'ec2_transit_gateway'));

    add(
      AwsEc2TransitGatewayConnect(
        localName: 'ec2_transit_gateway_connect',
        transitGatewayId: .literal(leftover),
        transportAttachmentId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayConnectPeer(
        localName: 'ec2_transit_gateway_connect_peer',
        insideCidrBlocks: .literal(['169.254.100.0/29']),
        peerAddress: .literal('10.0.0.1'),
        transitGatewayAttachmentId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayDefaultRouteTableAssociation(
        localName: 'ec2_transit_gateway_default_route_table_associat',
        transitGatewayId: .literal(leftover),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayDefaultRouteTablePropagation(
        localName: 'ec2_transit_gateway_default_route_table_propagat',
        transitGatewayId: .literal(leftover),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMeteringPolicy(
        localName: 'ec2_transit_gateway_metering_policy',
        transitGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMeteringPolicyEntry(
        localName: 'ec2_transit_gateway_metering_policy_entry',
        meteredAccount: .literal(.sourceAttachmentOwner),
        policyRuleNumber: .literal(200),
        transitGatewayMeteringPolicyId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastDomain(
        localName: 'ec2_transit_gateway_multicast_domain',
        transitGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastDomainAssociation(
        localName: 'ec2_transit_gateway_multicast_domain_association',
        subnetId: .literal('subnet-0123456789abcdef0'),
        transitGatewayAttachmentId: .literal(leftover),
        transitGatewayMulticastDomainId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastGroupMember(
        localName: 'ec2_transit_gateway_multicast_group_member',
        groupIpAddress: .literal('224.0.0.1'),
        networkInterfaceId: .literal(leftover),
        transitGatewayMulticastDomainId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastGroupSource(
        localName: 'ec2_transit_gateway_multicast_group_source',
        groupIpAddress: .literal('224.0.0.1'),
        networkInterfaceId: .literal(leftover),
        transitGatewayMulticastDomainId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPeeringAttachment(
        localName: 'ec2_transit_gateway_peering_attachment',
        peerRegion: .literal('us-east-1'),
        peerTransitGatewayId: .literal(leftover),
        transitGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPeeringAttachmentAccepter(
        localName: 'ec2_transit_gateway_peering_attachment_accepter',
        transitGatewayAttachmentId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPolicyTable(
        localName: 'ec2_transit_gateway_policy_table',
        transitGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPolicyTableAssociation(
        localName: 'ec2_transit_gateway_policy_table_association',
        transitGatewayAttachmentId: .literal(leftover),
        transitGatewayPolicyTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPolicyTableEntry(
        localName: 'ec2_transit_gateway_policy_table_entry',
        policyRuleNumber: .literal(leftover),
        targetRouteTableId: .literal(leftover),
        transitGatewayPolicyTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPrefixListReference(
        localName: 'ec2_transit_gateway_prefix_list_reference',
        prefixListId: .literal(leftover),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRoute(
        localName: 'ec2_transit_gateway_route',
        destinationCidrBlock: .literal('10.0.0.0/16'),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRouteTable(
        localName: 'ec2_transit_gateway_route_table',
        transitGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRouteTableAssociation(
        localName: 'ec2_transit_gateway_route_table_association',
        transitGatewayAttachmentId: .literal(leftover),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRouteTablePropagation(
        localName: 'ec2_transit_gateway_route_table_propagation',
        transitGatewayAttachmentId: .literal(leftover),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayVpcAttachment(
        localName: 'ec2_transit_gateway_vpc_attachment',
        subnetIds: .literal([.literal(leftover)]),
        transitGatewayId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2TransitGatewayVpcAttachmentAccepter(
        localName: 'ec2_transit_gateway_vpc_attachment_accepter',
        transitGatewayAttachmentId: .literal(leftover),
      ),
    );

    add(
      AwsEcrAccountSetting(
        localName: 'ecr_account_setting',
        name: .literal(.basicScanTypeVersion),
        value: .literal(.awsNative),
      ),
    );

    add(
      AwsEcrPullThroughCacheRule(
        localName: 'ecr_pull_through_cache_rule',
        ecrRepositoryPrefix: .literal(leftover),
        upstreamRegistryUrl: .literal('https://example.com'),
      ),
    );

    add(
      AwsEcrPullTimeUpdateExclusion(
        localName: 'ecr_pull_time_update_exclusion',
        principalArn: .literal(arn),
      ),
    );

    add(
      AwsEcrRegistryPolicy(
        localName: 'ecr_registry_policy',
        policy: .literal(policy),
      ),
    );

    add(
      AwsEcrRegistryScanningConfiguration(
        localName: 'ecr_registry_scanning_configuration',
        scanType: .literal(.basic),
      ),
    );

    add(
      AwsEcrReplicationConfiguration(
        localName: 'ecr_replication_configuration',
      ),
    );

    add(
      AwsEcrRepositoryCreationTemplate(
        localName: 'ecr_repository_creation_template',
        appliedFor: [.literal(.replication)],
        prefix: .literal(leftover),
      ),
    );

    add(
      AwsEcrRepositoryPolicy(
        localName: 'ecr_repository_policy',
        policy: .literal(policy),
        repository: .literal(leftover),
      ),
    );

    add(
      AwsEcrpublicRepository(
        localName: 'ecrpublic_repository',
        repositoryName: .literal(leftover),
      ),
    );

    add(
      AwsEcrpublicRepositoryPolicy(
        localName: 'ecrpublic_repository_policy',
        policy: .literal(policy),
        repositoryName: .literal(leftover),
      ),
    );

    add(
      AwsEcsAccountSettingDefault(
        localName: 'ecs_account_setting_default',
        name: .literal('serviceLongArnFormat'),
        value: .literal(leftover),
      ),
    );

    add(
      AwsEcsCapacityProvider(
        localName: 'ecs_capacity_provider',
        name: .literal(leftover),
      ),
    );

    add(
      AwsEcsClusterCapacityProviders(
        localName: 'ecs_cluster_capacity_providers',
        clusterName: .literal(leftover),
      ),
    );

    add(
      AwsEcsDaemon(
        localName: 'ecs_daemon',
        capacityProviderArns: .literal([arn]),
        daemonTaskDefinitionArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsEcsDaemonTaskDefinition(
        localName: 'ecs_daemon_task_definition',
        family: .literal(leftover),
        containerDefinition: [
          EcsDaemonTaskDefinitionContainerDefinition(image: .literal(leftover)),
        ],
      ),
    );

    add(AwsEcsService(localName: 'ecs_service', name: .literal(leftover)));

    add(
      AwsEcsTag(
        localName: 'ecs_tag',
        key: .literal(leftover),
        resourceArn: .literal(arn),
        value: .literal(leftover),
      ),
    );

    add(
      AwsEcsTaskDefinition(
        localName: 'ecs_task_definition',
        containerDefinitions: .literal(
          '[{"name": "leftover", "image": "public.ecr.aws/nginx/nginx:latest", "essential": true}]',
        ),
        family: .literal(leftover),
      ),
    );

    add(
      AwsEcsTaskSet(
        localName: 'ecs_task_set',
        cluster: .literal(leftover),
        service: .literal(leftover),
        taskDefinition: .literal(leftover),
      ),
    );

    add(
      AwsEfsAccessPoint(
        localName: 'efs_access_point',
        fileSystemId: .literal(leftover),
      ),
    );

    add(
      AwsEfsBackupPolicy(
        localName: 'efs_backup_policy',
        fileSystemId: .literal(leftover),
        backupPolicy: EfsBackupPolicyBackupPolicy(status: .literal(.disabled)),
      ),
    );

    add(AwsEfsFileSystem(localName: 'efs_file_system'));

    add(
      AwsEfsFileSystemPolicy(
        localName: 'efs_file_system_policy',
        fileSystemId: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsEfsMountTarget(
        localName: 'efs_mount_target',
        fileSystemId: .literal(leftover),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEfsReplicationConfiguration(
        localName: 'efs_replication_configuration',
        sourceFileSystemId: .literal(leftover),
        destination: EfsReplicationConfigurationDestination(
          availabilityZoneName: .literal('us-east-1a'),
        ),
      ),
    );

    add(
      AwsEgressOnlyInternetGateway(
        localName: 'egress_only_internet_gateway',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(AwsEip(localName: 'eip'));

    add(
      AwsEipAssociation(
        localName: 'eip_association',
        target: .instanceId(.literal('i-0123456789abcdef0')),
      ),
    );

    add(
      AwsEipDomainName(
        localName: 'eip_domain_name',
        allocationId: .literal(leftover),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsEksAccessEntry(
        localName: 'eks_access_entry',
        clusterName: .literal(leftover),
        principalArn: .literal(arn),
      ),
    );

    add(
      AwsEksAccessPolicyAssociation(
        localName: 'eks_access_policy_association',
        clusterName: .literal(leftover),
        policyArn: .literal(arn),
        principalArn: .literal(arn),
        accessScope: EksAccessPolicyAssociationAccessScope(
          type: .literal(leftover),
        ),
      ),
    );

    add(
      AwsEksAddon(
        localName: 'eks_addon',
        addonName: .literal(leftover),
        clusterName: .literal(leftover),
      ),
    );

    add(
      AwsEksCapability(
        localName: 'eks_capability',
        capabilityName: .literal(leftover),
        clusterName: .literal(leftover),
        deletePropagationPolicy: .literal(.retain),
        roleArn: .literal(arn),
        type: .literal(.ack),
      ),
    );

    add(
      AwsEksCluster(
        localName: 'eks_cluster',
        name: .literal(leftover),
        roleArn: .literal(arn),
        vpcConfig: EksClusterVpcConfig(
          subnetIds: .literal([.literal(leftover)]),
        ),
      ),
    );

    add(
      AwsEksFargateProfile(
        localName: 'eks_fargate_profile',
        clusterName: .literal(leftover),
        fargateProfileName: .literal(leftover),
        podExecutionRoleArn: .literal(arn),
        selector: [EksFargateProfileSelector(namespace: .literal(leftover))],
      ),
    );

    add(
      AwsEksIdentityProviderConfig(
        localName: 'eks_identity_provider_config',
        clusterName: .literal(leftover),
        oidc: EksIdentityProviderConfigOidc(
          clientId: .literal(leftover),
          identityProviderConfigName: .literal(leftover),
          issuerUrl: .literal('https://example.com'),
        ),
      ),
    );

    add(
      AwsEksNodeGroup(
        localName: 'eks_node_group',
        clusterName: .literal(leftover),
        nodeRoleArn: .literal(arn),
        subnetIds: .literal([.literal(leftover)]),
        scalingConfig: EksNodeGroupScalingConfig(
          desiredSize: .literal(200),
          maxSize: .literal(200),
          minSize: .literal(200),
        ),
      ),
    );

    add(
      AwsEksPodIdentityAssociation(
        localName: 'eks_pod_identity_association',
        clusterName: .literal(leftover),
        namespace: .literal(leftover),
        roleArn: .literal(arn),
        serviceAccount: .literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkApplication(
        localName: 'elastic_beanstalk_application',
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkApplicationVersion(
        localName: 'elastic_beanstalk_application_version',
        application: .literal(leftover),
        bucket: .literal(leftover),
        key: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkConfigurationTemplate(
        localName: 'elastic_beanstalk_configuration_template',
        application: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkEnvironment(
        localName: 'elastic_beanstalk_environment',
        application: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheCluster(
        localName: 'elasticache_cluster',
        clusterId: .literal(leftover),
        source: .engine(.literal(.memcached)),
      ),
    );

    add(
      AwsElasticacheGlobalReplicationGroup(
        localName: 'elasticache_global_replication_group',
        globalReplicationGroupIdSuffix: .literal(leftover),
        primaryReplicationGroupId: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheParameterGroup(
        localName: 'elasticache_parameter_group',
        family: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheReplicationGroup(
        localName: 'elasticache_replication_group',
        description: .literal(leftover),
        replicationGroupId: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheReservedCacheNode(
        localName: 'elasticache_reserved_cache_node',
        reservedCacheNodesOfferingId: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheServerlessCache(
        localName: 'elasticache_serverless_cache',
        engine: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheSubnetGroup(
        localName: 'elasticache_subnet_group',
        name: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsElasticacheUser(
        localName: 'elasticache_user',
        accessString: .literal(leftover),
        engine: .literal(.redis),
        userId: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheUserGroup(
        localName: 'elasticache_user_group',
        engine: .literal(.redis),
        userGroupId: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheUserGroupAssociation(
        localName: 'elasticache_user_group_association',
        userGroupId: .literal(leftover),
        userId: .literal(leftover),
      ),
    );

    add(
      AwsElasticsearchDomain(
        localName: 'elasticsearch_domain',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsElasticsearchDomainPolicy(
        localName: 'elasticsearch_domain_policy',
        accessPolicies: .literal(policy),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsElasticsearchDomainSamlOptions(
        localName: 'elasticsearch_domain_saml_options',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsElasticsearchVpcEndpoint(
        localName: 'elasticsearch_vpc_endpoint',
        domainArn: .literal(arn),
        vpcOptions: ElasticsearchVpcEndpointVpcOptions(
          subnetIds: .literal([.literal(leftover)]),
        ),
      ),
    );

    add(
      AwsElastictranscoderPipeline(
        localName: 'elastictranscoder_pipeline',
        inputBucket: .literal(leftover),
        role: .literal(arn),
      ),
    );

    add(
      AwsElastictranscoderPreset(
        localName: 'elastictranscoder_preset',
        container: .literal(.flac),
      ),
    );

    add(
      AwsElb(
        localName: 'elb',
        listener: [
          ElbListener(
            instancePort: .literal(200),
            instanceProtocol: .literal('HTTP'),
            lbPort: .literal(200),
            lbProtocol: .literal('HTTP'),
          ),
        ],
      ),
    );

    add(
      AwsElbAttachment(
        localName: 'elb_attachment',
        elb: .literal(leftover),
        instance: .literal(leftover),
      ),
    );

    add(
      AwsEmrBlockPublicAccessConfiguration(
        localName: 'emr_block_public_access_configuration',
        blockPublicSecurityGroupRules: .literal(true),
      ),
    );

    add(
      AwsEmrCluster(
        localName: 'emr_cluster',
        name: .literal(leftover),
        releaseLabel: .literal(leftover),
        serviceRole: .literal(leftover),
      ),
    );

    add(
      AwsEmrInstanceFleet(
        localName: 'emr_instance_fleet',
        clusterId: .literal(leftover),
      ),
    );

    add(
      AwsEmrInstanceGroup(
        localName: 'emr_instance_group',
        clusterId: .literal(leftover),
        instanceType: .literal(leftover),
      ),
    );

    add(
      AwsEmrManagedScalingPolicy(
        localName: 'emr_managed_scaling_policy',
        clusterId: .literal(leftover),
        computeLimits: [
          EmrManagedScalingPolicyComputeLimits(
            maximumCapacityUnits: .literal(200),
            minimumCapacityUnits: .literal(200),
            unitType: .literal(.instancefleetunits),
          ),
        ],
      ),
    );

    add(
      AwsEmrSecurityConfiguration(
        localName: 'emr_security_configuration',
        configuration: .literal(policy),
      ),
    );

    add(
      AwsEmrStudio(
        localName: 'emr_studio',
        authMode: .literal(.sso),
        defaultS3Location: .literal(leftover),
        engineSecurityGroupId: .literal(leftover),
        name: .literal(leftover),
        serviceRole: .literal(arn),
        subnetIds: .literal([.literal(leftover)]),
        vpcId: .literal('vpc-0123456789abcdef0'),
        workspaceSecurityGroupId: .literal(leftover),
      ),
    );

    add(
      AwsEmrStudioSessionMapping(
        localName: 'emr_studio_session_mapping',
        identity: .identityId(.literal(leftover)),
        identityType: .literal(.user),
        sessionPolicyArn: .literal(arn),
        studioId: .literal(leftover),
      ),
    );

    add(
      AwsEmrcontainersJobTemplate(
        localName: 'emrcontainers_job_template',
        name: .literal(leftover),
        jobTemplateData: EmrcontainersJobTemplateData(
          executionRoleArn: .literal(arn),
          releaseLabel: .literal(leftover),
          jobDriver: .sparkSqlJobDriver(
            EmrcontainersJobTemplateSparkSqlJobDriver(
              entryPoint: .literal(leftover),
            ),
          ),
        ),
      ),
    );

    add(
      AwsEmrcontainersVirtualCluster(
        localName: 'emrcontainers_virtual_cluster',
        name: .literal(leftover),
        containerProvider: EmrcontainersVirtualClusterContainerProvider(
          id: .literal(leftover),
          type: .literal(.eks),
          info: EmrcontainersVirtualClusterInfo(
            eksInfo: EmrcontainersVirtualClusterEksInfo(
              namespace: .literal(leftover),
            ),
          ),
        ),
      ),
    );

    add(
      AwsEmrserverlessApplication(
        localName: 'emrserverless_application',
        name: .literal(leftover),
        releaseLabel: .literal(leftover),
        type: .literal(leftover),
      ),
    );

    add(
      AwsEvidentlyFeature(
        localName: 'evidently_feature',
        name: .literal(leftover),
        project: .literal(leftover),
        variations: [
          EvidentlyFeatureVariations(
            name: .literal(leftover),
            value: EvidentlyFeatureValue(boolValue: .literal('true')),
          ),
        ],
      ),
    );

    add(
      AwsEvidentlyLaunch(
        localName: 'evidently_launch',
        name: .literal(leftover),
        project: .literal(leftover),
        groups: [
          EvidentlyLaunchGroups(
            feature: .literal(leftover),
            name: .literal(leftover),
            variation: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsEvidentlyProject(
        localName: 'evidently_project',
        name: .literal(leftover),
      ),
    );

    add(
      AwsEvidentlySegment(
        localName: 'evidently_segment',
        name: .literal(leftover),
        pattern: .literal(policy),
      ),
    );

    add(
      AwsFinspaceKxCluster(
        localName: 'finspace_kx_cluster',
        azMode: .literal(.single),
        environmentId: .literal(leftover),
        name: .literal(leftover),
        releaseLabel: .literal(leftover),
        type: .literal(.hdb),
        vpcConfiguration: FinspaceKxClusterVpcConfiguration(
          ipAddressType: .literal(.ipV4),
          securityGroupIds: .literal([.literal(leftover)]),
          subnetIds: .literal([.literal(leftover)]),
          vpcId: .literal('vpc-0123456789abcdef0'),
        ),
      ),
    );

    add(
      AwsFinspaceKxDatabase(
        localName: 'finspace_kx_database',
        environmentId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxDataview(
        localName: 'finspace_kx_dataview',
        autoUpdate: .literal(true),
        azMode: .literal(.single),
        databaseName: .literal(leftover),
        environmentId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxEnvironment(
        localName: 'finspace_kx_environment',
        kmsKeyId: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxScalingGroup(
        localName: 'finspace_kx_scaling_group',
        availabilityZoneId: .literal('us-east-1a'),
        environmentId: .literal(leftover),
        hostType: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxUser(
        localName: 'finspace_kx_user',
        environmentId: .literal(leftover),
        iamRole: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxVolume(
        localName: 'finspace_kx_volume',
        availabilityZones: .literal(['us-east-1a']),
        azMode: .literal(.single),
        environmentId: .literal(leftover),
        name: .literal(leftover),
        type: .literal(.nas1),
      ),
    );

    add(
      AwsFisExperimentTemplate(
        localName: 'fis_experiment_template',
        description: .literal(leftover),
        roleArn: .literal(arn),
        action: [
          FisExperimentTemplateAction(
            actionId: .literal('aws:ec2:stop-instances'),
            name: .literal(leftover),
          ),
        ],
        stopCondition: [
          FisExperimentTemplateStopCondition(
            source: .literal('aws:cloudwatch:alarm'),
          ),
        ],
      ),
    );

    add(AwsFisSafetyLeverState(localName: 'fis_safety_lever_state'));

    add(
      AwsFisTargetAccountConfiguration(
        localName: 'fis_target_account_configuration',
        accountId: .literal('123456789012'),
        experimentTemplateId: .literal(leftover),
      ),
    );

    add(AwsFlowLog(localName: 'flow_log', source: .eniId(.literal(leftover))));

    add(AwsFmsAdminAccount(localName: 'fms_admin_account'));

    add(
      AwsFmsPolicy(
        localName: 'fms_policy',
        excludeResourceTags: .literal(true),
        name: .literal(leftover),
        securityServicePolicyData: FmsPolicySecurityServicePolicyData(
          type: .literal(leftover),
        ),
      ),
    );

    add(AwsFmsResourceSet(localName: 'fms_resource_set'));

    add(AwsFsxBackup(localName: 'fsx_backup'));

    add(
      AwsFsxDataRepositoryAssociation(
        localName: 'fsx_data_repository_association',
        dataRepositoryPath: .literal('s3://leftover-bucket/leftover'),
        fileSystemId: .literal('fs-0123456789abcdef0'),
        fileSystemPath: .literal('/leftover'),
      ),
    );

    add(
      AwsFsxFileCache(
        localName: 'fsx_file_cache',
        fileCacheType: .literal(.lustre),
        fileCacheTypeVersion: .literal('2.12'),
        storageCapacity: .literal(200),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsFsxLustreFileSystem(
        localName: 'fsx_lustre_file_system',
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsFsxOntapFileSystem(
        localName: 'fsx_ontap_file_system',
        deploymentType: .literal(.multiAz1),
        preferredSubnetId: .literal(leftover),
        storageCapacity: .literal(1024),
        subnetIds: .literal([.literal(leftover)]),
        throughputCapacity: .throughputCapacity(.literal(128)),
      ),
    );

    add(
      AwsFsxOntapStorageVirtualMachine(
        localName: 'fsx_ontap_storage_virtual_machine',
        fileSystemId: .literal('fs-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFsxOntapVolume(
        localName: 'fsx_ontap_volume',
        name: .literal(leftover),
        size: .sizeInBytes(.literal('64512')),
        storageVirtualMachineId: .literal('svm-0123456789abcdef0'),
      ),
    );

    add(
      AwsFsxOpenzfsFileSystem(
        localName: 'fsx_openzfs_file_system',
        deploymentType: .literal(.singleAz1),
        subnetIds: .literal([.literal(leftover)]),
        throughputCapacity: .literal(200),
      ),
    );

    add(
      AwsFsxOpenzfsSnapshot(
        localName: 'fsx_openzfs_snapshot',
        name: .literal(leftover),
        volumeId: .literal('fsvol-0123456789abcdef0'),
      ),
    );

    add(
      AwsFsxOpenzfsVolume(
        localName: 'fsx_openzfs_volume',
        name: .literal(leftover),
        parentVolumeId: .literal('fsvol-0123456789abcdef0'),
      ),
    );

    add(
      AwsFsxS3AccessPointAttachment(
        localName: 'fsx_s3_access_point_attachment',
        name: .literal(leftover),
        type: .literal(.openzfs),
        openzfsConfiguration: [
          FsxS3AccessPointAttachmentOpenzfsConfiguration(
            volumeId: .literal(leftover),
            fileSystemIdentity: [
              FsxS3AccessPointAttachmentFileSystemIdentity(
                type: .literal(.posix),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsFsxWindowsFileSystem(
        localName: 'fsx_windows_file_system',
        subnetIds: .literal([.literal(leftover)]),
        throughputCapacity: .literal(8),
      ),
    );

    add(
      AwsGameliftAlias(
        localName: 'gamelift_alias',
        name: .literal(leftover),
        routingStrategy: GameliftAliasRoutingStrategy(type: .literal(.simple)),
      ),
    );

    add(
      AwsGameliftBuild(
        localName: 'gamelift_build',
        name: .literal(leftover),
        operatingSystem: .literal(.windows2012),
        storageLocation: GameliftBuildStorageLocation(
          bucket: .literal(leftover),
          key: .literal(leftover),
          roleArn: .literal(arn),
        ),
      ),
    );

    add(
      AwsGameliftFleet(
        localName: 'gamelift_fleet',
        artifact: .buildId(.literal(leftover)),
        ec2InstanceType: .literal(.t2Micro),
        name: .literal(leftover),
      ),
    );

    add(
      AwsGameliftGameServerGroup(
        localName: 'gamelift_game_server_group',
        gameServerGroupName: .literal(leftover),
        maxSize: .literal(200),
        minSize: .literal(200),
        roleArn: .literal(arn),
        instanceDefinition: [
          GameliftGameServerGroupInstanceDefinition(
            instanceType: .literal(.c5Large),
          ),
          GameliftGameServerGroupInstanceDefinition(
            instanceType: .literal(.c5Xlarge),
          ),
        ],
        launchTemplate: GameliftGameServerGroupLaunchTemplate(
          identifier: .id(.literal('lt-0123456789abcdef0')),
        ),
      ),
    );

    add(
      AwsGameliftGameSessionQueue(
        localName: 'gamelift_game_session_queue',
        name: .literal(leftover),
      ),
    );

    add(
      AwsGameliftScript(
        localName: 'gamelift_script',
        name: .literal(leftover),
        code: .storageLocation(
          GameliftScriptStorageLocation(
            bucket: .literal(leftover),
            key: .literal(leftover),
            roleArn: .literal(arn),
          ),
        ),
      ),
    );

    add(AwsGlacierVault(localName: 'glacier_vault', name: .literal(leftover)));

    add(
      AwsGlacierVaultLock(
        localName: 'glacier_vault_lock',
        completeLock: .literal(true),
        policy: .literal(policy),
        vaultName: .literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorAccelerator(
        localName: 'globalaccelerator_accelerator',
        name: .literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorCrossAccountAttachment(
        localName: 'globalaccelerator_cross_account_attachment',
        name: .literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorCustomRoutingAccelerator(
        localName: 'globalaccelerator_custom_routing_accelerator',
        name: .literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorCustomRoutingEndpointGroup(
        localName: 'globalaccelerator_custom_routing_endpoint_group',
        listenerArn: .literal(arn),
        destinationConfiguration: [
          GlobalacceleratorCustomRoutingEndpointGroupDestinationConfiguration(
            fromPort: .literal(200),
            protocols: [.literal(.tcp)],
            toPort: .literal(200),
          ),
        ],
      ),
    );

    add(
      AwsGlobalacceleratorCustomRoutingListener(
        localName: 'globalaccelerator_custom_routing_listener',
        acceleratorArn: .literal(arn),
        portRange: [
          GlobalacceleratorCustomRoutingListenerPortRange(
            fromPort: .literal(200),
          ),
        ],
      ),
    );

    add(
      AwsGlobalacceleratorEndpointGroup(
        localName: 'globalaccelerator_endpoint_group',
        listenerArn: .literal(arn),
      ),
    );

    add(
      AwsGlobalacceleratorListener(
        localName: 'globalaccelerator_listener',
        acceleratorArn: .literal(arn),
        protocol: .literal(.tcp),
        portRange: [
          GlobalacceleratorListenerPortRange(fromPort: .literal(200)),
        ],
      ),
    );

    add(
      AwsGlueCatalog(
        localName: 'glue_catalog',
        name: .literal(leftover),
        catalogProperties: [
          GlueCatalogProperties(
            dataLakeAccessProperties: [
              GlueCatalogDataLakeAccessProperties(
                catalogType: .literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsGlueCatalogDatabase(
        localName: 'glue_catalog_database',
        name: .literal(leftover),
      ),
    );

    add(
      AwsGlueCatalogTable(
        localName: 'glue_catalog_table',
        databaseName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsGlueCatalogTableOptimizer(
        localName: 'glue_catalog_table_optimizer',
        catalogId: .literal(leftover),
        databaseName: .literal(leftover),
        tableName: .literal(leftover),
        type: .literal(.compaction),
        configuration: [
          GlueCatalogTableOptimizerConfiguration(
            enabled: .literal(true),
            roleArn: .literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsGlueClassifier(localName: 'glue_classifier', name: .literal(leftover)),
    );

    add(
      AwsGlueConnection(localName: 'glue_connection', name: .literal(leftover)),
    );

    add(
      AwsGlueCrawler(
        localName: 'glue_crawler',
        databaseName: .literal(leftover),
        name: .literal(leftover),
        role: .literal(leftover),
        catalogTarget: [
          GlueCrawlerCatalogTarget(
            databaseName: .literal(leftover),
            tables: .literal([leftover]),
          ),
        ],
        deltaTarget: [
          GlueCrawlerDeltaTarget(
            deltaTables: .literal([leftover]),
            writeManifest: .literal(true),
          ),
        ],
        dynamodbTarget: [GlueCrawlerDynamodbTarget(path: .literal(leftover))],
        hudiTarget: [
          GlueCrawlerHudiTarget(
            maximumTraversalDepth: .literal(1),
            paths: .literal([leftover]),
          ),
        ],
        icebergTarget: [
          GlueCrawlerIcebergTarget(
            maximumTraversalDepth: .literal(1),
            paths: .literal([leftover]),
          ),
        ],
        jdbcTarget: [
          GlueCrawlerJdbcTarget(
            connectionName: .literal(leftover),
            path: .literal(leftover),
          ),
        ],
        mongodbTarget: [
          GlueCrawlerMongodbTarget(
            connectionName: .literal(leftover),
            path: .literal(leftover),
          ),
        ],
        s3Target: [GlueCrawlerS3Target(path: .literal(leftover))],
      ),
    );

    add(
      AwsGlueDataCatalogEncryptionSettings(
        localName: 'glue_data_catalog_encryption_settings',
        dataCatalogEncryptionSettings:
            GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings(
              connectionPasswordEncryption:
                  GlueDataCatalogEncryptionSettingsConnectionPasswordEncryption(
                    returnConnectionPasswordEncrypted: .literal(true),
                  ),
              encryptionAtRest:
                  GlueDataCatalogEncryptionSettingsEncryptionAtRest(
                    catalogEncryptionMode: .literal(.disabled),
                  ),
            ),
      ),
    );

    add(
      AwsGlueDataQualityRuleset(
        localName: 'glue_data_quality_ruleset',
        name: .literal(leftover),
        ruleset: .literal(leftover),
      ),
    );

    add(
      AwsGlueDevEndpoint(
        localName: 'glue_dev_endpoint',
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsGlueJob(
        localName: 'glue_job',
        name: .literal(leftover),
        roleArn: .literal(arn),
        command: GlueJobCommand(scriptLocation: .literal(leftover)),
      ),
    );

    add(
      AwsGlueMlTransform(
        localName: 'glue_ml_transform',
        name: .literal(leftover),
        roleArn: .literal(arn),
        inputRecordTables: [
          GlueMlTransformInputRecordTables(
            databaseName: .literal(leftover),
            tableName: .literal(leftover),
          ),
        ],
        parameters: GlueMlTransformParameters(
          transformType: .literal(.findMatches),
          findMatchesParameters: GlueMlTransformFindMatchesParameters(
            accuracyCostTradeOff: .literal(1),
          ),
        ),
      ),
    );

    add(
      AwsGluePartition(
        localName: 'glue_partition',
        databaseName: .literal(leftover),
        partitionValues: .literal([leftover]),
        tableName: .literal(leftover),
      ),
    );

    add(
      AwsGluePartitionIndex(
        localName: 'glue_partition_index',
        databaseName: .literal(leftover),
        tableName: .literal(leftover),
        partitionIndex: GluePartitionIndexPartitionIndex(
          indexName: .literal(leftover),
        ),
      ),
    );

    add(
      AwsGlueRegistry(
        localName: 'glue_registry',
        registryName: .literal(leftover),
      ),
    );

    add(
      AwsGlueResourcePolicy(
        localName: 'glue_resource_policy',
        policy: .literal(policy),
      ),
    );

    add(
      AwsGlueSchema(
        localName: 'glue_schema',
        compatibility: .literal(.none),
        dataFormat: .literal(.avro),
        schemaDefinition: .literal(leftover),
        schemaName: .literal(leftover),
      ),
    );

    add(
      AwsGlueSecurityConfiguration(
        localName: 'glue_security_configuration',
        name: .literal(leftover),
        encryptionConfiguration:
            GlueSecurityConfigurationEncryptionConfiguration(
              cloudwatchEncryption:
                  GlueSecurityConfigurationCloudwatchEncryption(
                    cloudwatchEncryptionMode: .literal(.disabled),
                  ),
              jobBookmarksEncryption:
                  GlueSecurityConfigurationJobBookmarksEncryption(
                    jobBookmarksEncryptionMode: .literal(.disabled),
                  ),
              s3Encryption: GlueSecurityConfigurationS3Encryption(
                kmsKeyArn: .literal(arn),
              ),
            ),
      ),
    );

    add(
      AwsGlueTrigger(
        localName: 'glue_trigger',
        name: .literal(leftover),
        type: .literal(.scheduled),
        actions: [
          GlueTriggerActions(arguments: .literal({'k': leftover})),
        ],
      ),
    );

    add(
      AwsGlueUserDefinedFunction(
        localName: 'glue_user_defined_function',
        className: .literal(leftover),
        databaseName: .literal(leftover),
        name: .literal(leftover),
        ownerName: .literal(leftover),
        ownerType: .literal(.user),
      ),
    );

    add(AwsGlueWorkflow(localName: 'glue_workflow'));

    add(
      AwsGrafanaLicenseAssociation(
        localName: 'grafana_license_association',
        licenseType: .literal(.enterprise),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsGrafanaRoleAssociation(
        localName: 'grafana_role_association',
        role: .literal(leftover),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspace(
        localName: 'grafana_workspace',
        accountAccessType: .literal(.currentAccount),
        authenticationProviders: [.literal(.awsSso)],
        permissionType: .literal(.customerManaged),
      ),
    );

    add(
      AwsGrafanaWorkspaceApiKey(
        localName: 'grafana_workspace_api_key',
        keyName: .literal(leftover),
        keyRole: .literal(.admin),
        secondsToLive: .literal(200),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspaceSamlConfiguration(
        localName: 'grafana_workspace_saml_configuration',
        editorRoleValues: .literal([leftover]),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspaceServiceAccount(
        localName: 'grafana_workspace_service_account',
        grafanaRole: .literal(.admin),
        name: .literal(leftover),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspaceServiceAccountToken(
        localName: 'grafana_workspace_service_account_token',
        name: .literal(leftover),
        secondsToLive: .literal(200),
        serviceAccountId: .literal('123456789012'),
        workspaceId: .literal(leftover),
      ),
    );

    add(AwsGuarddutyDetector(localName: 'guardduty_detector'));

    add(
      AwsGuarddutyDetectorFeature(
        localName: 'guardduty_detector_feature',
        detectorId: .literal(leftover),
        name: .literal(.s3DataEvents),
        status: .literal(.enabled),
      ),
    );

    add(
      AwsGuarddutyFilter(
        localName: 'guardduty_filter',
        action: .literal(.noop),
        detectorId: .literal(leftover),
        name: .literal(leftover),
        rank: .literal(200),
        findingCriteria: GuarddutyFilterFindingCriteria(
          criterion: [GuarddutyFilterCriterion(field: .literal(leftover))],
        ),
      ),
    );

    add(
      AwsGuarddutyInviteAccepter(
        localName: 'guardduty_invite_accepter',
        detectorId: .literal(leftover),
        masterAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsGuarddutyIpset(
        localName: 'guardduty_ipset',
        activate: .literal(true),
        detectorId: .literal(leftover),
        format: .literal(.txt),
        location: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsGuarddutyMalwareProtectionPlan(
        localName: 'guardduty_malware_protection_plan',
        role: .literal(arn),
        protectedResource: [
          GuarddutyMalwareProtectionPlanProtectedResource(
            s3Bucket: [
              GuarddutyMalwareProtectionPlanS3Bucket(
                bucketName: .literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsGuarddutyMember(
        localName: 'guardduty_member',
        accountId: .literal('123456789012'),
        detectorId: .literal(leftover),
        email: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsGuarddutyMemberDetectorFeature(
        localName: 'guardduty_member_detector_feature',
        accountId: .literal('123456789012'),
        detectorId: .literal(leftover),
        name: .literal(.s3DataEvents),
        status: .literal(.enabled),
      ),
    );

    add(
      AwsGuarddutyOrganizationAdminAccount(
        localName: 'guardduty_organization_admin_account',
        adminAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsGuarddutyOrganizationConfiguration(
        localName: 'guardduty_organization_configuration',
        autoEnableOrganizationMembers: .literal(.newCase),
        detectorId: .literal(leftover),
      ),
    );

    add(
      AwsGuarddutyOrganizationConfigurationFeature(
        localName: 'guardduty_organization_configuration_feature',
        autoEnable: .literal(.newCase),
        detectorId: .literal(leftover),
        name: .literal(.s3DataEvents),
      ),
    );

    add(
      AwsGuarddutyPublishingDestination(
        localName: 'guardduty_publishing_destination',
        destinationArn: .literal(arn),
        detectorId: .literal(leftover),
        kmsKeyArn: .literal(arn),
      ),
    );

    add(
      AwsGuarddutyThreatintelset(
        localName: 'guardduty_threatintelset',
        activate: .literal(true),
        detectorId: .literal(leftover),
        format: .literal(.txt),
        location: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(AwsIamAccessKey(localName: 'iam_access_key', user: .literal(leftover)));

    add(
      AwsIamAccountAlias(
        localName: 'iam_account_alias',
        accountAlias: .literal(leftover),
      ),
    );

    add(AwsIamAccountPasswordPolicy(localName: 'iam_account_password_policy'));

    add(AwsIamGroup(localName: 'iam_group', name: .literal(leftover)));

    add(
      AwsIamGroupMembership(
        localName: 'iam_group_membership',
        group: .literal(leftover),
        name: .literal(leftover),
        users: .literal([leftover]),
      ),
    );

    add(
      AwsIamGroupPoliciesExclusive(
        localName: 'iam_group_policies_exclusive',
        groupName: .literal(leftover),
        policyNames: .literal([leftover]),
      ),
    );

    add(
      AwsIamGroupPolicy(
        localName: 'iam_group_policy',
        group: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsIamGroupPolicyAttachment(
        localName: 'iam_group_policy_attachment',
        group: .literal(leftover),
        policyArn: .literal(arn),
      ),
    );

    add(
      AwsIamGroupPolicyAttachmentsExclusive(
        localName: 'iam_group_policy_attachments_exclusive',
        groupName: .literal(leftover),
        policyArns: .literal([arn]),
      ),
    );

    add(AwsIamInstanceProfile(localName: 'iam_instance_profile'));

    add(
      AwsIamOpenidConnectProvider(
        localName: 'iam_openid_connect_provider',
        clientIdList: .literal([leftover]),
        url: .literal('https://example.com'),
      ),
    );

    add(
      AwsIamOrganizationsFeatures(
        localName: 'iam_organizations_features',
        enabledFeatures: [.literal(.rootcredentialsmanagement)],
      ),
    );

    add(
      AwsIamOutboundWebIdentityFederation(
        localName: 'iam_outbound_web_identity_federation',
      ),
    );

    add(AwsIamPolicy(localName: 'iam_policy', policy: .literal(policy)));

    add(
      AwsIamPolicyAttachment(
        localName: 'iam_policy_attachment',
        name: .literal(leftover),
        policyArn: .literal(arn),
        groups: .literal([leftover]),
        roles: .literal([.literal(leftover)]),
        users: .literal([leftover]),
      ),
    );

    add(
      AwsIamRolePoliciesExclusive(
        localName: 'iam_role_policies_exclusive',
        policyNames: .literal([leftover]),
        roleName: .literal(leftover),
      ),
    );

    add(
      AwsIamRolePolicy(
        localName: 'iam_role_policy',
        policy: .literal(policy),
        role: .literal(leftover),
      ),
    );

    add(
      AwsIamRolePolicyAttachmentsExclusive(
        localName: 'iam_role_policy_attachments_exclusive',
        policyArns: .literal([arn]),
        roleName: .literal(leftover),
      ),
    );

    add(
      AwsIamSamlProvider(
        localName: 'iam_saml_provider',
        name: .literal(leftover),
        samlMetadataDocument: .literal(leftover * 130),
      ),
    );

    add(
      AwsIamSecurityTokenServicePreferences(
        localName: 'iam_security_token_service_preferences',
        globalEndpointTokenVersion: .literal(.v1token),
      ),
    );

    add(
      AwsIamServerCertificate(
        localName: 'iam_server_certificate',
        certificateBody: .literal(leftover),
        privateKey: .variable('leftover_secret'),
      ),
    );

    add(
      AwsIamServiceLinkedRole(
        localName: 'iam_service_linked_role',
        awsServiceName: .literal('elasticbeanstalk.amazonaws.com'),
      ),
    );

    add(
      AwsIamServiceSpecificCredential(
        localName: 'iam_service_specific_credential',
        serviceName: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsIamSigningCertificate(
        localName: 'iam_signing_certificate',
        certificateBody: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(AwsIamUser(localName: 'iam_user', name: .literal(leftover)));

    add(
      AwsIamUserGroupMembership(
        localName: 'iam_user_group_membership',
        groups: .literal([leftover]),
        user: .literal(leftover),
      ),
    );

    add(
      AwsIamUserLoginProfile(
        localName: 'iam_user_login_profile',
        user: .literal(leftover),
      ),
    );

    add(
      AwsIamUserPoliciesExclusive(
        localName: 'iam_user_policies_exclusive',
        policyNames: .literal([leftover]),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsIamUserPolicy(
        localName: 'iam_user_policy',
        policy: .literal(policy),
        user: .literal(leftover),
      ),
    );

    add(
      AwsIamUserPolicyAttachment(
        localName: 'iam_user_policy_attachment',
        policyArn: .literal(arn),
        user: .literal(leftover),
      ),
    );

    add(
      AwsIamUserPolicyAttachmentsExclusive(
        localName: 'iam_user_policy_attachments_exclusive',
        policyArns: .literal([arn]),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsIamUserSshKey(
        localName: 'iam_user_ssh_key',
        encoding: .literal(.ssh),
        publicKey: .literal(leftover),
        username: .literal(leftover),
      ),
    );

    add(
      AwsIamVirtualMfaDevice(
        localName: 'iam_virtual_mfa_device',
        virtualMfaDeviceName: .literal(leftover),
      ),
    );

    add(
      AwsIdentitystoreGroup(
        localName: 'identitystore_group',
        displayName: .literal(leftover),
        identityStoreId: .literal(leftover),
      ),
    );

    add(
      AwsIdentitystoreGroupMembership(
        localName: 'identitystore_group_membership',
        groupId: .literal(leftover),
        identityStoreId: .literal(leftover),
        memberId: .literal(leftover),
      ),
    );

    add(
      AwsIdentitystoreUser(
        localName: 'identitystore_user',
        displayName: .literal(leftover),
        identityStoreId: .literal(leftover),
        userName: .literal(leftover),
        name: IdentitystoreUserName(
          familyName: .literal(leftover),
          givenName: .literal(leftover),
        ),
      ),
    );

    add(
      AwsImagebuilderComponent(
        localName: 'imagebuilder_component',
        document: .data(.literal(leftover)),
        name: .literal(leftover),
        platform: .literal(.windows),
        version: .literal(leftover),
      ),
    );

    add(
      AwsImagebuilderContainerRecipe(
        localName: 'imagebuilder_container_recipe',
        containerType: .literal(.docker),
        dockerfileTemplate: .dockerfileTemplateData(.literal(leftover)),
        name: .literal(leftover),
        parentImage: .literal(leftover),
        version: .literal(leftover),
        component: [
          ImagebuilderContainerRecipeComponent(componentArn: .literal(arn)),
        ],
        targetRepository: ImagebuilderContainerRecipeTargetRepository(
          repositoryName: .literal(leftover),
          service: .literal(.ecr),
        ),
      ),
    );

    add(
      AwsImagebuilderDistributionConfiguration(
        localName: 'imagebuilder_distribution_configuration',
        name: .literal(leftover),
        distribution: [
          ImagebuilderDistributionConfigurationDistribution(
            region: .literal('us-east-1'),
          ),
        ],
      ),
    );

    add(
      AwsImagebuilderImage(
        localName: 'imagebuilder_image',
        recipeArn: .containerRecipeArn(.literal(arn)),
        infrastructureConfigurationArn: .literal(arn),
      ),
    );

    add(
      AwsImagebuilderImagePipeline(
        localName: 'imagebuilder_image_pipeline',
        recipeArn: .containerRecipeArn(
          .literal(
            'arn:aws:imagebuilder:us-east-1:123456789012:container-recipe/leftover/1.0.0',
          ),
        ),
        infrastructureConfigurationArn: .literal(
          'arn:aws:imagebuilder:us-east-1:123456789012:infrastructure-configuration/leftover',
        ),
        name: .literal(leftover),
      ),
    );

    add(
      AwsImagebuilderImageRecipe(
        localName: 'imagebuilder_image_recipe',
        name: .literal(leftover),
        parentImage: .literal(leftover),
        version: .literal(leftover),
        component: [
          ImagebuilderImageRecipeComponent(componentArn: .literal(arn)),
        ],
      ),
    );

    add(
      AwsImagebuilderInfrastructureConfiguration(
        localName: 'imagebuilder_infrastructure_configuration',
        instanceProfileName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsImagebuilderLifecyclePolicy(
        localName: 'imagebuilder_lifecycle_policy',
        executionRole: .literal(arn),
        name: .literal(leftover),
        resourceType: .literal(.amiImage),
        policyDetail: [
          ImagebuilderLifecyclePolicyDetail(
            action: [
              ImagebuilderLifecyclePolicyAction(type: .literal(.delete)),
            ],
            filter: [
              ImagebuilderLifecyclePolicyFilter(
                type: .literal(.age),
                value: .literal(1),
                unit: .literal(.days),
              ),
            ],
          ),
        ],
        resourceSelection: [
          ImagebuilderLifecyclePolicyResourceSelection(
            tagMap: .literal({'k': leftover}),
          ),
        ],
      ),
    );

    add(
      AwsImagebuilderWorkflow(
        localName: 'imagebuilder_workflow',
        document: .data(.literal(leftover)),
        name: .literal(leftover),
        type: .literal(.build),
        version: .literal('1.0.0'),
      ),
    );

    add(
      AwsInspector2DelegatedAdminAccount(
        localName: 'inspector2_delegated_admin_account',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      AwsInspector2Enabler(
        localName: 'inspector2_enabler',
        accountIds: .literal(['123456789012']),
        resourceTypes: [.literal(.ec2)],
      ),
    );

    add(
      AwsInspector2Filter(
        localName: 'inspector2_filter',
        action: .literal(.none),
        name: .literal(leftover),
        filterCriteria: [
          Inspector2FilterCriteria(
            awsAccountId: [
              Inspector2FilterAwsAccountId(
                comparison: .literal(.equals),
                value: .literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsInspector2MemberAssociation(
        localName: 'inspector2_member_association',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      AwsInspector2OrganizationConfiguration(
        localName: 'inspector2_organization_configuration',
        autoEnable: Inspector2OrganizationConfigurationAutoEnable(
          ec2: .literal(true),
          ecr: .literal(true),
        ),
      ),
    );

    add(
      AwsInspectorAssessmentTarget(
        localName: 'inspector_assessment_target',
        name: .literal(leftover),
      ),
    );

    add(
      AwsInspectorAssessmentTemplate(
        localName: 'inspector_assessment_template',
        duration: .literal(200),
        name: .literal(leftover),
        rulesPackageArns: .literal([arn]),
        targetArn: .literal(arn),
      ),
    );

    add(
      AwsInspectorResourceGroup(
        localName: 'inspector_resource_group',
        tags: .literal({'k': leftover}),
      ),
    );

    add(
      AwsInstance(
        localName: 'instance',
        instanceType: .literal(leftover),
        ami: .literal(leftover),
        launchTemplate: InstanceLaunchTemplate(
          identifier: .id(.literal('lt-0123456789abcdef0')),
        ),
      ),
    );

    add(AwsInternetGateway(localName: 'internet_gateway'));

    add(
      AwsInternetGatewayAttachment(
        localName: 'internet_gateway_attachment',
        internetGatewayId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsInternetmonitorMonitor(
        localName: 'internetmonitor_monitor',
        monitorName: .literal(leftover),
        maxCityNetworksToMonitor: .literal(200),
        trafficPercentageToMonitor: .literal(1),
      ),
    );

    add(
      AwsInvoicingInvoiceUnit(
        localName: 'invoicing_invoice_unit',
        invoiceReceiver: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsIotAuthorizer(
        localName: 'iot_authorizer',
        authorizerFunctionArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsIotBillingGroup(
        localName: 'iot_billing_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsIotCaCertificate(
        localName: 'iot_ca_certificate',
        active: .literal(true),
        allowAutoRegistration: .literal(true),
        caCertificatePem: .variable('leftover_secret'),
      ),
    );

    add(
      AwsIotCertificate(localName: 'iot_certificate', active: .literal(true)),
    );

    add(
      AwsIotDomainConfiguration(
        localName: 'iot_domain_configuration',
        name: .literal(leftover),
      ),
    );

    add(
      AwsIotEventConfigurations(
        localName: 'iot_event_configurations',
        eventConfigurations: .literal({'THING': true}),
      ),
    );

    add(
      AwsIotIndexingConfiguration(
        localName: 'iot_indexing_configuration',
        thingGroupIndexingConfiguration:
            IotIndexingConfigurationThingGroupIndexingConfiguration(
              thingGroupIndexingMode: .literal(.off),
            ),
        thingIndexingConfiguration:
            IotIndexingConfigurationThingIndexingConfiguration(
              thingIndexingMode: .literal(.off),
            ),
      ),
    );

    add(
      AwsIotLoggingOptions(
        localName: 'iot_logging_options',
        defaultLogLevel: .literal(.debug),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsIotPolicy(
        localName: 'iot_policy',
        name: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsIotPolicyAttachment(
        localName: 'iot_policy_attachment',
        policy: .literal(policy),
        target: .literal(leftover),
      ),
    );

    add(
      AwsIotProvisioningTemplate(
        localName: 'iot_provisioning_template',
        name: .literal(leftover),
        provisioningRoleArn: .literal(arn),
        templateBody: .literal(policy),
      ),
    );

    add(
      AwsIotRoleAlias(
        localName: 'iot_role_alias',
        alias: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(AwsIotThing(localName: 'iot_thing', name: .literal(leftover)));

    add(
      AwsIotThingGroup(localName: 'iot_thing_group', name: .literal(leftover)),
    );

    add(
      AwsIotThingGroupMembership(
        localName: 'iot_thing_group_membership',
        thingGroupName: .literal(leftover),
        thingName: .literal(leftover),
      ),
    );

    add(
      AwsIotThingPrincipalAttachment(
        localName: 'iot_thing_principal_attachment',
        principal: .literal(leftover),
        thing: .literal(leftover),
      ),
    );

    add(AwsIotThingType(localName: 'iot_thing_type', name: .literal(leftover)));

    add(
      AwsIotTopicRule(
        localName: 'iot_topic_rule',
        enabled: .literal(true),
        name: .literal(leftover),
        sql: .literal(leftover),
        sqlVersion: .literal(leftover),
      ),
    );

    add(
      AwsIotTopicRuleDestination(
        localName: 'iot_topic_rule_destination',
        vpcConfiguration: IotTopicRuleDestinationVpcConfiguration(
          roleArn: .literal(arn),
          subnetIds: .literal([.literal(leftover)]),
          vpcId: .literal('vpc-0123456789abcdef0'),
        ),
      ),
    );

    add(AwsIvsChannel(localName: 'ivs_channel'));

    add(
      AwsIvsPlaybackKeyPair(
        localName: 'ivs_playback_key_pair',
        publicKey: .literal(leftover),
      ),
    );

    add(
      AwsIvsRecordingConfiguration(
        localName: 'ivs_recording_configuration',
        destinationConfiguration:
            IvsRecordingConfigurationDestinationConfiguration(
              s3: IvsRecordingConfigurationS3(bucketName: .literal(leftover)),
            ),
      ),
    );

    add(
      AwsIvschatLoggingConfiguration(
        localName: 'ivschat_logging_configuration',
      ),
    );

    add(AwsIvschatRoom(localName: 'ivschat_room'));

    add(
      AwsKendraDataSource(
        localName: 'kendra_data_source',
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
        name: .literal(leftover),
        type: .literal(.s3),
      ),
    );

    add(
      AwsKendraExperience(
        localName: 'kendra_experience',
        indexId: .literal(leftover),
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsKendraFaq(
        localName: 'kendra_faq',
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
        name: .literal(leftover),
        roleArn: .literal(arn),
        s3Path: KendraFaqS3Path(
          bucket: .literal(leftover),
          key: .literal(leftover),
        ),
      ),
    );

    add(
      AwsKendraIndex(
        localName: 'kendra_index',
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsKendraQuerySuggestionsBlockList(
        localName: 'kendra_query_suggestions_block_list',
        indexId: .literal(leftover),
        name: .literal(leftover),
        roleArn: .literal(arn),
        sourceS3Path: KendraQuerySuggestionsBlockListSourceS3Path(
          bucket: .literal(leftover),
          key: .literal(leftover),
        ),
      ),
    );

    add(
      AwsKendraThesaurus(
        localName: 'kendra_thesaurus',
        indexId: .literal(leftover),
        name: .literal(leftover),
        roleArn: .literal(arn),
        sourceS3Path: KendraThesaurusSourceS3Path(
          bucket: .literal(leftover),
          key: .literal(leftover),
        ),
      ),
    );

    add(AwsKeyPair(localName: 'key_pair', publicKey: .literal(leftover)));

    add(
      AwsKeyspacesKeyspace(
        localName: 'keyspaces_keyspace',
        name: .literal(leftover),
      ),
    );

    add(
      AwsKeyspacesTable(
        localName: 'keyspaces_table',
        keyspaceName: .literal(leftover),
        tableName: .literal(leftover),
        schemaDefinition: KeyspacesTableSchemaDefinition(
          column: [
            KeyspacesTableColumn(
              name: .literal(leftover),
              type: .literal(leftover),
            ),
          ],
          partitionKey: [KeyspacesTablePartitionKey(name: .literal(leftover))],
        ),
      ),
    );

    add(AwsKinesisAccountSettings(localName: 'kinesis_account_settings'));

    add(
      AwsKinesisAnalyticsApplication(
        localName: 'kinesis_analytics_application',
        name: .literal(leftover),
      ),
    );

    add(
      AwsKinesisFirehoseDeliveryStream(
        localName: 'kinesis_firehose_delivery_stream',
        destination: .literal(.elasticsearch),
        name: .literal(leftover),
      ),
    );

    add(
      AwsKinesisResourcePolicy(
        localName: 'kinesis_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsKinesisStream(localName: 'kinesis_stream', name: .literal(leftover)),
    );

    add(
      AwsKinesisStreamConsumer(
        localName: 'kinesis_stream_consumer',
        name: .literal(leftover),
        streamArn: .literal(arn),
      ),
    );

    add(
      AwsKinesisVideoStream(
        localName: 'kinesis_video_stream',
        name: .literal(leftover),
      ),
    );

    add(
      AwsKinesisanalyticsv2Application(
        localName: 'kinesisanalyticsv2_application',
        name: .literal(leftover),
        runtimeEnvironment: .literal(.sql10),
        serviceExecutionRole: .literal(arn),
      ),
    );

    add(
      AwsKinesisanalyticsv2ApplicationSnapshot(
        localName: 'kinesisanalyticsv2_application_snapshot',
        applicationName: .literal(leftover),
        snapshotName: .literal(leftover),
      ),
    );

    add(AwsKmsAlias(localName: 'kms_alias', targetKeyId: .literal(leftover)));

    add(
      AwsKmsCiphertext(
        localName: 'kms_ciphertext',
        keyId: .literal(leftover),
        plaintext: .plaintext(.variable('leftover_secret')),
      ),
    );

    add(
      AwsKmsCustomKeyStore(
        localName: 'kms_custom_key_store',
        customKeyStoreName: .literal(leftover),
      ),
    );

    add(AwsKmsExternalKey(localName: 'kms_external_key'));

    add(
      AwsKmsGrant(
        localName: 'kms_grant',
        granteePrincipal: .literal(arn),
        keyId: .literal(leftover),
        operations: [.literal(.decrypt)],
      ),
    );

    add(AwsKmsKey(localName: 'kms_key'));

    add(
      AwsKmsKeyPolicy(
        localName: 'kms_key_policy',
        keyId: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsKmsReplicaExternalKey(
        localName: 'kms_replica_external_key',
        primaryKeyArn: .literal(arn),
      ),
    );

    add(
      AwsKmsReplicaKey(
        localName: 'kms_replica_key',
        primaryKeyArn: .literal(arn),
      ),
    );

    add(
      AwsLakeformationDataCellsFilter(
        localName: 'lakeformation_data_cells_filter',
        tableData: [
          LakeformationDataCellsFilterTableData(
            column: .columnNames(.literal([leftover])),
            databaseName: .literal(leftover),
            name: .literal(leftover),
            tableCatalogId: .literal(leftover),
            tableName: .literal(leftover),
            rowFilter: [.filterExpression(.literal(leftover))],
          ),
        ],
      ),
    );

    add(
      AwsLakeformationDataLakeSettings(
        localName: 'lakeformation_data_lake_settings',
      ),
    );

    add(
      AwsLakeformationIdentityCenterConfiguration(
        localName: 'lakeformation_identity_center_configuration',
        instanceArn: .literal(arn),
      ),
    );

    add(
      AwsLakeformationLfTag(
        localName: 'lakeformation_lf_tag',
        key: .literal(leftover),
        values: .literal([leftover]),
      ),
    );

    add(
      AwsLakeformationLfTagExpression(
        localName: 'lakeformation_lf_tag_expression',
        name: .literal(leftover),
        expression: [
          LakeformationLfTagExpressionExpression(
            tagKey: .literal(leftover),
            tagValues: .literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsLakeformationOptIn(
        localName: 'lakeformation_opt_in',
        principal: [
          LakeformationOptInPrincipal(
            dataLakePrincipalIdentifier: .literal(leftover),
          ),
        ],
        resourceData: [
          .database([LakeformationOptInDatabase(name: .literal(leftover))]),
        ],
      ),
    );

    add(
      AwsLakeformationPermissions(
        localName: 'lakeformation_permissions',
        resource: .catalogResource(.literal(true)),
        permissions: [.literal(.all)],
        principal: .literal(arn),
      ),
    );

    add(
      AwsLakeformationResource(
        localName: 'lakeformation_resource',
        arn: .literal(arn),
      ),
    );

    add(
      AwsLakeformationResourceLfTag(
        localName: 'lakeformation_resource_lf_tag',
        resource: .database([
          LakeformationResourceLfTagDatabase(name: .literal(leftover)),
        ]),
        lfTag: [
          LakeformationResourceLfTagLfTag(
            key: .literal(leftover),
            value: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsLakeformationResourceLfTags(
        localName: 'lakeformation_resource_lf_tags',
        resource: .database(
          LakeformationResourceLfTagsDatabase(name: .literal(leftover)),
        ),
        lfTag: [
          LakeformationResourceLfTagsLfTag(
            key: .literal(leftover),
            value: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsLambdaAlias(
        localName: 'lambda_alias',
        functionName: .literal(leftover),
        functionVersion: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLambdaCapacityProvider(
        localName: 'lambda_capacity_provider',
        name: .literal(leftover),
        vpcConfig: [
          LambdaCapacityProviderVpcConfig(
            securityGroupIds: .literal([.literal(leftover)]),
            subnetIds: .literal([.literal(leftover)]),
          ),
        ],
        permissionsConfig: [
          LambdaCapacityProviderPermissionsConfig(
            capacityProviderOperatorRoleArn: .literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsLambdaCodeSigningConfig(
        localName: 'lambda_code_signing_config',
        allowedPublishers: LambdaCodeSigningConfigAllowedPublishers(
          signingProfileVersionArns: .literal([arn]),
        ),
      ),
    );

    add(
      AwsLambdaEventSourceMapping(
        localName: 'lambda_event_source_mapping',
        eventSource: .eventSourceArn(.literal(arn)),
        functionName: .literal(leftover),
      ),
    );

    add(
      AwsLambdaFunctionEventInvokeConfig(
        localName: 'lambda_function_event_invoke_config',
        functionName: .literal(leftover),
      ),
    );

    add(
      AwsLambdaFunctionRecursionConfig(
        localName: 'lambda_function_recursion_config',
        functionName: .literal(leftover),
        recursiveLoop: .literal(.allow),
      ),
    );

    add(
      AwsLambdaFunctionScalingConfig(
        localName: 'lambda_function_scaling_config',
        functionName: .literal(leftover),
        qualifier: .literal('1'),
        functionScalingConfig: [
          LambdaFunctionScalingConfigFunctionScalingConfig(
            maxExecutionEnvironments: .literal(200),
          ),
        ],
      ),
    );

    add(
      AwsLambdaInvocation(
        localName: 'lambda_invocation',
        functionName: .literal(leftover),
        input: .literal(policy),
      ),
    );

    add(
      AwsLambdaLayerVersion(
        localName: 'lambda_layer_version',
        layerName: .literal(leftover),
      ),
    );

    add(
      AwsLambdaLayerVersionPermission(
        localName: 'lambda_layer_version_permission',
        action: .literal(leftover),
        layerName: .literal(leftover),
        principal: .literal(leftover),
        statementId: .literal(leftover),
        versionNumber: .literal(200),
      ),
    );

    add(
      AwsLambdaPermission(
        localName: 'lambda_permission',
        action: .literal('lambda:InvokeFunction'),
        functionName: .literal(leftover),
        principal: .literal(leftover),
      ),
    );

    add(
      AwsLambdaProvisionedConcurrencyConfig(
        localName: 'lambda_provisioned_concurrency_config',
        functionName: .literal(leftover),
        provisionedConcurrentExecutions: .literal(200),
        qualifier: .literal(leftover),
      ),
    );

    add(
      AwsLambdaResourcePolicy(
        localName: 'lambda_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsLambdaRuntimeManagementConfig(
        localName: 'lambda_runtime_management_config',
        functionName: .literal(leftover),
      ),
    );

    add(
      AwsLambdacoreNetworkConnector(
        localName: 'lambdacore_network_connector',
        name: .literal(leftover),
        operatorRole: .literal(arn),
        configuration: [
          LambdacoreNetworkConnectorConfiguration(
            vpcEgressConfiguration: [
              LambdacoreNetworkConnectorVpcEgressConfiguration(
                associatedComputeResourceTypes: [.literal(.microvm)],
                securityGroupIds: .literal([.literal(leftover)]),
                subnetIds: .literal([.literal(leftover)]),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsLambdamicrovmsImage(
        localName: 'lambdamicrovms_image',
        baseImageArn: .literal(arn),
        buildRoleArn: .literal(arn),
        name: .literal(leftover),
        codeArtifact: [
          LambdamicrovmsImageCodeArtifact(uri: .literal('https://example.com')),
        ],
      ),
    );

    add(
      AwsLambdamicrovmsMicrovm(
        localName: 'lambdamicrovms_microvm',
        imageArn: .literal(arn),
      ),
    );

    add(
      AwsLaunchConfiguration(
        localName: 'launch_configuration',
        imageId: .literal(leftover),
        instanceType: .literal(leftover),
      ),
    );

    add(AwsLaunchTemplate(localName: 'launch_template'));

    add(
      AwsLb(
        localName: 'lb',
        subnet: .subnetMapping([
          LbSubnetMapping(subnetId: .literal('subnet-0123456789abcdef0')),
        ]),
      ),
    );

    add(
      AwsLbCookieStickinessPolicy(
        localName: 'lb_cookie_stickiness_policy',
        lbPort: .literal(200),
        loadBalancer: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLbListener(
        localName: 'lb_listener',
        loadBalancerArn: .literal(arn),
        defaultAction: [LbListenerDefaultAction(type: .literal(.forward))],
      ),
    );

    add(
      AwsLbListenerCertificate(
        localName: 'lb_listener_certificate',
        certificateArn: .literal(arn),
        listenerArn: .literal(arn),
      ),
    );

    add(
      AwsLbListenerRule(
        localName: 'lb_listener_rule',
        listenerArn: .literal(arn),
        action: [LbListenerRuleAction(type: .literal(.forward))],
        condition: [
          LbListenerRuleCondition(
            hostHeader: LbListenerRuleHostHeader(
              regexValues: .literal([leftover]),
            ),
          ),
        ],
      ),
    );

    add(
      AwsLbSslNegotiationPolicy(
        localName: 'lb_ssl_negotiation_policy',
        lbPort: .literal(200),
        loadBalancer: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(AwsLbTargetGroup(localName: 'lb_target_group'));

    add(
      AwsLbTargetGroupAttachment(
        localName: 'lb_target_group_attachment',
        targetGroupArn: .literal(arn),
        targetId: .literal(leftover),
      ),
    );

    add(
      AwsLbTrustStore(
        localName: 'lb_trust_store',
        caCertificatesBundleS3Bucket: .literal(leftover),
        caCertificatesBundleS3Key: .literal(leftover),
      ),
    );

    add(
      AwsLbTrustStoreRevocation(
        localName: 'lb_trust_store_revocation',
        revocationsS3Bucket: .literal(leftover),
        revocationsS3Key: .literal(leftover),
        trustStoreArn: .literal(arn),
      ),
    );

    add(
      AwsLexBot(
        localName: 'lex_bot',
        childDirected: .literal(true),
        name: .literal(leftover),
        abortStatement: LexBotAbortStatement(
          message: [
            LexBotMessage(
              content: .literal(leftover),
              contentType: .literal('PlainText'),
            ),
          ],
        ),
        intent: [
          LexBotIntent(
            intentName: .literal(leftover),
            intentVersion: .literal('\$LATEST'),
          ),
        ],
      ),
    );

    add(
      AwsLexBotAlias(
        localName: 'lex_bot_alias',
        botName: .literal(leftover),
        botVersion: .literal('\$LATEST'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLexIntent(
        localName: 'lex_intent',
        name: .literal(leftover),
        fulfillmentActivity: LexIntentFulfillmentActivity(
          type: .literal(.returnintent),
        ),
      ),
    );

    add(
      AwsLexSlotType(
        localName: 'lex_slot_type',
        name: .literal(leftover),
        enumerationValue: [
          LexSlotTypeEnumerationValue(value: .literal(leftover)),
        ],
      ),
    );

    add(
      AwsLexv2modelsBot(
        localName: 'lexv2models_bot',
        idleSessionTtlInSeconds: .literal(200),
        name: .literal(leftover),
        roleArn: .literal(arn),
        dataPrivacy: [Lexv2modelsBotDataPrivacy(childDirected: .literal(true))],
      ),
    );

    add(
      AwsLexv2modelsBotLocale(
        localName: 'lexv2models_bot_locale',
        botId: .literal(leftover),
        botVersion: .literal(leftover),
        localeId: .literal(leftover),
        nLuIntentConfidenceThreshold: .literal(200),
      ),
    );

    add(
      AwsLexv2modelsBotVersion(
        localName: 'lexv2models_bot_version',
        botId: .literal(leftover),
        localeSpecification: .literal({
          'en_US': {'source_bot_version': 'DRAFT'},
        }),
      ),
    );

    add(
      AwsLexv2modelsIntent(
        localName: 'lexv2models_intent',
        botId: .literal(leftover),
        botVersion: .literal(leftover),
        localeId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLexv2modelsSlot(
        localName: 'lexv2models_slot',
        botId: .literal(leftover),
        botVersion: .literal(leftover),
        intentId: .literal(leftover),
        localeId: .literal(leftover),
        name: .literal(leftover),
        valueElicitationSetting: [
          Lexv2modelsSlotValueElicitationSetting(
            slotConstraint: .literal('Required'),
          ),
        ],
      ),
    );

    add(
      AwsLexv2modelsSlotType(
        localName: 'lexv2models_slot_type',
        botId: .literal(leftover),
        botVersion: .literal(leftover),
        localeId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLicensemanagerAssociation(
        localName: 'licensemanager_association',
        licenseConfigurationArn: .literal(arn),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsLicensemanagerGrant(
        localName: 'licensemanager_grant',
        allowedOperations: [.literal(.creategrant)],
        licenseArn: .literal(arn),
        name: .literal(leftover),
        principal: .literal(arn),
      ),
    );

    add(
      AwsLicensemanagerGrantAccepter(
        localName: 'licensemanager_grant_accepter',
        grantArn: .literal(arn),
      ),
    );

    add(
      AwsLicensemanagerLicenseConfiguration(
        localName: 'licensemanager_license_configuration',
        licenseCountingType: .literal(.vcpu),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailBucket(
        localName: 'lightsail_bucket',
        bundleId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailBucketAccessKey(
        localName: 'lightsail_bucket_access_key',
        bucketName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailBucketResourceAccess(
        localName: 'lightsail_bucket_resource_access',
        bucketName: .literal(leftover),
        resourceName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailCertificate(
        localName: 'lightsail_certificate',
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailContainerService(
        localName: 'lightsail_container_service',
        name: .literal(leftover),
        power: .literal('nano'),
        scale: .literal(1),
      ),
    );

    add(
      AwsLightsailContainerServiceDeploymentVersion(
        localName: 'lightsail_container_service_deployment_version',
        serviceName: .literal(leftover),
        container: [
          LightsailContainerServiceDeploymentVersionContainer(
            containerName: .literal(leftover),
            image: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsLightsailDatabase(
        localName: 'lightsail_database',
        blueprintId: .literal(leftover),
        bundleId: .literal(leftover),
        masterDatabaseName: .literal(leftover),
        masterPassword: .variable('leftover_secret'),
        masterUsername: .literal(leftover),
        relationalDatabaseName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailDisk(
        localName: 'lightsail_disk',
        availabilityZone: .literal('us-east-1a'),
        name: .literal(leftover),
        sizeInGb: .literal(200),
      ),
    );

    add(
      AwsLightsailDiskAttachment(
        localName: 'lightsail_disk_attachment',
        diskName: .literal(leftover),
        diskPath: .literal(leftover),
        instanceName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailDistribution(
        localName: 'lightsail_distribution',
        bundleId: .literal(leftover),
        name: .literal(leftover),
        defaultCacheBehavior: LightsailDistributionDefaultCacheBehavior(
          behavior: .literal('dont-cache'),
        ),
        origin: LightsailDistributionOrigin(
          name: .literal(leftover),
          regionName: .literal('us-east-1'),
        ),
      ),
    );

    add(
      AwsLightsailDomain(
        localName: 'lightsail_domain',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailDomainEntry(
        localName: 'lightsail_domain_entry',
        domainName: .literal(leftover),
        name: .literal(leftover),
        target: .literal(leftover),
        type: .literal(.a),
      ),
    );

    add(
      AwsLightsailInstance(
        localName: 'lightsail_instance',
        availabilityZone: .literal('us-east-1a'),
        blueprintId: .literal(leftover),
        bundleId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailInstancePublicPorts(
        localName: 'lightsail_instance_public_ports',
        instanceName: .literal(leftover),
        portInfo: [
          LightsailInstancePublicPortsPortInfo(
            fromPort: .literal(200),
            protocol: .literal('tcp'),
            toPort: .literal(200),
          ),
        ],
      ),
    );

    add(AwsLightsailKeyPair(localName: 'lightsail_key_pair'));

    add(
      AwsLightsailLb(
        localName: 'lightsail_lb',
        instancePort: .literal(200),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailLbAttachment(
        localName: 'lightsail_lb_attachment',
        instanceName: .literal(leftover),
        lbName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailLbCertificate(
        localName: 'lightsail_lb_certificate',
        lbName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailLbCertificateAttachment(
        localName: 'lightsail_lb_certificate_attachment',
        certificateName: .literal(leftover),
        lbName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailLbHttpsRedirectionPolicy(
        localName: 'lightsail_lb_https_redirection_policy',
        enabled: .literal(true),
        lbName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailLbStickinessPolicy(
        localName: 'lightsail_lb_stickiness_policy',
        cookieDuration: .literal(200),
        enabled: .literal(true),
        lbName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailStaticIp(
        localName: 'lightsail_static_ip',
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailStaticIpAttachment(
        localName: 'lightsail_static_ip_attachment',
        instanceName: .literal(leftover),
        staticIpName: .literal(leftover),
      ),
    );

    add(
      AwsLoadBalancerBackendServerPolicy(
        localName: 'load_balancer_backend_server_policy',
        instancePort: .literal(200),
        loadBalancerName: .literal(leftover),
      ),
    );

    add(
      AwsLoadBalancerListenerPolicy(
        localName: 'load_balancer_listener_policy',
        loadBalancerName: .literal(leftover),
        loadBalancerPort: .literal(200),
      ),
    );

    add(
      AwsLoadBalancerPolicy(
        localName: 'load_balancer_policy',
        loadBalancerName: .literal(leftover),
        policyName: .literal(leftover),
        policyTypeName: .literal(leftover),
      ),
    );

    add(
      AwsLocationGeofenceCollection(
        localName: 'location_geofence_collection',
        collectionName: .literal(leftover),
      ),
    );

    add(
      AwsLocationMap(
        localName: 'location_map',
        mapName: .literal(leftover),
        configuration: LocationMapConfiguration(style: .literal(leftover)),
      ),
    );

    add(
      AwsLocationPlaceIndex(
        localName: 'location_place_index',
        dataSource: .literal(leftover),
        indexName: .literal(leftover),
      ),
    );

    add(
      AwsLocationRouteCalculator(
        localName: 'location_route_calculator',
        calculatorName: .literal(leftover),
        dataSource: .literal(leftover),
      ),
    );

    add(
      AwsLocationTracker(
        localName: 'location_tracker',
        trackerName: .literal(leftover),
      ),
    );

    add(
      AwsLocationTrackerAssociation(
        localName: 'location_tracker_association',
        consumerArn: .literal(arn),
        trackerName: .literal(leftover),
      ),
    );

    add(
      AwsM2Application(
        localName: 'm2_application',
        engineType: .literal(.microfocus),
        name: .literal(leftover),
        definition: [.content(.literal(leftover))],
      ),
    );

    add(
      AwsM2Deployment(
        localName: 'm2_deployment',
        applicationId: .literal(leftover),
        applicationVersion: .literal(200),
        environmentId: .literal(leftover),
        start: .literal(true),
      ),
    );

    add(
      AwsM2Environment(
        localName: 'm2_environment',
        engineType: .literal(.microfocus),
        instanceType: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(AwsMacie2Account(localName: 'macie2_account'));

    add(
      AwsMacie2ClassificationExportConfiguration(
        localName: 'macie2_classification_export_configuration',
        s3Destination: Macie2ClassificationExportConfigurationS3Destination(
          bucketName: .literal(leftover),
          kmsKeyArn: .literal(arn),
        ),
      ),
    );

    add(
      AwsMacie2ClassificationJob(
        localName: 'macie2_classification_job',
        jobType: .literal(.oneTime),
        s3JobDefinition: Macie2ClassificationJobS3JobDefinition(
          bucket: .bucketCriteria(
            Macie2ClassificationJobBucketCriteria(
              excludes: Macie2ClassificationJobBucketCriteriaExcludes(
                and: [
                  Macie2ClassificationJobBucketCriteriaAnd(
                    simpleCriterion: Macie2ClassificationJobSimpleCriterion(
                      comparator: .literal(.eq),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    add(
      AwsMacie2CustomDataIdentifier(localName: 'macie2_custom_data_identifier'),
    );

    add(
      AwsMacie2FindingsFilter(
        localName: 'macie2_findings_filter',
        action: .literal(.archive),
        findingCriteria: Macie2FindingsFilterFindingCriteria(
          criterion: [Macie2FindingsFilterCriterion(field: .literal(leftover))],
        ),
      ),
    );

    add(
      AwsMacie2InvitationAccepter(
        localName: 'macie2_invitation_accepter',
        administratorAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsMacie2Member(
        localName: 'macie2_member',
        accountId: .literal('123456789012'),
        email: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsMacie2OrganizationAdminAccount(
        localName: 'macie2_organization_admin_account',
        adminAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsMacie2OrganizationConfiguration(
        localName: 'macie2_organization_configuration',
        autoEnable: .literal(true),
      ),
    );

    add(
      AwsMailmanagerArchive(
        localName: 'mailmanager_archive',
        name: .literal(leftover),
      ),
    );

    add(
      AwsMailmanagerIngressPoint(
        localName: 'mailmanager_ingress_point',
        name: .literal(leftover),
        ruleSetId: .literal(leftover),
        trafficPolicyId: .literal(leftover),
        type: .literal(.open),
      ),
    );

    add(
      AwsMailmanagerRelay(
        localName: 'mailmanager_relay',
        name: .literal(leftover),
        serverName: .literal(leftover),
        serverPort: .literal(200),
      ),
    );

    add(
      AwsMailmanagerRuleSet(
        localName: 'mailmanager_rule_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsMailmanagerTrafficPolicy(
        localName: 'mailmanager_traffic_policy',
        defaultAction: .literal(.allow),
        name: .literal(leftover),
      ),
    );

    add(
      AwsMainRouteTableAssociation(
        localName: 'main_route_table_association',
        routeTableId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsMediaConvertQueue(
        localName: 'media_convert_queue',
        name: .literal(leftover),
      ),
    );

    add(
      AwsMediaPackageChannel(
        localName: 'media_package_channel',
        channelId: .literal(leftover),
      ),
    );

    add(
      AwsMediaPackagev2ChannelGroup(
        localName: 'media_packagev2_channel_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsMediaStoreContainer(
        localName: 'media_store_container',
        name: .literal(leftover),
      ),
    );

    add(
      AwsMediaStoreContainerPolicy(
        localName: 'media_store_container_policy',
        containerName: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsMedialiveChannel(
        localName: 'medialive_channel',
        channelClass: .literal(.standard),
        name: .literal(leftover),
        destinations: [MedialiveChannelDestinations(id: .literal(leftover))],
        encoderSettings: MedialiveChannelEncoderSettings(
          outputGroups: [
            MedialiveChannelOutputGroups(
              outputGroupSettings: MedialiveChannelOutputGroupSettings(
                archiveGroupSettings: [
                  MedialiveChannelArchiveGroupSettings(
                    destination: MedialiveChannelDestination(
                      destinationRefId: .literal(leftover),
                    ),
                  ),
                ],
              ),
              outputs: [
                MedialiveChannelOutputs(
                  outputSettings: MedialiveChannelOutputSettings(
                    archiveOutputSettings:
                        MedialiveChannelArchiveOutputSettings(
                          extension: .literal(leftover),
                        ),
                  ),
                ),
              ],
            ),
          ],
          timecodeConfig: MedialiveChannelTimecodeConfig(
            source: .literal('EMBEDDED'),
          ),
        ),
        inputAttachments: [
          MedialiveChannelInputAttachments(
            inputAttachmentName: .literal(leftover),
            inputId: .literal(leftover),
          ),
        ],
        inputSpecification: MedialiveChannelInputSpecification(
          codec: .literal(.mpeg2),
          inputResolution: .literal(.sd),
          maximumBitrate: .literal(.max10Mbps),
        ),
      ),
    );

    add(
      AwsMedialiveInput(
        localName: 'medialive_input',
        name: .literal(leftover),
        type: .literal(.udpPush),
      ),
    );

    add(
      AwsMedialiveInputSecurityGroup(
        localName: 'medialive_input_security_group',
        whitelistRules: [
          MedialiveInputSecurityGroupWhitelistRules(
            cidr: .literal('10.0.0.0/16'),
          ),
        ],
      ),
    );

    add(
      AwsMedialiveMultiplex(
        localName: 'medialive_multiplex',
        availabilityZones: .literal(['us-east-1a', 'us-east-1a1']),
        name: .literal(leftover),
      ),
    );

    add(
      AwsMedialiveMultiplexProgram(
        localName: 'medialive_multiplex_program',
        multiplexId: .literal(leftover),
        programName: .literal(leftover),
      ),
    );

    add(AwsMemorydbAcl(localName: 'memorydb_acl'));

    add(
      AwsMemorydbCluster(
        localName: 'memorydb_cluster',
        aclName: .literal(leftover),
        nodeType: .literal(leftover),
      ),
    );

    add(
      AwsMemorydbMultiRegionCluster(
        localName: 'memorydb_multi_region_cluster',
        multiRegionClusterNameSuffix: .literal(leftover),
        nodeType: .literal(leftover),
      ),
    );

    add(
      AwsMemorydbParameterGroup(
        localName: 'memorydb_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsMemorydbSnapshot(
        localName: 'memorydb_snapshot',
        clusterName: .literal(leftover),
      ),
    );

    add(
      AwsMemorydbSubnetGroup(
        localName: 'memorydb_subnet_group',
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsMemorydbUser(
        localName: 'memorydb_user',
        accessString: .literal(leftover),
        userName: .literal(leftover),
        authenticationMode: MemorydbUserAuthenticationMode(
          type: .literal(.password),
        ),
      ),
    );

    add(
      AwsMqBroker(
        localName: 'mq_broker',
        brokerName: .literal(leftover),
        engineType: .literal(.activemq),
        engineVersion: .literal(leftover),
        hostInstanceType: .literal(leftover),
      ),
    );

    add(
      AwsMqConfiguration(
        localName: 'mq_configuration',
        data: .literal(leftover),
        engineType: .literal(.activemq),
        engineVersion: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsMskChannel(
        localName: 'msk_channel',
        channelName: .literal(leftover),
        clusterArn: .literal(arn),
        destination: .icebergDestination([
          MskChannelIcebergDestination(
            appendOnly: .literal(true),
            serviceExecutionRoleArn: .literal(arn),
            deadLetterQueueS3: [
              MskChannelDeadLetterQueueS3(bucketArn: .literal(arn)),
            ],
            destinationTable: [
              MskChannelDestinationTable(
                destinationDatabaseName: .literal(leftover),
              ),
            ],
            schemaEvolution: [
              MskChannelSchemaEvolution(enableSchemaEvolution: .literal(true)),
            ],
            tableCreation: [
              MskChannelTableCreation(enableTableCreation: .literal(true)),
            ],
          ),
        ]),
        topicConfiguration: [
          MskChannelTopicConfiguration(
            topicArn: .literal(arn),
            recordConverter: [
              MskChannelRecordConverter(valueConverter: .literal(.byteArray)),
            ],
          ),
        ],
      ),
    );

    add(
      AwsMskCluster(
        localName: 'msk_cluster',
        clusterName: .literal(leftover),
        kafkaVersion: .literal(leftover),
        numberOfBrokerNodes: .literal(200),
        brokerNodeGroupInfo: MskClusterBrokerNodeGroupInfo(
          clientSubnets: .literal([leftover]),
          instanceType: .literal(leftover),
          securityGroups: .literal([.literal(leftover)]),
        ),
      ),
    );

    add(
      AwsMskClusterPolicy(
        localName: 'msk_cluster_policy',
        clusterArn: .literal(arn),
        policy: .literal(policy),
      ),
    );

    add(
      AwsMskConfiguration(
        localName: 'msk_configuration',
        name: .literal(leftover),
        serverProperties: .literal(leftover),
      ),
    );

    add(
      AwsMskReplicator(
        localName: 'msk_replicator',
        replicatorName: .literal(leftover),
        serviceExecutionRoleArn: .literal(arn),
        kafkaCluster: [
          MskReplicatorKafkaCluster(
            amazonMskCluster: MskReplicatorAmazonMskCluster(
              mskClusterArn: .literal(arn),
            ),
          ),
          MskReplicatorKafkaCluster(
            amazonMskCluster: MskReplicatorAmazonMskCluster(
              mskClusterArn: .literal(arn),
            ),
          ),
        ],
        replicationInfoList: MskReplicatorReplicationInfoList(
          sourceKafkaCluster: .sourceKafkaClusterArn(.literal(arn)),
          targetCompressionType: .literal(leftover),
          targetKafkaCluster: .targetKafkaClusterArn(.literal(arn)),
          consumerGroupReplication: [
            MskReplicatorConsumerGroupReplication(
              consumerGroupsToReplicate: .literal([leftover]),
            ),
          ],
          topicReplication: [
            MskReplicatorTopicReplication(
              topicsToReplicate: .literal([leftover]),
            ),
          ],
        ),
      ),
    );

    add(
      AwsMskScramSecretAssociation(
        localName: 'msk_scram_secret_association',
        clusterArn: .literal(arn),
        secretArnList: .literal([arn]),
      ),
    );

    add(
      AwsMskServerlessCluster(
        localName: 'msk_serverless_cluster',
        clusterName: .literal(leftover),
        clientAuthentication: MskServerlessClusterClientAuthentication(
          sasl: MskServerlessClusterSasl(
            iam: MskServerlessClusterIam(enabled: .literal(true)),
          ),
        ),
        vpcConfig: [
          MskServerlessClusterVpcConfig(
            subnetIds: .literal([.literal(leftover)]),
          ),
        ],
      ),
    );

    add(
      AwsMskSingleScramSecretAssociation(
        localName: 'msk_single_scram_secret_association',
        clusterArn: .literal(arn),
        secretArn: .literal(arn),
      ),
    );

    add(
      AwsMskTopic(
        localName: 'msk_topic',
        clusterArn: .literal(arn),
        name: .literal(leftover),
        partitionCount: .literal(200),
        replicationFactor: .literal(200),
      ),
    );

    add(
      AwsMskVpcConnection(
        localName: 'msk_vpc_connection',
        authentication: .literal(leftover),
        clientSubnets: .literal([leftover]),
        securityGroups: .literal([.literal(leftover)]),
        targetClusterArn: .literal(arn),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsMskconnectConnector(
        localName: 'mskconnect_connector',
        connectorConfiguration: .literal({'k': leftover}),
        kafkaconnectVersion: .literal(leftover),
        name: .literal(leftover),
        serviceExecutionRoleArn: .literal(arn),
        capacity: .autoscaling(
          MskconnectConnectorAutoscaling(
            maxWorkerCount: .literal(1),
            minWorkerCount: .literal(1),
          ),
        ),
        kafkaCluster: MskconnectConnectorKafkaCluster(
          apacheKafkaCluster: MskconnectConnectorApacheKafkaCluster(
            bootstrapServers: .literal(leftover),
            vpc: MskconnectConnectorVpc(
              securityGroups: .literal([.literal(leftover)]),
              subnets: .literal([.literal(leftover)]),
            ),
          ),
        ),
        kafkaClusterClientAuthentication:
            MskconnectConnectorKafkaClusterClientAuthentication(
              authenticationType: .literal(.none),
            ),
        kafkaClusterEncryptionInTransit:
            MskconnectConnectorKafkaClusterEncryptionInTransit(
              encryptionType: .literal(.plaintext),
            ),
        plugin: [
          MskconnectConnectorPlugin(
            customPlugin: MskconnectConnectorCustomPlugin(
              arn: .literal(arn),
              revision: .literal(200),
            ),
          ),
        ],
      ),
    );

    add(
      AwsMskconnectCustomPlugin(
        localName: 'mskconnect_custom_plugin',
        contentType: .literal(.jar),
        name: .literal(leftover),
        location: MskconnectCustomPluginLocation(
          s3: MskconnectCustomPluginS3(
            bucketArn: .literal(arn),
            fileKey: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsMskconnectWorkerConfiguration(
        localName: 'mskconnect_worker_configuration',
        name: .literal(leftover),
        propertiesFileContent: .literal(leftover),
      ),
    );

    add(
      AwsMwaaEnvironment(
        localName: 'mwaa_environment',
        dagS3Path: .literal(leftover),
        executionRoleArn: .literal(arn),
        name: .literal(leftover),
        sourceBucketArn: .literal(arn),
        networkConfiguration: MwaaEnvironmentNetworkConfiguration(
          securityGroupIds: .literal([.literal(leftover)]),
          subnetIds: .literal([.literal(leftover), .literal('leftover1')]),
        ),
      ),
    );

    add(AwsNatGateway(localName: 'nat_gateway'));

    add(
      AwsNatGatewayEipAssociation(
        localName: 'nat_gateway_eip_association',
        allocationId: .literal(leftover),
        natGatewayId: .literal(leftover),
      ),
    );

    add(AwsNeptuneCluster(localName: 'neptune_cluster'));

    add(
      AwsNeptuneClusterEndpoint(
        localName: 'neptune_cluster_endpoint',
        clusterEndpointIdentifier: .literal(leftover),
        clusterIdentifier: .literal(leftover),
        endpointType: .literal(.any),
      ),
    );

    add(
      AwsNeptuneClusterInstance(
        localName: 'neptune_cluster_instance',
        clusterIdentifier: .literal(leftover),
        instanceClass: .literal(leftover),
      ),
    );

    add(
      AwsNeptuneClusterParameterGroup(
        localName: 'neptune_cluster_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsNeptuneClusterSnapshot(
        localName: 'neptune_cluster_snapshot',
        dbClusterIdentifier: .literal(leftover),
        dbClusterSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsNeptuneEventSubscription(
        localName: 'neptune_event_subscription',
        snsTopicArn: .literal(arn),
      ),
    );

    add(
      AwsNeptuneGlobalCluster(
        localName: 'neptune_global_cluster',
        source: .engine(.literal(.neptune)),
        globalClusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsNeptuneParameterGroup(
        localName: 'neptune_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsNeptuneSubnetGroup(
        localName: 'neptune_subnet_group',
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsNeptunegraphGraph(
        localName: 'neptunegraph_graph',
        provisionedMemory: .literal(8),
      ),
    );

    add(
      AwsNeptunegraphPrivateGraphEndpoint(
        localName: 'neptunegraph_private_graph_endpoint',
        graphIdentifier: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkAcl(
        localName: 'network_acl',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkAclAssociation(
        localName: 'network_acl_association',
        networkAclId: .literal(leftover),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkAclRule(
        localName: 'network_acl_rule',
        cidr: .cidrBlock(.literal('10.0.0.0/16')),
        networkAclId: .literal(leftover),
        protocol: .literal('tcp'),
        ruleAction: .literal(.allow),
        ruleNumber: .literal(200),
      ),
    );

    add(
      AwsNetworkInterface(
        localName: 'network_interface',
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkInterfaceAttachment(
        localName: 'network_interface_attachment',
        deviceIndex: .literal(200),
        instanceId: .literal('i-0123456789abcdef0'),
        networkInterfaceId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkInterfacePermission(
        localName: 'network_interface_permission',
        awsAccountId: .literal('123456789012'),
        networkInterfaceId: .literal(leftover),
        permission: .literal(.instanceAttach),
      ),
    );

    add(
      AwsNetworkInterfaceSgAttachment(
        localName: 'network_interface_sg_attachment',
        networkInterfaceId: .literal(leftover),
        securityGroupId: .literal('sg-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkfirewallContainerAssociation(
        localName: 'networkfirewall_container_association',
        containerAssociationName: .literal(leftover),
        type: .literal(.ecs),
        containerMonitoringConfiguration: [
          NetworkfirewallContainerAssociationContainerMonitoringConfiguration(
            clusterArn: .literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsNetworkfirewallFirewall(
        localName: 'networkfirewall_firewall',
        firewallPolicyArn: .literal(arn),
        name: .literal(leftover),
        attachment: .transitGatewayId(.literal(leftover)),
      ),
    );

    add(
      AwsNetworkfirewallFirewallPolicy(
        localName: 'networkfirewall_firewall_policy',
        name: .literal(leftover),
        firewallPolicy: NetworkfirewallFirewallPolicyFirewallPolicy(
          statelessDefaultActions: .literal([leftover]),
          statelessFragmentDefaultActions: .literal([leftover]),
        ),
      ),
    );

    add(
      AwsNetworkfirewallFirewallTransitGatewayAttachmentAccepter(
        localName: 'networkfirewall_firewall_transit_gateway_attachm',
        transitGatewayAttachmentId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkfirewallLoggingConfiguration(
        localName: 'networkfirewall_logging_configuration',
        firewallArn: .literal(arn),
        loggingConfiguration:
            NetworkfirewallLoggingConfigurationLoggingConfiguration(
              logDestinationConfig: [
                NetworkfirewallLoggingConfigurationLogDestinationConfig(
                  logDestination: .literal({'bucketName': leftover}),
                  logDestinationType: .literal(.s3),
                  logType: .literal(.flow),
                ),
              ],
            ),
      ),
    );

    add(
      AwsNetworkfirewallResourcePolicy(
        localName: 'networkfirewall_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkfirewallRuleGroup(
        localName: 'networkfirewall_rule_group',
        capacity: .literal(200),
        name: .literal(leftover),
        type: .literal(.stateless),
      ),
    );

    add(
      AwsNetworkfirewallTlsInspectionConfiguration(
        localName: 'networkfirewall_tls_inspection_configuration',
        name: .literal(leftover),
        tlsInspectionConfiguration: [
          NetworkfirewallTlsInspectionConfigurationTlsInspectionConfiguration(
            serverCertificateConfiguration: [
              NetworkfirewallTlsInspectionConfigurationServerCertificateConfiguration(
                scope: [
                  NetworkfirewallTlsInspectionConfigurationScope(
                    protocols: .literal([6]),
                    destination: [
                      NetworkfirewallTlsInspectionConfigurationDestination(
                        addressDefinition: .literal('10.0.0.0/16'),
                      ),
                    ],
                  ),
                ],
                certificateAuthorityArn: .literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsNetworkfirewallVpcEndpointAssociation(
        localName: 'networkfirewall_vpc_endpoint_association',
        firewallArn: .literal(arn),
        vpcId: .literal('vpc-0123456789abcdef0'),
        subnetMapping: [
          NetworkfirewallVpcEndpointAssociationSubnetMapping(
            subnetId: .literal('subnet-0123456789abcdef0'),
          ),
        ],
      ),
    );

    add(
      AwsNetworkflowmonitorMonitor(
        localName: 'networkflowmonitor_monitor',
        monitorName: .literal(leftover),
        scopeArn: .literal(arn),
        localResource: [
          NetworkflowmonitorMonitorLocalResource(
            identifier: .literal(leftover),
            type: .literal(.awsEc2Vpc),
          ),
        ],
      ),
    );

    add(
      AwsNetworkflowmonitorScope(
        localName: 'networkflowmonitor_scope',
        target: [
          NetworkflowmonitorScopeTarget(
            region: .literal('us-east-1'),
            targetIdentifier: [
              NetworkflowmonitorScopeTargetIdentifier(
                targetType: .literal(.account),
                targetId: [
                  NetworkflowmonitorScopeTargetId(
                    accountId: .literal('123456789012'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsNetworkmanagerAttachmentAccepter(
        localName: 'networkmanager_attachment_accepter',
        attachmentId: .literal(leftover),
        attachmentType: .literal(.connect),
      ),
    );

    add(
      AwsNetworkmanagerAttachmentRoutingPolicyLabel(
        localName: 'networkmanager_attachment_routing_policy_label',
        attachmentId: .literal(leftover),
        coreNetworkId: .literal(leftover),
        routingPolicyLabel: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerConnectAttachment(
        localName: 'networkmanager_connect_attachment',
        coreNetworkId: .literal('core-network-0123456789abcdef0'),
        edgeLocation: .literal(leftover),
        transportAttachmentId: .literal('attachment-0123456789abcdef0'),
        options: NetworkmanagerConnectAttachmentOptions(
          protocol: .literal(.gre),
        ),
      ),
    );

    add(
      AwsNetworkmanagerConnectPeer(
        localName: 'networkmanager_connect_peer',
        connectAttachmentId: .literal('attachment-0123456789abcdef0'),
        peerAddress: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerConnection(
        localName: 'networkmanager_connection',
        connectedDeviceId: .literal(leftover),
        deviceId: .literal(leftover),
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerCoreNetwork(
        localName: 'networkmanager_core_network',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerCoreNetworkPolicyAttachment(
        localName: 'networkmanager_core_network_policy_attachment',
        coreNetworkId: .literal('core-network-0123456789abcdef0'),
        policyDocument: .literal(policy),
      ),
    );

    add(
      AwsNetworkmanagerCustomerGatewayAssociation(
        localName: 'networkmanager_customer_gateway_association',
        customerGatewayArn: .literal(arn),
        deviceId: .literal(leftover),
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerDevice(
        localName: 'networkmanager_device',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerDxGatewayAttachment(
        localName: 'networkmanager_dx_gateway_attachment',
        coreNetworkId: .literal(leftover),
        directConnectGatewayArn: .literal(arn),
        edgeLocations: .literal([leftover]),
      ),
    );

    add(
      AwsNetworkmanagerGlobalNetwork(
        localName: 'networkmanager_global_network',
      ),
    );

    add(
      AwsNetworkmanagerLink(
        localName: 'networkmanager_link',
        globalNetworkId: .literal(leftover),
        siteId: .literal(leftover),
        bandwidth: NetworkmanagerLinkBandwidth(downloadSpeed: .literal(200)),
      ),
    );

    add(
      AwsNetworkmanagerLinkAssociation(
        localName: 'networkmanager_link_association',
        deviceId: .literal(leftover),
        globalNetworkId: .literal(leftover),
        linkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerPrefixListAssociation(
        localName: 'networkmanager_prefix_list_association',
        coreNetworkId: .literal(leftover),
        prefixListAlias: .literal(leftover),
        prefixListArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerSite(
        localName: 'networkmanager_site',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerSiteToSiteVpnAttachment(
        localName: 'networkmanager_site_to_site_vpn_attachment',
        coreNetworkId: .literal(leftover),
        vpnConnectionArn: .literal(
          'arn:aws:ec2:us-east-1:123456789012:vpn-connection/vpn-0123456789abcdef0',
        ),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayConnectPeerAssociation(
        localName: 'networkmanager_transit_gateway_connect_peer_asso',
        deviceId: .literal(leftover),
        globalNetworkId: .literal(leftover),
        transitGatewayConnectPeerArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayPeering(
        localName: 'networkmanager_transit_gateway_peering',
        coreNetworkId: .literal(leftover),
        transitGatewayArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayRegistration(
        localName: 'networkmanager_transit_gateway_registration',
        globalNetworkId: .literal(leftover),
        transitGatewayArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayRouteTableAttachment(
        localName: 'networkmanager_transit_gateway_route_table_attac',
        peeringId: .literal(leftover),
        transitGatewayRouteTableArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerVpcAttachment(
        localName: 'networkmanager_vpc_attachment',
        coreNetworkId: .literal(leftover),
        subnetArns: .literal([arn]),
        vpcArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmonitorMonitor(
        localName: 'networkmonitor_monitor',
        monitorName: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmonitorProbe(
        localName: 'networkmonitor_probe',
        destination: .literal(leftover),
        monitorName: .literal(leftover),
        protocol: .literal(.tcp),
        sourceArn: .literal(arn),
      ),
    );

    add(
      AwsNotificationsChannelAssociation(
        localName: 'notifications_channel_association',
        arn: .literal(arn),
        notificationConfigurationArn: .literal(arn),
      ),
    );

    add(
      AwsNotificationsEventRule(
        localName: 'notifications_event_rule',
        eventType: .literal(leftover),
        notificationConfigurationArn: .literal(arn),
        regions: .literal([leftover]),
        source: .literal('awsO1avdq40u4icn'),
      ),
    );

    add(
      AwsNotificationsManagedNotificationAccountContactAssociation(
        localName: 'notifications_managed_notification_account_conta',
        contactIdentifier: .literal(.accountPrimary),
        managedNotificationConfigurationArn: .literal(arn),
      ),
    );

    add(
      AwsNotificationsManagedNotificationAdditionalChannelAssociation(
        localName: 'notifications_managed_notification_additional_ch',
        channelArn: .literal(arn),
        managedNotificationArn: .literal(arn),
      ),
    );

    add(
      AwsNotificationsNotificationConfiguration(
        localName: 'notifications_notification_configuration',
        description: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsNotificationsNotificationHub(
        localName: 'notifications_notification_hub',
        notificationHubRegion: .literal('us-east-1'),
      ),
    );

    add(
      AwsNotificationsOrganizationalUnitAssociation(
        localName: 'notifications_organizational_unit_association',
        notificationConfigurationArn: .literal(arn),
        organizationalUnitId: .literal(leftover),
      ),
    );

    add(
      AwsNotificationsOrganizationsAccess(
        localName: 'notifications_organizations_access',
        enabled: .literal(true),
      ),
    );

    add(
      AwsNotificationscontactsEmailContact(
        localName: 'notificationscontacts_email_contact',
        emailAddress: .literal('leftover@example.com'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsOamLink(
        localName: 'oam_link',
        labelTemplate: .literal(leftover),
        resourceTypes: [.literal(.awsCloudwatchMetric)],
        sinkIdentifier: .literal(leftover),
      ),
    );

    add(AwsOamSink(localName: 'oam_sink', name: .literal(leftover)));

    add(
      AwsOamSinkPolicy(
        localName: 'oam_sink_policy',
        policy: .literal(policy),
        sinkIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsObservabilityadminCentralizationRuleForOrganization(
        localName: 'observabilityadmin_centralization_rule_for_organ',
        ruleName: .literal(leftover),
        rule: [
          ObservabilityadminCentralizationRuleForOrganizationRule(
            source: [
              ObservabilityadminCentralizationRuleForOrganizationSource(
                regions: .literal(['us-east-1']),
                scope: .literal(leftover),
              ),
            ],
            destination: [
              ObservabilityadminCentralizationRuleForOrganizationDestination(
                account: .literal('123456789012'),
                region: .literal('us-east-1'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsObservabilityadminS3TableIntegration(
        localName: 'observabilityadmin_s3_table_integration',
        roleArn: .literal(arn),
        encryption: [
          ObservabilityadminS3TableIntegrationEncryption(
            sseAlgorithm: .literal(.awsKms),
          ),
        ],
      ),
    );

    add(
      AwsObservabilityadminTelemetryEnrichment(
        localName: 'observabilityadmin_telemetry_enrichment',
      ),
    );

    add(
      AwsObservabilityadminTelemetryEvaluation(
        localName: 'observabilityadmin_telemetry_evaluation',
      ),
    );

    add(
      AwsObservabilityadminTelemetryEvaluationForOrganization(
        localName: 'observabilityadmin_telemetry_evaluation_for_orga',
      ),
    );

    add(
      AwsObservabilityadminTelemetryPipeline(
        localName: 'observabilityadmin_telemetry_pipeline',
        name: .literal(leftover),
        configuration: [
          ObservabilityadminTelemetryPipelineConfiguration(
            body: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsObservabilityadminTelemetryRule(
        localName: 'observabilityadmin_telemetry_rule',
        ruleName: .literal(leftover),
        rule: [
          ObservabilityadminTelemetryRuleRule(telemetryType: .literal(.logs)),
        ],
      ),
    );

    add(
      AwsObservabilityadminTelemetryRuleForOrganization(
        localName: 'observabilityadmin_telemetry_rule_for_organizati',
        ruleName: .literal(leftover),
        rule: [
          ObservabilityadminTelemetryRuleForOrganizationRule(
            telemetryType: .literal(.logs),
          ),
        ],
      ),
    );

    add(
      AwsOdbCloudAutonomousVmCluster(
        localName: 'odb_cloud_autonomous_vm_cluster',
        autonomousDataStorageSizeInTbs: .literal(200),
        cpuCoreCountPerNode: .literal(200),
        dbServers: .literal([leftover]),
        displayName: .literal(leftover),
        memoryPerOracleComputeUnitInGbs: .literal(200),
        scanListenerPortNonTls: .literal(200),
        scanListenerPortTls: .literal(200),
        totalContainerDatabases: .literal(200),
        maintenanceWindow: [
          OdbCloudAutonomousVmClusterMaintenanceWindow(
            preference: .literal(.noPreference),
          ),
        ],
        odbNetworkId: .literal(leftover),
        cloudExadataInfrastructureId: .literal(leftover),
      ),
    );

    add(
      AwsOdbCloudExadataInfrastructure(
        localName: 'odb_cloud_exadata_infrastructure',
        availabilityZoneId: .literal('us-east-1a'),
        displayName: .literal(leftover),
        shape: .literal(leftover),
        maintenanceWindow: [
          OdbCloudExadataInfrastructureMaintenanceWindow(
            customActionTimeoutInMins: .literal(200),
            isCustomActionTimeoutEnabled: .literal(true),
            patchingMode: .literal(.rolling),
            preference: .literal(.noPreference),
          ),
        ],
      ),
    );

    add(
      AwsOdbCloudVmCluster(
        localName: 'odb_cloud_vm_cluster',
        cpuCoreCount: .literal(200),
        dataStorageSizeInTbs: .literal(200),
        dbServers: .literal([leftover]),
        displayName: .literal(leftover),
        giVersion: .literal('19.0.0.0'),
        hostnamePrefix: .literal(leftover),
        sshPublicKeys: .literal([leftover]),
        dataCollectionOptions: [
          OdbCloudVmClusterDataCollectionOptions(
            isDiagnosticsEventsEnabled: .literal(true),
            isHealthMonitoringEnabled: .literal(true),
            isIncidentLogsEnabled: .literal(true),
          ),
        ],
        odbNetworkId: .literal(leftover),
        cloudExadataInfrastructureId: .literal(leftover),
      ),
    );

    add(
      AwsOdbIamRoleAssociation(
        localName: 'odb_iam_role_association',
        awsIntegration: .literal(leftover),
        iamRoleArn: .literal(arn),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsOdbNetwork(
        localName: 'odb_network',
        availabilityZoneId: .literal('us-east-1a'),
        backupSubnetCidr: .literal('10.0.0.0/16'),
        clientSubnetCidr: .literal('10.0.0.0/16'),
        displayName: .literal(leftover),
        s3Access: .literal(.enabled),
        zeroEtlAccess: .literal(.enabled),
      ),
    );

    add(
      AwsOdbNetworkPeeringConnection(
        localName: 'odb_network_peering_connection',
        displayName: .literal(leftover),
        peerNetworkId: .literal(leftover),
        odbNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchApplication(
        localName: 'opensearch_application',
        name: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchAuthorizeVpcEndpointAccess(
        localName: 'opensearch_authorize_vpc_endpoint_access',
        account: .literal(leftover),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchDomain(
        localName: 'opensearch_domain',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchDomainPolicy(
        localName: 'opensearch_domain_policy',
        accessPolicies: .literal(policy),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchDomainSamlOptions(
        localName: 'opensearch_domain_saml_options',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchInboundConnectionAccepter(
        localName: 'opensearch_inbound_connection_accepter',
        connectionId: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchOutboundConnection(
        localName: 'opensearch_outbound_connection',
        connectionAlias: .literal(leftover),
        localDomainInfo: OpensearchOutboundConnectionLocalDomainInfo(
          domainName: .literal(leftover),
          ownerId: .literal(leftover),
          region: .literal('us-east-1'),
        ),
        remoteDomainInfo: OpensearchOutboundConnectionRemoteDomainInfo(
          domainName: .literal(leftover),
          ownerId: .literal(leftover),
          region: .literal('us-east-1'),
        ),
      ),
    );

    add(
      AwsOpensearchPackage(
        localName: 'opensearch_package',
        packageName: .literal(leftover),
        packageType: .literal(.txtDictionary),
        packageSource: OpensearchPackageSource(
          s3BucketName: .literal(leftover),
          s3Key: .literal(leftover),
        ),
      ),
    );

    add(
      AwsOpensearchPackageAssociation(
        localName: 'opensearch_package_association',
        domainName: .literal(leftover),
        packageId: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchVpcEndpoint(
        localName: 'opensearch_vpc_endpoint',
        domainArn: .literal(arn),
        vpcOptions: OpensearchVpcEndpointVpcOptions(
          subnetIds: .literal([.literal(leftover)]),
        ),
      ),
    );

    add(
      AwsOpensearchserverlessAccessPolicy(
        localName: 'opensearchserverless_access_policy',
        name: .literal(leftover),
        policy: .literal(policy),
        type: .literal(.data),
      ),
    );

    add(
      AwsOpensearchserverlessCollection(
        localName: 'opensearchserverless_collection',
        name: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchserverlessCollectionGroup(
        localName: 'opensearchserverless_collection_group',
        name: .literal(leftover),
        standbyReplicas: .literal(.enabled),
      ),
    );

    add(
      AwsOpensearchserverlessLifecyclePolicy(
        localName: 'opensearchserverless_lifecycle_policy',
        name: .literal(leftover),
        policy: .literal(policy),
        type: .literal(.retention),
      ),
    );

    add(
      AwsOpensearchserverlessSecurityConfig(
        localName: 'opensearchserverless_security_config',
        name: .literal(leftover),
        type: .literal(.saml),
        options: .iamFederationOptions([
          OpensearchserverlessSecurityConfigIamFederationOptions(
            groupAttribute: .literal(leftover),
          ),
        ]),
      ),
    );

    add(
      AwsOpensearchserverlessSecurityPolicy(
        localName: 'opensearchserverless_security_policy',
        name: .literal(leftover),
        policy: .literal(policy),
        type: .literal(.encryption),
      ),
    );

    add(
      AwsOpensearchserverlessVpcEndpoint(
        localName: 'opensearchserverless_vpc_endpoint',
        name: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsOrganizationsAccount(
        localName: 'organizations_account',
        email: .literal('leftover@example.com'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsOrganizationsAwsServiceAccess(
        localName: 'organizations_aws_service_access',
        servicePrincipal: .literal('ec2.amazonaws.com'),
      ),
    );

    add(
      AwsOrganizationsDelegatedAdministrator(
        localName: 'organizations_delegated_administrator',
        accountId: .literal('123456789012'),
        servicePrincipal: .literal(leftover),
      ),
    );

    add(AwsOrganizationsOrganization(localName: 'organizations_organization'));

    add(
      AwsOrganizationsOrganizationalUnit(
        localName: 'organizations_organizational_unit',
        name: .literal(leftover),
        parentId: .literal('r-ab12'),
      ),
    );

    add(
      AwsOrganizationsPolicy(
        localName: 'organizations_policy',
        content: .literal(policy),
        name: .literal(leftover),
      ),
    );

    add(
      AwsOrganizationsPolicyAttachment(
        localName: 'organizations_policy_attachment',
        policyId: .literal(leftover),
        targetId: .literal(leftover),
      ),
    );

    add(
      AwsOrganizationsResourcePolicy(
        localName: 'organizations_resource_policy',
        content: .literal(policy),
      ),
    );

    add(
      AwsOrganizationsTag(
        localName: 'organizations_tag',
        key: .literal(leftover),
        resourceId: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(
      AwsOsisPipeline(
        localName: 'osis_pipeline',
        maxUnits: .literal(200),
        minUnits: .literal(200),
        pipelineConfigurationBody: .literal(leftover),
        pipelineName: .literal(leftover),
      ),
    );

    add(
      AwsOsisPipelineEndpoint(
        localName: 'osis_pipeline_endpoint',
        pipelineArn: .literal(arn),
      ),
    );

    add(
      AwsOsisResourcePolicy(
        localName: 'osis_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsOutpostsCapacityTask(
        localName: 'outposts_capacity_task',
        outpostIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsPaymentcryptographyKey(
        localName: 'paymentcryptography_key',
        exportable: .literal(true),
      ),
    );

    add(
      AwsPaymentcryptographyKeyAlias(
        localName: 'paymentcryptography_key_alias',
        aliasName: .literal('alias/leftover'),
      ),
    );

    add(
      AwsPinpointAdmChannel(
        localName: 'pinpoint_adm_channel',
        applicationId: .literal(leftover),
        clientId: .variable('leftover_secret'),
        clientSecret: .variable('leftover_secret'),
      ),
    );

    add(
      AwsPinpointApnsChannel(
        localName: 'pinpoint_apns_channel',
        applicationId: .literal(leftover),
      ),
    );

    add(
      AwsPinpointApnsSandboxChannel(
        localName: 'pinpoint_apns_sandbox_channel',
        applicationId: .literal(leftover),
      ),
    );

    add(
      AwsPinpointApnsVoipChannel(
        localName: 'pinpoint_apns_voip_channel',
        applicationId: .literal(leftover),
      ),
    );

    add(
      AwsPinpointApnsVoipSandboxChannel(
        localName: 'pinpoint_apns_voip_sandbox_channel',
        applicationId: .literal(leftover),
      ),
    );

    add(AwsPinpointApp(localName: 'pinpoint_app'));

    add(
      AwsPinpointBaiduChannel(
        localName: 'pinpoint_baidu_channel',
        apiKey: .variable('leftover_secret'),
        applicationId: .literal(leftover),
        secretKey: .variable('leftover_secret'),
      ),
    );

    add(
      AwsPinpointEmailChannel(
        localName: 'pinpoint_email_channel',
        applicationId: .literal(leftover),
        fromAddress: .literal(leftover),
        identity: .literal(arn),
      ),
    );

    add(
      AwsPinpointEmailTemplate(
        localName: 'pinpoint_email_template',
        templateName: .literal(leftover),
      ),
    );

    add(
      AwsPinpointEventStream(
        localName: 'pinpoint_event_stream',
        applicationId: .literal(leftover),
        destinationStreamArn: .literal(arn),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsPinpointGcmChannel(
        localName: 'pinpoint_gcm_channel',
        credentials: .serviceJson(.variable('leftover_secret')),
        applicationId: .literal(leftover),
      ),
    );

    add(
      AwsPinpointSmsChannel(
        localName: 'pinpoint_sms_channel',
        applicationId: .literal(leftover),
      ),
    );

    add(
      AwsPinpointsmsvoicev2ConfigurationSet(
        localName: 'pinpointsmsvoicev2_configuration_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsPinpointsmsvoicev2EventDestination(
        localName: 'pinpointsmsvoicev2_event_destination',
        configurationSetName: .literal(leftover),
        eventDestinationName: .literal(leftover),
        matchingEventTypes: [.literal(.all)],
        target: .cloudwatchLogsDestination([
          Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestination(
            iamRoleArn: .literal(arn),
            logGroupArn: .literal(arn),
          ),
        ]),
      ),
    );

    add(
      AwsPinpointsmsvoicev2Keyword(
        localName: 'pinpointsmsvoicev2_keyword',
        keyword: .literal('LEFTOVER'),
        keywordMessage: .literal(leftover),
        originationIdentityArn: .literal(arn),
      ),
    );

    add(
      AwsPinpointsmsvoicev2OptOutList(
        localName: 'pinpointsmsvoicev2_opt_out_list',
        name: .literal(leftover),
      ),
    );

    add(
      AwsPinpointsmsvoicev2PhoneNumber(
        localName: 'pinpointsmsvoicev2_phone_number',
        isoCountryCode: .literal('US'),
        messageType: .literal(.transactional),
        numberCapabilities: [.literal(.sms)],
        numberType: .literal(.longCode),
      ),
    );

    add(
      AwsPinpointsmsvoicev2Pool(
        localName: 'pinpointsmsvoicev2_pool',
        messageType: .literal(.transactional),
        originationIdentities: .literal([leftover]),
      ),
    );

    add(
      AwsPinpointsmsvoicev2ResourcePolicy(
        localName: 'pinpointsmsvoicev2_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsPinpointsmsvoicev2SenderId(
        localName: 'pinpointsmsvoicev2_sender_id',
        isoCountryCode: .literal('US'),
        senderId: .literal('LEFTOVER'),
      ),
    );

    add(
      AwsPipesPipe(
        localName: 'pipes_pipe',
        roleArn: .literal(arn),
        source: .literal(arn),
        target: .literal(arn),
      ),
    );

    add(
      AwsPlacementGroup(
        localName: 'placement_group',
        name: .literal(leftover),
        strategy: .literal(.cluster),
      ),
    );

    add(
      AwsPrometheusAlertManagerDefinition(
        localName: 'prometheus_alert_manager_definition',
        definition: .literal(leftover),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsPrometheusAnomalyDetector(
        localName: 'prometheus_anomaly_detector',
        alias: .literal(leftover),
        workspaceId: .literal(leftover),
        configuration: [
          PrometheusAnomalyDetectorConfiguration(
            randomCutForest: [
              PrometheusAnomalyDetectorRandomCutForest(
                query: .literal(leftover),
              ),
            ],
          ),
        ],
        missingDataAction: [.markAsAnomaly(.literal(true))],
      ),
    );

    add(
      AwsPrometheusQueryLoggingConfiguration(
        localName: 'prometheus_query_logging_configuration',
        workspaceId: .literal(leftover),
        destination: [
          PrometheusQueryLoggingConfigurationDestination(
            filters: [
              PrometheusQueryLoggingConfigurationFilters(
                qspThreshold: .literal(200),
              ),
            ],
            cloudwatchLogs: [
              PrometheusQueryLoggingConfigurationCloudwatchLogs(
                logGroupArn: .literal(
                  'arn:aws:logs:us-east-1:123456789012:log-group:leftover:*',
                ),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsPrometheusResourcePolicy(
        localName: 'prometheus_resource_policy',
        policyDocument: .literal(policy),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsPrometheusRuleGroupNamespace(
        localName: 'prometheus_rule_group_namespace',
        data: .literal(leftover),
        name: .literal(leftover),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsPrometheusScraper(
        localName: 'prometheus_scraper',
        scrapeConfiguration: .literal(leftover),
        destination: [
          PrometheusScraperDestination(
            amp: [PrometheusScraperAmp(workspaceArn: .literal(arn))],
          ),
        ],
      ),
    );

    add(
      AwsPrometheusScraperLoggingConfiguration(
        localName: 'prometheus_scraper_logging_configuration',
        scraperId: .literal(leftover),
        loggingDestination: [
          PrometheusScraperLoggingConfigurationLoggingDestination(
            cloudwatchLogs: [
              PrometheusScraperLoggingConfigurationCloudwatchLogs(
                logGroupArn: .literal(
                  'arn:aws:logs:us-east-1:123456789012:log-group:leftover:*',
                ),
              ),
            ],
          ),
        ],
      ),
    );

    add(AwsPrometheusWorkspace(localName: 'prometheus_workspace'));

    add(
      AwsPrometheusWorkspaceConfiguration(
        localName: 'prometheus_workspace_configuration',
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsProxyProtocolPolicy(
        localName: 'proxy_protocol_policy',
        instancePorts: .literal(['64512']),
        loadBalancer: .literal(leftover),
      ),
    );

    add(
      AwsQbusinessApplication(
        localName: 'qbusiness_application',
        displayName: .literal(leftover),
        iamServiceRoleArn: .literal(arn),
        identityCenterInstanceArn: .literal(arn),
        attachmentsConfiguration: [
          QbusinessApplicationAttachmentsConfiguration(
            attachmentsControlMode: .literal(.enabled),
          ),
        ],
      ),
    );

    add(
      AwsQldbLedger(
        localName: 'qldb_ledger',
        permissionsMode: .literal(.allowAll),
      ),
    );

    add(
      AwsQldbStream(
        localName: 'qldb_stream',
        inclusiveStartTime: .literal('2026-01-01T00:00:00Z'),
        ledgerName: .literal(leftover),
        roleArn: .literal(arn),
        streamName: .literal(leftover),
        kinesisConfiguration: QldbStreamKinesisConfiguration(
          streamArn: .literal(arn),
        ),
      ),
    );

    add(AwsQuicksightAccountSettings(localName: 'quicksight_account_settings'));

    add(
      AwsQuicksightAccountSubscription(
        localName: 'quicksight_account_subscription',
        accountName: .literal(leftover),
        authenticationMethod: .literal(.iamAndQuicksight),
        edition: .literal(.standard),
        notificationEmail: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsQuicksightAnalysis(
        localName: 'quicksight_analysis',
        analysisId: .literal(leftover),
        name: .literal(leftover),
        sourceEntity: QuicksightAnalysisSourceEntity(
          sourceTemplate: QuicksightAnalysisSourceTemplate(
            arn: .literal(arn),
            dataSetReferences: [
              QuicksightAnalysisDataSetReferences(
                dataSetArn: .literal(arn),
                dataSetPlaceholder: .literal(leftover),
              ),
            ],
          ),
        ),
      ),
    );

    add(
      AwsQuicksightCustomPermissions(
        localName: 'quicksight_custom_permissions',
        customPermissionsName: .literal(leftover),
        capabilities: [
          QuicksightCustomPermissionsCapabilities(
            addOrRunAnomalyDetectionForAnalyses: .literal('DENY'),
          ),
        ],
      ),
    );

    add(
      AwsQuicksightDashboard(
        localName: 'quicksight_dashboard',
        dashboardId: .literal(leftover),
        name: .literal(leftover),
        versionDescription: .literal(leftover),
        sourceEntity: QuicksightDashboardSourceEntity(
          sourceTemplate: QuicksightDashboardSourceTemplate(
            arn: .literal(arn),
            dataSetReferences: [
              QuicksightDashboardDataSetReferences(
                dataSetArn: .literal(arn),
                dataSetPlaceholder: .literal(leftover),
              ),
            ],
          ),
        ),
      ),
    );

    add(
      AwsQuicksightDataSet(
        localName: 'quicksight_data_set',
        dataSetId: .literal(leftover),
        importMode: .literal(.spice),
        name: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightDataSource(
        localName: 'quicksight_data_source',
        dataSourceId: .literal(leftover),
        name: .literal(leftover),
        type: .literal(.adobeAnalytics),
        parameters: QuicksightDataSourceParameters(
          amazonElasticsearch: QuicksightDataSourceAmazonElasticsearch(
            domain: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsQuicksightFolder(
        localName: 'quicksight_folder',
        folderId: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightFolderMembership(
        localName: 'quicksight_folder_membership',
        folderId: .literal(leftover),
        memberId: .literal(leftover),
        memberType: .literal(.dashboard),
      ),
    );

    add(
      AwsQuicksightGroup(
        localName: 'quicksight_group',
        groupName: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightGroupMembership(
        localName: 'quicksight_group_membership',
        groupName: .literal(leftover),
        memberName: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightIamPolicyAssignment(
        localName: 'quicksight_iam_policy_assignment',
        assignmentName: .literal(leftover),
        assignmentStatus: .literal(.enabled),
      ),
    );

    add(
      AwsQuicksightIngestion(
        localName: 'quicksight_ingestion',
        dataSetId: .literal(leftover),
        ingestionId: .literal(leftover),
        ingestionType: .literal(.incrementalRefresh),
      ),
    );

    add(
      AwsQuicksightIpRestriction(
        localName: 'quicksight_ip_restriction',
        enabled: .literal(true),
      ),
    );

    add(
      AwsQuicksightKeyRegistration(
        localName: 'quicksight_key_registration',
        keyRegistration: [
          QuicksightKeyRegistrationKeyRegistration(keyArn: .literal(arn)),
        ],
      ),
    );

    add(
      AwsQuicksightNamespace(
        localName: 'quicksight_namespace',
        namespace: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightRefreshSchedule(
        localName: 'quicksight_refresh_schedule',
        dataSetId: .literal(leftover),
        scheduleId: .literal(leftover),
        schedule: [
          QuicksightRefreshScheduleSchedule(
            refreshType: .literal(.incrementalRefresh),
            scheduleFrequency: [
              QuicksightRefreshScheduleFrequency(interval: .literal(.minute15)),
            ],
          ),
        ],
      ),
    );

    add(
      AwsQuicksightRoleCustomPermission(
        localName: 'quicksight_role_custom_permission',
        customPermissionsName: .literal(leftover),
        role: .literal(.admin),
      ),
    );

    add(
      AwsQuicksightRoleMembership(
        localName: 'quicksight_role_membership',
        memberName: .literal(leftover),
        role: .literal(.admin),
      ),
    );

    add(
      AwsQuicksightTemplate(
        localName: 'quicksight_template',
        name: .literal(leftover),
        templateId: .literal(leftover),
        versionDescription: .literal(leftover),
        sourceEntity: QuicksightTemplateSourceEntity(
          sourceAnalysis: QuicksightTemplateSourceAnalysis(
            arn: .literal(arn),
            dataSetReferences: [
              QuicksightTemplateDataSetReferences(
                dataSetArn: .literal(arn),
                dataSetPlaceholder: .literal(leftover),
              ),
            ],
          ),
        ),
      ),
    );

    add(
      AwsQuicksightTemplateAlias(
        localName: 'quicksight_template_alias',
        aliasName: .literal(leftover),
        templateId: .literal(leftover),
        templateVersionNumber: .literal(200),
      ),
    );

    add(
      AwsQuicksightTheme(
        localName: 'quicksight_theme',
        baseThemeId: .literal(leftover),
        name: .literal(leftover),
        themeId: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightUser(
        localName: 'quicksight_user',
        email: .literal('leftover@example.com'),
        identityType: .literal(.iam),
        userRole: .literal(.admin),
      ),
    );

    add(
      AwsQuicksightUserCustomPermission(
        localName: 'quicksight_user_custom_permission',
        customPermissionsName: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightVpcConnection(
        localName: 'quicksight_vpc_connection',
        name: .literal(leftover),
        roleArn: .literal(arn),
        securityGroupIds: .literal([.literal('sg-tq')]),
        subnetIds: .literal([
          .literal('subnet-0123456789abcdef0'),
          .literal('subnet-0123456789abcdef1'),
        ]),
        vpcConnectionId: .literal(leftover),
      ),
    );

    add(
      AwsRamPermission(
        localName: 'ram_permission',
        name: .literal(leftover),
        policyTemplate: .literal(leftover),
        resourceType: .literal(leftover),
      ),
    );

    add(
      AwsRamPrincipalAssociation(
        localName: 'ram_principal_association',
        principal: .literal(arn),
        resourceShareArn: .literal(arn),
      ),
    );

    add(
      AwsRamResourceAssociation(
        localName: 'ram_resource_association',
        resourceArn: .literal(arn),
        resourceShareArn: .literal(arn),
      ),
    );

    add(
      AwsRamResourceShare(
        localName: 'ram_resource_share',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRamResourceShareAccepter(
        localName: 'ram_resource_share_accepter',
        shareArn: .literal(arn),
      ),
    );

    add(
      AwsRamResourceShareAssociationsExclusive(
        localName: 'ram_resource_share_associations_exclusive',
        resourceShareArn: .literal(arn),
      ),
    );

    add(
      AwsRamSharingWithOrganization(localName: 'ram_sharing_with_organization'),
    );

    add(
      AwsRbinRule(
        localName: 'rbin_rule',
        resourceType: .literal(.ebsSnapshot),
        retentionPeriod: RbinRuleRetentionPeriod(
          retentionPeriodUnit: .literal(.days),
          retentionPeriodValue: .literal(200),
        ),
      ),
    );

    add(
      AwsRdsCertificate(
        localName: 'rds_certificate',
        certificateIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRdsCluster(localName: 'rds_cluster', engine: .literal('aurora-mysql')),
    );

    add(
      AwsRdsClusterActivityStream(
        localName: 'rds_cluster_activity_stream',
        kmsKeyId: .literal(leftover),
        mode: .literal(.sync),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsRdsClusterEndpoint(
        localName: 'rds_cluster_endpoint',
        clusterEndpointIdentifier: .literal(leftover),
        clusterIdentifier: .literal(leftover),
        customEndpointType: .literal(.reader),
      ),
    );

    add(
      AwsRdsClusterInstance(
        localName: 'rds_cluster_instance',
        clusterIdentifier: .literal(leftover),
        engine: .literal('aurora-mysql'),
        instanceClass: .literal(leftover),
      ),
    );

    add(
      AwsRdsClusterParameterGroup(
        localName: 'rds_cluster_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsRdsClusterRoleAssociation(
        localName: 'rds_cluster_role_association',
        dbClusterIdentifier: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsRdsClusterSnapshotCopy(
        localName: 'rds_cluster_snapshot_copy',
        sourceDbClusterSnapshotIdentifier: .literal(leftover),
        targetDbClusterSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRdsCustomDbEngineVersion(
        localName: 'rds_custom_db_engine_version',
        engine: .literal('custom-oracle-ee'),
        engineVersion: .literal(leftover),
      ),
    );

    add(
      AwsRdsExportTask(
        localName: 'rds_export_task',
        exportTaskIdentifier: .literal(leftover),
        iamRoleArn: .literal(arn),
        kmsKeyId: .literal(leftover),
        s3BucketName: .literal(leftover),
        sourceArn: .literal(arn),
      ),
    );

    add(
      AwsRdsGlobalCluster(
        localName: 'rds_global_cluster',
        globalClusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRdsInstanceState(
        localName: 'rds_instance_state',
        identifier: .literal(leftover),
        state: .literal(.available),
      ),
    );

    add(
      AwsRdsIntegration(
        localName: 'rds_integration',
        integrationName: .literal(leftover),
        sourceArn: .literal(arn),
        targetArn: .literal(arn),
      ),
    );

    add(
      AwsRdsReservedInstance(
        localName: 'rds_reserved_instance',
        offeringId: .literal(leftover),
      ),
    );

    add(
      AwsRdsShardGroup(
        localName: 'rds_shard_group',
        dbClusterIdentifier: .literal(leftover),
        dbShardGroupIdentifier: .literal(leftover),
        maxAcu: .literal(200),
      ),
    );

    add(
      AwsRedshiftAuthenticationProfile(
        localName: 'redshift_authentication_profile',
        authenticationProfileContent: .literal(policy),
        authenticationProfileName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftCluster(
        localName: 'redshift_cluster',
        clusterIdentifier: .literal(leftover),
        nodeType: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftClusterIamRoles(
        localName: 'redshift_cluster_iam_roles',
        clusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftClusterSnapshot(
        localName: 'redshift_cluster_snapshot',
        clusterIdentifier: .literal(leftover),
        snapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftDataShareAuthorization(
        localName: 'redshift_data_share_authorization',
        consumerIdentifier: .literal(leftover),
        dataShareArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftDataShareConsumerAssociation(
        localName: 'redshift_data_share_consumer_association',
        consumer: .associateEntireAccount(.literal(true)),
        dataShareArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftEndpointAccess(
        localName: 'redshift_endpoint_access',
        clusterIdentifier: .literal(leftover),
        endpointName: .literal(leftover),
        subnetGroupName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftEndpointAuthorization(
        localName: 'redshift_endpoint_authorization',
        account: .literal('123456789012'),
        clusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftEventSubscription(
        localName: 'redshift_event_subscription',
        name: .literal(leftover),
        snsTopicArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftHsmClientCertificate(
        localName: 'redshift_hsm_client_certificate',
        hsmClientCertificateIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftHsmConfiguration(
        localName: 'redshift_hsm_configuration',
        description: .literal(leftover),
        hsmConfigurationIdentifier: .literal(leftover),
        hsmIpAddress: .literal('10.0.0.1'),
        hsmPartitionName: .literal(leftover),
        hsmPartitionPassword: .variable('leftover_secret'),
        hsmServerPublicCertificate: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftIdcApplication(
        localName: 'redshift_idc_application',
        iamRoleArn: .literal(arn),
        idcDisplayName: .literal(leftover),
        idcInstanceArn: .literal(arn),
        redshiftIdcApplicationName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftIntegration(
        localName: 'redshift_integration',
        integrationName: .literal(leftover),
        sourceArn: .literal(arn),
        targetArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftLogging(
        localName: 'redshift_logging',
        clusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftNamespaceRegistration(
        localName: 'redshift_namespace_registration',
        consumerIdentifier: .literal(leftover),
        namespaceType: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftParameterGroup(
        localName: 'redshift_parameter_group',
        family: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftPartner(
        localName: 'redshift_partner',
        accountId: .literal('123456789012'),
        clusterIdentifier: .literal(leftover),
        databaseName: .literal(leftover),
        partnerName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftResourcePolicy(
        localName: 'redshift_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftScheduledAction(
        localName: 'redshift_scheduled_action',
        iamRole: .literal(leftover),
        name: .literal(leftover),
        schedule: .literal(leftover),
        targetAction: .pauseCluster(
          RedshiftScheduledActionPauseCluster(
            clusterIdentifier: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsRedshiftSnapshotCopy(
        localName: 'redshift_snapshot_copy',
        clusterIdentifier: .literal(leftover),
        destinationRegion: .literal('us-east-1'),
      ),
    );

    add(
      AwsRedshiftSnapshotCopyGrant(
        localName: 'redshift_snapshot_copy_grant',
        snapshotCopyGrantName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftSnapshotSchedule(
        localName: 'redshift_snapshot_schedule',
        definitions: .literal([leftover]),
      ),
    );

    add(
      AwsRedshiftSnapshotScheduleAssociation(
        localName: 'redshift_snapshot_schedule_association',
        clusterIdentifier: .literal(leftover),
        scheduleIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftSubnetGroup(
        localName: 'redshift_subnet_group',
        name: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsRedshiftUsageLimit(
        localName: 'redshift_usage_limit',
        amount: .literal(200),
        clusterIdentifier: .literal(leftover),
        featureType: .literal(.spectrum),
        limitType: .literal(.time),
      ),
    );

    add(
      AwsRedshiftdataStatement(
        localName: 'redshiftdata_statement',
        database: .literal(leftover),
        sql: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessCustomDomainAssociation(
        localName: 'redshiftserverless_custom_domain_association',
        customDomainCertificateArn: .literal(arn),
        customDomainName: .literal(leftover),
        workgroupName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessEndpointAccess(
        localName: 'redshiftserverless_endpoint_access',
        endpointName: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
        workgroupName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessNamespace(
        localName: 'redshiftserverless_namespace',
        namespaceName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessResourcePolicy(
        localName: 'redshiftserverless_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftserverlessSnapshot(
        localName: 'redshiftserverless_snapshot',
        namespaceName: .literal(leftover),
        snapshotName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessUsageLimit(
        localName: 'redshiftserverless_usage_limit',
        amount: .literal(200),
        resourceArn: .literal(arn),
        usageType: .literal(.serverlessCompute),
      ),
    );

    add(
      AwsRedshiftserverlessWorkgroup(
        localName: 'redshiftserverless_workgroup',
        namespaceName: .literal(leftover),
        workgroupName: .literal(leftover),
      ),
    );

    add(
      AwsRekognitionCollection(
        localName: 'rekognition_collection',
        collectionId: .literal(leftover),
      ),
    );

    add(
      AwsRekognitionProject(
        localName: 'rekognition_project',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRekognitionStreamProcessor(
        localName: 'rekognition_stream_processor',
        name: .literal(leftover),
        roleArn: .literal(arn),
        input: [
          RekognitionStreamProcessorInput(
            kinesisVideoStream: [
              RekognitionStreamProcessorKinesisVideoStream(arn: .literal(arn)),
            ],
          ),
        ],
        output: [
          .kinesisDataStream([
            RekognitionStreamProcessorKinesisDataStream(arn: .literal(arn)),
          ]),
        ],
        settings: [
          .connectedHome([
            RekognitionStreamProcessorConnectedHome(
              labels: [.literal(.person)],
            ),
          ]),
        ],
      ),
    );

    add(
      AwsResiliencehubResiliencyPolicy(
        localName: 'resiliencehub_resiliency_policy',
        name: .literal(leftover),
        tier: .literal(.missioncritical),
      ),
    );

    add(
      AwsResiliencehubv2Assertion(
        localName: 'resiliencehubv2_assertion',
        serviceArn: .literal(arn),
        text: .literal(leftover),
      ),
    );

    add(
      AwsResiliencehubv2InputSource(
        localName: 'resiliencehubv2_input_source',
        serviceArn: .literal(arn),
        resourceConfiguration: [
          Resiliencehubv2InputSourceResourceConfiguration(
            cfnStackArn: .literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsResiliencehubv2Policy(
        localName: 'resiliencehubv2_policy',
        name: .literal(leftover),
        multiAz: [
          Resiliencehubv2PolicyMultiAz(
            disasterRecoveryApproach: .literal(.activeActive),
          ),
        ],
      ),
    );

    add(
      AwsResiliencehubv2Service(
        localName: 'resiliencehubv2_service',
        name: .literal(leftover),
        regions: .literal(['us-east-1']),
        permissionModel: [
          Resiliencehubv2ServicePermissionModel(
            invokerRoleName: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsResiliencehubv2ServiceFunction(
        localName: 'resiliencehubv2_service_function',
        criticality: .literal(.primary),
        name: .literal(leftover),
        serviceArn: .literal(arn),
      ),
    );

    add(
      AwsResiliencehubv2System(
        localName: 'resiliencehubv2_system',
        name: .literal(leftover),
      ),
    );

    add(
      AwsResiliencehubv2UserJourney(
        localName: 'resiliencehubv2_user_journey',
        name: .literal(leftover),
        systemArn: .literal(arn),
      ),
    );

    add(
      AwsResourceexplorer2Index(
        localName: 'resourceexplorer2_index',
        type: .literal(.local),
      ),
    );

    add(
      AwsResourceexplorer2View(
        localName: 'resourceexplorer2_view',
        name: .literal(leftover),
      ),
    );

    add(
      AwsResourcegroupsGroup(
        localName: 'resourcegroups_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsResourcegroupsResource(
        localName: 'resourcegroups_resource',
        groupArn: .literal(arn),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsRolesanywhereProfile(
        localName: 'rolesanywhere_profile',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRolesanywhereTrustAnchor(
        localName: 'rolesanywhere_trust_anchor',
        name: .literal(leftover),
        source: RolesanywhereTrustAnchorSource(
          sourceType: .literal(.awsAcmPca),
          sourceData: RolesanywhereTrustAnchorSourceData(
            acmPcaArn: .literal(arn),
          ),
        ),
      ),
    );

    add(
      AwsRoute(
        localName: 'route',
        routeTableId: .literal(leftover),
        ipv4Egress: .destinationCidrBlock(.literal('10.0.0.0/16')),
        carrierIpv6: .carrierGatewayId(.literal(leftover)),
      ),
    );

    add(
      AwsRoute53CidrCollection(
        localName: 'route53_cidr_collection',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53CidrLocation(
        localName: 'route53_cidr_location',
        cidrBlocks: .literal(['10.0.0.0/16']),
        cidrCollectionId: .literal('10.0.0.0/16'),
        name: .literal(leftover),
      ),
    );

    add(AwsRoute53DelegationSet(localName: 'route53_delegation_set'));

    add(
      AwsRoute53HealthCheck(
        localName: 'route53_health_check',
        type: .literal(.http),
      ),
    );

    add(
      AwsRoute53HostedZoneDnssec(
        localName: 'route53_hosted_zone_dnssec',
        hostedZoneId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53KeySigningKey(
        localName: 'route53_key_signing_key',
        hostedZoneId: .literal(leftover),
        keyManagementServiceArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53QueryLog(
        localName: 'route53_query_log',
        cloudwatchLogGroupArn: .literal(arn),
        zoneId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53RecordsExclusive(
        localName: 'route53_records_exclusive',
        zoneId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverConfig(
        localName: 'route53_resolver_config',
        autodefinedReverseFlag: .literal(.enable),
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverDnssecConfig(
        localName: 'route53_resolver_dnssec_config',
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverEndpoint(
        localName: 'route53_resolver_endpoint',
        direction: .literal(.inbound),
        securityGroupIds: .literal([.literal(leftover)]),
        ipAddress: [
          Route53ResolverEndpointIpAddress(
            subnetId: .literal('subnet-0123456789abcdef0'),
          ),
          Route53ResolverEndpointIpAddress(
            subnetId: .literal('subnet-0123456789abcdef01'),
          ),
        ],
      ),
    );

    add(
      AwsRoute53ResolverFirewallConfig(
        localName: 'route53_resolver_firewall_config',
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverFirewallDomainList(
        localName: 'route53_resolver_firewall_domain_list',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverFirewallRule(
        localName: 'route53_resolver_firewall_rule',
        action: .literal(.allow),
        firewallRuleGroupId: .literal(leftover),
        name: .literal(leftover),
        priority: .literal(200),
      ),
    );

    add(
      AwsRoute53ResolverFirewallRuleGroup(
        localName: 'route53_resolver_firewall_rule_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverFirewallRuleGroupAssociation(
        localName: 'route53_resolver_firewall_rule_group_association',
        firewallRuleGroupId: .literal(leftover),
        name: .literal(leftover),
        priority: .literal(200),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsRoute53ResolverQueryLogConfig(
        localName: 'route53_resolver_query_log_config',
        destinationArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverQueryLogConfigAssociation(
        localName: 'route53_resolver_query_log_config_association',
        resolverQueryLogConfigId: .literal(leftover),
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverRule(
        localName: 'route53_resolver_rule',
        domainName: .literal(leftover),
        ruleType: .literal(.forward),
      ),
    );

    add(
      AwsRoute53ResolverRuleAssociation(
        localName: 'route53_resolver_rule_association',
        resolverRuleId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsRoute53TrafficPolicy(
        localName: 'route53_traffic_policy',
        document: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53TrafficPolicyInstance(
        localName: 'route53_traffic_policy_instance',
        hostedZoneId: .literal(leftover),
        name: .literal(leftover),
        trafficPolicyId: .literal(leftover),
        trafficPolicyVersion: .literal(200),
        ttl: .literal(200),
      ),
    );

    add(
      AwsRoute53VpcAssociationAuthorization(
        localName: 'route53_vpc_association_authorization',
        vpcId: .literal('vpc-0123456789abcdef0'),
        zoneId: .literal(leftover),
      ),
    );

    add(AwsRoute53Zone(localName: 'route53_zone', name: .literal(leftover)));

    add(
      AwsRoute53ZoneAssociation(
        localName: 'route53_zone_association',
        vpcId: .literal('vpc-0123456789abcdef0'),
        zoneId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53domainsDelegationSignerRecord(
        localName: 'route53domains_delegation_signer_record',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsRoute53domainsDomain(
        localName: 'route53domains_domain',
        domainName: .literal(leftover),
        adminContact: [
          Route53domainsDomainAdminContact(addressLine1: .literal(leftover)),
        ],
        registrantContact: [
          Route53domainsDomainRegistrantContact(
            addressLine1: .literal(leftover),
          ),
        ],
        techContact: [
          Route53domainsDomainTechContact(addressLine1: .literal(leftover)),
        ],
      ),
    );

    add(
      AwsRoute53domainsRegisteredDomain(
        localName: 'route53domains_registered_domain',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsRoute53profilesAssociation(
        localName: 'route53profiles_association',
        name: .literal(leftover),
        profileId: .literal(leftover),
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53profilesProfile(
        localName: 'route53profiles_profile',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53profilesResourceAssociation(
        localName: 'route53profiles_resource_association',
        name: .literal(leftover),
        profileId: .literal(leftover),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigCluster(
        localName: 'route53recoverycontrolconfig_cluster',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigControlPanel(
        localName: 'route53recoverycontrolconfig_control_panel',
        clusterArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigRoutingControl(
        localName: 'route53recoverycontrolconfig_routing_control',
        clusterArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigSafetyRule(
        localName: 'route53recoverycontrolconfig_safety_rule',
        controls: .assertedControls(.literal([leftover])),
        controlPanelArn: .literal(arn),
        name: .literal(leftover),
        waitPeriodMs: .literal(200),
        ruleConfig: Route53recoverycontrolconfigSafetyRuleConfig(
          inverted: .literal(true),
          threshold: .literal(200),
          type: .literal(.atleast),
        ),
      ),
    );

    add(
      AwsRoute53recoveryreadinessCell(
        localName: 'route53recoveryreadiness_cell',
        cellName: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoveryreadinessReadinessCheck(
        localName: 'route53recoveryreadiness_readiness_check',
        readinessCheckName: .literal(leftover),
        resourceSetName: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoveryreadinessRecoveryGroup(
        localName: 'route53recoveryreadiness_recovery_group',
        recoveryGroupName: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoveryreadinessResourceSet(
        localName: 'route53recoveryreadiness_resource_set',
        resourceSetName: .literal(leftover),
        resourceSetType: .literal(leftover),
        resources: [
          Route53recoveryreadinessResourceSetResources(
            readinessScopes: .literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsRouteTable(
        localName: 'route_table',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsRouteTableAssociation(
        localName: 'route_table_association',
        target: .gatewayId(.literal(leftover)),
        routeTableId: .literal(leftover),
      ),
    );

    add(
      AwsRumAppMonitor(
        localName: 'rum_app_monitor',
        domain: .domain(.literal(leftover)),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRumMetricsDestination(
        localName: 'rum_metrics_destination',
        appMonitorName: .literal(leftover),
        destination: .literal(.cloudwatch),
      ),
    );

    add(
      AwsS3AccessPoint(
        localName: 's3_access_point',
        bucket: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsS3AccountPublicAccessBlock(
        localName: 's3_account_public_access_block',
      ),
    );

    add(
      AwsS3BucketAbac(
        localName: 's3_bucket_abac',
        bucket: .literal(leftover),
        abacStatus: [S3BucketAbacStatus(status: .literal(leftover))],
      ),
    );

    add(
      AwsS3BucketAccelerateConfiguration(
        localName: 's3_bucket_accelerate_configuration',
        bucket: .literal(leftover),
        status: .literal(.enabled),
      ),
    );

    add(
      AwsS3BucketAcl(
        localName: 's3_bucket_acl',
        policy: .accessControlPolicy(
          S3BucketAclAccessControlPolicy(
            owner: S3BucketAclOwner(id: .literal(leftover)),
          ),
        ),
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketAnalyticsConfiguration(
        localName: 's3_bucket_analytics_configuration',
        bucket: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketCorsConfiguration(
        localName: 's3_bucket_cors_configuration',
        bucket: .literal(leftover),
        corsRule: [
          S3BucketCorsConfigurationCorsRule(
            allowedMethods: .literal([leftover]),
            allowedOrigins: .literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsS3BucketIntelligentTieringConfiguration(
        localName: 's3_bucket_intelligent_tiering_configuration',
        bucket: .literal(leftover),
        name: .literal(leftover),
        tiering: [
          S3BucketIntelligentTieringConfigurationTiering(
            accessTier: .literal(.archiveAccess),
            days: .literal(200),
          ),
        ],
      ),
    );

    add(
      AwsS3BucketInventory(
        localName: 's3_bucket_inventory',
        bucket: .literal(leftover),
        includedObjectVersions: .literal(.all),
        name: .literal(leftover),
        destination: S3BucketInventoryDestination(
          bucket: S3BucketInventoryDestinationBucket(
            bucketArn: .literal(arn),
            format: .literal(.csv),
          ),
        ),
        schedule: S3BucketInventorySchedule(frequency: .literal(.daily)),
      ),
    );

    add(
      AwsS3BucketLifecycleConfiguration(
        localName: 's3_bucket_lifecycle_configuration',
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketLogging(
        localName: 's3_bucket_logging',
        bucket: .literal(leftover),
        targetBucket: .literal(leftover),
        targetPrefix: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketMetadataConfiguration(
        localName: 's3_bucket_metadata_configuration',
        bucket: .literal(leftover),
        metadataConfiguration: [
          S3BucketMetadataConfigurationMetadataConfiguration(
            journalTableConfiguration: [
              S3BucketMetadataConfigurationJournalTableConfiguration(
                recordExpiration: [
                  S3BucketMetadataConfigurationRecordExpiration(
                    expiration: .literal(.enabled),
                  ),
                ],
              ),
            ],
            inventoryTableConfiguration: [
              S3BucketMetadataConfigurationInventoryTableConfiguration(
                configurationState: .literal(.enabled),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsS3BucketMetric(
        localName: 's3_bucket_metric',
        bucket: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketNotification(
        localName: 's3_bucket_notification',
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketObject(
        localName: 's3_bucket_object',
        bucket: .literal(leftover),
        key: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketObjectLockConfiguration(
        localName: 's3_bucket_object_lock_configuration',
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketOwnershipControls(
        localName: 's3_bucket_ownership_controls',
        bucket: .literal(leftover),
        rule: S3BucketOwnershipControlsRule(
          objectOwnership: .literal(.bucketownerpreferred),
        ),
      ),
    );

    add(
      AwsS3BucketReplicationConfiguration(
        localName: 's3_bucket_replication_configuration',
        bucket: .literal(leftover),
        role: .literal(arn),
        rule: [
          S3BucketReplicationConfigurationRule(
            status: .literal(.enabled),
            destination: S3BucketReplicationConfigurationDestination(
              bucket: .literal(arn),
            ),
          ),
        ],
      ),
    );

    add(
      AwsS3BucketRequestPaymentConfiguration(
        localName: 's3_bucket_request_payment_configuration',
        bucket: .literal(leftover),
        payer: .literal(.requester),
      ),
    );

    add(
      AwsS3BucketServerSideEncryptionConfiguration(
        localName: 's3_bucket_server_side_encryption_configuration',
        bucket: .literal(leftover),
        rule: [
          S3BucketServerSideEncryptionConfigurationRule(
            blockedEncryptionTypes: [.literal(.none)],
          ),
        ],
      ),
    );

    add(
      AwsS3BucketVersioning(
        localName: 's3_bucket_versioning',
        bucket: .literal(leftover),
        versioningConfiguration: S3BucketVersioningConfiguration(
          status: .literal('Enabled'),
        ),
      ),
    );

    add(
      AwsS3BucketWebsiteConfiguration(
        localName: 's3_bucket_website_configuration',
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsS3DirectoryBucket(
        localName: 's3_directory_bucket',
        bucket: .literal('leftover--use1-az4--x-s3'),
        location: [S3DirectoryBucketLocation(name: .literal(leftover))],
      ),
    );

    add(
      AwsS3Object(
        localName: 's3_object',
        bucket: .literal(leftover),
        key: .literal(leftover),
      ),
    );

    add(
      AwsS3ObjectCopy(
        localName: 's3_object_copy',
        bucket: .literal(leftover),
        key: .literal(leftover),
        source: .literal(leftover),
      ),
    );

    add(
      AwsS3controlAccessGrant(
        localName: 's3control_access_grant',
        accessGrantsLocationId: .literal(leftover),
        permission: .literal(.read),
        grantee: [
          S3controlAccessGrantGrantee(
            granteeIdentifier: .literal(leftover),
            granteeType: .literal(.directoryUser),
          ),
        ],
      ),
    );

    add(
      AwsS3controlAccessGrantsInstance(
        localName: 's3control_access_grants_instance',
      ),
    );

    add(
      AwsS3controlAccessGrantsInstanceResourcePolicy(
        localName: 's3control_access_grants_instance_resource_policy',
        policy: .literal(policy),
      ),
    );

    add(
      AwsS3controlAccessGrantsLocation(
        localName: 's3control_access_grants_location',
        iamRoleArn: .literal(arn),
        locationScope: .literal(leftover),
      ),
    );

    add(
      AwsS3controlAccessPointPolicy(
        localName: 's3control_access_point_policy',
        accessPointArn: .literal(arn),
        policy: .literal(policy),
      ),
    );

    add(
      AwsS3controlBucket(
        localName: 's3control_bucket',
        bucket: .literal(leftover),
        outpostId: .literal(leftover),
      ),
    );

    add(
      AwsS3controlBucketLifecycleConfiguration(
        localName: 's3control_bucket_lifecycle_configuration',
        bucket: .literal(arn),
        rule: [
          S3controlBucketLifecycleConfigurationRule(id: .literal(leftover)),
        ],
      ),
    );

    add(
      AwsS3controlBucketPolicy(
        localName: 's3control_bucket_policy',
        bucket: .literal(arn),
        policy: .literal(policy),
      ),
    );

    add(
      AwsS3controlDirectoryBucketAccessPointScope(
        localName: 's3control_directory_bucket_access_point_scope',
        accountId: .literal('123456789012'),
        name: .literal('leftover--use1-az4--xa-s3'),
        scope: [
          S3controlDirectoryBucketAccessPointScopeScope(
            permissions: [.literal(.getobject)],
          ),
        ],
      ),
    );

    add(
      AwsS3controlMultiRegionAccessPoint(
        localName: 's3control_multi_region_access_point',
        details: S3controlMultiRegionAccessPointDetails(
          name: .literal(leftover),
          region: [
            S3controlMultiRegionAccessPointDetailsRegion(
              bucket: .literal(leftover),
            ),
          ],
        ),
      ),
    );

    add(
      AwsS3controlMultiRegionAccessPointPolicy(
        localName: 's3control_multi_region_access_point_policy',
        details: S3controlMultiRegionAccessPointPolicyDetails(
          name: .literal(leftover),
          policy: .literal(policy),
        ),
      ),
    );

    add(
      AwsS3controlMultiRegionAccessPointRoutes(
        localName: 's3control_multi_region_access_point_routes',
        mrap: .literal(leftover),
        route: [
          S3controlMultiRegionAccessPointRoutesRoute(
            bucket: .literal(leftover),
            region: .literal('us-east-1'),
            trafficDialPercentage: .literal(100),
          ),
        ],
      ),
    );

    add(
      AwsS3controlObjectLambdaAccessPoint(
        localName: 's3control_object_lambda_access_point',
        name: .literal(leftover),
        configuration: S3controlObjectLambdaAccessPointConfiguration(
          supportingAccessPoint: .literal(arn),
          transformationConfiguration: [
            S3controlObjectLambdaAccessPointTransformationConfiguration(
              actions: [.literal(.getobject)],
              contentTransformation:
                  S3controlObjectLambdaAccessPointContentTransformation(
                    awsLambda: S3controlObjectLambdaAccessPointAwsLambda(
                      functionArn: .literal(arn),
                    ),
                  ),
            ),
          ],
        ),
      ),
    );

    add(
      AwsS3controlObjectLambdaAccessPointPolicy(
        localName: 's3control_object_lambda_access_point_policy',
        name: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsS3controlStorageLensConfiguration(
        localName: 's3control_storage_lens_configuration',
        configId: .literal(leftover),
        storageLensConfiguration:
            S3controlStorageLensConfigurationStorageLensConfiguration(
              enabled: .literal(true),
              accountLevel: S3controlStorageLensConfigurationAccountLevel(
                bucketLevel: S3controlStorageLensConfigurationBucketLevel(
                  activityMetrics:
                      S3controlStorageLensConfigurationActivityMetrics(
                        enabled: .literal(true),
                      ),
                ),
              ),
            ),
      ),
    );

    add(
      AwsS3filesAccessPoint(
        localName: 's3files_access_point',
        fileSystemId: .literal(leftover),
      ),
    );

    add(
      AwsS3filesFileSystem(
        localName: 's3files_file_system',
        bucket: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsS3filesFileSystemPolicy(
        localName: 's3files_file_system_policy',
        fileSystemId: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsS3filesMountTarget(
        localName: 's3files_mount_target',
        fileSystemId: .literal(leftover),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsS3filesSynchronizationConfiguration(
        localName: 's3files_synchronization_configuration',
        fileSystemId: .literal(leftover),
      ),
    );

    add(
      AwsS3outpostsEndpoint(
        localName: 's3outposts_endpoint',
        outpostId: .literal(leftover),
        securityGroupId: .literal('sg-0123456789abcdef0'),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsS3tablesNamespace(
        localName: 's3tables_namespace',
        namespace: .literal(leftover),
        tableBucketArn: .literal(arn),
      ),
    );

    add(
      AwsS3tablesTable(
        localName: 's3tables_table',
        format: .literal(.iceberg),
        name: .literal(leftover),
        namespace: .literal(leftover),
        tableBucketArn: .literal(arn),
      ),
    );

    add(
      AwsS3tablesTableBucket(
        localName: 's3tables_table_bucket',
        name: .literal(leftover),
      ),
    );

    add(
      AwsS3tablesTableBucketPolicy(
        localName: 's3tables_table_bucket_policy',
        resourcePolicy: .literal(policy),
        tableBucketArn: .literal(arn),
      ),
    );

    add(
      AwsS3tablesTableBucketReplication(
        localName: 's3tables_table_bucket_replication',
        role: .literal(arn),
        tableBucketArn: .literal(arn),
      ),
    );

    add(
      AwsS3tablesTablePolicy(
        localName: 's3tables_table_policy',
        name: .literal(leftover),
        namespace: .literal(leftover),
        resourcePolicy: .literal(policy),
        tableBucketArn: .literal(arn),
      ),
    );

    add(
      AwsS3tablesTableReplication(
        localName: 's3tables_table_replication',
        role: .literal(arn),
        tableArn: .literal(arn),
      ),
    );

    add(
      AwsS3vectorsIndex(
        localName: 's3vectors_index',
        dataType: .literal(.float32),
        dimension: .literal(200),
        distanceMetric: .literal(.euclidean),
        indexName: .literal(leftover),
        vectorBucketName: .literal(leftover),
      ),
    );

    add(
      AwsS3vectorsVectorBucket(
        localName: 's3vectors_vector_bucket',
        vectorBucketName: .literal(leftover),
      ),
    );

    add(
      AwsS3vectorsVectorBucketPolicy(
        localName: 's3vectors_vector_bucket_policy',
        policy: .literal(policy),
        vectorBucketArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerAlgorithm(
        localName: 'sagemaker_algorithm',
        algorithmName: .literal(leftover),
        trainingSpecification: [
          SagemakerAlgorithmTrainingSpecification(
            supportedTrainingInstanceTypes: [.literal(.mlM4Xlarge)],
            trainingImage: .literal(leftover),
            trainingChannels: [
              SagemakerAlgorithmTrainingChannels(
                name: .literal(leftover),
                supportedContentTypes: .literal([leftover]),
                supportedInputModes: [.literal(.pipe)],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSagemakerApp(
        localName: 'sagemaker_app',
        appName: .literal(leftover),
        appType: .literal(.jupyterserver),
        domainId: .literal(leftover),
        owner: .spaceName(.literal(leftover)),
      ),
    );

    add(
      AwsSagemakerAppImageConfig(
        localName: 'sagemaker_app_image_config',
        appImageConfigName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerCodeRepository(
        localName: 'sagemaker_code_repository',
        codeRepositoryName: .literal(leftover),
        gitConfig: SagemakerCodeRepositoryGitConfig(
          repositoryUrl: .literal('https://example.com'),
        ),
      ),
    );

    add(
      AwsSagemakerDataQualityJobDefinition(
        localName: 'sagemaker_data_quality_job_definition',
        roleArn: .literal(arn),
        dataQualityAppSpecification:
            SagemakerDataQualityJobDefinitionDataQualityAppSpecification(
              imageUri: .literal('https://example.com'),
            ),
        dataQualityJobInput:
            SagemakerDataQualityJobDefinitionDataQualityJobInput(
              batchTransformInput:
                  SagemakerDataQualityJobDefinitionBatchTransformInput(
                    dataCapturedDestinationS3Uri: .literal(
                      'https://example.com',
                    ),
                    datasetFormat:
                        SagemakerDataQualityJobDefinitionDatasetFormat(
                          csv: SagemakerDataQualityJobDefinitionCsv(
                            header: .literal(true),
                          ),
                        ),
                  ),
            ),
        dataQualityJobOutputConfig:
            SagemakerDataQualityJobDefinitionDataQualityJobOutputConfig(
              monitoringOutputs:
                  SagemakerDataQualityJobDefinitionMonitoringOutputs(
                    s3Output: SagemakerDataQualityJobDefinitionS3Output(
                      s3Uri: .literal('https://example.com'),
                    ),
                  ),
            ),
        jobResources: SagemakerDataQualityJobDefinitionJobResources(
          clusterConfig: SagemakerDataQualityJobDefinitionClusterConfig(
            instanceCount: .literal(200),
            instanceType: .literal(.mlT3Medium),
            volumeSizeInGb: .literal(200),
          ),
        ),
      ),
    );

    add(
      AwsSagemakerDevice(
        localName: 'sagemaker_device',
        deviceFleetName: .literal(leftover),
        device: SagemakerDeviceDevice(deviceName: .literal(leftover)),
      ),
    );

    add(
      AwsSagemakerDeviceFleet(
        localName: 'sagemaker_device_fleet',
        deviceFleetName: .literal(leftover),
        roleArn: .literal(arn),
        outputConfig: SagemakerDeviceFleetOutputConfig(
          s3OutputLocation: .literal(leftover),
        ),
      ),
    );

    add(
      AwsSagemakerDomain(
        localName: 'sagemaker_domain',
        authMode: .literal(.sso),
        domainName: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
        vpcId: .literal('vpc-0123456789abcdef0'),
        defaultUserSettings: SagemakerDomainDefaultUserSettings(
          executionRole: .literal(arn),
        ),
      ),
    );

    add(
      AwsSagemakerEndpoint(
        localName: 'sagemaker_endpoint',
        endpointConfigName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerEndpointConfiguration(
        localName: 'sagemaker_endpoint_configuration',
        productionVariants: [
          SagemakerEndpointConfigurationProductionVariants(
            acceleratorType: .literal(.mlEia1Medium),
          ),
        ],
      ),
    );

    add(
      AwsSagemakerFeatureGroup(
        localName: 'sagemaker_feature_group',
        eventTimeFeatureName: .literal(leftover),
        featureGroupName: .literal(leftover),
        recordIdentifierFeatureName: .literal(leftover),
        roleArn: .literal(arn),
        featureDefinition: [
          SagemakerFeatureGroupFeatureDefinition(
            collectionType: .literal(.list),
          ),
        ],
        offlineStoreConfig: SagemakerFeatureGroupOfflineStoreConfig(
          s3StorageConfig: SagemakerFeatureGroupS3StorageConfig(
            s3Uri: .literal('https://example.com'),
          ),
        ),
        onlineStoreConfig: SagemakerFeatureGroupOnlineStoreConfig(
          enableOnlineStore: .literal(true),
        ),
      ),
    );

    add(
      AwsSagemakerFlowDefinition(
        localName: 'sagemaker_flow_definition',
        flowDefinitionName: .literal(leftover),
        roleArn: .literal(arn),
        humanLoopConfig: SagemakerFlowDefinitionHumanLoopConfig(
          humanTaskUiArn: .literal(arn),
          taskCount: .literal(1),
          taskDescription: .literal(leftover),
          taskTitle: .literal(leftover),
          workteamArn: .literal(arn),
        ),
        outputConfig: SagemakerFlowDefinitionOutputConfig(
          s3OutputPath: .literal('s3://leftover-bucket/leftover'),
        ),
      ),
    );

    add(
      AwsSagemakerHub(
        localName: 'sagemaker_hub',
        hubDescription: .literal(leftover),
        hubName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerHubContentReference(
        localName: 'sagemaker_hub_content_reference',
        hubContentName: .literal(leftover),
        hubName: .literal(leftover),
        sagemakerPublicHubContentArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerHumanTaskUi(
        localName: 'sagemaker_human_task_ui',
        humanTaskUiName: .literal(leftover),
        uiTemplate: SagemakerHumanTaskUiTemplate(content: .literal(leftover)),
      ),
    );

    add(
      AwsSagemakerHyperParameterTuningJob(
        localName: 'sagemaker_hyper_parameter_tuning_job',
        name: .literal(leftover),
        config: [
          SagemakerHyperParameterTuningJobConfig(
            strategy: .literal(.bayesian),
            resourceLimits: [
              SagemakerHyperParameterTuningJobResourceLimits(
                maxParallelTrainingJobs: .literal(200),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSagemakerImage(
        localName: 'sagemaker_image',
        imageName: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerImageVersion(
        localName: 'sagemaker_image_version',
        baseImage: .literal(leftover),
        imageName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerLabelingJob(
        localName: 'sagemaker_labeling_job',
        labelAttributeName: .literal(leftover),
        labelingJobName: .literal(leftover),
        roleArn: .literal(arn),
        inputConfig: [
          SagemakerLabelingJobInputConfig(
            dataSource: [
              SagemakerLabelingJobDataSource(
                s3DataSource: [
                  SagemakerLabelingJobS3DataSource(
                    manifestS3Uri: .literal('https://example.com'),
                  ),
                ],
              ),
            ],
          ),
        ],
        outputConfig: [
          SagemakerLabelingJobOutputConfig(
            s3OutputPath: .literal('s3://leftover-bucket/leftover'),
          ),
        ],
        humanTaskConfig: [
          SagemakerLabelingJobHumanTaskConfig(
            numberOfHumanWorkersPerDataObject: .literal(1),
            taskDescription: .literal(leftover),
            taskTimeLimitInSeconds: .literal(200),
            taskTitle: .literal(leftover),
            workteamArn: .literal(arn),
            uiConfig: [
              SagemakerLabelingJobUiConfig(humanTaskUiArn: .literal(arn)),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSagemakerMlflowApp(
        localName: 'sagemaker_mlflow_app',
        artifactStoreUri: .literal('https://example.com'),
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerMlflowTrackingServer(
        localName: 'sagemaker_mlflow_tracking_server',
        artifactStoreUri: .literal('https://example.com'),
        roleArn: .literal(arn),
        trackingServerName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerModel(
        localName: 'sagemaker_model',
        executionRoleArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerModelCard(
        localName: 'sagemaker_model_card',
        content: .literal(policy),
        modelCardName: .literal(leftover),
        modelCardStatus: .literal(.draft),
      ),
    );

    add(
      AwsSagemakerModelCardExportJob(
        localName: 'sagemaker_model_card_export_job',
        modelCardExportJobName: .literal(leftover),
        modelCardName: .literal(leftover),
        outputConfig: [
          SagemakerModelCardExportJobOutputConfig(
            s3OutputPath: .literal('s3://leftover-bucket/leftover'),
          ),
        ],
      ),
    );

    add(
      AwsSagemakerModelPackageGroup(
        localName: 'sagemaker_model_package_group',
        modelPackageGroupName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerModelPackageGroupPolicy(
        localName: 'sagemaker_model_package_group_policy',
        modelPackageGroupName: .literal(leftover),
        resourcePolicy: .literal(policy),
      ),
    );

    add(
      AwsSagemakerMonitoringSchedule(
        localName: 'sagemaker_monitoring_schedule',
        monitoringScheduleConfig: SagemakerMonitoringScheduleConfig(
          monitoringType: .literal(.dataquality),
        ),
      ),
    );

    add(
      AwsSagemakerNotebookInstance(
        localName: 'sagemaker_notebook_instance',
        instanceType: .literal(.mlT2Medium),
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerNotebookInstanceLifecycleConfiguration(
        localName: 'sagemaker_notebook_instance_lifecycle_configurat',
      ),
    );

    add(
      AwsSagemakerPipeline(
        localName: 'sagemaker_pipeline',
        pipelineDefinition: .pipelineDefinition(.literal(policy)),
        pipelineDisplayName: .literal(leftover),
        pipelineName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerProject(
        localName: 'sagemaker_project',
        projectName: .literal(leftover),
        serviceCatalogProvisioningDetails:
            SagemakerProjectServiceCatalogProvisioningDetails(
              productId: .literal(leftover),
            ),
      ),
    );

    add(
      AwsSagemakerServicecatalogPortfolioStatus(
        localName: 'sagemaker_servicecatalog_portfolio_status',
        status: .literal(.enabled),
      ),
    );

    add(
      AwsSagemakerSpace(
        localName: 'sagemaker_space',
        domainId: .literal(leftover),
        spaceName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerStudioLifecycleConfig(
        localName: 'sagemaker_studio_lifecycle_config',
        studioLifecycleConfigAppType: .literal(.jupyterserver),
        studioLifecycleConfigContent: .literal(leftover),
        studioLifecycleConfigName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerTrainingJob(
        localName: 'sagemaker_training_job',
        roleArn: .literal(arn),
        trainingJobName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerUserProfile(
        localName: 'sagemaker_user_profile',
        domainId: .literal(leftover),
        userProfileName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerWorkforce(
        localName: 'sagemaker_workforce',
        workforceName: .literal(leftover),
        identityProvider: .cognitoConfig(
          SagemakerWorkforceCognitoConfig(
            clientId: .literal(leftover),
            userPool: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsSagemakerWorkteam(
        localName: 'sagemaker_workteam',
        description: .literal(leftover),
        workteamName: .literal(leftover),
        memberDefinition: [
          SagemakerWorkteamMemberDefinition(
            cognitoMemberDefinition: SagemakerWorkteamCognitoMemberDefinition(
              clientId: .literal(leftover),
              userGroup: .literal(leftover),
              userPool: .literal(leftover),
            ),
          ),
        ],
      ),
    );

    add(
      AwsSavingsplansSavingsPlan(
        localName: 'savingsplans_savings_plan',
        commitment: .literal(leftover),
        savingsPlanOfferingId: .literal(leftover),
      ),
    );

    add(
      AwsSchedulerSchedule(
        localName: 'scheduler_schedule',
        scheduleExpression: .literal(leftover),
        flexibleTimeWindow: SchedulerScheduleFlexibleTimeWindow(
          mode: .literal(.off),
        ),
        target: SchedulerScheduleTarget(
          arn: .literal(arn),
          roleArn: .literal(arn),
        ),
      ),
    );

    add(AwsSchedulerScheduleGroup(localName: 'scheduler_schedule_group'));

    add(
      AwsSchemasDiscoverer(
        localName: 'schemas_discoverer',
        sourceArn: .literal(arn),
      ),
    );

    add(
      AwsSchemasRegistry(
        localName: 'schemas_registry',
        name: .literal(leftover),
      ),
    );

    add(
      AwsSchemasRegistryPolicy(
        localName: 'schemas_registry_policy',
        policy: .literal(policy),
        registryName: .literal(leftover),
      ),
    );

    add(
      AwsSchemasSchema(
        localName: 'schemas_schema',
        content: .literal(leftover),
        name: .literal(leftover),
        registryName: .literal(leftover),
        type: .literal(.openapi3),
      ),
    );

    add(AwsSecretsmanagerSecret(localName: 'secretsmanager_secret'));

    add(
      AwsSecretsmanagerSecretPolicy(
        localName: 'secretsmanager_secret_policy',
        policy: .literal(policy),
        secretArn: .literal(arn),
      ),
    );

    add(
      AwsSecretsmanagerSecretRotation(
        localName: 'secretsmanager_secret_rotation',
        secretId: .literal(leftover),
      ),
    );

    add(
      AwsSecretsmanagerSecretVersion(
        localName: 'secretsmanager_secret_version',
        secretId: .literal(leftover),
      ),
    );

    add(
      AwsSecretsmanagerTag(
        localName: 'secretsmanager_tag',
        key: .literal(leftover),
        secretId: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(AwsSecurityGroup(localName: 'security_group'));

    add(
      AwsSecurityGroupRule(
        localName: 'security_group_rule',
        fromPort: .literal(200),
        protocol: .literal(leftover),
        securityGroupId: .literal('sg-0123456789abcdef0'),
        toPort: .literal(200),
        type: .literal(.egress),
        cidrBlocks: .literal(['10.0.0.0/16']),
      ),
    );

    add(AwsSecurityhubAccount(localName: 'securityhub_account'));

    add(AwsSecurityhubAccountV2(localName: 'securityhub_account_v2'));

    add(
      AwsSecurityhubActionTarget(
        localName: 'securityhub_action_target',
        description: .literal(leftover),
        identifier: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsSecurityhubAggregatorV2(
        localName: 'securityhub_aggregator_v2',
        regionLinkingMode: .literal(leftover),
      ),
    );

    add(
      AwsSecurityhubAutomationRule(
        localName: 'securityhub_automation_rule',
        description: .literal(leftover),
        ruleName: .literal(leftover),
        ruleOrder: .literal(200),
        criteria: [
          SecurityhubAutomationRuleCriteria(
            awsAccountId: [
              SecurityhubAutomationRuleAwsAccountId(
                comparison: .literal(.equals),
                value: .literal(leftover),
              ),
            ],
          ),
        ],
        actions: [
          SecurityhubAutomationRuleActions(
            type: .literal(.findingFieldsUpdate),
          ),
        ],
      ),
    );

    add(
      AwsSecurityhubAutomationRuleV2(
        localName: 'securityhub_automation_rule_v2',
        description: .literal(leftover),
        ruleName: .literal(leftover),
        ruleOrder: .literal(200),
        action: [
          SecurityhubAutomationRuleV2Action(
            type: .literal(.findingFieldsUpdate),
          ),
        ],
        criteria: [
          SecurityhubAutomationRuleV2Criteria(
            ocsfFindingCriteriaJson: .literal(policy),
          ),
        ],
      ),
    );

    add(
      AwsSecurityhubConfigurationPolicy(
        localName: 'securityhub_configuration_policy',
        name: .literal(leftover),
        configurationPolicy: SecurityhubConfigurationPolicyConfigurationPolicy(
          serviceEnabled: .literal(true),
        ),
      ),
    );

    add(
      AwsSecurityhubConfigurationPolicyAssociation(
        localName: 'securityhub_configuration_policy_association',
        policyId: .literal('SELF_MANAGED_SECURITY_HUB'),
        targetId: .literal('123456789012'),
      ),
    );

    add(
      AwsSecurityhubConnectorV2(
        localName: 'securityhub_connector_v2',
        name: .literal(leftover),
        connectorProvider: [
          .jiraCloud([
            SecurityhubConnectorV2JiraCloud(projectKey: .literal(leftover)),
          ]),
        ],
      ),
    );

    add(
      AwsSecurityhubFeatureV2(
        localName: 'securityhub_feature_v2',
        featureName: .literal(.networkScanning),
        featureStatus: .literal(.enabled),
      ),
    );

    add(
      AwsSecurityhubFindingAggregator(
        localName: 'securityhub_finding_aggregator',
        linkingMode: .literal(.allRegions),
      ),
    );

    add(
      AwsSecurityhubInsight(
        localName: 'securityhub_insight',
        groupByAttribute: .literal(leftover),
        name: .literal(leftover),
        filters: SecurityhubInsightFilters(
          awsAccountId: [
            SecurityhubInsightAwsAccountId(
              comparison: .literal('EQUALS'),
              value: .literal(leftover),
            ),
          ],
        ),
      ),
    );

    add(
      AwsSecurityhubInviteAccepter(
        localName: 'securityhub_invite_accepter',
        masterId: .literal(leftover),
      ),
    );

    add(
      AwsSecurityhubMember(
        localName: 'securityhub_member',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      AwsSecurityhubOrganizationAdminAccount(
        localName: 'securityhub_organization_admin_account',
        adminAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsSecurityhubOrganizationConfiguration(
        localName: 'securityhub_organization_configuration',
        autoEnable: .literal(true),
      ),
    );

    add(
      AwsSecurityhubProductSubscription(
        localName: 'securityhub_product_subscription',
        productArn: .literal(arn),
      ),
    );

    add(
      AwsSecurityhubStandardsControl(
        localName: 'securityhub_standards_control',
        controlStatus: .literal(.enabled),
        standardsControlArn: .literal(arn),
      ),
    );

    add(
      AwsSecurityhubStandardsControlAssociation(
        localName: 'securityhub_standards_control_association',
        associationStatus: .literal(.enabled),
        securityControlId: .literal(leftover),
        standardsArn: .literal(arn),
      ),
    );

    add(
      AwsSecurityhubStandardsSubscription(
        localName: 'securityhub_standards_subscription',
        standardsArn: .literal(arn),
      ),
    );

    add(
      AwsSecuritylakeAwsLogSource(
        localName: 'securitylake_aws_log_source',
        source: [
          SecuritylakeAwsLogSourceSource(
            regions: .literal([leftover]),
            sourceName: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsSecuritylakeCustomLogSource(
        localName: 'securitylake_custom_log_source',
        sourceName: .literal(leftover),
        configuration: [
          SecuritylakeCustomLogSourceConfiguration(
            providerIdentity: [
              SecuritylakeCustomLogSourceProviderIdentity(
                externalId: .literal(leftover),
                principal: .literal(leftover),
              ),
            ],
            crawlerConfiguration: [
              SecuritylakeCustomLogSourceCrawlerConfiguration(
                roleArn: .literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSecuritylakeDataLake(
        localName: 'securitylake_data_lake',
        metaStoreManagerRoleArn: .literal(arn),
        configuration: [
          SecuritylakeDataLakeConfiguration(region: .literal('us-east-1')),
        ],
      ),
    );

    add(
      AwsSecuritylakeSubscriber(
        localName: 'securitylake_subscriber',
        source: [
          SecuritylakeSubscriberSource(
            awsLogSourceResource: [
              SecuritylakeSubscriberAwsLogSourceResource(
                sourceName: .literal(.route53),
              ),
            ],
          ),
        ],
        subscriberIdentity: [
          SecuritylakeSubscriberIdentity(
            externalId: .literal(leftover),
            principal: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsSecuritylakeSubscriberNotification(
        localName: 'securitylake_subscriber_notification',
        subscriberId: .literal(leftover),
        configuration: [
          SecuritylakeSubscriberNotificationConfiguration(
            httpsNotificationConfiguration: [
              SecuritylakeSubscriberNotificationHttpsNotificationConfiguration(
                endpoint: .literal(leftover),
                targetRoleArn: .literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsServerlessapplicationrepositoryCloudformationStack(
        localName: 'serverlessapplicationrepository_cloudformation_s',
        applicationId: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryHttpNamespace(
        localName: 'service_discovery_http_namespace',
        name: .literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryInstance(
        localName: 'service_discovery_instance',
        attributes: .literal({'k': leftover}),
        instanceId: .literal('i-0123456789abcdef0'),
        serviceId: .literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryPrivateDnsNamespace(
        localName: 'service_discovery_private_dns_namespace',
        name: .literal(leftover),
        vpc: .literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryPublicDnsNamespace(
        localName: 'service_discovery_public_dns_namespace',
        name: .literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryService(
        localName: 'service_discovery_service',
        name: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogBudgetResourceAssociation(
        localName: 'servicecatalog_budget_resource_association',
        budgetName: .literal(leftover),
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogConstraint(
        localName: 'servicecatalog_constraint',
        parameters: .literal(policy),
        portfolioId: .literal(leftover),
        productId: .literal(leftover),
        type: .literal(.launch),
      ),
    );

    add(
      AwsServicecatalogOrganizationsAccess(
        localName: 'servicecatalog_organizations_access',
        enabled: .literal(true),
      ),
    );

    add(
      AwsServicecatalogPortfolio(
        localName: 'servicecatalog_portfolio',
        name: .literal(leftover),
        providerName: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogPortfolioShare(
        localName: 'servicecatalog_portfolio_share',
        portfolioId: .literal(leftover),
        principalId: .literal('123456789012'),
        type: .literal(.account),
      ),
    );

    add(
      AwsServicecatalogPrincipalPortfolioAssociation(
        localName: 'servicecatalog_principal_portfolio_association',
        portfolioId: .literal(leftover),
        principalArn: .literal(arn),
      ),
    );

    add(
      AwsServicecatalogProduct(
        localName: 'servicecatalog_product',
        name: .literal(leftover),
        owner: .literal(leftover),
        type: .literal(.cloudFormationTemplate),
        provisioningArtifactParameters:
            ServicecatalogProductProvisioningArtifactParameters(
              template: .templatePhysicalId(.literal(leftover)),
            ),
      ),
    );

    add(
      AwsServicecatalogProductPortfolioAssociation(
        localName: 'servicecatalog_product_portfolio_association',
        portfolioId: .literal(leftover),
        productId: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogProvisionedProduct(
        localName: 'servicecatalog_provisioned_product',
        name: .literal(leftover),
        identifier: .productId(.literal(leftover)),
        provisioningArtifact: .provisioningArtifactId(.literal(leftover)),
      ),
    );

    add(
      AwsServicecatalogProvisioningArtifact(
        localName: 'servicecatalog_provisioning_artifact',
        productId: .literal(leftover),
        template: .templatePhysicalId(.literal(leftover)),
      ),
    );

    add(
      AwsServicecatalogServiceAction(
        localName: 'servicecatalog_service_action',
        name: .literal(leftover),
        definition: ServicecatalogServiceActionDefinition(
          name: .literal(leftover),
          version: .literal(leftover),
        ),
      ),
    );

    add(
      AwsServicecatalogTagOption(
        localName: 'servicecatalog_tag_option',
        key: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogTagOptionResourceAssociation(
        localName: 'servicecatalog_tag_option_resource_association',
        resourceId: .literal(leftover),
        tagOptionId: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogappregistryApplication(
        localName: 'servicecatalogappregistry_application',
        name: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogappregistryAttributeGroup(
        localName: 'servicecatalogappregistry_attribute_group',
        attributes: .literal(policy),
        name: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogappregistryAttributeGroupAssociation(
        localName: 'servicecatalogappregistry_attribute_group_associ',
        applicationId: .literal(leftover),
        attributeGroupId: .literal(leftover),
      ),
    );

    add(
      AwsServicequotasAutoManagement(
        localName: 'servicequotas_auto_management',
        optInLevel: .literal(.account),
        optInType: .literal(.notifyonly),
      ),
    );

    add(
      AwsServicequotasServiceQuota(
        localName: 'servicequotas_service_quota',
        quotaCode: .literal(leftover),
        serviceCode: .literal(leftover),
        value: .literal(200),
      ),
    );

    add(
      AwsServicequotasTemplate(
        localName: 'servicequotas_template',
        region: .awsRegion(.literal('us-east-1')),
        quotaCode: .literal(leftover),
        serviceCode: .literal(leftover),
        value: .literal(200),
      ),
    );

    add(
      AwsServicequotasTemplateAssociation(
        localName: 'servicequotas_template_association',
      ),
    );

    add(
      AwsSesActiveReceiptRuleSet(
        localName: 'ses_active_receipt_rule_set',
        ruleSetName: .literal(leftover),
      ),
    );

    add(
      AwsSesConfigurationSet(
        localName: 'ses_configuration_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsSesDomainDkim(
        localName: 'ses_domain_dkim',
        domain: .literal(leftover),
      ),
    );

    add(
      AwsSesDomainIdentity(
        localName: 'ses_domain_identity',
        domain: .literal(leftover),
      ),
    );

    add(
      AwsSesDomainIdentityVerification(
        localName: 'ses_domain_identity_verification',
        domain: .literal(leftover),
      ),
    );

    add(
      AwsSesDomainMailFrom(
        localName: 'ses_domain_mail_from',
        domain: .literal(leftover),
        mailFromDomain: .literal(leftover),
      ),
    );

    add(
      AwsSesEmailIdentity(
        localName: 'ses_email_identity',
        email: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesEventDestination(
        localName: 'ses_event_destination',
        configurationSetName: .literal(leftover),
        matchingTypes: [.literal(.send)],
        name: .literal(leftover),
      ),
    );

    add(
      AwsSesIdentityNotificationTopic(
        localName: 'ses_identity_notification_topic',
        identity: .literal(leftover),
        notificationType: .literal(.bounce),
      ),
    );

    add(
      AwsSesIdentityPolicy(
        localName: 'ses_identity_policy',
        identity: .literal(leftover),
        name: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsSesReceiptFilter(
        localName: 'ses_receipt_filter',
        cidr: .literal('10.0.0.0/16'),
        name: .literal(leftover),
        policy: .literal(.block),
      ),
    );

    add(
      AwsSesReceiptRule(
        localName: 'ses_receipt_rule',
        name: .literal(leftover),
        ruleSetName: .literal(leftover),
      ),
    );

    add(
      AwsSesReceiptRuleSet(
        localName: 'ses_receipt_rule_set',
        ruleSetName: .literal(leftover),
      ),
    );

    add(AwsSesTemplate(localName: 'ses_template', name: .literal(leftover)));

    add(
      AwsSesv2AccountSuppressionAttributes(
        localName: 'sesv2_account_suppression_attributes',
        suppressedReasons: [.literal(.bounce)],
      ),
    );

    add(
      AwsSesv2AccountVdmAttributes(
        localName: 'sesv2_account_vdm_attributes',
        vdmEnabled: .literal(.enabled),
      ),
    );

    add(
      AwsSesv2ConfigurationSet(
        localName: 'sesv2_configuration_set',
        configurationSetName: .literal(leftover),
      ),
    );

    add(
      AwsSesv2ConfigurationSetEventDestination(
        localName: 'sesv2_configuration_set_event_destination',
        configurationSetName: .literal(leftover),
        eventDestinationName: .literal(leftover),
        eventDestination: Sesv2ConfigurationSetEventDestinationEventDestination(
          matchingEventTypes: [.literal(.send)],
          target: .cloudWatchDestination(
            Sesv2ConfigurationSetEventDestinationCloudWatchDestination(
              dimensionConfiguration: [
                Sesv2ConfigurationSetEventDestinationDimensionConfiguration(
                  defaultDimensionValue: .literal(leftover),
                  dimensionName: .literal(leftover),
                  dimensionValueSource: .literal(.messageTag),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    add(
      AwsSesv2ContactList(
        localName: 'sesv2_contact_list',
        contactListName: .literal(leftover),
      ),
    );

    add(
      AwsSesv2DedicatedIpAssignment(
        localName: 'sesv2_dedicated_ip_assignment',
        destinationPoolName: .literal(leftover),
        ip: .literal('10.0.0.1'),
      ),
    );

    add(
      AwsSesv2DedicatedIpPool(
        localName: 'sesv2_dedicated_ip_pool',
        poolName: .literal(leftover),
      ),
    );

    add(
      AwsSesv2EmailIdentity(
        localName: 'sesv2_email_identity',
        emailIdentity: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesv2EmailIdentityFeedbackAttributes(
        localName: 'sesv2_email_identity_feedback_attributes',
        emailIdentity: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesv2EmailIdentityMailFromAttributes(
        localName: 'sesv2_email_identity_mail_from_attributes',
        emailIdentity: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesv2EmailIdentityPolicy(
        localName: 'sesv2_email_identity_policy',
        emailIdentity: .literal('leftover@example.com'),
        policy: .literal(policy),
        policyName: .literal(leftover),
      ),
    );

    add(
      AwsSesv2MultiRegionEndpoint(
        localName: 'sesv2_multi_region_endpoint',
        endpointName: .literal(leftover),
      ),
    );

    add(
      AwsSesv2Tenant(localName: 'sesv2_tenant', tenantName: .literal(leftover)),
    );

    add(
      AwsSesv2TenantResourceAssociation(
        localName: 'sesv2_tenant_resource_association',
        resourceArn: .literal(arn),
        tenantName: .literal(leftover),
      ),
    );

    add(AwsSfnActivity(localName: 'sfn_activity', name: .literal(leftover)));

    add(
      AwsSfnAlias(
        localName: 'sfn_alias',
        name: .literal(leftover),
        routingConfiguration: [
          SfnAliasRoutingConfiguration(
            stateMachineVersionArn: .literal(arn),
            weight: .literal(200),
          ),
        ],
      ),
    );

    add(
      AwsSfnStateMachine(
        localName: 'sfn_state_machine',
        definition: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsShieldApplicationLayerAutomaticResponse(
        localName: 'shield_application_layer_automatic_response',
        action: .literal(.block),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsShieldDrtAccessLogBucketAssociation(
        localName: 'shield_drt_access_log_bucket_association',
        logBucket: .literal(leftover),
        roleArnAssociationId: .literal(leftover),
      ),
    );

    add(
      AwsShieldDrtAccessRoleArnAssociation(
        localName: 'shield_drt_access_role_arn_association',
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsShieldProactiveEngagement(
        localName: 'shield_proactive_engagement',
        enabled: .literal(true),
        emergencyContact: [
          ShieldProactiveEngagementEmergencyContact(
            emailAddress: .literal('leftover@example.com'),
          ),
        ],
      ),
    );

    add(
      AwsShieldProtection(
        localName: 'shield_protection',
        name: .literal(leftover),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsShieldProtectionGroup(
        localName: 'shield_protection_group',
        aggregation: .literal(.sum),
        pattern: .literal(.all),
        protectionGroupId: .literal(leftover),
      ),
    );

    add(
      AwsShieldProtectionHealthCheckAssociation(
        localName: 'shield_protection_health_check_association',
        healthCheckArn: .literal(arn),
        shieldProtectionId: .literal(leftover),
      ),
    );

    add(AwsShieldSubscription(localName: 'shield_subscription'));

    add(
      AwsSignerSigningJob(
        localName: 'signer_signing_job',
        profileName: .literal(leftover),
        destination: SignerSigningJobDestination(
          s3: SignerSigningJobDestinationS3(bucket: .literal(leftover)),
        ),
        source: SignerSigningJobSource(
          s3: SignerSigningJobSourceS3(
            bucket: .literal(leftover),
            key: .literal(leftover),
            version: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsSignerSigningProfile(
        localName: 'signer_signing_profile',
        platformId: .literal(.awslambdaSha384Ecdsa),
      ),
    );

    add(
      AwsSignerSigningProfilePermission(
        localName: 'signer_signing_profile_permission',
        action: .literal(.signerStartsigningjob),
        principal: .literal(leftover),
        profileName: .literal(leftover),
      ),
    );

    add(
      AwsSnapshotCreateVolumePermission(
        localName: 'snapshot_create_volume_permission',
        accountId: .literal('123456789012'),
        snapshotId: .literal(leftover),
      ),
    );

    add(
      AwsSnsPlatformApplication(
        localName: 'sns_platform_application',
        name: .literal(leftover),
        platform: .literal(leftover),
        platformCredential: .variable('leftover_secret'),
      ),
    );

    add(
      AwsSnsSmsPreferences(
        localName: 'sns_sms_preferences',
        defaultSenderId: .literal(leftover),
        defaultSmsType: .literal('Promotional'),
        deliveryStatusIamRoleArn: .literal(arn),
        deliveryStatusSuccessSamplingRate: .literal(leftover),
        monthlySpendLimit: .literal(200),
        usageReportS3Bucket: .literal(leftover),
      ),
    );

    add(AwsSnsTopic(localName: 'sns_topic'));

    add(
      AwsSnsTopicDataProtectionPolicy(
        localName: 'sns_topic_data_protection_policy',
        arn: .literal(arn),
        policy: .literal(policy),
      ),
    );

    add(
      AwsSnsTopicPolicy(
        localName: 'sns_topic_policy',
        arn: .literal(arn),
        policy: .literal(policy),
      ),
    );

    add(
      AwsSnsTopicSubscription(
        localName: 'sns_topic_subscription',
        endpoint: .literal(leftover),
        protocol: .literal('application'),
        topicArn: .literal(arn),
      ),
    );

    add(
      AwsSpotDatafeedSubscription(
        localName: 'spot_datafeed_subscription',
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsSpotFleetRequest(
        localName: 'spot_fleet_request',
        iamFleetRole: .literal(arn),
        targetCapacity: .literal(200),
        launch: .launchSpecification([
          SpotFleetRequestLaunchSpecification(
            ami: .literal(leftover),
            instanceType: .literal(leftover),
          ),
        ]),
      ),
    );

    add(
      AwsSpotInstanceRequest(
        localName: 'spot_instance_request',
        ami: .literal(leftover),
        instanceType: .literal(leftover),
        launchTemplate: SpotInstanceRequestLaunchTemplate(
          identifier: .id(.literal('lt-0123456789abcdef0')),
        ),
      ),
    );

    add(AwsSqsQueue(localName: 'sqs_queue'));

    add(
      AwsSqsQueuePolicy(
        localName: 'sqs_queue_policy',
        policy: .literal(policy),
        queueUrl: .literal('https://example.com'),
      ),
    );

    add(
      AwsSqsQueueRedriveAllowPolicy(
        localName: 'sqs_queue_redrive_allow_policy',
        queueUrl: .literal('https://example.com'),
        redriveAllowPolicy: .literal(policy),
      ),
    );

    add(
      AwsSqsQueueRedrivePolicy(
        localName: 'sqs_queue_redrive_policy',
        queueUrl: .literal('https://example.com'),
        redrivePolicy: .literal(policy),
      ),
    );

    add(
      AwsSsmActivation(
        localName: 'ssm_activation',
        iamRole: .literal(leftover),
      ),
    );

    add(
      AwsSsmAssociation(localName: 'ssm_association', name: .literal(leftover)),
    );

    add(
      AwsSsmDefaultPatchBaseline(
        localName: 'ssm_default_patch_baseline',
        baselineId: .literal('pb-0123456789abcdef0'),
        operatingSystem: .literal(.windows),
      ),
    );

    add(
      AwsSsmDocument(
        localName: 'ssm_document',
        content: .literal(leftover),
        documentType: .literal(.command),
        name: .literal(leftover),
      ),
    );

    add(
      AwsSsmMaintenanceWindow(
        localName: 'ssm_maintenance_window',
        cutoff: .literal(200),
        duration: .literal(200),
        name: .literal(leftover),
        schedule: .literal(leftover),
      ),
    );

    add(
      AwsSsmMaintenanceWindowTarget(
        localName: 'ssm_maintenance_window_target',
        resourceType: .literal(.instance),
        windowId: .literal(leftover),
        targets: [
          SsmMaintenanceWindowTargetTargets(
            key: .literal(leftover),
            values: .literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsSsmMaintenanceWindowTask(
        localName: 'ssm_maintenance_window_task',
        taskArn: .literal(arn),
        taskType: .literal(.runCommand),
        windowId: .literal(leftover),
      ),
    );

    add(
      AwsSsmParameter(
        localName: 'ssm_parameter',
        value: .value(.variable('leftover_secret')),
        name: .literal(leftover),
        type: .literal(.string),
      ),
    );

    add(
      AwsSsmPatchBaseline(
        localName: 'ssm_patch_baseline',
        name: .literal(leftover),
      ),
    );

    add(
      AwsSsmPatchGroup(
        localName: 'ssm_patch_group',
        baselineId: .literal(leftover),
        patchGroup: .literal(leftover),
      ),
    );

    add(
      AwsSsmResourceDataSync(
        localName: 'ssm_resource_data_sync',
        name: .literal(leftover),
        s3Destination: SsmResourceDataSyncS3Destination(
          bucketName: .literal(leftover),
          region: .literal('us-east-1'),
        ),
      ),
    );

    add(
      AwsSsmServiceSetting(
        localName: 'ssm_service_setting',
        settingId: .literal(arn),
        settingValue: .literal(leftover),
      ),
    );

    add(
      AwsSsmcontactsContact(
        localName: 'ssmcontacts_contact',
        alias: .literal(leftover),
        type: .literal(leftover),
      ),
    );

    add(
      AwsSsmcontactsContactChannel(
        localName: 'ssmcontacts_contact_channel',
        contactId: .literal(leftover),
        name: .literal(leftover),
        type: .literal(leftover),
        deliveryAddress: SsmcontactsContactChannelDeliveryAddress(
          simpleAddress: .literal(leftover),
        ),
      ),
    );

    add(
      AwsSsmcontactsPlan(
        localName: 'ssmcontacts_plan',
        contactId: .literal(leftover),
        stage: [SsmcontactsPlanStage(durationInMinutes: .literal(200))],
      ),
    );

    add(
      AwsSsmcontactsRotation(
        localName: 'ssmcontacts_rotation',
        contactIds: .literal([leftover]),
        name: .literal(leftover),
        timeZoneId: .literal(leftover),
        recurrence: [
          SsmcontactsRotationRecurrence(
            numberOfOnCalls: .literal(200),
            recurrenceMultiplier: .literal(200),
          ),
        ],
      ),
    );

    add(
      AwsSsmincidentsReplicationSet(localName: 'ssmincidents_replication_set'),
    );

    add(
      AwsSsmincidentsResponsePlan(
        localName: 'ssmincidents_response_plan',
        name: .literal(leftover),
        incidentTemplate: SsmincidentsResponsePlanIncidentTemplate(
          impact: .literal(200),
          title: .literal(leftover),
        ),
      ),
    );

    add(
      AwsSsmquicksetupConfigurationManager(
        localName: 'ssmquicksetup_configuration_manager',
        name: .literal(leftover),
        configurationDefinition: [
          SsmquicksetupConfigurationManagerConfigurationDefinition(
            parameters: .literal({'k': leftover}),
            type: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsSsoadminAccountAssignment(
        localName: 'ssoadmin_account_assignment',
        instanceArn: .literal(arn),
        permissionSetArn: .literal(arn),
        principalId: .literal('12345678-1234-1234-1234-123456789012'),
        principalType: .literal(.user),
        targetId: .literal('123456789012'),
        targetType: .literal(.awsAccount),
      ),
    );

    add(
      AwsSsoadminApplication(
        localName: 'ssoadmin_application',
        applicationProviderArn: .literal(arn),
        instanceArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsSsoadminApplicationAccessScope(
        localName: 'ssoadmin_application_access_scope',
        applicationArn: .literal(arn),
        scope: .literal(leftover),
      ),
    );

    add(
      AwsSsoadminApplicationAssignment(
        localName: 'ssoadmin_application_assignment',
        applicationArn: .literal(arn),
        principalId: .literal(leftover),
        principalType: .literal(.user),
      ),
    );

    add(
      AwsSsoadminApplicationAssignmentConfiguration(
        localName: 'ssoadmin_application_assignment_configuration',
        applicationArn: .literal(arn),
        assignmentRequired: .literal(true),
      ),
    );

    add(
      AwsSsoadminCustomerManagedPolicyAttachment(
        localName: 'ssoadmin_customer_managed_policy_attachment',
        instanceArn: .literal(arn),
        permissionSetArn: .literal(arn),
        customerManagedPolicyReference:
            SsoadminCustomerManagedPolicyAttachmentCustomerManagedPolicyReference(
              name: .literal(leftover),
            ),
      ),
    );

    add(
      AwsSsoadminCustomerManagedPolicyAttachmentsExclusive(
        localName: 'ssoadmin_customer_managed_policy_attachments_exc',
        instanceArn: .literal(arn),
        permissionSetArn: .literal(arn),
      ),
    );

    add(
      AwsSsoadminInstanceAccessControlAttributes(
        localName: 'ssoadmin_instance_access_control_attributes',
        instanceArn: .literal(arn),
        attribute: [
          SsoadminInstanceAccessControlAttributesAttribute(
            key: .literal(leftover),
            value: [
              SsoadminInstanceAccessControlAttributesValue(
                source: .literal([leftover]),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSsoadminManagedPolicyAttachment(
        localName: 'ssoadmin_managed_policy_attachment',
        instanceArn: .literal(arn),
        managedPolicyArn: .literal(arn),
        permissionSetArn: .literal(arn),
      ),
    );

    add(
      AwsSsoadminManagedPolicyAttachmentsExclusive(
        localName: 'ssoadmin_managed_policy_attachments_exclusive',
        instanceArn: .literal(arn),
        managedPolicyArns: .literal([arn]),
        permissionSetArn: .literal(arn),
      ),
    );

    add(
      AwsSsoadminPermissionSet(
        localName: 'ssoadmin_permission_set',
        instanceArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsSsoadminPermissionSetInlinePolicy(
        localName: 'ssoadmin_permission_set_inline_policy',
        inlinePolicy: .literal(policy),
        instanceArn: .literal(arn),
        permissionSetArn: .literal(arn),
      ),
    );

    add(
      AwsSsoadminPermissionsBoundaryAttachment(
        localName: 'ssoadmin_permissions_boundary_attachment',
        instanceArn: .literal(arn),
        permissionSetArn: .literal(arn),
        permissionsBoundary:
            SsoadminPermissionsBoundaryAttachmentPermissionsBoundary(
              managedPolicyArn: .literal(arn),
            ),
      ),
    );

    add(
      AwsSsoadminRegion(
        localName: 'ssoadmin_region',
        instanceArn: .literal(arn),
        regionName: .literal('us-east-1'),
      ),
    );

    add(
      AwsSsoadminTrustedTokenIssuer(
        localName: 'ssoadmin_trusted_token_issuer',
        instanceArn: .literal(arn),
        name: .literal(leftover),
        trustedTokenIssuerType: .literal(.oidcJwt),
        trustedTokenIssuerConfiguration: [
          SsoadminTrustedTokenIssuerConfiguration(
            oidcJwtConfiguration: [
              SsoadminTrustedTokenIssuerOidcJwtConfiguration(
                claimAttributePath: .literal(leftover),
                identityStoreAttributePath: .literal(leftover),
                issuerUrl: .literal('https://example.com'),
                jwksRetrievalOption: .literal(.openIdDiscovery),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsStoragegatewayCache(
        localName: 'storagegateway_cache',
        diskId: .literal(leftover),
        gatewayArn: .literal(arn),
      ),
    );

    add(
      AwsStoragegatewayCachedIscsiVolume(
        localName: 'storagegateway_cached_iscsi_volume',
        gatewayArn: .literal(arn),
        networkInterfaceId: .literal(leftover),
        targetName: .literal(leftover),
        volumeSizeInBytes: .literal(200),
      ),
    );

    add(
      AwsStoragegatewayFileSystemAssociation(
        localName: 'storagegateway_file_system_association',
        gatewayArn: .literal(arn),
        locationArn: .literal(arn),
        password: .variable('leftover_secret'),
        username: .literal(leftover),
      ),
    );

    add(
      AwsStoragegatewayGateway(
        localName: 'storagegateway_gateway',
        activation: .activationKey(.literal(leftover)),
        gatewayName: .literal(leftover),
        gatewayTimezone: .literal('GMT+9:47'),
      ),
    );

    add(
      AwsStoragegatewayNfsFileShare(
        localName: 'storagegateway_nfs_file_share',
        clientList: .literal(['10.0.0.0/16']),
        gatewayArn: .literal(arn),
        locationArn: .literal(arn),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsStoragegatewaySmbFileShare(
        localName: 'storagegateway_smb_file_share',
        gatewayArn: .literal(arn),
        locationArn: .literal(arn),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsStoragegatewayStoredIscsiVolume(
        localName: 'storagegateway_stored_iscsi_volume',
        diskId: .literal(leftover),
        gatewayArn: .literal(arn),
        networkInterfaceId: .literal(leftover),
        preserveExistingData: .literal(true),
        targetName: .literal(leftover),
      ),
    );

    add(
      AwsStoragegatewayTapePool(
        localName: 'storagegateway_tape_pool',
        poolName: .literal(leftover),
        storageClass: .literal(.deepArchive),
      ),
    );

    add(
      AwsStoragegatewayUploadBuffer(
        localName: 'storagegateway_upload_buffer',
        disk: .diskId(.literal(leftover)),
        gatewayArn: .literal(arn),
      ),
    );

    add(
      AwsStoragegatewayWorkingStorage(
        localName: 'storagegateway_working_storage',
        diskId: .literal(leftover),
        gatewayArn: .literal(arn),
      ),
    );

    add(
      AwsSubnet(localName: 'subnet', vpcId: .literal('vpc-0123456789abcdef0')),
    );

    add(
      AwsSwfDomain(
        localName: 'swf_domain',
        workflowExecutionRetentionPeriodInDays: .literal('30'),
      ),
    );

    add(
      AwsSyntheticsCanary(
        localName: 'synthetics_canary',
        artifactS3Location: .literal(leftover),
        executionRoleArn: .literal(arn),
        handler: .literal(leftover),
        name: .literal(leftover),
        runtimeVersion: .literal(leftover),
        schedule: SyntheticsCanarySchedule(expression: .literal(leftover)),
      ),
    );

    add(
      AwsSyntheticsGroup(
        localName: 'synthetics_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsSyntheticsGroupAssociation(
        localName: 'synthetics_group_association',
        canaryArn: .literal(arn),
        groupName: .literal(leftover),
      ),
    );

    add(
      AwsTimestreaminfluxdbDbCluster(
        localName: 'timestreaminfluxdb_db_cluster',
        dbInstanceType: .literal(.dbInfluxMedium),
        name: .literal(leftover),
        vpcSecurityGroupIds: .literal([.literal('sg-huetvnpt7rr')]),
        vpcSubnetIds: .literal(['subnet-d7c56hy72wj']),
      ),
    );

    add(
      AwsTimestreaminfluxdbDbInstance(
        localName: 'timestreaminfluxdb_db_instance',
        allocatedStorage: .literal(200),
        bucket: .literal(leftover),
        dbInstanceType: .literal(.dbInfluxMedium),
        name: .literal(leftover),
        organization: .literal(leftover),
        password: .variable('leftover_secret'),
        username: .literal(leftover),
        vpcSecurityGroupIds: .literal([.literal('sg-huetvnpt7rr')]),
        vpcSubnetIds: .literal(['subnet-d7c56hy72wj']),
      ),
    );

    add(
      AwsTimestreamqueryScheduledQuery(
        localName: 'timestreamquery_scheduled_query',
        executionRoleArn: .literal(arn),
        name: .literal(leftover),
        queryString: .literal(leftover),
        notificationConfiguration: [
          TimestreamqueryScheduledQueryNotificationConfiguration(
            snsConfiguration: [
              TimestreamqueryScheduledQuerySnsConfiguration(
                topicArn: .literal(arn),
              ),
            ],
          ),
        ],
        scheduleConfiguration: [
          TimestreamqueryScheduledQueryScheduleConfiguration(
            scheduleExpression: .literal(leftover),
          ),
        ],
        targetConfiguration: [
          TimestreamqueryScheduledQueryTargetConfiguration(
            timestreamConfiguration: [
              TimestreamqueryScheduledQueryTimestreamConfiguration(
                databaseName: .literal(leftover),
                tableName: .literal(leftover),
                timeColumn: .literal(leftover),
                dimensionMapping: [
                  TimestreamqueryScheduledQueryDimensionMapping(
                    dimensionValueType: .literal(.varchar),
                    name: .literal(leftover),
                  ),
                ],
              ),
            ],
          ),
        ],
        errorReportConfiguration: [
          TimestreamqueryScheduledQueryErrorReportConfiguration(
            s3Configuration: [
              TimestreamqueryScheduledQueryS3Configuration(
                bucketName: .literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsTimestreamwriteDatabase(
        localName: 'timestreamwrite_database',
        databaseName: .literal(leftover),
      ),
    );

    add(
      AwsTimestreamwriteTable(
        localName: 'timestreamwrite_table',
        databaseName: .literal(leftover),
        tableName: .literal(leftover),
      ),
    );

    add(
      AwsTranscribeLanguageModel(
        localName: 'transcribe_language_model',
        baseModelName: .literal(.narrowband),
        languageCode: .literal(.afZa),
        modelName: .literal(leftover),
        inputDataConfig: TranscribeLanguageModelInputDataConfig(
          dataAccessRoleArn: .literal(arn),
          s3Uri: .literal('https://example.com'),
        ),
      ),
    );

    add(
      AwsTranscribeMedicalVocabulary(
        localName: 'transcribe_medical_vocabulary',
        languageCode: .literal(.enUs),
        vocabularyFileUri: .literal('https://example.com'),
        vocabularyName: .literal(leftover),
      ),
    );

    add(
      AwsTranscribeVocabulary(
        localName: 'transcribe_vocabulary',
        languageCode: .literal('af-ZA'),
        terms: .phrases(.literal([leftover])),
        vocabularyName: .literal(leftover),
      ),
    );

    add(
      AwsTranscribeVocabularyFilter(
        localName: 'transcribe_vocabulary_filter',
        languageCode: .literal('af-ZA'),
        terms: .vocabularyFilterFileUri(.literal('https://example.com')),
        vocabularyFilterName: .literal(leftover),
      ),
    );

    add(
      AwsTransferAccess(
        localName: 'transfer_access',
        externalId: .literal(leftover),
        serverId: .literal('s-0123456789abcdef0'),
      ),
    );

    add(
      AwsTransferAgreement(
        localName: 'transfer_agreement',
        accessRole: .literal(arn),
        baseDirectory: .literal(leftover),
        localProfileId: .literal(leftover),
        partnerProfileId: .literal(leftover),
        serverId: .literal(leftover),
      ),
    );

    add(
      AwsTransferCertificate(
        localName: 'transfer_certificate',
        certificate: .variable('leftover_secret'),
        usage: .literal(.signing),
      ),
    );

    add(
      AwsTransferConnector(
        localName: 'transfer_connector',
        accessRole: .literal(leftover),
      ),
    );

    add(
      AwsTransferHostKey(
        localName: 'transfer_host_key',
        hostKeyBody: .hostKeyBodyWo(.variable('leftover_secret')),
        serverId: .literal(leftover),
      ),
    );

    add(
      AwsTransferProfile(
        localName: 'transfer_profile',
        as2Id: .literal(leftover),
        profileType: .literal(.local),
      ),
    );

    add(AwsTransferServer(localName: 'transfer_server'));

    add(
      AwsTransferSshKey(
        localName: 'transfer_ssh_key',
        body: .literal(leftover),
        serverId: .literal('s-0123456789abcdef0'),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsTransferTag(
        localName: 'transfer_tag',
        key: .literal(leftover),
        resourceArn: .literal(arn),
        value: .literal(leftover),
      ),
    );

    add(
      AwsTransferUser(
        localName: 'transfer_user',
        role: .literal(arn),
        serverId: .literal('s-0123456789abcdef0'),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsTransferWebApp(
        localName: 'transfer_web_app',
        identityProviderDetails: [
          TransferWebAppIdentityProviderDetails(
            identityCenterConfig: [
              TransferWebAppIdentityCenterConfig(instanceArn: .literal(arn)),
            ],
          ),
        ],
      ),
    );

    add(
      AwsTransferWebAppCustomization(
        localName: 'transfer_web_app_customization',
        webAppId: .literal(leftover),
      ),
    );

    add(
      AwsTransferWorkflow(
        localName: 'transfer_workflow',
        steps: [TransferWorkflowSteps(type: .literal(.copy))],
      ),
    );

    add(AwsUxcAccountCustomizations(localName: 'uxc_account_customizations'));

    add(
      AwsVerifiedaccessEndpoint(
        localName: 'verifiedaccess_endpoint',
        attachmentType: .literal(.vpc),
        endpointType: .literal(.loadBalancer),
        verifiedAccessGroupId: .literal(leftover),
      ),
    );

    add(
      AwsVerifiedaccessGroup(
        localName: 'verifiedaccess_group',
        verifiedaccessInstanceId: .literal(leftover),
      ),
    );

    add(AwsVerifiedaccessInstance(localName: 'verifiedaccess_instance'));

    add(
      AwsVerifiedaccessInstanceLoggingConfiguration(
        localName: 'verifiedaccess_instance_logging_configuration',
        verifiedaccessInstanceId: .literal(leftover),
        accessLogs: VerifiedaccessInstanceLoggingConfigurationAccessLogs(
          includeTrustContext: .literal(true),
        ),
      ),
    );

    add(
      AwsVerifiedaccessInstanceTrustProviderAttachment(
        localName: 'verifiedaccess_instance_trust_provider_attachmen',
        verifiedaccessInstanceId: .literal(leftover),
        verifiedaccessTrustProviderId: .literal(leftover),
      ),
    );

    add(
      AwsVerifiedaccessTrustProvider(
        localName: 'verifiedaccess_trust_provider',
        policyReferenceName: .literal(leftover),
        trustProviderType: .literal(.user),
      ),
    );

    add(
      AwsVerifiedpermissionsIdentitySource(
        localName: 'verifiedpermissions_identity_source',
        policyStoreId: .literal(leftover),
        configuration: [
          VerifiedpermissionsIdentitySourceConfiguration(
            cognitoUserPoolConfiguration: [
              VerifiedpermissionsIdentitySourceCognitoUserPoolConfiguration(
                userPoolArn: .literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsVerifiedpermissionsPolicy(
        localName: 'verifiedpermissions_policy',
        policyStoreId: .literal(leftover),
        definition: [
          VerifiedpermissionsPolicyDefinition(
            static: [
              VerifiedpermissionsPolicyStatic(statement: .literal(leftover)),
            ],
          ),
        ],
      ),
    );

    add(
      AwsVerifiedpermissionsPolicyStore(
        localName: 'verifiedpermissions_policy_store',
        validationSettings: [
          VerifiedpermissionsPolicyStoreValidationSettings(
            mode: .literal(.off),
          ),
        ],
      ),
    );

    add(
      AwsVerifiedpermissionsPolicyTemplate(
        localName: 'verifiedpermissions_policy_template',
        policyStoreId: .literal(leftover),
        statement: .literal(leftover),
      ),
    );

    add(
      AwsVerifiedpermissionsSchema(
        localName: 'verifiedpermissions_schema',
        policyStoreId: .literal(leftover),
        definition: [
          VerifiedpermissionsSchemaDefinition(value: .literal(policy)),
        ],
      ),
    );

    add(
      AwsVolumeAttachment(
        localName: 'volume_attachment',
        deviceName: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        volumeId: .literal(leftover),
      ),
    );

    add(AwsVpc(localName: 'vpc'));

    add(
      AwsVpcBlockPublicAccessExclusion(
        localName: 'vpc_block_public_access_exclusion',
        internetGatewayExclusionMode: .literal(.allowBidirectional),
        target: .subnetId(.literal('subnet-0123456789abcdef0')),
      ),
    );

    add(
      AwsVpcBlockPublicAccessOptions(
        localName: 'vpc_block_public_access_options',
        internetGatewayBlockMode: .literal(.off),
      ),
    );

    add(
      AwsVpcDhcpOptions(
        localName: 'vpc_dhcp_options',
        domainName: .literal(leftover),
        domainNameServers: .literal([leftover]),
        ipv6AddressPreferredLeaseTime: .literal(leftover),
        netbiosNameServers: .literal([leftover]),
        netbiosNodeType: .literal(leftover),
        ntpServers: .literal([leftover]),
      ),
    );

    add(
      AwsVpcDhcpOptionsAssociation(
        localName: 'vpc_dhcp_options_association',
        dhcpOptionsId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcEncryptionControl(
        localName: 'vpc_encryption_control',
        mode: .literal(.monitor),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcEndpoint(
        localName: 'vpc_endpoint',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcEndpointConnectionAccepter(
        localName: 'vpc_endpoint_connection_accepter',
        vpcEndpointId: .literal(leftover),
        vpcEndpointServiceId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointConnectionNotification(
        localName: 'vpc_endpoint_connection_notification',
        connectionEvents: .literal([leftover]),
        connectionNotificationArn: .literal(arn),
        vpcEndpoint: .vpcEndpointId(.literal(leftover)),
      ),
    );

    add(
      AwsVpcEndpointPolicy(
        localName: 'vpc_endpoint_policy',
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointPrivateDns(
        localName: 'vpc_endpoint_private_dns',
        privateDnsEnabled: .literal(true),
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointRouteTableAssociation(
        localName: 'vpc_endpoint_route_table_association',
        routeTableId: .literal(leftover),
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointSecurityGroupAssociation(
        localName: 'vpc_endpoint_security_group_association',
        securityGroupId: .literal('sg-0123456789abcdef0'),
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointService(
        localName: 'vpc_endpoint_service',
        acceptanceRequired: .literal(true),
      ),
    );

    add(
      AwsVpcEndpointServiceAllowedPrincipal(
        localName: 'vpc_endpoint_service_allowed_principal',
        principalArn: .literal(arn),
        vpcEndpointServiceId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointServicePrivateDnsVerification(
        localName: 'vpc_endpoint_service_private_dns_verification',
        serviceId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointSubnetAssociation(
        localName: 'vpc_endpoint_subnet_association',
        subnetId: .literal('subnet-0123456789abcdef0'),
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(
      AwsVpcIpam(
        localName: 'vpc_ipam',
        operatingRegions: [
          VpcIpamOperatingRegions(regionName: .literal('us-east-1')),
        ],
      ),
    );

    add(
      AwsVpcIpamOrganizationAdminAccount(
        localName: 'vpc_ipam_organization_admin_account',
        delegatedAdminAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsVpcIpamPool(
        localName: 'vpc_ipam_pool',
        addressFamily: .literal(.ipv4),
        ipamScopeId: .literal(leftover),
      ),
    );

    add(
      AwsVpcIpamPoolCidr(
        localName: 'vpc_ipam_pool_cidr',
        ipamPoolId: .literal(leftover),
      ),
    );

    add(
      AwsVpcIpamPoolCidrAllocation(
        localName: 'vpc_ipam_pool_cidr_allocation',
        ipamPoolId: .literal(leftover),
      ),
    );

    add(
      AwsVpcIpamPreviewNextCidr(
        localName: 'vpc_ipam_preview_next_cidr',
        ipamPoolId: .literal(leftover),
      ),
    );

    add(
      AwsVpcIpamResourceDiscovery(
        localName: 'vpc_ipam_resource_discovery',
        operatingRegions: [
          VpcIpamResourceDiscoveryOperatingRegions(
            regionName: .literal('us-east-1'),
          ),
        ],
      ),
    );

    add(
      AwsVpcIpamResourceDiscoveryAssociation(
        localName: 'vpc_ipam_resource_discovery_association',
        ipamId: .literal(leftover),
        ipamResourceDiscoveryId: .literal(leftover),
      ),
    );

    add(
      AwsVpcIpamScope(localName: 'vpc_ipam_scope', ipamId: .literal(leftover)),
    );

    add(
      AwsVpcIpv4CidrBlockAssociation(
        localName: 'vpc_ipv4_cidr_block_association',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcIpv6CidrBlockAssociation(
        localName: 'vpc_ipv6_cidr_block_association',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcNetworkPerformanceMetricSubscription(
        localName: 'vpc_network_performance_metric_subscription',
        destination: .literal(leftover),
        source: .literal(leftover),
      ),
    );

    add(
      AwsVpcPeeringConnection(
        localName: 'vpc_peering_connection',
        peerVpcId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcPeeringConnectionAccepter(
        localName: 'vpc_peering_connection_accepter',
        vpcPeeringConnectionId: .literal(leftover),
      ),
    );

    add(
      AwsVpcPeeringConnectionOptions(
        localName: 'vpc_peering_connection_options',
        vpcPeeringConnectionId: .literal(leftover),
      ),
    );

    add(
      AwsVpcRouteServer(
        localName: 'vpc_route_server',
        amazonSideAsn: .literal(200),
      ),
    );

    add(
      AwsVpcRouteServerEndpoint(
        localName: 'vpc_route_server_endpoint',
        routeServerId: .literal(leftover),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcRouteServerPeer(
        localName: 'vpc_route_server_peer',
        peerAddress: .literal(leftover),
        routeServerEndpointId: .literal(leftover),
        bgpOptions: [VpcRouteServerPeerBgpOptions(peerAsn: .literal(200))],
      ),
    );

    add(
      AwsVpcRouteServerPropagation(
        localName: 'vpc_route_server_propagation',
        routeServerId: .literal(leftover),
        routeTableId: .literal(leftover),
      ),
    );

    add(
      AwsVpcRouteServerVpcAssociation(
        localName: 'vpc_route_server_vpc_association',
        routeServerId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcSecurityGroupEgressRule(
        localName: 'vpc_security_group_egress_rule',
        ipProtocol: .literal(leftover),
        securityGroupId: .literal('sg-0123456789abcdef0'),
        cidrIpv4: .literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsVpcSecurityGroupIngressRule(
        localName: 'vpc_security_group_ingress_rule',
        ipProtocol: .literal(leftover),
        securityGroupId: .literal('sg-0123456789abcdef0'),
        cidrIpv4: .literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsVpcSecurityGroupRulesExclusive(
        localName: 'vpc_security_group_rules_exclusive',
        egressRuleIds: .literal([leftover]),
        ingressRuleIds: .literal([leftover]),
        securityGroupId: .literal('sg-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcSecurityGroupVpcAssociation(
        localName: 'vpc_security_group_vpc_association',
        securityGroupId: .literal('sg-0123456789abcdef0'),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpclatticeAccessLogSubscription(
        localName: 'vpclattice_access_log_subscription',
        destinationArn: .literal(arn),
        resourceIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeAuthPolicy(
        localName: 'vpclattice_auth_policy',
        policy: .literal(policy),
        resourceIdentifier: .literal(arn),
      ),
    );

    add(
      AwsVpclatticeDomainVerification(
        localName: 'vpclattice_domain_verification',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeListener(
        localName: 'vpclattice_listener',
        name: .literal(leftover),
        protocol: .literal(.http),
        defaultAction: VpclatticeListenerDefaultAction(
          fixedResponse: VpclatticeListenerFixedResponse(
            statusCode: .literal(200),
          ),
        ),
        serviceArn: .literal(arn),
        serviceIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeListenerRule(
        localName: 'vpclattice_listener_rule',
        listenerIdentifier: .literal(leftover),
        name: .literal(leftover),
        priority: .literal(1),
        serviceIdentifier: .literal(leftover),
        action: .fixedResponse(
          VpclatticeListenerRuleFixedResponse(statusCode: .literal(200)),
        ),
        match: VpclatticeListenerRuleMatch(
          httpMatch: VpclatticeListenerRuleHttpMatch(
            method: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsVpclatticeResourceConfiguration(
        localName: 'vpclattice_resource_configuration',
        name: .literal(leftover),
        parent: .resourceGatewayIdentifier(.literal(leftover)),
        protocol: .literal(.tcp),
      ),
    );

    add(
      AwsVpclatticeResourceGateway(
        localName: 'vpclattice_resource_gateway',
        name: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpclatticeResourcePolicy(
        localName: 'vpclattice_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsVpclatticeService(
        localName: 'vpclattice_service',
        name: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetwork(
        localName: 'vpclattice_service_network',
        name: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetworkResourceAssociation(
        localName: 'vpclattice_service_network_resource_association',
        resourceConfigurationIdentifier: .literal(leftover),
        serviceNetworkIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetworkServiceAssociation(
        localName: 'vpclattice_service_network_service_association',
        serviceIdentifier: .literal(leftover),
        serviceNetworkIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetworkVpcAssociation(
        localName: 'vpclattice_service_network_vpc_association',
        serviceNetworkIdentifier: .literal(leftover),
        vpcIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeTargetGroup(
        localName: 'vpclattice_target_group',
        name: .literal(leftover),
        type: .literal(.ip),
      ),
    );

    add(
      AwsVpclatticeTargetGroupAttachment(
        localName: 'vpclattice_target_group_attachment',
        targetGroupIdentifier: .literal(leftover),
        target: VpclatticeTargetGroupAttachmentTarget(id: .literal(leftover)),
      ),
    );

    add(
      AwsVpnConcentrator(
        localName: 'vpn_concentrator',
        transitGatewayId: .literal(leftover),
        type: .literal(.ipsec1),
      ),
    );

    add(
      AwsVpnConnection(
        localName: 'vpn_connection',
        customerGatewayId: .literal(leftover),
        type: .literal(.ipsec1),
      ),
    );

    add(
      AwsVpnConnectionRoute(
        localName: 'vpn_connection_route',
        destinationCidrBlock: .literal('10.0.0.0/16'),
        vpnConnectionId: .literal(leftover),
      ),
    );

    add(AwsVpnGateway(localName: 'vpn_gateway'));

    add(
      AwsVpnGatewayAttachment(
        localName: 'vpn_gateway_attachment',
        vpcId: .literal('vpc-0123456789abcdef0'),
        vpnGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsVpnGatewayRoutePropagation(
        localName: 'vpn_gateway_route_propagation',
        routeTableId: .literal(leftover),
        vpnGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsWafByteMatchSet(
        localName: 'waf_byte_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafGeoMatchSet(
        localName: 'waf_geo_match_set',
        name: .literal(leftover),
      ),
    );

    add(AwsWafIpset(localName: 'waf_ipset', name: .literal(leftover)));

    add(
      AwsWafRateBasedRule(
        localName: 'waf_rate_based_rule',
        metricName: .literal(leftover),
        name: .literal(leftover),
        rateKey: .literal(leftover),
        rateLimit: .literal(200),
      ),
    );

    add(
      AwsWafRegexMatchSet(
        localName: 'waf_regex_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafRegexPatternSet(
        localName: 'waf_regex_pattern_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafRule(
        localName: 'waf_rule',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafRuleGroup(
        localName: 'waf_rule_group',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafSizeConstraintSet(
        localName: 'waf_size_constraint_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafSqlInjectionMatchSet(
        localName: 'waf_sql_injection_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafWebAcl(
        localName: 'waf_web_acl',
        metricName: .literal(leftover),
        name: .literal(leftover),
        defaultAction: WafWebAclDefaultAction(type: .literal(leftover)),
      ),
    );

    add(
      AwsWafXssMatchSet(
        localName: 'waf_xss_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalByteMatchSet(
        localName: 'wafregional_byte_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalGeoMatchSet(
        localName: 'wafregional_geo_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalIpset(
        localName: 'wafregional_ipset',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalRateBasedRule(
        localName: 'wafregional_rate_based_rule',
        metricName: .literal(leftover),
        name: .literal(leftover),
        rateKey: .literal(leftover),
        rateLimit: .literal(200),
      ),
    );

    add(
      AwsWafregionalRegexMatchSet(
        localName: 'wafregional_regex_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalRegexPatternSet(
        localName: 'wafregional_regex_pattern_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalRule(
        localName: 'wafregional_rule',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalRuleGroup(
        localName: 'wafregional_rule_group',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalSizeConstraintSet(
        localName: 'wafregional_size_constraint_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalSqlInjectionMatchSet(
        localName: 'wafregional_sql_injection_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalWebAcl(
        localName: 'wafregional_web_acl',
        metricName: .literal(leftover),
        name: .literal(leftover),
        defaultAction: WafregionalWebAclDefaultAction(type: .literal(.block)),
      ),
    );

    add(
      AwsWafregionalWebAclAssociation(
        localName: 'wafregional_web_acl_association',
        resourceArn: .literal(arn),
        webAclId: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalXssMatchSet(
        localName: 'wafregional_xss_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafv2ApiKey(
        localName: 'wafv2_api_key',
        scope: .literal(.cloudfront),
        tokenDomains: .literal(['example.com']),
      ),
    );

    add(
      AwsWafv2IpSet(
        localName: 'wafv2_ip_set',
        ipAddressVersion: .literal(.ipv4),
        scope: .literal(.cloudfront),
      ),
    );

    add(
      AwsWafv2RegexPatternSet(
        localName: 'wafv2_regex_pattern_set',
        scope: .literal(.cloudfront),
      ),
    );

    add(
      AwsWafv2RuleGroup(
        localName: 'wafv2_rule_group',
        capacity: .literal(200),
        scope: .literal(.regional),
        visibilityConfig: Wafv2RuleGroupVisibilityConfig(
          cloudwatchMetricsEnabled: .literal(true),
          metricName: .literal(leftover),
          sampledRequestsEnabled: .literal(true),
        ),
      ),
    );

    add(
      AwsWafv2WebAcl(
        localName: 'wafv2_web_acl',
        scope: .literal(.regional),
        defaultAction: Wafv2WebAclDefaultAction(
          allow: Wafv2WebAclAllow(
            customRequestHandling: Wafv2WebAclCustomRequestHandling(
              insertHeader: [
                Wafv2WebAclInsertHeader(
                  name: .literal(leftover),
                  value: .literal(leftover),
                ),
              ],
            ),
          ),
        ),
        visibilityConfig: Wafv2WebAclVisibilityConfig(
          cloudwatchMetricsEnabled: .literal(true),
          metricName: .literal(leftover),
          sampledRequestsEnabled: .literal(true),
        ),
      ),
    );

    add(
      AwsWafv2WebAclAssociation(
        localName: 'wafv2_web_acl_association',
        resourceArn: .literal(arn),
        webAclArn: .literal(arn),
      ),
    );

    add(
      AwsWafv2WebAclLoggingConfiguration(
        localName: 'wafv2_web_acl_logging_configuration',
        logDestinationConfigs: .literal([arn]),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsWafv2WebAclRule(
        localName: 'wafv2_web_acl_rule',
        name: .literal(leftover),
        priority: .literal(200),
        webAclArn: .literal(arn),
        behavior: .action([
          Wafv2WebAclRuleAction(
            allow: [
              Wafv2WebAclRuleAllow(
                customRequestHandling: [
                  Wafv2WebAclRuleCustomRequestHandling(
                    insertHeader: [
                      Wafv2WebAclRuleInsertHeader(
                        name: .literal(leftover),
                        value: .literal(leftover),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ]),
        statement: [
          Wafv2WebAclRuleStatement(
            andStatement: [
              Wafv2WebAclRuleAndStatement(
                statement: [
                  Wafv2WebAclRuleAndStatementStatement(
                    andStatement: [
                      Wafv2WebAclRuleStatementAndStatement(
                        statement: [
                          Wafv2WebAclRuleStatementStatement(
                            andStatement: [
                              Wafv2WebAclRuleAndStatementAndStatement(
                                statement: [
                                  Wafv2WebAclRuleStatementAndStatementStatement(
                                    asnMatchStatement: [
                                      Wafv2WebAclRuleAsnMatchStatement(
                                        asnList: .literal([64512]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
        visibilityConfig: [
          Wafv2WebAclRuleVisibilityConfig(
            cloudwatchMetricsEnabled: .literal(true),
            metricName: .literal(leftover),
            sampledRequestsEnabled: .literal(true),
          ),
        ],
      ),
    );

    add(
      AwsWafv2WebAclRuleGroupAssociation(
        localName: 'wafv2_web_acl_rule_group_association',
        priority: .literal(200),
        ruleName: .literal(leftover),
        webAclArn: .literal(arn),
        source: .managedRuleGroup([
          Wafv2WebAclRuleGroupAssociationManagedRuleGroup(
            name: .literal(leftover),
            vendorName: .literal(leftover),
          ),
        ]),
      ),
    );

    add(
      AwsWorkmailDefaultDomain(
        localName: 'workmail_default_domain',
        domainName: .literal(leftover),
        organizationId: .literal(leftover),
      ),
    );

    add(
      AwsWorkmailDomain(
        localName: 'workmail_domain',
        domainName: .literal(leftover),
        organizationId: .literal(leftover),
      ),
    );

    add(
      AwsWorkmailGroup(
        localName: 'workmail_group',
        email: .literal('leftover@example.com'),
        name: .literal(leftover),
        organizationId: .literal(leftover),
      ),
    );

    add(
      AwsWorkmailOrganization(
        localName: 'workmail_organization',
        organizationAlias: .literal(leftover),
      ),
    );

    add(
      AwsWorkmailUser(
        localName: 'workmail_user',
        displayName: .literal(leftover),
        email: .literal('leftover@example.com'),
        name: .literal(leftover),
        organizationId: .literal(leftover),
      ),
    );

    add(
      AwsWorkspacesConnectionAlias(
        localName: 'workspaces_connection_alias',
        connectionString: .literal(leftover),
      ),
    );

    add(AwsWorkspacesDirectory(localName: 'workspaces_directory'));

    add(
      AwsWorkspacesIpGroup(
        localName: 'workspaces_ip_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWorkspacesPool(
        localName: 'workspaces_pool',
        bundleId: .literal('wsb-leftover1'),
        description: .literal(leftover),
        directoryId: .literal('wsd-leftover1'),
        poolName: .literal(leftover),
        runningMode: .literal(.autoStop),
      ),
    );

    add(
      AwsWorkspacesWorkspace(
        localName: 'workspaces_workspace',
        bundleId: .literal(leftover),
        directoryId: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsWorkspaceswebBrowserSettings(
        localName: 'workspacesweb_browser_settings',
        browserPolicy: .literal(policy),
      ),
    );

    add(
      AwsWorkspaceswebBrowserSettingsAssociation(
        localName: 'workspacesweb_browser_settings_association',
        browserSettingsArn: .literal(arn),
        portalArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebDataProtectionSettings(
        localName: 'workspacesweb_data_protection_settings',
        displayName: .literal(leftover),
      ),
    );

    add(
      AwsWorkspaceswebDataProtectionSettingsAssociation(
        localName: 'workspacesweb_data_protection_settings_associati',
        dataProtectionSettingsArn: .literal(arn),
        portalArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebIdentityProvider(
        localName: 'workspacesweb_identity_provider',
        identityProviderDetails: .literal({'k': leftover}),
        identityProviderName: .literal(leftover),
        identityProviderType: .literal(.saml),
        portalArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebIpAccessSettings(
        localName: 'workspacesweb_ip_access_settings',
        displayName: .literal(leftover),
        ipRule: [
          WorkspaceswebIpAccessSettingsIpRule(ipRange: .literal(leftover)),
        ],
      ),
    );

    add(
      AwsWorkspaceswebIpAccessSettingsAssociation(
        localName: 'workspacesweb_ip_access_settings_association',
        ipAccessSettingsArn: .literal(arn),
        portalArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebNetworkSettings(
        localName: 'workspacesweb_network_settings',
        securityGroupIds: .literal([.literal(leftover)]),
        subnetIds: .literal([.literal(leftover), .literal('leftover1')]),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsWorkspaceswebNetworkSettingsAssociation(
        localName: 'workspacesweb_network_settings_association',
        networkSettingsArn: .literal(arn),
        portalArn: .literal(arn),
      ),
    );

    add(AwsWorkspaceswebPortal(localName: 'workspacesweb_portal'));

    add(
      AwsWorkspaceswebSessionLogger(
        localName: 'workspacesweb_session_logger',
        logConfiguration: [
          WorkspaceswebSessionLoggerLogConfiguration(
            s3: [
              WorkspaceswebSessionLoggerS3(
                bucket: .literal(leftover),
                folderStructure: .literal(.flat),
                logFileFormat: .literal(.jsonlines),
              ),
            ],
          ),
        ],
        eventFilter: [
          .include([.literal(.websiteinteract)]),
        ],
      ),
    );

    add(
      AwsWorkspaceswebSessionLoggerAssociation(
        localName: 'workspacesweb_session_logger_association',
        portalArn: .literal(arn),
        sessionLoggerArn: .literal(arn),
      ),
    );

    add(AwsWorkspaceswebTrustStore(localName: 'workspacesweb_trust_store'));

    add(
      AwsWorkspaceswebTrustStoreAssociation(
        localName: 'workspacesweb_trust_store_association',
        portalArn: .literal(arn),
        trustStoreArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebUserAccessLoggingSettings(
        localName: 'workspacesweb_user_access_logging_settings',
        kinesisStreamArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebUserAccessLoggingSettingsAssociation(
        localName: 'workspacesweb_user_access_logging_settings_assoc',
        portalArn: .literal(arn),
        userAccessLoggingSettingsArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebUserSettings(
        localName: 'workspacesweb_user_settings',
        copyAllowed: .literal(.disabled),
        downloadAllowed: .literal(.disabled),
        pasteAllowed: .literal(.disabled),
        printAllowed: .literal(.disabled),
        uploadAllowed: .literal(.disabled),
      ),
    );

    add(
      AwsWorkspaceswebUserSettingsAssociation(
        localName: 'workspacesweb_user_settings_association',
        portalArn: .literal(arn),
        userSettingsArn: .literal(arn),
      ),
    );

    add(
      AwsXrayEncryptionConfig(
        localName: 'xray_encryption_config',
        type: .literal(.none),
      ),
    );

    add(
      AwsXrayGroup(
        localName: 'xray_group',
        filterExpression: .literal(leftover),
        groupName: .literal(leftover),
      ),
    );

    add(
      AwsXrayIndexingRule(
        localName: 'xray_indexing_rule',
        name: .literal(leftover),
        rule: [
          XrayIndexingRuleRule(
            probabilistic: [
              XrayIndexingRuleProbabilistic(
                desiredSamplingPercentage: .literal(200),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsXrayResourcePolicy(
        localName: 'xray_resource_policy',
        policyDocument: .literal(policy),
        policyName: .literal(leftover),
      ),
    );

    add(
      AwsXraySamplingRule(
        localName: 'xray_sampling_rule',
        fixedRate: .literal(200),
        host: .literal(leftover),
        httpMethod: .literal(leftover),
        priority: .literal(200),
        reservoirSize: .literal(200),
        resourceArn: .literal(arn),
        serviceName: .literal(leftover),
        serviceType: .literal(leftover),
        urlPath: .literal(leftover),
        version: .literal(200),
      ),
    );

    add(
      AwsXrayTraceSegmentDestination(
        localName: 'xray_trace_segment_destination',
        destination: .literal(.xray),
      ),
    );

    addData(
      DataAwsAccountPrimaryContact(localName: 'd_account_primary_contact'),
    );

    addData(DataAwsAccountRegions(localName: 'd_account_regions'));

    addData(
      DataAwsAccountaccessApplication(
        localName: 'd_accountaccess_application',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsAccountaccessEntitlements(
        localName: 'd_accountaccess_entitlements',
        applicationArn: .literal(arn),
        filter: [
          DataAccountaccessEntitlementsFilter(
            principalRole: [
              DataAccountaccessEntitlementsPrincipalRole(
                accountId: .literal('123456789012'),
              ),
            ],
          ),
        ],
      ),
    );

    addData(
      DataAwsAcmCertificate(
        localName: 'd_acm_certificate',
        domain: .literal(leftover),
        tags: .literal({'k': leftover}),
      ),
    );

    addData(
      DataAwsAcmpcaCertificate(
        localName: 'd_acmpca_certificate',
        arn: .literal(arn),
        certificateAuthorityArn: .literal(arn),
      ),
    );

    addData(
      DataAwsAcmpcaCertificateAuthority(
        localName: 'd_acmpca_certificate_authority',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsAgentregistryRegistry(
        localName: 'd_agentregistry_registry',
        registryId: .literal(leftover),
      ),
    );

    addData(DataAwsAlb(localName: 'd_alb'));

    addData(DataAwsAlbListener(localName: 'd_alb_listener'));

    addData(DataAwsAlbTargetGroup(localName: 'd_alb_target_group'));

    addData(DataAwsAmi(localName: 'd_ami'));

    addData(
      DataAwsAmiIds(localName: 'd_ami_ids', owners: .literal([leftover])),
    );

    addData(
      DataAwsApiGatewayApiKey(
        localName: 'd_api_gateway_api_key',
        id: .literal(leftover),
      ),
    );

    addData(DataAwsApiGatewayApiKeys(localName: 'd_api_gateway_api_keys'));

    addData(
      DataAwsApiGatewayAuthorizer(
        localName: 'd_api_gateway_authorizer',
        authorizerId: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayAuthorizers(
        localName: 'd_api_gateway_authorizers',
        restApiId: .literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayDomainName(
        localName: 'd_api_gateway_domain_name',
        domainName: .literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayExport(
        localName: 'd_api_gateway_export',
        exportType: .literal('oas30'),
        restApiId: .literal(leftover),
        stageName: .literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayResource(
        localName: 'd_api_gateway_resource',
        path: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayRestApi(
        localName: 'd_api_gateway_rest_api',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewaySdk(
        localName: 'd_api_gateway_sdk',
        restApiId: .literal(leftover),
        sdkType: .literal('java'),
        stageName: .literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayVpcLink(
        localName: 'd_api_gateway_vpc_link',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsApigatewayv2Api(
        localName: 'd_apigatewayv2_api',
        apiId: .literal(leftover),
      ),
    );

    addData(DataAwsApigatewayv2Apis(localName: 'd_apigatewayv2_apis'));

    addData(
      DataAwsApigatewayv2Export(
        localName: 'd_apigatewayv2_export',
        apiId: .literal(leftover),
        outputType: .literal('JSON'),
        specification: .literal('OAS30'),
      ),
    );

    addData(
      DataAwsApigatewayv2VpcLink(
        localName: 'd_apigatewayv2_vpc_link',
        vpcLinkId: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppconfigApplication(
        localName: 'd_appconfig_application',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppconfigConfigurationProfile(
        localName: 'd_appconfig_configuration_profile',
        applicationId: .literal(leftover),
        configurationProfileId: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppconfigConfigurationProfiles(
        localName: 'd_appconfig_configuration_profiles',
        applicationId: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppconfigEnvironment(
        localName: 'd_appconfig_environment',
        applicationId: .literal(leftover),
        environmentId: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppconfigEnvironments(
        localName: 'd_appconfig_environments',
        applicationId: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppintegrationsEventIntegration(
        localName: 'd_appintegrations_event_integration',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshGatewayRoute(
        localName: 'd_appmesh_gateway_route',
        meshName: .literal(leftover),
        name: .literal(leftover),
        virtualGatewayName: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshMesh(localName: 'd_appmesh_mesh', name: .literal(leftover)),
    );

    addData(
      DataAwsAppmeshRoute(
        localName: 'd_appmesh_route',
        meshName: .literal(leftover),
        name: .literal(leftover),
        virtualRouterName: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshVirtualGateway(
        localName: 'd_appmesh_virtual_gateway',
        meshName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshVirtualNode(
        localName: 'd_appmesh_virtual_node',
        meshName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshVirtualRouter(
        localName: 'd_appmesh_virtual_router',
        meshName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshVirtualService(
        localName: 'd_appmesh_virtual_service',
        meshName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsApprunnerHostedZoneId(localName: 'd_apprunner_hosted_zone_id'),
    );

    addData(DataAwsAppstreamImage(localName: 'd_appstream_image'));

    addData(
      DataAwsArcregionswitchPlan(
        localName: 'd_arcregionswitch_plan',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsArcregionswitchRoute53HealthChecks(
        localName: 'd_arcregionswitch_route53_health_checks',
        planArn: .literal(arn),
      ),
    );

    addData(DataAwsArn(localName: 'd_arn', arn: .literal(arn)));

    addData(
      DataAwsAthenaNamedQuery(
        localName: 'd_athena_named_query',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsAuditmanagerControl(
        localName: 'd_auditmanager_control',
        name: .literal(leftover),
        type: .literal('Standard'),
      ),
    );

    addData(
      DataAwsAuditmanagerFramework(
        localName: 'd_auditmanager_framework',
        frameworkType: .literal('Standard'),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsAutoscalingGroup(
        localName: 'd_autoscaling_group',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsAutoscalingGroups(localName: 'd_autoscaling_groups'));

    addData(DataAwsAvailabilityZone(localName: 'd_availability_zone'));

    addData(DataAwsAvailabilityZones(localName: 'd_availability_zones'));

    addData(
      DataAwsBackupFramework(
        localName: 'd_backup_framework',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsBackupPlan(localName: 'd_backup_plan', planId: .literal(leftover)),
    );

    addData(
      DataAwsBackupReportPlan(
        localName: 'd_backup_report_plan',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsBackupSelection(
        localName: 'd_backup_selection',
        planId: .literal(leftover),
        selectionId: .literal(leftover),
      ),
    );

    addData(
      DataAwsBackupVault(localName: 'd_backup_vault', name: .literal(leftover)),
    );

    addData(
      DataAwsBatchComputeEnvironment(
        localName: 'd_batch_compute_environment',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsBatchJobDefinition(localName: 'd_batch_job_definition'));

    addData(
      DataAwsBatchJobQueue(
        localName: 'd_batch_job_queue',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsBatchSchedulingPolicy(
        localName: 'd_batch_scheduling_policy',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsBedrockCustomModel(
        localName: 'd_bedrock_custom_model',
        modelId: .literal(leftover),
      ),
    );

    addData(DataAwsBedrockCustomModels(localName: 'd_bedrock_custom_models'));

    addData(
      DataAwsBedrockFoundationModel(
        localName: 'd_bedrock_foundation_model',
        modelId: .literal(leftover),
      ),
    );

    addData(
      DataAwsBedrockFoundationModelAgreementOffers(
        localName: 'd_bedrock_foundation_model_agreement_offers',
        modelId: .literal('2e.lzvycjp-i167ebv/zatu8l86d38a'),
      ),
    );

    addData(
      DataAwsBedrockFoundationModels(localName: 'd_bedrock_foundation_models'),
    );

    addData(
      DataAwsBedrockInferenceProfile(
        localName: 'd_bedrock_inference_profile',
        inferenceProfileId: .literal(leftover),
      ),
    );

    addData(
      DataAwsBedrockInferenceProfiles(
        localName: 'd_bedrock_inference_profiles',
      ),
    );

    addData(
      DataAwsBedrockUseCaseForModelAccess(
        localName: 'd_bedrock_use_case_for_model_access',
      ),
    );

    addData(
      DataAwsBedrockagentAgentVersions(
        localName: 'd_bedrockagent_agent_versions',
        agentId: .literal(leftover),
      ),
    );

    addData(
      DataAwsBillingServiceAccount(localName: 'd_billing_service_account'),
    );

    addData(DataAwsBillingViews(localName: 'd_billing_views'));

    addData(
      DataAwsBudgetsBudget(
        localName: 'd_budgets_budget',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsCanonicalUserId(localName: 'd_canonical_user_id'));

    addData(
      DataAwsCeCostCategory(
        localName: 'd_ce_cost_category',
        costCategoryArn: .literal(arn),
      ),
    );

    addData(
      DataAwsCeTags(
        localName: 'd_ce_tags',
        timePeriod: DataCeTagsTimePeriod(
          end: .literal(leftover),
          start: .literal(leftover),
        ),
      ),
    );

    addData(
      DataAwsChatbotSlackWorkspace(
        localName: 'd_chatbot_slack_workspace',
        slackTeamName: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudcontrolapiResource(
        localName: 'd_cloudcontrolapi_resource',
        identifier: .literal(leftover),
        typeName: .literal('AWS::S3::Bucket'),
      ),
    );

    addData(
      DataAwsCloudformationExport(
        localName: 'd_cloudformation_export',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudformationStack(
        localName: 'd_cloudformation_stack',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsCloudformationType(localName: 'd_cloudformation_type'));

    addData(
      DataAwsCloudfrontConnectionGroup(
        localName: 'd_cloudfront_connection_group',
        routingEndpoint: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontDistribution(
        localName: 'd_cloudfront_distribution',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontDistributionTenant(
        localName: 'd_cloudfront_distribution_tenant',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsCloudfrontFunction(
        localName: 'd_cloudfront_function',
        name: .literal(leftover),
        stage: .literal('DEVELOPMENT'),
      ),
    );

    addData(
      DataAwsCloudfrontLogDeliveryCanonicalUserId(
        localName: 'd_cloudfront_log_delivery_canonical_user_id',
      ),
    );

    addData(
      DataAwsCloudfrontOriginAccessControl(
        localName: 'd_cloudfront_origin_access_control',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontOriginAccessIdentities(
        localName: 'd_cloudfront_origin_access_identities',
      ),
    );

    addData(
      DataAwsCloudfrontOriginAccessIdentity(
        localName: 'd_cloudfront_origin_access_identity',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontOriginRequestPolicy(
        localName: 'd_cloudfront_origin_request_policy',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontRealtimeLogConfig(
        localName: 'd_cloudfront_realtime_log_config',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontResponseHeadersPolicy(
        localName: 'd_cloudfront_response_headers_policy',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudhsmV2Cluster(
        localName: 'd_cloudhsm_v2_cluster',
        clusterId: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudtrailServiceAccount(
        localName: 'd_cloudtrail_service_account',
      ),
    );

    addData(
      DataAwsCloudwatchContributorManagedInsightRules(
        localName: 'd_cloudwatch_contributor_managed_insight_rules',
        resourceArn: .literal(arn),
      ),
    );

    addData(
      DataAwsCloudwatchEventBus(
        localName: 'd_cloudwatch_event_bus',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsCloudwatchEventBuses(localName: 'd_cloudwatch_event_buses'));

    addData(
      DataAwsCloudwatchEventConnection(
        localName: 'd_cloudwatch_event_connection',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsCloudwatchEventSource(localName: 'd_cloudwatch_event_source'),
    );

    addData(
      DataAwsCloudwatchLogDataProtectionPolicyDocument(
        localName: 'd_cloudwatch_log_data_protection_policy_document',
        name: .literal(leftover),
        statement: [
          DataCloudwatchLogDataProtectionPolicyDocumentStatement(
            dataIdentifiers: .literal([leftover]),
            operation: DataCloudwatchLogDataProtectionPolicyDocumentOperation(
              audit: DataCloudwatchLogDataProtectionPolicyDocumentAudit(
                findingsDestination:
                    DataCloudwatchLogDataProtectionPolicyDocumentFindingsDestination(
                      cloudwatchLogs:
                          DataCloudwatchLogDataProtectionPolicyDocumentCloudwatchLogs(
                            logGroup: .literal(leftover),
                          ),
                    ),
              ),
            ),
          ),
          DataCloudwatchLogDataProtectionPolicyDocumentStatement(
            dataIdentifiers: .literal([leftover]),
            operation: DataCloudwatchLogDataProtectionPolicyDocumentOperation(
              audit: DataCloudwatchLogDataProtectionPolicyDocumentAudit(
                findingsDestination:
                    DataCloudwatchLogDataProtectionPolicyDocumentFindingsDestination(
                      cloudwatchLogs:
                          DataCloudwatchLogDataProtectionPolicyDocumentCloudwatchLogs(
                            logGroup: .literal(leftover),
                          ),
                    ),
              ),
            ),
          ),
        ],
      ),
    );

    addData(
      DataAwsCloudwatchLogGroup(
        localName: 'd_cloudwatch_log_group',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsCloudwatchLogGroups(localName: 'd_cloudwatch_log_groups'));

    addData(
      DataAwsCodeartifactAuthorizationToken(
        localName: 'd_codeartifact_authorization_token',
        domain: .literal(leftover),
      ),
    );

    addData(
      DataAwsCodeartifactRepositoryEndpoint(
        localName: 'd_codeartifact_repository_endpoint',
        domain: .literal(leftover),
        format: .literal('npm'),
        repository: .literal(leftover),
      ),
    );

    addData(
      DataAwsCodebuildFleet(
        localName: 'd_codebuild_fleet',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsCodecatalystDevEnvironment(
        localName: 'd_codecatalyst_dev_environment',
        envId: .literal(leftover),
        projectName: .literal(leftover),
        spaceName: .literal(leftover),
      ),
    );

    addData(
      DataAwsCodecommitApprovalRuleTemplate(
        localName: 'd_codecommit_approval_rule_template',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsCodecommitRepository(
        localName: 'd_codecommit_repository',
        repositoryName: .literal(leftover),
      ),
    );

    addData(
      DataAwsCodeguruprofilerProfilingGroup(
        localName: 'd_codeguruprofiler_profiling_group',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsCodestarconnectionsConnection(
        localName: 'd_codestarconnections_connection',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsCognitoIdentityPool(
        localName: 'd_cognito_identity_pool',
        identityPoolName: .literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserGroup(
        localName: 'd_cognito_user_group',
        name: .literal(leftover),
        userPoolId: .literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserGroups(
        localName: 'd_cognito_user_groups',
        userPoolId: .literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserPool(
        localName: 'd_cognito_user_pool',
        userPoolId: .literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserPoolClient(
        localName: 'd_cognito_user_pool_client',
        clientId: .literal(leftover),
        userPoolId: .literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserPoolClients(
        localName: 'd_cognito_user_pool_clients',
        userPoolId: .literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserPoolSigningCertificate(
        localName: 'd_cognito_user_pool_signing_certificate',
        userPoolId: .literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserPools(
        localName: 'd_cognito_user_pools',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectBotAssociation(
        localName: 'd_connect_bot_association',
        instanceId: .literal('i-0123456789abcdef0'),
        lexBot: DataConnectBotAssociationLexBot(name: .literal(leftover)),
      ),
    );

    addData(
      DataAwsConnectContactFlow(
        localName: 'd_connect_contact_flow',
        instanceId: .literal('i-0123456789abcdef0'),
        contactFlowId: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectContactFlowModule(
        localName: 'd_connect_contact_flow_module',
        instanceId: .literal('i-0123456789abcdef0'),
        contactFlowModuleId: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectHoursOfOperation(
        localName: 'd_connect_hours_of_operation',
        instanceId: .literal('i-0123456789abcdef0'),
        hoursOfOperationId: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectInstance(
        localName: 'd_connect_instance',
        instanceAlias: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectInstanceStorageConfig(
        localName: 'd_connect_instance_storage_config',
        associationId: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        resourceType: .literal('CHAT_TRANSCRIPTS'),
      ),
    );

    addData(
      DataAwsConnectLambdaFunctionAssociation(
        localName: 'd_connect_lambda_function_association',
        functionArn: .literal(arn),
        instanceId: .literal('i-0123456789abcdef0'),
      ),
    );

    addData(
      DataAwsConnectPrompt(
        localName: 'd_connect_prompt',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectQueue(
        localName: 'd_connect_queue',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectQuickConnect(
        localName: 'd_connect_quick_connect',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectRoutingProfile(
        localName: 'd_connect_routing_profile',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectSecurityProfile(
        localName: 'd_connect_security_profile',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectUser(
        localName: 'd_connect_user',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectUserHierarchyGroup(
        localName: 'd_connect_user_hierarchy_group',
        instanceId: .literal('i-0123456789abcdef0'),
        hierarchyGroupId: .literal(leftover),
      ),
    );

    addData(
      DataAwsConnectUserHierarchyStructure(
        localName: 'd_connect_user_hierarchy_structure',
        instanceId: .literal('i-0123456789abcdef0'),
      ),
    );

    addData(
      DataAwsConnectVocabulary(
        localName: 'd_connect_vocabulary',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsControltowerControls(
        localName: 'd_controltower_controls',
        targetIdentifier: .literal(arn),
      ),
    );

    addData(
      DataAwsCurReportDefinition(
        localName: 'd_cur_report_definition',
        reportName: .literal(leftover),
      ),
    );

    addData(DataAwsCustomerGateway(localName: 'd_customer_gateway'));

    addData(
      DataAwsDatapipelinePipeline(
        localName: 'd_datapipeline_pipeline',
        pipelineId: .literal(leftover),
      ),
    );

    addData(
      DataAwsDatapipelinePipelineDefinition(
        localName: 'd_datapipeline_pipeline_definition',
        pipelineId: .literal(leftover),
      ),
    );

    addData(
      DataAwsDatazoneDomain(
        localName: 'd_datazone_domain',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsDatazoneEnvironmentBlueprint(
        localName: 'd_datazone_environment_blueprint',
        domainId: .literal(leftover),
        managed: .literal(true),
        name: .literal(leftover),
      ),
    );

    addData(DataAwsDbClusterSnapshot(localName: 'd_db_cluster_snapshot'));

    addData(DataAwsDbEventCategories(localName: 'd_db_event_categories'));

    addData(DataAwsDbInstance(localName: 'd_db_instance'));

    addData(DataAwsDbInstances(localName: 'd_db_instances'));

    addData(
      DataAwsDbParameterGroup(
        localName: 'd_db_parameter_group',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsDbProxy(localName: 'd_db_proxy', name: .literal(leftover)));

    addData(DataAwsDbSnapshot(localName: 'd_db_snapshot'));

    addData(
      DataAwsDbSubnetGroup(
        localName: 'd_db_subnet_group',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsDefaultTags(localName: 'd_default_tags'));

    addData(
      DataAwsDevopsguruNotificationChannel(
        localName: 'd_devopsguru_notification_channel',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsDevopsguruResourceCollection(
        localName: 'd_devopsguru_resource_collection',
        type: .literal('AWS_CLOUD_FORMATION'),
      ),
    );

    addData(
      DataAwsDirectoryServiceDirectory(
        localName: 'd_directory_service_directory',
        directoryId: .literal(leftover),
      ),
    );

    addData(
      DataAwsDmsCertificate(
        localName: 'd_dms_certificate',
        certificateId: .literal(leftover),
      ),
    );

    addData(
      DataAwsDmsEndpoint(
        localName: 'd_dms_endpoint',
        endpointId: .literal(leftover),
      ),
    );

    addData(
      DataAwsDmsReplicationInstance(
        localName: 'd_dms_replication_instance',
        replicationInstanceId: .literal(leftover),
      ),
    );

    addData(
      DataAwsDmsReplicationSubnetGroup(
        localName: 'd_dms_replication_subnet_group',
        replicationSubnetGroupId: .literal(leftover),
      ),
    );

    addData(
      DataAwsDmsReplicationTask(
        localName: 'd_dms_replication_task',
        replicationTaskId: .literal(leftover),
      ),
    );

    addData(DataAwsDocdbEngineVersion(localName: 'd_docdb_engine_version'));

    addData(
      DataAwsDocdbOrderableDbInstance(
        localName: 'd_docdb_orderable_db_instance',
      ),
    );

    addData(
      DataAwsDxConnection(
        localName: 'd_dx_connection',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsDxGateway(localName: 'd_dx_gateway', name: .literal(leftover)),
    );

    addData(
      DataAwsDxLocation(
        localName: 'd_dx_location',
        locationCode: .literal(leftover),
      ),
    );

    addData(DataAwsDxLocations(localName: 'd_dx_locations'));

    addData(
      DataAwsDxRouterConfiguration(
        localName: 'd_dx_router_configuration',
        routerTypeIdentifier: .literal(leftover),
        virtualInterfaceId: .literal(leftover),
      ),
    );

    addData(DataAwsDynamodbBackups(localName: 'd_dynamodb_backups'));

    addData(
      DataAwsDynamodbTable(
        localName: 'd_dynamodb_table',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsDynamodbTableItem(
        localName: 'd_dynamodb_table_item',
        key: .literal('{"pk": {"S": "leftover"}}'),
        tableName: .literal(leftover),
      ),
    );

    addData(DataAwsDynamodbTables(localName: 'd_dynamodb_tables'));

    addData(DataAwsEbsDefaultKmsKey(localName: 'd_ebs_default_kms_key'));

    addData(
      DataAwsEbsEncryptionByDefault(localName: 'd_ebs_encryption_by_default'),
    );

    addData(DataAwsEbsSnapshot(localName: 'd_ebs_snapshot'));

    addData(DataAwsEbsSnapshotIds(localName: 'd_ebs_snapshot_ids'));

    addData(DataAwsEbsVolume(localName: 'd_ebs_volume'));

    addData(DataAwsEbsVolumes(localName: 'd_ebs_volumes'));

    addData(
      DataAwsEc2CapacityBlockOffering(
        localName: 'd_ec2_capacity_block_offering',
        capacityDurationHours: .literal(200),
        instanceCount: .literal(200),
        instanceType: .literal(leftover),
      ),
    );

    addData(
      DataAwsEc2CapacityBlockReservation(
        localName: 'd_ec2_capacity_block_reservation',
        filter: [
          DataEc2CapacityBlockReservationFilter(
            name: .literal(leftover),
            values: .literal([leftover]),
          ),
        ],
      ),
    );

    addData(
      DataAwsEc2ClientVpnEndpoint(localName: 'd_ec2_client_vpn_endpoint'),
    );

    addData(DataAwsEc2CoipPool(localName: 'd_ec2_coip_pool'));

    addData(DataAwsEc2CoipPools(localName: 'd_ec2_coip_pools'));

    addData(DataAwsEc2Host(localName: 'd_ec2_host'));

    addData(DataAwsEc2Hosts(localName: 'd_ec2_hosts'));

    addData(
      DataAwsEc2InstanceType(
        localName: 'd_ec2_instance_type',
        instanceType: .literal(leftover),
      ),
    );

    addData(
      DataAwsEc2InstanceTypeOffering(localName: 'd_ec2_instance_type_offering'),
    );

    addData(
      DataAwsEc2InstanceTypeOfferings(
        localName: 'd_ec2_instance_type_offerings',
      ),
    );

    addData(DataAwsEc2InstanceTypes(localName: 'd_ec2_instance_types'));

    addData(DataAwsEc2LocalGateway(localName: 'd_ec2_local_gateway'));

    addData(
      DataAwsEc2LocalGatewayRouteTable(
        localName: 'd_ec2_local_gateway_route_table',
      ),
    );

    addData(
      DataAwsEc2LocalGatewayRouteTables(
        localName: 'd_ec2_local_gateway_route_tables',
      ),
    );

    addData(
      DataAwsEc2LocalGatewayVirtualInterface(
        localName: 'd_ec2_local_gateway_virtual_interface',
      ),
    );

    addData(
      DataAwsEc2LocalGatewayVirtualInterfaceGroup(
        localName: 'd_ec2_local_gateway_virtual_interface_group',
      ),
    );

    addData(
      DataAwsEc2LocalGatewayVirtualInterfaceGroups(
        localName: 'd_ec2_local_gateway_virtual_interface_groups',
      ),
    );

    addData(DataAwsEc2LocalGateways(localName: 'd_ec2_local_gateways'));

    addData(
      DataAwsEc2ManagedPrefixList(localName: 'd_ec2_managed_prefix_list'),
    );

    addData(
      DataAwsEc2ManagedPrefixLists(localName: 'd_ec2_managed_prefix_lists'),
    );

    addData(
      DataAwsEc2NetworkInsightsAnalysis(
        localName: 'd_ec2_network_insights_analysis',
      ),
    );

    addData(
      DataAwsEc2NetworkInsightsPath(localName: 'd_ec2_network_insights_path'),
    );

    addData(
      DataAwsEc2PublicIpv4Pool(
        localName: 'd_ec2_public_ipv4_pool',
        poolId: .literal(leftover),
      ),
    );

    addData(DataAwsEc2PublicIpv4Pools(localName: 'd_ec2_public_ipv4_pools'));

    addData(
      DataAwsEc2SerialConsoleAccess(localName: 'd_ec2_serial_console_access'),
    );

    addData(
      DataAwsEc2ServiceLinkVirtualInterface(
        localName: 'd_ec2_service_link_virtual_interface',
        filter: [
          DataEc2ServiceLinkVirtualInterfaceFilter(
            name: .literal(leftover),
            values: .literal([leftover]),
          ),
        ],
      ),
    );

    addData(
      DataAwsEc2ServiceLinkVirtualInterfaces(
        localName: 'd_ec2_service_link_virtual_interfaces',
      ),
    );

    addData(DataAwsEc2SpotPrice(localName: 'd_ec2_spot_price'));

    addData(DataAwsEc2TransitGateway(localName: 'd_ec2_transit_gateway'));

    addData(
      DataAwsEc2TransitGatewayAttachment(
        localName: 'd_ec2_transit_gateway_attachment',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayAttachments(
        localName: 'd_ec2_transit_gateway_attachments',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayConnect(
        localName: 'd_ec2_transit_gateway_connect',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayConnectPeer(
        localName: 'd_ec2_transit_gateway_connect_peer',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayDxGatewayAttachment(
        localName: 'd_ec2_transit_gateway_dx_gateway_attachment',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayMulticastDomain(
        localName: 'd_ec2_transit_gateway_multicast_domain',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayPeeringAttachment(
        localName: 'd_ec2_transit_gateway_peering_attachment',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayPeeringAttachments(
        localName: 'd_ec2_transit_gateway_peering_attachments',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayRouteTable(
        localName: 'd_ec2_transit_gateway_route_table',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayRouteTableAssociations(
        localName: 'd_ec2_transit_gateway_route_table_associations',
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    addData(
      DataAwsEc2TransitGatewayRouteTablePropagations(
        localName: 'd_ec2_transit_gateway_route_table_propagations',
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    addData(
      DataAwsEc2TransitGatewayRouteTableRoutes(
        localName: 'd_ec2_transit_gateway_route_table_routes',
        transitGatewayRouteTableId: .literal(leftover),
        filter: [
          DataEc2TransitGatewayRouteTableRoutesFilter(
            name: .literal(leftover),
            values: .literal([leftover]),
          ),
        ],
      ),
    );

    addData(
      DataAwsEc2TransitGatewayRouteTables(
        localName: 'd_ec2_transit_gateway_route_tables',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayVpcAttachment(
        localName: 'd_ec2_transit_gateway_vpc_attachment',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayVpcAttachments(
        localName: 'd_ec2_transit_gateway_vpc_attachments',
      ),
    );

    addData(
      DataAwsEc2TransitGatewayVpnAttachment(
        localName: 'd_ec2_transit_gateway_vpn_attachment',
      ),
    );

    addData(
      DataAwsEcrAuthorizationToken(localName: 'd_ecr_authorization_token'),
    );

    addData(
      DataAwsEcrImage(
        localName: 'd_ecr_image',
        repositoryName: .literal(leftover),
        imageTag: .literal(leftover),
      ),
    );

    addData(
      DataAwsEcrImages(
        localName: 'd_ecr_images',
        repositoryName: .literal(leftover),
      ),
    );

    addData(
      DataAwsEcrLifecyclePolicyDocument(
        localName: 'd_ecr_lifecycle_policy_document',
        rule: [
          DataEcrLifecyclePolicyDocumentRule(
            priority: .literal(200),
            selection: [
              DataEcrLifecyclePolicyDocumentSelection(
                countNumber: .literal(200),
                countType: .literal('imageCountMoreThan'),
                tagStatus: .literal('any'),
              ),
            ],
          ),
        ],
      ),
    );

    addData(
      DataAwsEcrPullThroughCacheRule(
        localName: 'd_ecr_pull_through_cache_rule',
        ecrRepositoryPrefix: .literal(leftover),
      ),
    );

    addData(DataAwsEcrRepositories(localName: 'd_ecr_repositories'));

    addData(
      DataAwsEcrRepository(
        localName: 'd_ecr_repository',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsEcrRepositoryCreationTemplate(
        localName: 'd_ecr_repository_creation_template',
        prefix: .literal(leftover),
      ),
    );

    addData(
      DataAwsEcrpublicAuthorizationToken(
        localName: 'd_ecrpublic_authorization_token',
      ),
    );

    addData(
      DataAwsEcrpublicImages(
        localName: 'd_ecrpublic_images',
        repositoryName: .literal(leftover),
      ),
    );

    addData(
      DataAwsEcsCluster(
        localName: 'd_ecs_cluster',
        clusterName: .literal(leftover),
      ),
    );

    addData(DataAwsEcsClusters(localName: 'd_ecs_clusters'));

    addData(
      DataAwsEcsContainerDefinition(
        localName: 'd_ecs_container_definition',
        containerName: .literal(leftover),
        taskDefinition: .literal(leftover),
      ),
    );

    addData(
      DataAwsEcsService(
        localName: 'd_ecs_service',
        clusterArn: .literal(arn),
        serviceName: .literal(leftover),
      ),
    );

    addData(
      DataAwsEcsTaskDefinition(
        localName: 'd_ecs_task_definition',
        taskDefinition: .literal(leftover),
      ),
    );

    addData(
      DataAwsEcsTaskExecution(
        localName: 'd_ecs_task_execution',
        cluster: .literal(leftover),
        taskDefinition: .literal(leftover),
      ),
    );

    addData(
      DataAwsEfsAccessPoint(
        localName: 'd_efs_access_point',
        accessPointId: .literal(leftover),
      ),
    );

    addData(
      DataAwsEfsAccessPoints(
        localName: 'd_efs_access_points',
        fileSystemId: .literal(leftover),
      ),
    );

    addData(DataAwsEfsFileSystem(localName: 'd_efs_file_system'));

    addData(DataAwsEfsMountTarget(localName: 'd_efs_mount_target'));

    addData(DataAwsEip(localName: 'd_eip'));

    addData(DataAwsEips(localName: 'd_eips'));

    addData(
      DataAwsEksAccessEntry(
        localName: 'd_eks_access_entry',
        clusterName: .literal(leftover),
        principalArn: .literal(arn),
      ),
    );

    addData(DataAwsEksAccessPolicies(localName: 'd_eks_access_policies'));

    addData(
      DataAwsEksAddon(
        localName: 'd_eks_addon',
        addonName: .literal(leftover),
        clusterName: .literal(leftover),
      ),
    );

    addData(
      DataAwsEksAddonVersion(
        localName: 'd_eks_addon_version',
        addonName: .literal(leftover),
        kubernetesVersion: .literal(leftover),
      ),
    );

    addData(
      DataAwsEksCluster(localName: 'd_eks_cluster', name: .literal(leftover)),
    );

    addData(
      DataAwsEksClusterAuth(
        localName: 'd_eks_cluster_auth',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsEksClusterVersions(localName: 'd_eks_cluster_versions'));

    addData(DataAwsEksClusters(localName: 'd_eks_clusters'));

    addData(
      DataAwsEksNodeGroup(
        localName: 'd_eks_node_group',
        clusterName: .literal(leftover),
        nodeGroupName: .literal(leftover),
      ),
    );

    addData(
      DataAwsEksNodeGroups(
        localName: 'd_eks_node_groups',
        clusterName: .literal(leftover),
      ),
    );

    addData(
      DataAwsElasticBeanstalkApplication(
        localName: 'd_elastic_beanstalk_application',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsElasticBeanstalkHostedZone(
        localName: 'd_elastic_beanstalk_hosted_zone',
      ),
    );

    addData(
      DataAwsElasticBeanstalkSolutionStack(
        localName: 'd_elastic_beanstalk_solution_stack',
        nameRegex: .literal(leftover),
      ),
    );

    addData(
      DataAwsElasticacheCluster(
        localName: 'd_elasticache_cluster',
        clusterId: .literal(leftover),
      ),
    );

    addData(
      DataAwsElasticacheReplicationGroup(
        localName: 'd_elasticache_replication_group',
        replicationGroupId: .literal(leftover),
      ),
    );

    addData(
      DataAwsElasticacheReservedCacheNodeOffering(
        localName: 'd_elasticache_reserved_cache_node_offering',
        cacheNodeType: .literal(leftover),
        duration: .literal(leftover),
        offeringType: .literal('Light Utilization'),
        productDescription: .literal('memcached'),
      ),
    );

    addData(
      DataAwsElasticacheServerlessCache(
        localName: 'd_elasticache_serverless_cache',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsElasticacheServiceUpdateActions(
        localName: 'd_elasticache_service_update_actions',
      ),
    );

    addData(
      DataAwsElasticacheServiceUpdates(
        localName: 'd_elasticache_service_updates',
      ),
    );

    addData(
      DataAwsElasticacheSubnetGroup(
        localName: 'd_elasticache_subnet_group',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsElasticacheUser(
        localName: 'd_elasticache_user',
        userId: .literal(leftover),
      ),
    );

    addData(
      DataAwsElasticsearchDomain(
        localName: 'd_elasticsearch_domain',
        domainName: .literal(leftover),
      ),
    );

    addData(DataAwsElb(localName: 'd_elb', name: .literal(leftover)));

    addData(DataAwsElbHostedZoneId(localName: 'd_elb_hosted_zone_id'));

    addData(DataAwsElbServiceAccount(localName: 'd_elb_service_account'));

    addData(DataAwsEmrReleaseLabels(localName: 'd_emr_release_labels'));

    addData(
      DataAwsEmrSupportedInstanceTypes(
        localName: 'd_emr_supported_instance_types',
        releaseLabel: .literal(leftover),
      ),
    );

    addData(
      DataAwsEmrcontainersVirtualCluster(
        localName: 'd_emrcontainers_virtual_cluster',
        virtualClusterId: .literal(leftover),
      ),
    );

    addData(
      DataAwsFisExperimentTemplates(localName: 'd_fis_experiment_templates'),
    );

    addData(
      DataAwsFsxOntapFileSystem(
        localName: 'd_fsx_ontap_file_system',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsFsxOntapStorageVirtualMachine(
        localName: 'd_fsx_ontap_storage_virtual_machine',
      ),
    );

    addData(
      DataAwsFsxOntapStorageVirtualMachines(
        localName: 'd_fsx_ontap_storage_virtual_machines',
      ),
    );

    addData(DataAwsFsxOpenzfsSnapshot(localName: 'd_fsx_openzfs_snapshot'));

    addData(
      DataAwsFsxWindowsFileSystem(
        localName: 'd_fsx_windows_file_system',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsGlobalacceleratorAccelerator(
        localName: 'd_globalaccelerator_accelerator',
      ),
    );

    addData(
      DataAwsGlobalacceleratorCustomRoutingAccelerator(
        localName: 'd_globalaccelerator_custom_routing_accelerator',
      ),
    );

    addData(
      DataAwsGlueCatalog(localName: 'd_glue_catalog', name: .literal(leftover)),
    );

    addData(
      DataAwsGlueCatalogTable(
        localName: 'd_glue_catalog_table',
        databaseName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsGlueConnection(
        localName: 'd_glue_connection',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsGlueDataCatalogEncryptionSettings(
        localName: 'd_glue_data_catalog_encryption_settings',
        catalogId: .literal(leftover),
      ),
    );

    addData(
      DataAwsGlueRegistry(
        localName: 'd_glue_registry',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsGlueScript(
        localName: 'd_glue_script',
        dagEdge: [
          DataGlueScriptDagEdge(
            source: .literal(leftover),
            target: .literal(leftover),
          ),
        ],
        dagNode: [
          DataGlueScriptDagNode(
            id: .literal(leftover),
            nodeType: .literal(leftover),
            args: [
              DataGlueScriptArgs(
                name: .literal(leftover),
                value: .literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    addData(
      DataAwsGrafanaWorkspace(
        localName: 'd_grafana_workspace',
        workspaceId: .literal(leftover),
      ),
    );

    addData(DataAwsGuarddutyDetector(localName: 'd_guardduty_detector'));

    addData(
      DataAwsGuarddutyFindingIds(
        localName: 'd_guardduty_finding_ids',
        detectorId: .literal(leftover),
      ),
    );

    addData(
      DataAwsIamAccessKeys(
        localName: 'd_iam_access_keys',
        user: .literal(leftover),
      ),
    );

    addData(DataAwsIamAccountAlias(localName: 'd_iam_account_alias'));

    addData(
      DataAwsIamGroup(localName: 'd_iam_group', groupName: .literal(leftover)),
    );

    addData(
      DataAwsIamInstanceProfile(
        localName: 'd_iam_instance_profile',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsIamInstanceProfiles(
        localName: 'd_iam_instance_profiles',
        roleName: .literal(leftover),
      ),
    );

    addData(
      DataAwsIamOpenidConnectProvider(
        localName: 'd_iam_openid_connect_provider',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsIamOutboundWebIdentityFederation(
        localName: 'd_iam_outbound_web_identity_federation',
      ),
    );

    addData(DataAwsIamPolicy(localName: 'd_iam_policy'));

    addData(
      DataAwsIamPrincipalPolicySimulation(
        localName: 'd_iam_principal_policy_simulation',
        actionNames: .literal([leftover]),
        policySourceArn: .literal(arn),
      ),
    );

    addData(DataAwsIamRole(localName: 'd_iam_role', name: .literal(leftover)));

    addData(
      DataAwsIamRolePolicies(
        localName: 'd_iam_role_policies',
        roleName: .literal(leftover),
      ),
    );

    addData(
      DataAwsIamRolePolicyAttachments(
        localName: 'd_iam_role_policy_attachments',
        roleName: .literal(leftover),
      ),
    );

    addData(DataAwsIamRoles(localName: 'd_iam_roles'));

    addData(
      DataAwsIamSamlProvider(
        localName: 'd_iam_saml_provider',
        arn: .literal(arn),
      ),
    );

    addData(DataAwsIamServerCertificate(localName: 'd_iam_server_certificate'));

    addData(
      DataAwsIamSessionContext(
        localName: 'd_iam_session_context',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsIamUser(localName: 'd_iam_user', userName: .literal(leftover)),
    );

    addData(
      DataAwsIamUserSshKey(
        localName: 'd_iam_user_ssh_key',
        encoding: .literal('SSH'),
        sshPublicKeyId: .literal(leftover),
        username: .literal(leftover),
      ),
    );

    addData(DataAwsIamUsers(localName: 'd_iam_users'));

    addData(
      DataAwsIdentitystoreGroup(
        localName: 'd_identitystore_group',
        identityStoreId: .literal(leftover),
        groupId: .literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsIdentitystoreGroupMemberships(
        localName: 'd_identitystore_group_memberships',
        groupId: .literal(leftover),
        identityStoreId: .literal(leftover),
      ),
    );

    addData(
      DataAwsIdentitystoreGroups(
        localName: 'd_identitystore_groups',
        identityStoreId: .literal(leftover),
      ),
    );

    addData(
      DataAwsIdentitystoreUser(
        localName: 'd_identitystore_user',
        identityStoreId: .literal(leftover),
        userId: .literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsIdentitystoreUsers(
        localName: 'd_identitystore_users',
        identityStoreId: .literal(leftover),
      ),
    );

    addData(
      DataAwsImagebuilderComponent(
        localName: 'd_imagebuilder_component',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsImagebuilderComponents(localName: 'd_imagebuilder_components'),
    );

    addData(
      DataAwsImagebuilderContainerRecipe(
        localName: 'd_imagebuilder_container_recipe',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsImagebuilderContainerRecipes(
        localName: 'd_imagebuilder_container_recipes',
      ),
    );

    addData(
      DataAwsImagebuilderDistributionConfiguration(
        localName: 'd_imagebuilder_distribution_configuration',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsImagebuilderDistributionConfigurations(
        localName: 'd_imagebuilder_distribution_configurations',
      ),
    );

    addData(
      DataAwsImagebuilderImage(
        localName: 'd_imagebuilder_image',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsImagebuilderImagePipeline(
        localName: 'd_imagebuilder_image_pipeline',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsImagebuilderImagePipelines(
        localName: 'd_imagebuilder_image_pipelines',
      ),
    );

    addData(
      DataAwsImagebuilderImageRecipe(
        localName: 'd_imagebuilder_image_recipe',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsImagebuilderImageRecipes(
        localName: 'd_imagebuilder_image_recipes',
      ),
    );

    addData(
      DataAwsImagebuilderInfrastructureConfiguration(
        localName: 'd_imagebuilder_infrastructure_configuration',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsImagebuilderInfrastructureConfigurations(
        localName: 'd_imagebuilder_infrastructure_configurations',
      ),
    );

    addData(
      DataAwsInspectorRulesPackages(localName: 'd_inspector_rules_packages'),
    );

    addData(DataAwsInstance(localName: 'd_instance'));

    addData(DataAwsInstances(localName: 'd_instances'));

    addData(DataAwsInternetGateway(localName: 'd_internet_gateway'));

    addData(DataAwsIotEndpoint(localName: 'd_iot_endpoint'));

    addData(DataAwsIotRegistrationCode(localName: 'd_iot_registration_code'));

    addData(
      DataAwsIpRanges(localName: 'd_ip_ranges', services: .literal([leftover])),
    );

    addData(
      DataAwsIvsStreamKey(
        localName: 'd_ivs_stream_key',
        channelArn: .literal(arn),
      ),
    );

    addData(
      DataAwsKendraExperience(
        localName: 'd_kendra_experience',
        experienceId: .literal(leftover),
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsKendraFaq(
        localName: 'd_kendra_faq',
        faqId: .literal(leftover),
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsKendraIndex(
        localName: 'd_kendra_index',
        id: .literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsKendraQuerySuggestionsBlockList(
        localName: 'd_kendra_query_suggestions_block_list',
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
        querySuggestionsBlockListId: .literal(
          '12345678-1234-1234-1234-123456789012',
        ),
      ),
    );

    addData(
      DataAwsKendraThesaurus(
        localName: 'd_kendra_thesaurus',
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
        thesaurusId: .literal(leftover),
      ),
    );

    addData(DataAwsKeyPair(localName: 'd_key_pair'));

    addData(
      DataAwsKinesisFirehoseDeliveryStream(
        localName: 'd_kinesis_firehose_delivery_stream',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsKinesisStream(
        localName: 'd_kinesis_stream',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsKinesisStreamConsumer(
        localName: 'd_kinesis_stream_consumer',
        streamArn: .literal(arn),
      ),
    );

    addData(
      DataAwsKmsAlias(
        localName: 'd_kms_alias',
        name: .literal('alias/leftover'),
      ),
    );

    addData(
      DataAwsKmsCiphertext(
        localName: 'd_kms_ciphertext',
        keyId: .literal(leftover),
        plaintext: .variable('leftover_secret'),
      ),
    );

    addData(DataAwsKmsCustomKeyStore(localName: 'd_kms_custom_key_store'));

    addData(
      DataAwsKmsKey(localName: 'd_kms_key', keyId: .literal('alias/leftover')),
    );

    addData(
      DataAwsKmsPublicKey(
        localName: 'd_kms_public_key',
        keyId: .literal('alias/leftover'),
      ),
    );

    addData(
      DataAwsKmsSecret(
        localName: 'd_kms_secret',
        secret: [
          DataKmsSecretSecret(
            name: .literal(leftover),
            payload: .literal(leftover),
          ),
        ],
      ),
    );

    addData(
      DataAwsKmsSecrets(
        localName: 'd_kms_secrets',
        secret: [
          DataKmsSecretsSecret(
            name: .literal(leftover),
            payload: .literal(leftover),
          ),
        ],
      ),
    );

    addData(
      DataAwsLakeformationDataLakeSettings(
        localName: 'd_lakeformation_data_lake_settings',
      ),
    );

    addData(
      DataAwsLakeformationPermissions(
        localName: 'd_lakeformation_permissions',
        principal: .literal(arn),
      ),
    );

    addData(
      DataAwsLakeformationResource(
        localName: 'd_lakeformation_resource',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsLambdaAlias(
        localName: 'd_lambda_alias',
        functionName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsLambdaCodeSigningConfig(
        localName: 'd_lambda_code_signing_config',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsLambdaFunction(
        localName: 'd_lambda_function',
        functionName: .literal(leftover),
      ),
    );

    addData(
      DataAwsLambdaFunctionUrl(
        localName: 'd_lambda_function_url',
        functionName: .literal(leftover),
      ),
    );

    addData(DataAwsLambdaFunctions(localName: 'd_lambda_functions'));

    addData(
      DataAwsLambdaInvocation(
        localName: 'd_lambda_invocation',
        functionName: .literal(leftover),
        input: .literal(policy),
      ),
    );

    addData(DataAwsLambdaLayerVersion(localName: 'd_lambda_layer_version'));

    addData(
      DataAwsLaunchConfiguration(
        localName: 'd_launch_configuration',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsLaunchTemplate(localName: 'd_launch_template'));

    addData(DataAwsLb(localName: 'd_lb'));

    addData(DataAwsLbHostedZoneId(localName: 'd_lb_hosted_zone_id'));

    addData(DataAwsLbListener(localName: 'd_lb_listener'));

    addData(
      DataAwsLbListenerRule(
        localName: 'd_lb_listener_rule',
        arn: .literal(arn),
      ),
    );

    addData(DataAwsLbTargetGroup(localName: 'd_lb_target_group'));

    addData(DataAwsLbTrustStore(localName: 'd_lb_trust_store'));

    addData(DataAwsLbs(localName: 'd_lbs'));

    addData(DataAwsLexBot(localName: 'd_lex_bot', name: .literal(leftover)));

    addData(
      DataAwsLexBotAlias(
        localName: 'd_lex_bot_alias',
        botName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsLexIntent(localName: 'd_lex_intent', name: .literal(leftover)),
    );

    addData(
      DataAwsLexSlotType(
        localName: 'd_lex_slot_type',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsLicensemanagerGrants(localName: 'd_licensemanager_grants'));

    addData(
      DataAwsLicensemanagerReceivedLicense(
        localName: 'd_licensemanager_received_license',
        licenseArn: .literal(arn),
      ),
    );

    addData(
      DataAwsLicensemanagerReceivedLicenses(
        localName: 'd_licensemanager_received_licenses',
      ),
    );

    addData(
      DataAwsLocationGeofenceCollection(
        localName: 'd_location_geofence_collection',
        collectionName: .literal(leftover),
      ),
    );

    addData(
      DataAwsLocationMap(
        localName: 'd_location_map',
        mapName: .literal(leftover),
      ),
    );

    addData(
      DataAwsLocationPlaceIndex(
        localName: 'd_location_place_index',
        indexName: .literal(leftover),
      ),
    );

    addData(
      DataAwsLocationRouteCalculator(
        localName: 'd_location_route_calculator',
        calculatorName: .literal(leftover),
      ),
    );

    addData(
      DataAwsLocationTracker(
        localName: 'd_location_tracker',
        trackerName: .literal(leftover),
      ),
    );

    addData(
      DataAwsLocationTrackerAssociation(
        localName: 'd_location_tracker_association',
        consumerArn: .literal(arn),
        trackerName: .literal(leftover),
      ),
    );

    addData(
      DataAwsLocationTrackerAssociations(
        localName: 'd_location_tracker_associations',
        trackerName: .literal(leftover),
      ),
    );

    addData(
      DataAwsMediaConvertQueue(
        localName: 'd_media_convert_queue',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsMedialiveInput(
        localName: 'd_medialive_input',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbAcl(localName: 'd_memorydb_acl', name: .literal(leftover)),
    );

    addData(
      DataAwsMemorydbCluster(
        localName: 'd_memorydb_cluster',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbParameterGroup(
        localName: 'd_memorydb_parameter_group',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbSnapshot(
        localName: 'd_memorydb_snapshot',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbSubnetGroup(
        localName: 'd_memorydb_subnet_group',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbUser(
        localName: 'd_memorydb_user',
        userName: .literal(leftover),
      ),
    );

    addData(DataAwsMqBroker(localName: 'd_mq_broker'));

    addData(DataAwsMqBrokerEngineTypes(localName: 'd_mq_broker_engine_types'));

    addData(
      DataAwsMqBrokerInstanceTypeOfferings(
        localName: 'd_mq_broker_instance_type_offerings',
      ),
    );

    addData(
      DataAwsMskBootstrapBrokers(
        localName: 'd_msk_bootstrap_brokers',
        clusterArn: .literal(arn),
      ),
    );

    addData(
      DataAwsMskBrokerNodes(
        localName: 'd_msk_broker_nodes',
        clusterArn: .literal(arn),
      ),
    );

    addData(
      DataAwsMskCluster(
        localName: 'd_msk_cluster',
        clusterName: .literal(leftover),
      ),
    );

    addData(
      DataAwsMskConfiguration(
        localName: 'd_msk_configuration',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsMskKafkaVersion(
        localName: 'd_msk_kafka_version',
        preferredVersions: .literal([leftover]),
      ),
    );

    addData(
      DataAwsMskTopic(
        localName: 'd_msk_topic',
        clusterArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsMskVpcConnection(
        localName: 'd_msk_vpc_connection',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsMskconnectConnector(
        localName: 'd_mskconnect_connector',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsMskconnectCustomPlugin(
        localName: 'd_mskconnect_custom_plugin',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsMskconnectWorkerConfiguration(
        localName: 'd_mskconnect_worker_configuration',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsNatGateway(localName: 'd_nat_gateway'));

    addData(DataAwsNatGateways(localName: 'd_nat_gateways'));

    addData(DataAwsNeptuneEngineVersion(localName: 'd_neptune_engine_version'));

    addData(
      DataAwsNeptuneOrderableDbInstance(
        localName: 'd_neptune_orderable_db_instance',
      ),
    );

    addData(DataAwsNetworkAcls(localName: 'd_network_acls'));

    addData(DataAwsNetworkInterface(localName: 'd_network_interface'));

    addData(DataAwsNetworkInterfaces(localName: 'd_network_interfaces'));

    addData(
      DataAwsNetworkfirewallFirewall(
        localName: 'd_networkfirewall_firewall',
        arn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkfirewallFirewallPolicy(
        localName: 'd_networkfirewall_firewall_policy',
        arn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkfirewallResourcePolicy(
        localName: 'd_networkfirewall_resource_policy',
        resourceArn: .literal(arn),
      ),
    );

    addData(
      DataAwsNetworkmanagerConnection(
        localName: 'd_networkmanager_connection',
        connectionId: .literal(leftover),
        globalNetworkId: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerConnections(
        localName: 'd_networkmanager_connections',
        globalNetworkId: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerCoreNetwork(
        localName: 'd_networkmanager_core_network',
        coreNetworkId: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerCoreNetworkPolicyDocument(
        localName: 'd_networkmanager_core_network_policy_document',
        coreNetworkConfiguration: [
          DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfiguration(
            asnRanges: .literal([leftover]),
            edgeLocations: [
              DataNetworkmanagerCoreNetworkPolicyDocumentEdgeLocations(
                location: .literal('us-east-1'),
              ),
            ],
          ),
        ],
        segments: [
          DataNetworkmanagerCoreNetworkPolicyDocumentSegments(
            name: .literal(leftover),
          ),
        ],
      ),
    );

    addData(
      DataAwsNetworkmanagerDevice(
        localName: 'd_networkmanager_device',
        deviceId: .literal(leftover),
        globalNetworkId: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerDevices(
        localName: 'd_networkmanager_devices',
        globalNetworkId: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerGlobalNetwork(
        localName: 'd_networkmanager_global_network',
        globalNetworkId: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerGlobalNetworks(
        localName: 'd_networkmanager_global_networks',
      ),
    );

    addData(
      DataAwsNetworkmanagerLink(
        localName: 'd_networkmanager_link',
        globalNetworkId: .literal(leftover),
        linkId: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerLinks(
        localName: 'd_networkmanager_links',
        globalNetworkId: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerSite(
        localName: 'd_networkmanager_site',
        globalNetworkId: .literal(leftover),
        siteId: .literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerSites(
        localName: 'd_networkmanager_sites',
        globalNetworkId: .literal(leftover),
      ),
    );

    addData(
      DataAwsOamLink(
        localName: 'd_oam_link',
        linkIdentifier: .literal(leftover),
      ),
    );

    addData(DataAwsOamLinks(localName: 'd_oam_links'));

    addData(
      DataAwsOamSink(
        localName: 'd_oam_sink',
        sinkIdentifier: .literal(leftover),
      ),
    );

    addData(DataAwsOamSinks(localName: 'd_oam_sinks'));

    addData(
      DataAwsOdbCloudAutonomousVmCluster(
        localName: 'd_odb_cloud_autonomous_vm_cluster',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsOdbCloudAutonomousVmClusters(
        localName: 'd_odb_cloud_autonomous_vm_clusters',
      ),
    );

    addData(
      DataAwsOdbCloudExadataInfrastructure(
        localName: 'd_odb_cloud_exadata_infrastructure',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsOdbCloudExadataInfrastructures(
        localName: 'd_odb_cloud_exadata_infrastructures',
      ),
    );

    addData(
      DataAwsOdbCloudVmCluster(
        localName: 'd_odb_cloud_vm_cluster',
        id: .literal(leftover),
      ),
    );

    addData(DataAwsOdbCloudVmClusters(localName: 'd_odb_cloud_vm_clusters'));

    addData(
      DataAwsOdbDbNode(
        localName: 'd_odb_db_node',
        cloudVmClusterId: .literal(leftover),
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsOdbDbNodes(
        localName: 'd_odb_db_nodes',
        cloudVmClusterId: .literal(leftover),
      ),
    );

    addData(
      DataAwsOdbDbServer(
        localName: 'd_odb_db_server',
        cloudExadataInfrastructureId: .literal(leftover),
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsOdbDbServers(
        localName: 'd_odb_db_servers',
        cloudExadataInfrastructureId: .literal(leftover),
      ),
    );

    addData(DataAwsOdbDbSystemShapes(localName: 'd_odb_db_system_shapes'));

    addData(DataAwsOdbGiVersions(localName: 'd_odb_gi_versions'));

    addData(
      DataAwsOdbIamRoleAssociation(
        localName: 'd_odb_iam_role_association',
        iamRoleArn: .literal(arn),
        resourceArn: .literal(arn),
      ),
    );

    addData(
      DataAwsOdbNetwork(localName: 'd_odb_network', id: .literal(leftover)),
    );

    addData(
      DataAwsOdbNetworkPeeringConnection(
        localName: 'd_odb_network_peering_connection',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsOdbNetworkPeeringConnections(
        localName: 'd_odb_network_peering_connections',
      ),
    );

    addData(DataAwsOdbNetworks(localName: 'd_odb_networks'));

    addData(
      DataAwsOpensearchDomain(
        localName: 'd_opensearch_domain',
        domainName: .literal(leftover),
      ),
    );

    addData(
      DataAwsOpensearchserverlessAccessPolicy(
        localName: 'd_opensearchserverless_access_policy',
        name: .literal(leftover),
        type: .literal('data'),
      ),
    );

    addData(
      DataAwsOpensearchserverlessCollection(
        localName: 'd_opensearchserverless_collection',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsOpensearchserverlessCollectionGroup(
        localName: 'd_opensearchserverless_collection_group',
      ),
    );

    addData(
      DataAwsOpensearchserverlessCollectionGroups(
        localName: 'd_opensearchserverless_collection_groups',
      ),
    );

    addData(
      DataAwsOpensearchserverlessLifecyclePolicy(
        localName: 'd_opensearchserverless_lifecycle_policy',
        name: .literal(leftover),
        type: .literal('retention'),
      ),
    );

    addData(
      DataAwsOpensearchserverlessSecurityConfig(
        localName: 'd_opensearchserverless_security_config',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsOpensearchserverlessSecurityPolicy(
        localName: 'd_opensearchserverless_security_policy',
        name: .literal(leftover),
        type: .literal('encryption'),
      ),
    );

    addData(
      DataAwsOpensearchserverlessVpcEndpoint(
        localName: 'd_opensearchserverless_vpc_endpoint',
        vpcEndpointId: .literal('vpce-0123456789abcdef0'),
      ),
    );

    addData(
      DataAwsOrganizationsAccount(
        localName: 'd_organizations_account',
        accountId: .literal('123456789012'),
      ),
    );

    addData(
      DataAwsOrganizationsDelegatedAdministrators(
        localName: 'd_organizations_delegated_administrators',
      ),
    );

    addData(
      DataAwsOrganizationsDelegatedServices(
        localName: 'd_organizations_delegated_services',
        accountId: .literal('123456789012'),
      ),
    );

    addData(
      DataAwsOrganizationsEntityPath(
        localName: 'd_organizations_entity_path',
        entityId: .literal('ou-ab12-cd34ef56'),
      ),
    );

    addData(
      DataAwsOrganizationsOrganization(
        localName: 'd_organizations_organization',
      ),
    );

    addData(
      DataAwsOrganizationsOrganizationalUnit(
        localName: 'd_organizations_organizational_unit',
        name: .literal(leftover),
        parentId: .literal('r-ab12'),
      ),
    );

    addData(
      DataAwsOrganizationsOrganizationalUnitChildAccounts(
        localName: 'd_organizations_organizational_unit_child_accoun',
        parentId: .literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsOrganizationalUnitDescendantAccounts(
        localName: 'd_organizations_organizational_unit_descendant_a',
        parentId: .literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsOrganizationalUnitDescendantOrganizationalUnits(
        localName: 'd_organizations_organizational_unit_descendant_o',
        parentId: .literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsOrganizationalUnits(
        localName: 'd_organizations_organizational_units',
        parentId: .literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsPolicies(
        localName: 'd_organizations_policies',
        filter: .literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsPoliciesForTarget(
        localName: 'd_organizations_policies_for_target',
        filter: .literal(leftover),
        targetId: .literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsPolicy(
        localName: 'd_organizations_policy',
        policyId: .literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsResourceTags(
        localName: 'd_organizations_resource_tags',
        resourceId: .literal(leftover),
      ),
    );

    addData(
      DataAwsOutpostsAsset(
        localName: 'd_outposts_asset',
        arn: .literal(arn),
        assetId: .literal(leftover),
      ),
    );

    addData(
      DataAwsOutpostsAssets(localName: 'd_outposts_assets', arn: .literal(arn)),
    );

    addData(DataAwsOutpostsOutpost(localName: 'd_outposts_outpost'));

    addData(
      DataAwsOutpostsOutpostInstanceType(
        localName: 'd_outposts_outpost_instance_type',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsOutpostsOutpostInstanceTypes(
        localName: 'd_outposts_outpost_instance_types',
        arn: .literal(arn),
      ),
    );

    addData(DataAwsOutpostsOutposts(localName: 'd_outposts_outposts'));

    addData(
      DataAwsOutpostsSite(
        localName: 'd_outposts_site',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsOutpostsSites(localName: 'd_outposts_sites'));

    addData(DataAwsPartition(localName: 'd_partition'));

    addData(DataAwsPollyVoices(localName: 'd_polly_voices'));

    addData(DataAwsPrefixList(localName: 'd_prefix_list'));

    addData(
      DataAwsPricingProduct(
        localName: 'd_pricing_product',
        serviceCode: .literal(leftover),
        filters: [
          DataPricingProductFilters(
            field: .literal(leftover),
            value: .literal(leftover),
          ),
        ],
      ),
    );

    addData(
      DataAwsPrometheusDefaultScraperConfiguration(
        localName: 'd_prometheus_default_scraper_configuration',
      ),
    );

    addData(
      DataAwsPrometheusWorkspace(
        localName: 'd_prometheus_workspace',
        workspaceId: .literal(leftover),
      ),
    );

    addData(DataAwsPrometheusWorkspaces(localName: 'd_prometheus_workspaces'));

    addData(
      DataAwsQldbLedger(localName: 'd_qldb_ledger', name: .literal(leftover)),
    );

    addData(
      DataAwsQuicksightAnalysis(
        localName: 'd_quicksight_analysis',
        analysisId: .literal(leftover),
      ),
    );

    addData(
      DataAwsQuicksightDataSet(
        localName: 'd_quicksight_data_set',
        dataSetId: .literal(leftover),
      ),
    );

    addData(
      DataAwsQuicksightGroup(
        localName: 'd_quicksight_group',
        groupName: .literal(leftover),
      ),
    );

    addData(
      DataAwsQuicksightTheme(
        localName: 'd_quicksight_theme',
        themeId: .literal(leftover),
      ),
    );

    addData(
      DataAwsQuicksightUser(
        localName: 'd_quicksight_user',
        userName: .literal(leftover),
      ),
    );

    addData(
      DataAwsRamResourceShare(
        localName: 'd_ram_resource_share',
        resourceOwner: .literal('SELF'),
      ),
    );

    addData(DataAwsRdsCertificate(localName: 'd_rds_certificate'));

    addData(
      DataAwsRdsCluster(
        localName: 'd_rds_cluster',
        clusterIdentifier: .literal(leftover),
      ),
    );

    addData(
      DataAwsRdsClusterParameterGroup(
        localName: 'd_rds_cluster_parameter_group',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsRdsClusters(localName: 'd_rds_clusters'));

    addData(
      DataAwsRdsEngineVersion(
        localName: 'd_rds_engine_version',
        engine: .literal(leftover),
      ),
    );

    addData(DataAwsRdsEvents(localName: 'd_rds_events'));

    addData(
      DataAwsRdsGlobalCluster(
        localName: 'd_rds_global_cluster',
        identifier: .literal(leftover),
      ),
    );

    addData(
      DataAwsRdsOrderableDbInstance(
        localName: 'd_rds_orderable_db_instance',
        engine: .literal(leftover),
      ),
    );

    addData(
      DataAwsRdsReservedInstanceOffering(
        localName: 'd_rds_reserved_instance_offering',
        dbInstanceClass: .literal(leftover),
        duration: .literal(200),
        multiAz: .literal(true),
        offeringType: .literal('Partial Upfront'),
        productDescription: .literal(leftover),
      ),
    );

    addData(DataAwsRdsSnapshots(localName: 'd_rds_snapshots'));

    addData(
      DataAwsRedshiftCluster(
        localName: 'd_redshift_cluster',
        clusterIdentifier: .literal(leftover),
      ),
    );

    addData(
      DataAwsRedshiftClusterCredentials(
        localName: 'd_redshift_cluster_credentials',
        clusterIdentifier: .literal(leftover),
        dbUser: .literal(leftover),
      ),
    );

    addData(DataAwsRedshiftDataShares(localName: 'd_redshift_data_shares'));

    addData(
      DataAwsRedshiftOrderableCluster(
        localName: 'd_redshift_orderable_cluster',
      ),
    );

    addData(
      DataAwsRedshiftProducerDataShares(
        localName: 'd_redshift_producer_data_shares',
        producerArn: .literal(arn),
      ),
    );

    addData(
      DataAwsRedshiftSubnetGroup(
        localName: 'd_redshift_subnet_group',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsRedshiftserverlessCredentials(
        localName: 'd_redshiftserverless_credentials',
        workgroupName: .literal(leftover),
      ),
    );

    addData(
      DataAwsRedshiftserverlessNamespace(
        localName: 'd_redshiftserverless_namespace',
        namespaceName: .literal(leftover),
      ),
    );

    addData(
      DataAwsRedshiftserverlessWorkgroup(
        localName: 'd_redshiftserverless_workgroup',
        workgroupName: .literal(leftover),
      ),
    );

    addData(DataAwsRegion(localName: 'd_region'));

    addData(DataAwsRegions(localName: 'd_regions'));

    addData(
      DataAwsResiliencehubv2Policy(
        localName: 'd_resiliencehubv2_policy',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsResiliencehubv2Service(
        localName: 'd_resiliencehubv2_service',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsResiliencehubv2System(
        localName: 'd_resiliencehubv2_system',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsResourceexplorer2Search(
        localName: 'd_resourceexplorer2_search',
        queryString: .literal(leftover),
      ),
    );

    addData(
      DataAwsResourcegroupstaggingapiRequiredTags(
        localName: 'd_resourcegroupstaggingapi_required_tags',
      ),
    );

    addData(
      DataAwsResourcegroupstaggingapiResources(
        localName: 'd_resourcegroupstaggingapi_resources',
      ),
    );

    addData(
      DataAwsRoute(localName: 'd_route', routeTableId: .literal(leftover)),
    );

    addData(
      DataAwsRoute53DelegationSet(
        localName: 'd_route53_delegation_set',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53Records(
        localName: 'd_route53_records',
        zoneId: .literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverEndpoint(localName: 'd_route53_resolver_endpoint'),
    );

    addData(
      DataAwsRoute53ResolverFirewallConfig(
        localName: 'd_route53_resolver_firewall_config',
        resourceId: .literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverFirewallDomainList(
        localName: 'd_route53_resolver_firewall_domain_list',
        firewallDomainListId: .literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverFirewallRuleGroup(
        localName: 'd_route53_resolver_firewall_rule_group',
        firewallRuleGroupId: .literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverFirewallRuleGroupAssociation(
        localName: 'd_route53_resolver_firewall_rule_group_associati',
        firewallRuleGroupAssociationId: .literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverFirewallRules(
        localName: 'd_route53_resolver_firewall_rules',
        firewallRuleGroupId: .literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverQueryLogConfig(
        localName: 'd_route53_resolver_query_log_config',
      ),
    );

    addData(DataAwsRoute53ResolverRule(localName: 'd_route53_resolver_rule'));

    addData(DataAwsRoute53ResolverRules(localName: 'd_route53_resolver_rules'));

    addData(
      DataAwsRoute53TrafficPolicyDocument(
        localName: 'd_route53_traffic_policy_document',
      ),
    );

    addData(DataAwsRoute53Zones(localName: 'd_route53_zones'));

    addData(
      DataAwsRoute53profilesProfile(
        localName: 'd_route53profiles_profile',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53profilesProfiles(localName: 'd_route53profiles_profiles'),
    );

    addData(DataAwsRouteTable(localName: 'd_route_table'));

    addData(DataAwsRouteTables(localName: 'd_route_tables'));

    addData(
      DataAwsS3AccessPoint(
        localName: 'd_s3_access_point',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsS3AccountPublicAccessBlock(
        localName: 'd_s3_account_public_access_block',
      ),
    );

    addData(
      DataAwsS3Bucket(localName: 'd_s3_bucket', bucket: .literal(leftover)),
    );

    addData(
      DataAwsS3BucketNotification(
        localName: 'd_s3_bucket_notification',
        bucket: .literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketObject(
        localName: 'd_s3_bucket_object',
        bucket: .literal(leftover),
        key: .literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketObjectLockConfiguration(
        localName: 'd_s3_bucket_object_lock_configuration',
        bucket: .literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketObjects(
        localName: 'd_s3_bucket_objects',
        bucket: .literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketPolicy(
        localName: 'd_s3_bucket_policy',
        bucket: .literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketReplicationConfiguration(
        localName: 'd_s3_bucket_replication_configuration',
        bucket: .literal(leftover),
      ),
    );

    addData(DataAwsS3Buckets(localName: 'd_s3_buckets'));

    addData(DataAwsS3DirectoryBuckets(localName: 'd_s3_directory_buckets'));

    addData(
      DataAwsS3Object(
        localName: 'd_s3_object',
        bucket: .literal(leftover),
        key: .literal(leftover),
      ),
    );

    addData(
      DataAwsS3Objects(localName: 'd_s3_objects', bucket: .literal(leftover)),
    );

    addData(
      DataAwsS3controlAccessPoints(localName: 'd_s3control_access_points'),
    );

    addData(
      DataAwsS3controlMultiRegionAccessPoint(
        localName: 'd_s3control_multi_region_access_point',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsS3controlMultiRegionAccessPoints(
        localName: 'd_s3control_multi_region_access_points',
      ),
    );

    addData(
      DataAwsS3filesAccessPoint(
        localName: 'd_s3files_access_point',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsS3filesFileSystem(
        localName: 'd_s3files_file_system',
        id: .literal(leftover),
      ),
    );

    addData(DataAwsS3filesFileSystems(localName: 'd_s3files_file_systems'));

    addData(
      DataAwsS3filesMountTarget(
        localName: 'd_s3files_mount_target',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsSagemakerPrebuiltEcrImage(
        localName: 'd_sagemaker_prebuilt_ecr_image',
        repositoryName: .literal('autogluon-training'),
      ),
    );

    addData(
      DataAwsSavingsplansOfferings(localName: 'd_savingsplans_offerings'),
    );

    addData(
      DataAwsSavingsplansSavingsPlan(
        localName: 'd_savingsplans_savings_plan',
        savingsPlanId: .literal(leftover),
      ),
    );

    addData(
      DataAwsSecretsmanagerRandomPassword(
        localName: 'd_secretsmanager_random_password',
      ),
    );

    addData(
      DataAwsSecretsmanagerSecret(
        localName: 'd_secretsmanager_secret',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsSecretsmanagerSecretRotation(
        localName: 'd_secretsmanager_secret_rotation',
        secretId: .literal(leftover),
      ),
    );

    addData(
      DataAwsSecretsmanagerSecretVersion(
        localName: 'd_secretsmanager_secret_version',
        secretId: .literal(leftover),
      ),
    );

    addData(
      DataAwsSecretsmanagerSecretVersions(
        localName: 'd_secretsmanager_secret_versions',
        secretId: .literal(leftover),
      ),
    );

    addData(
      DataAwsSecretsmanagerSecrets(localName: 'd_secretsmanager_secrets'),
    );

    addData(DataAwsSecurityGroup(localName: 'd_security_group'));

    addData(DataAwsSecurityGroups(localName: 'd_security_groups'));

    addData(
      DataAwsSecurityhubEnabledStandards(
        localName: 'd_securityhub_enabled_standards',
      ),
    );

    addData(
      DataAwsSecurityhubSecurityControls(
        localName: 'd_securityhub_security_controls',
      ),
    );

    addData(
      DataAwsSecurityhubStandardsControlAssociations(
        localName: 'd_securityhub_standards_control_associations',
        securityControlId: .literal(leftover),
      ),
    );

    addData(
      DataAwsServerlessapplicationrepositoryApplication(
        localName: 'd_serverlessapplicationrepository_application',
        applicationId: .literal(arn),
      ),
    );

    addData(DataAwsService(localName: 'd_service'));

    addData(
      DataAwsServiceDiscoveryDnsNamespace(
        localName: 'd_service_discovery_dns_namespace',
        name: .literal(leftover),
        type: .literal('DNS_PUBLIC'),
      ),
    );

    addData(
      DataAwsServiceDiscoveryHttpNamespace(
        localName: 'd_service_discovery_http_namespace',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsServiceDiscoveryService(
        localName: 'd_service_discovery_service',
        name: .literal(leftover),
        namespaceId: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicePrincipal(
        localName: 'd_service_principal',
        serviceName: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogConstraint(
        localName: 'd_servicecatalog_constraint',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogLaunchPaths(
        localName: 'd_servicecatalog_launch_paths',
        productId: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogPortfolio(
        localName: 'd_servicecatalog_portfolio',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogPortfolioConstraints(
        localName: 'd_servicecatalog_portfolio_constraints',
        portfolioId: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogProduct(
        localName: 'd_servicecatalog_product',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogProvisioningArtifacts(
        localName: 'd_servicecatalog_provisioning_artifacts',
        productId: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogappregistryApplication(
        localName: 'd_servicecatalogappregistry_application',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogappregistryAttributeGroup(
        localName: 'd_servicecatalogappregistry_attribute_group',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsServicecatalogappregistryAttributeGroupAssociations(
        localName: 'd_servicecatalogappregistry_attribute_group_asso',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicequotasService(
        localName: 'd_servicequotas_service',
        serviceName: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicequotasServiceQuota(
        localName: 'd_servicequotas_service_quota',
        serviceCode: .literal(leftover),
        quotaCode: .literal(leftover),
      ),
    );

    addData(
      DataAwsServicequotasTemplates(
        localName: 'd_servicequotas_templates',
        awsRegion: .literal('us-east-1'),
      ),
    );

    addData(
      DataAwsSesActiveReceiptRuleSet(
        localName: 'd_ses_active_receipt_rule_set',
      ),
    );

    addData(
      DataAwsSesDomainIdentity(
        localName: 'd_ses_domain_identity',
        domain: .literal(leftover),
      ),
    );

    addData(
      DataAwsSesEmailIdentity(
        localName: 'd_ses_email_identity',
        email: .literal('leftover@example.com'),
      ),
    );

    addData(
      DataAwsSesv2ConfigurationSet(
        localName: 'd_sesv2_configuration_set',
        configurationSetName: .literal(leftover),
      ),
    );

    addData(
      DataAwsSesv2DedicatedIpPool(
        localName: 'd_sesv2_dedicated_ip_pool',
        poolName: .literal(leftover),
      ),
    );

    addData(
      DataAwsSesv2EmailIdentity(
        localName: 'd_sesv2_email_identity',
        emailIdentity: .literal('leftover@example.com'),
      ),
    );

    addData(
      DataAwsSesv2EmailIdentityMailFromAttributes(
        localName: 'd_sesv2_email_identity_mail_from_attributes',
        emailIdentity: .literal('leftover@example.com'),
      ),
    );

    addData(
      DataAwsSfnActivity(localName: 'd_sfn_activity', arn: .literal(arn)),
    );

    addData(
      DataAwsSfnAlias(
        localName: 'd_sfn_alias',
        name: .literal(leftover),
        statemachineArn: .literal(arn),
      ),
    );

    addData(
      DataAwsSfnStateMachine(
        localName: 'd_sfn_state_machine',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsSfnStateMachineVersions(
        localName: 'd_sfn_state_machine_versions',
        statemachineArn: .literal(arn),
      ),
    );

    addData(
      DataAwsShieldProtection(
        localName: 'd_shield_protection',
        protectionId: .literal(leftover),
      ),
    );

    addData(
      DataAwsSignerSigningJob(
        localName: 'd_signer_signing_job',
        jobId: .literal(leftover),
      ),
    );

    addData(
      DataAwsSignerSigningProfile(
        localName: 'd_signer_signing_profile',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsSnsTopic(localName: 'd_sns_topic', name: .literal(leftover)),
    );

    addData(
      DataAwsSpotDatafeedSubscription(
        localName: 'd_spot_datafeed_subscription',
      ),
    );

    addData(
      DataAwsSqsQueue(localName: 'd_sqs_queue', name: .literal(leftover)),
    );

    addData(DataAwsSqsQueues(localName: 'd_sqs_queues'));

    addData(
      DataAwsSsmDocument(localName: 'd_ssm_document', name: .literal(leftover)),
    );

    addData(DataAwsSsmInstances(localName: 'd_ssm_instances'));

    addData(
      DataAwsSsmMaintenanceWindows(localName: 'd_ssm_maintenance_windows'),
    );

    addData(
      DataAwsSsmParameter(
        localName: 'd_ssm_parameter',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsSsmParametersByPath(
        localName: 'd_ssm_parameters_by_path',
        path: .literal(leftover),
      ),
    );

    addData(
      DataAwsSsmPatchBaseline(
        localName: 'd_ssm_patch_baseline',
        owner: .literal(leftover),
      ),
    );

    addData(DataAwsSsmPatchBaselines(localName: 'd_ssm_patch_baselines'));

    addData(
      DataAwsSsmcontactsContact(
        localName: 'd_ssmcontacts_contact',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsSsmcontactsContactChannel(
        localName: 'd_ssmcontacts_contact_channel',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsSsmcontactsPlan(
        localName: 'd_ssmcontacts_plan',
        contactId: .literal(leftover),
      ),
    );

    addData(
      DataAwsSsmcontactsRotation(
        localName: 'd_ssmcontacts_rotation',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsSsmincidentsReplicationSet(
        localName: 'd_ssmincidents_replication_set',
      ),
    );

    addData(
      DataAwsSsmincidentsResponsePlan(
        localName: 'd_ssmincidents_response_plan',
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsSsoadminApplication(
        localName: 'd_ssoadmin_application',
        applicationArn: .literal(arn),
      ),
    );

    addData(
      DataAwsSsoadminApplicationAssignments(
        localName: 'd_ssoadmin_application_assignments',
        applicationArn: .literal(arn),
      ),
    );

    addData(
      DataAwsSsoadminApplicationProviders(
        localName: 'd_ssoadmin_application_providers',
      ),
    );

    addData(DataAwsSsoadminInstances(localName: 'd_ssoadmin_instances'));

    addData(
      DataAwsSsoadminPermissionSet(
        localName: 'd_ssoadmin_permission_set',
        instanceArn: .literal(arn),
        arn: .literal(arn),
      ),
    );

    addData(
      DataAwsSsoadminPermissionSets(
        localName: 'd_ssoadmin_permission_sets',
        instanceArn: .literal(arn),
      ),
    );

    addData(
      DataAwsSsoadminPrincipalApplicationAssignments(
        localName: 'd_ssoadmin_principal_application_assignments',
        instanceArn: .literal(arn),
        principalId: .literal(leftover),
        principalType: .literal('USER'),
      ),
    );

    addData(
      DataAwsStoragegatewayLocalDisk(
        localName: 'd_storagegateway_local_disk',
        gatewayArn: .literal(arn),
      ),
    );

    addData(DataAwsSubnet(localName: 'd_subnet'));

    addData(DataAwsSubnets(localName: 'd_subnets'));

    addData(
      DataAwsSyntheticsRuntimeVersion(
        localName: 'd_synthetics_runtime_version',
        prefix: .literal(leftover),
        latest: .literal(true),
      ),
    );

    addData(
      DataAwsSyntheticsRuntimeVersions(
        localName: 'd_synthetics_runtime_versions',
      ),
    );

    addData(
      DataAwsTimestreamwriteDatabase(
        localName: 'd_timestreamwrite_database',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsTimestreamwriteTable(
        localName: 'd_timestreamwrite_table',
        databaseName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsTransferConnector(
        localName: 'd_transfer_connector',
        id: .literal(leftover),
      ),
    );

    addData(
      DataAwsTransferServer(
        localName: 'd_transfer_server',
        serverId: .literal(leftover),
      ),
    );

    addData(DataAwsUxcServices(localName: 'd_uxc_services'));

    addData(
      DataAwsVerifiedpermissionsPolicyStore(
        localName: 'd_verifiedpermissions_policy_store',
        id: .literal(leftover),
      ),
    );

    addData(DataAwsVpc(localName: 'd_vpc'));

    addData(DataAwsVpcDhcpOptions(localName: 'd_vpc_dhcp_options'));

    addData(DataAwsVpcEndpoint(localName: 'd_vpc_endpoint'));

    addData(
      DataAwsVpcEndpointAssociations(
        localName: 'd_vpc_endpoint_associations',
        vpcEndpointId: .literal(leftover),
      ),
    );

    addData(DataAwsVpcEndpointService(localName: 'd_vpc_endpoint_service'));

    addData(DataAwsVpcIpam(localName: 'd_vpc_ipam', id: .literal(leftover)));

    addData(DataAwsVpcIpamPool(localName: 'd_vpc_ipam_pool'));

    addData(
      DataAwsVpcIpamPoolCidrs(
        localName: 'd_vpc_ipam_pool_cidrs',
        ipamPoolId: .literal(leftover),
      ),
    );

    addData(DataAwsVpcIpamPools(localName: 'd_vpc_ipam_pools'));

    addData(
      DataAwsVpcIpamPreviewNextCidr(
        localName: 'd_vpc_ipam_preview_next_cidr',
        ipamPoolId: .literal(leftover),
      ),
    );

    addData(DataAwsVpcIpams(localName: 'd_vpc_ipams'));

    addData(DataAwsVpcPeeringConnection(localName: 'd_vpc_peering_connection'));

    addData(
      DataAwsVpcPeeringConnections(localName: 'd_vpc_peering_connections'),
    );

    addData(
      DataAwsVpcSecurityGroupRule(localName: 'd_vpc_security_group_rule'),
    );

    addData(
      DataAwsVpcSecurityGroupRules(localName: 'd_vpc_security_group_rules'),
    );

    addData(
      DataAwsVpclatticeAuthPolicy(
        localName: 'd_vpclattice_auth_policy',
        resourceIdentifier: .literal(arn),
      ),
    );

    addData(
      DataAwsVpclatticeListener(
        localName: 'd_vpclattice_listener',
        listenerIdentifier: .literal(leftover),
        serviceIdentifier: .literal(leftover),
      ),
    );

    addData(
      DataAwsVpclatticeResourcePolicy(
        localName: 'd_vpclattice_resource_policy',
        resourceArn: .literal(arn),
      ),
    );

    addData(
      DataAwsVpclatticeService(
        localName: 'd_vpclattice_service',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsVpclatticeServiceNetwork(
        localName: 'd_vpclattice_service_network',
        serviceNetworkIdentifier: .literal(leftover),
      ),
    );

    addData(
      DataAwsVpclatticeServiceNetworkServiceAssociations(
        localName: 'd_vpclattice_service_network_service_association',
        serviceNetworkIdentifier: .literal(leftover),
      ),
    );

    addData(DataAwsVpcs(localName: 'd_vpcs'));

    addData(
      DataAwsVpnConnection(
        localName: 'd_vpn_connection',
        vpnConnectionId: .literal(leftover),
        filter: [
          DataVpnConnectionFilter(
            name: .literal(leftover),
            values: .literal([leftover]),
          ),
        ],
      ),
    );

    addData(DataAwsVpnGateway(localName: 'd_vpn_gateway'));

    addData(
      DataAwsWafIpset(localName: 'd_waf_ipset', name: .literal(leftover)),
    );

    addData(
      DataAwsWafRateBasedRule(
        localName: 'd_waf_rate_based_rule',
        name: .literal(leftover),
      ),
    );

    addData(DataAwsWafRule(localName: 'd_waf_rule', name: .literal(leftover)));

    addData(
      DataAwsWafSubscribedRuleGroup(
        localName: 'd_waf_subscribed_rule_group',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsWafWebAcl(localName: 'd_waf_web_acl', name: .literal(leftover)),
    );

    addData(
      DataAwsWafregionalIpset(
        localName: 'd_wafregional_ipset',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsWafregionalRateBasedRule(
        localName: 'd_wafregional_rate_based_rule',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsWafregionalRule(
        localName: 'd_wafregional_rule',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsWafregionalSubscribedRuleGroup(
        localName: 'd_wafregional_subscribed_rule_group',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsWafregionalWebAcl(
        localName: 'd_wafregional_web_acl',
        name: .literal(leftover),
      ),
    );

    addData(
      DataAwsWafv2IpSet(
        localName: 'd_wafv2_ip_set',
        name: .literal(leftover),
        scope: .literal('CLOUDFRONT'),
      ),
    );

    addData(
      DataAwsWafv2ManagedRuleGroup(
        localName: 'd_wafv2_managed_rule_group',
        name: .literal(leftover),
        scope: .literal('CLOUDFRONT'),
        vendorName: .literal(leftover),
      ),
    );

    addData(
      DataAwsWafv2RegexPatternSet(
        localName: 'd_wafv2_regex_pattern_set',
        name: .literal(leftover),
        scope: .literal('CLOUDFRONT'),
      ),
    );

    addData(
      DataAwsWafv2RuleGroup(
        localName: 'd_wafv2_rule_group',
        name: .literal(leftover),
        scope: .literal('CLOUDFRONT'),
      ),
    );

    addData(
      DataAwsWafv2WebAcl(
        localName: 'd_wafv2_web_acl',
        scope: .literal('CLOUDFRONT'),
        name: .literal(leftover),
      ),
    );

    addData(DataAwsWorkspacesBundle(localName: 'd_workspaces_bundle'));

    addData(
      DataAwsWorkspacesDirectory(
        localName: 'd_workspaces_directory',
        directoryId: .literal(leftover),
      ),
    );

    addData(
      DataAwsWorkspacesImage(
        localName: 'd_workspaces_image',
        imageId: .literal(leftover),
      ),
    );

    addData(DataAwsWorkspacesWorkspace(localName: 'd_workspaces_workspace'));
  }
}
