// GENERATED — dart run tool/generate_aws_leftover_example.dart
// ignore_for_file: unused_element

/// Coverage stack for leftover AWS factories at the current pin.
/// Dummy constructor values; synth + terraform validate only.
/// Never apply.
library;

import 'package:terradart_aws/terradart_aws.dart';

final class AwsLeftoverStack extends Stack {
  AwsLeftoverStack()
    : super(providers: [const AwsProvider(region: 'us-east-1')]) {
    const leftover = 'leftover';
    const arn = 'arn:aws:iam::123456789012:role/leftover';
    const policy =
        '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Action":"s3:GetObject","Resource":"*"}]}';

    final leftoverSecret = variable<String>('leftover_secret', sensitive: true);

    add(
      AwsAccessanalyzerAnalyzer(
        'accessanalyzer_analyzer',
        analyzerName: .literal(leftover),
      ),
    );

    add(
      AwsAccessanalyzerArchiveRule(
        'accessanalyzer_archive_rule',
        analyzerName: .literal(leftover),
        ruleName: .literal(leftover),
        filter: [AccessanalyzerArchiveRuleFilter(criteria: .literal(leftover))],
      ),
    );

    add(
      AwsAccountAlternateContact(
        'account_alternate_contact',
        alternateContactType: .billing,
        emailAddress: .literal('leftover@example.com'),
        name: .literal(leftover),
        phoneNumber: .literal('+12065550100'),
        title: .literal(leftover),
      ),
    );

    add(
      AwsAccountPrimaryContact(
        'account_primary_contact',
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
        'account_region',
        enabled: .literal(true),
        regionName: .literal(leftover),
      ),
    );

    add(
      AwsAccountaccessApplication(
        'accountaccess_application',
        identitySource: [
          AccountaccessApplicationIdentitySource(
            identityCenter: [.new(instanceArn: .literal(arn))],
          ),
        ],
      ),
    );

    add(
      AwsAccountaccessEntitlement(
        'accountaccess_entitlement',
        applicationArn: .literal(arn),
        entitlement: [
          AccountaccessEntitlement(
            principalRole: [
              .new(
                roleArn: .literal(arn),
                principal: [
                  .new(identityCenter: [.new(groupId: .literal(leftover))]),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsAcmpcaCertificate(
        'acmpca_certificate',
        certificateAuthorityArn: .literal(arn),
        certificateSigningRequest: .literal(leftover),
        signingAlgorithm: .sha256withrsa,
        validity: AcmpcaCertificateValidity(
          type: .endDate,
          value: .literal('2026-01-01T00:00:00Z'),
        ),
      ),
    );

    add(
      AwsAcmpcaCertificateAuthority(
        'acmpca_certificate_authority',
        certificateAuthorityConfiguration:
            AcmpcaCertificateAuthorityConfiguration(
              keyAlgorithm: .rsa2048,
              signingAlgorithm: .sha256withrsa,
              subject: .new(commonName: .literal(leftover)),
            ),
      ),
    );

    add(
      AwsAcmpcaCertificateAuthorityCertificate(
        'acmpca_certificate_authority_certificate',
        certificate: .literal(leftover),
        certificateAuthorityArn: .literal(arn),
      ),
    );

    add(
      AwsAcmpcaPermission(
        'acmpca_permission',
        actions: [.issuecertificate],
        certificateAuthorityArn: .literal(arn),
        principal: .acmAmazonawsCom,
      ),
    );

    add(
      AwsAcmpcaPolicy(
        'acmpca_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsAgentregistryRegistry(
        'agentregistry_registry',
        name: .literal(leftover),
        discoveryConfiguration: [
          AgentregistryRegistryDiscoveryConfiguration(
            authorizerType: .customJwt,
            authorizerConfiguration: [
              .new(
                customJwtAuthorizer: [
                  .new(
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
        'alb',
        subnet: .subnetMapping([
          .new(subnetId: .literal('subnet-0123456789abcdef0')),
        ]),
      ),
    );

    add(
      AwsAlbListener(
        'alb_listener',
        loadBalancerArn: .literal(arn),
        defaultAction: [AlbListenerDefaultAction(type: .forward)],
      ),
    );

    add(
      AwsAlbListenerCertificate(
        'alb_listener_certificate',
        certificateArn: .literal(arn),
        listenerArn: .literal(arn),
      ),
    );

    add(
      AwsAlbListenerRule(
        'alb_listener_rule',
        listenerArn: .literal(arn),
        action: [AlbListenerRuleAction(type: .forward)],
        condition: [
          AlbListenerRuleCondition(
            hostHeader: .new(regexValues: .literal([leftover])),
          ),
        ],
      ),
    );

    add(AwsAlbTargetGroup('alb_target_group'));

    add(
      AwsAlbTargetGroupAttachment(
        'alb_target_group_attachment',
        targetGroupArn: .literal(arn),
        targetId: .literal(leftover),
      ),
    );

    add(AwsAmi('ami', name: .literal(leftover)));

    add(
      AwsAmiCopy(
        'ami_copy',
        name: .literal(leftover),
        sourceAmiId: .literal(leftover),
        sourceAmiRegion: .literal('us-east-1'),
      ),
    );

    add(
      AwsAmiFromInstance(
        'ami_from_instance',
        name: .literal(leftover),
        sourceInstanceId: .literal(leftover),
      ),
    );

    add(
      AwsAmiLaunchPermission(
        'ami_launch_permission',
        grantee: .accountId(.literal('123456789012')),
        imageId: .literal(leftover),
      ),
    );

    add(AwsAmplifyApp('amplify_app', name: .literal(leftover)));

    add(
      AwsAmplifyBackendEnvironment(
        'amplify_backend_environment',
        appId: .literal(leftover),
        environmentName: .literal(leftover),
      ),
    );

    add(
      AwsAmplifyBranch(
        'amplify_branch',
        appId: .literal(leftover),
        branchName: .literal(leftover),
      ),
    );

    add(
      AwsAmplifyDomainAssociation(
        'amplify_domain_association',
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
        'amplify_webhook',
        appId: .literal(leftover),
        branchName: .literal(leftover),
      ),
    );

    add(AwsApiGatewayAccount('api_gateway_account'));

    add(AwsApiGatewayApiKey('api_gateway_api_key', name: .literal(leftover)));

    add(
      AwsApiGatewayAuthorizer(
        'api_gateway_authorizer',
        name: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayBasePathMapping(
        'api_gateway_base_path_mapping',
        apiId: .literal(leftover),
        domainName: .literal(leftover),
      ),
    );

    add(AwsApiGatewayClientCertificate('api_gateway_client_certificate'));

    add(
      AwsApiGatewayDeployment(
        'api_gateway_deployment',
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayDocumentationPart(
        'api_gateway_documentation_part',
        properties: .literal(leftover),
        restApiId: .literal(leftover),
        location: ApiGatewayDocumentationPartLocation(type: .literal(leftover)),
      ),
    );

    add(
      AwsApiGatewayDocumentationVersion(
        'api_gateway_documentation_version',
        restApiId: .literal(leftover),
        version: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayDomainName(
        'api_gateway_domain_name',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayDomainNameAccessAssociation(
        'api_gateway_domain_name_access_association',
        accessAssociationSource: .literal(leftover),
        accessAssociationSourceType: .vpce,
        domainNameArn: .literal(arn),
      ),
    );

    add(
      AwsApiGatewayGatewayResponse(
        'api_gateway_gateway_response',
        responseType: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayIntegration(
        'api_gateway_integration',
        httpMethod: .literal('ANY'),
        resourceId: .literal(leftover),
        restApiId: .literal(leftover),
        type: .http,
      ),
    );

    add(
      AwsApiGatewayIntegrationResponse(
        'api_gateway_integration_response',
        httpMethod: .literal('ANY'),
        resourceId: .literal(leftover),
        restApiId: .literal(leftover),
        statusCode: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayMethod(
        'api_gateway_method',
        authorization: .literal(leftover),
        httpMethod: .literal('ANY'),
        resourceId: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayMethodResponse(
        'api_gateway_method_response',
        httpMethod: .literal('ANY'),
        resourceId: .literal(leftover),
        restApiId: .literal(leftover),
        statusCode: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayMethodSettings(
        'api_gateway_method_settings',
        methodPath: .literal(leftover),
        restApiId: .literal(leftover),
        stageName: .literal(leftover),
        settings: ApiGatewayMethodSettings(cacheDataEncrypted: .literal(true)),
      ),
    );

    add(
      AwsApiGatewayModel(
        'api_gateway_model',
        contentType: .literal(leftover),
        name: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayRequestValidator(
        'api_gateway_request_validator',
        name: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayResource(
        'api_gateway_resource',
        parentId: .literal(leftover),
        pathPart: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(AwsApiGatewayRestApi('api_gateway_rest_api', name: .literal(leftover)));

    add(
      AwsApiGatewayRestApiPolicy(
        'api_gateway_rest_api_policy',
        policy: .literal(policy),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayRestApiPut(
        'api_gateway_rest_api_put',
        body: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayStage(
        'api_gateway_stage',
        deploymentId: .literal(leftover),
        restApiId: .literal(leftover),
        stageName: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayUsagePlan(
        'api_gateway_usage_plan',
        name: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayUsagePlanKey(
        'api_gateway_usage_plan_key',
        keyId: .literal(leftover),
        keyType: .literal(leftover),
        usagePlanId: .literal(leftover),
      ),
    );

    add(
      AwsApiGatewayVpcLink(
        'api_gateway_vpc_link',
        name: .literal(leftover),
        targetArns: .literal([arn]),
      ),
    );

    add(
      AwsApigatewayv2ApiMapping(
        'apigatewayv2_api_mapping',
        apiId: .literal(leftover),
        domainName: .literal(leftover),
        stage: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2Authorizer(
        'apigatewayv2_authorizer',
        apiId: .literal(leftover),
        authorizerType: .request,
        name: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2Deployment(
        'apigatewayv2_deployment',
        apiId: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2DomainName(
        'apigatewayv2_domain_name',
        domainName: .literal(leftover),
        domainNameConfiguration: Apigatewayv2DomainNameConfiguration(
          certificateArn: .literal(arn),
          endpointType: .regional,
          securityPolicy: .tls12,
        ),
      ),
    );

    add(
      AwsApigatewayv2IntegrationResponse(
        'apigatewayv2_integration_response',
        apiId: .literal(leftover),
        integrationId: .literal(leftover),
        integrationResponseKey: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2Model(
        'apigatewayv2_model',
        apiId: .literal(leftover),
        contentType: .literal(leftover),
        name: .literal(leftover),
        schema: .literal(policy),
      ),
    );

    add(
      AwsApigatewayv2RouteResponse(
        'apigatewayv2_route_response',
        apiId: .literal(leftover),
        routeId: .literal(leftover),
        routeResponseKey: .literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2RoutingRule(
        'apigatewayv2_routing_rule',
        domainName: .literal(leftover),
        priority: .literal(200),
        action: [
          Apigatewayv2RoutingRuleAction(
            invokeApi: [
              .new(apiId: .literal(leftover), stage: .literal(leftover)),
            ],
          ),
        ],
        condition: [
          Apigatewayv2RoutingRuleCondition(
            matchBasePaths: [
              .new(anyOf: .literal([leftover])),
            ],
          ),
        ],
      ),
    );

    add(
      AwsApigatewayv2VpcLink(
        'apigatewayv2_vpc_link',
        name: .literal(leftover),
        securityGroupIds: .literal([.literal(leftover)]),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsAppCookieStickinessPolicy(
        'app_cookie_stickiness_policy',
        cookieName: .literal(leftover),
        lbPort: .literal(200),
        loadBalancer: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppautoscalingPolicy(
        'appautoscaling_policy',
        name: .literal(leftover),
        resourceId: .literal(leftover),
        scalableDimension: .literal(leftover),
        serviceNamespace: .literal(leftover),
      ),
    );

    add(
      AwsAppautoscalingScheduledAction(
        'appautoscaling_scheduled_action',
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
        'appautoscaling_target',
        maxCapacity: .literal(200),
        minCapacity: .literal(200),
        resourceId: .literal(leftover),
        scalableDimension: .literal(leftover),
        serviceNamespace: .literal(leftover),
      ),
    );

    add(
      AwsAppconfigApplication(
        'appconfig_application',
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppconfigConfigurationProfile(
        'appconfig_configuration_profile',
        applicationId: .literal(leftover),
        locationUri: .literal('https://example.com'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppconfigDeployment(
        'appconfig_deployment',
        applicationId: .literal(leftover),
        configurationProfileId: .literal(leftover),
        configurationVersion: .literal(leftover),
        deploymentStrategyId: .literal('yh1uqgz'),
        environmentId: .literal(leftover),
      ),
    );

    add(
      AwsAppconfigDeploymentStrategy(
        'appconfig_deployment_strategy',
        deploymentDurationInMinutes: .literal(200),
        growthFactor: .literal(1),
        name: .literal(leftover),
        replicateTo: .none,
      ),
    );

    add(
      AwsAppconfigEnvironment(
        'appconfig_environment',
        applicationId: .literal('abc1234'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppconfigExtension(
        'appconfig_extension',
        name: .literal(leftover),
        actionPoint: [
          AppconfigExtensionActionPoint(
            point: .preCreateHostedConfigurationVersion,
            action: [
              .new(
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
        'appconfig_extension_association',
        extensionArn: .literal(arn),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsAppconfigHostedConfigurationVersion(
        'appconfig_hosted_configuration_version',
        applicationId: .literal(leftover),
        configurationProfileId: .literal(leftover),
        content: leftoverSecret,
        contentType: .literal(leftover),
      ),
    );

    add(
      AwsAppfabricAppAuthorization(
        'appfabric_app_authorization',
        app: .literal(leftover),
        appBundleArn: .literal(arn),
        authType: .oauth2,
        credential: [
          AppfabricAppAuthorizationCredential(
            apiKeyCredential: [.new(apiKey: leftoverSecret)],
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
        'appfabric_app_authorization_connection',
        appAuthorizationArn: .literal(arn),
        appBundleArn: .literal(arn),
      ),
    );

    add(AwsAppfabricAppBundle('appfabric_app_bundle'));

    add(
      AwsAppfabricIngestion(
        'appfabric_ingestion',
        app: .literal(leftover),
        appBundleArn: .literal(arn),
        ingestionType: .auditlog,
        tenantId: .literal(leftover),
      ),
    );

    add(
      AwsAppfabricIngestionDestination(
        'appfabric_ingestion_destination',
        appBundleArn: .literal(arn),
        ingestionArn: .literal(arn),
        destinationConfiguration: [
          AppfabricIngestionDestinationConfiguration(
            auditLog: [
              .new(
                destination: [
                  .new(firehoseStream: [.new(streamName: .literal(leftover))]),
                ],
              ),
            ],
          ),
        ],
        processingConfiguration: [
          AppfabricIngestionDestinationProcessingConfiguration(
            auditLog: [.new(format: .json, schema: .ocsf)],
          ),
        ],
      ),
    );

    add(
      AwsAppflowConnectorProfile(
        'appflow_connector_profile',
        connectionMode: .public,
        connectorType: .salesforce,
        name: .literal(leftover),
        connectorProfileConfig: AppflowConnectorProfileConfig(
          connectorProfileCredentials: .new(
            amplitude: .new(
              apiKey: .literal(leftover),
              secretKey: leftoverSecret,
            ),
          ),
          connectorProfileProperties: .new(amplitude: .new()),
        ),
      ),
    );

    add(
      AwsAppflowFlow(
        'appflow_flow',
        name: .literal(leftover),
        destinationFlowConfig: [
          AppflowFlowDestinationFlowConfig(
            connectorType: .salesforce,
            destinationConnectorProperties: .new(
              customConnector: .new(entityName: .literal(leftover)),
            ),
          ),
        ],
        sourceFlowConfig: AppflowFlowSourceFlowConfig(
          connectorType: .salesforce,
          sourceConnectorProperties: .new(
            amplitude: .new(object: .literal(leftover)),
          ),
        ),
        task: [AppflowFlowTask(taskType: .arithmetic)],
        triggerConfig: AppflowFlowTriggerConfig(triggerType: .scheduled),
      ),
    );

    add(
      AwsAppintegrationsDataIntegration(
        'appintegrations_data_integration',
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
        'appintegrations_event_integration',
        eventbridgeBus: .literal(leftover),
        name: .literal(leftover),
        eventFilter: AppintegrationsEventIntegrationEventFilter(
          source: .literal('aws.partner/example.com/leftover'),
        ),
      ),
    );

    add(
      AwsApplicationinsightsApplication(
        'applicationinsights_application',
        resourceGroupName: .literal(leftover),
      ),
    );

    add(
      AwsAppmeshGatewayRoute(
        'appmesh_gateway_route',
        meshName: .literal(leftover),
        name: .literal(leftover),
        virtualGatewayName: .literal(leftover),
        spec: AppmeshGatewayRouteSpec(
          route: .grpcRoute(
            .new(
              action: .new(
                target: .new(
                  virtualService: .new(virtualServiceName: .literal(leftover)),
                ),
              ),
              match: .new(serviceName: .literal(leftover)),
            ),
          ),
        ),
      ),
    );

    add(AwsAppmeshMesh('appmesh_mesh', name: .literal(leftover)));

    add(
      AwsAppmeshRoute(
        'appmesh_route',
        meshName: .literal(leftover),
        name: .literal(leftover),
        virtualRouterName: .literal(leftover),
        spec: AppmeshRouteSpec(priority: .literal(200)),
      ),
    );

    add(
      AwsAppmeshVirtualGateway(
        'appmesh_virtual_gateway',
        meshName: .literal(leftover),
        name: .literal(leftover),
        spec: AppmeshVirtualGatewaySpec(
          listener: [
            .new(
              portMapping: .new(port: .literal(200), protocol: .http),
            ),
          ],
        ),
      ),
    );

    add(
      AwsAppmeshVirtualNode(
        'appmesh_virtual_node',
        meshName: .literal(leftover),
        name: .literal(leftover),
        spec: AppmeshVirtualNodeSpec(
          backend: [
            .new(virtualService: .new(virtualServiceName: .literal(leftover))),
          ],
        ),
      ),
    );

    add(
      AwsAppmeshVirtualRouter(
        'appmesh_virtual_router',
        meshName: .literal(leftover),
        name: .literal(leftover),
        spec: AppmeshVirtualRouterSpec(
          listener: [
            .new(
              portMapping: .new(port: .literal(200), protocol: .http),
            ),
          ],
        ),
      ),
    );

    add(
      AwsAppmeshVirtualService(
        'appmesh_virtual_service',
        meshName: .literal(leftover),
        name: .literal(leftover),
        spec: AppmeshVirtualServiceSpec(
          provider: .virtualNode(.new(virtualNodeName: .literal(leftover))),
        ),
      ),
    );

    add(
      AwsApprunnerAutoScalingConfigurationVersion(
        'apprunner_auto_scaling_configuration_version',
        autoScalingConfigurationName: .literal(leftover),
      ),
    );

    add(
      AwsApprunnerConnection(
        'apprunner_connection',
        connectionName: .literal(leftover),
        providerType: .github,
      ),
    );

    add(
      AwsApprunnerCustomDomainAssociation(
        'apprunner_custom_domain_association',
        domainName: .literal(leftover),
        serviceArn: .literal(arn),
      ),
    );

    add(
      AwsApprunnerDefaultAutoScalingConfigurationVersion(
        'apprunner_default_auto_scaling_configuration_ver',
        autoScalingConfigurationArn: .literal(arn),
      ),
    );

    add(
      AwsApprunnerDeployment('apprunner_deployment', serviceArn: .literal(arn)),
    );

    add(
      AwsApprunnerObservabilityConfiguration(
        'apprunner_observability_configuration',
        observabilityConfigurationName: .literal(leftover),
      ),
    );

    add(
      AwsApprunnerService(
        'apprunner_service',
        serviceName: .literal(leftover),
        sourceConfiguration: ApprunnerServiceSourceConfiguration(
          repository: .codeRepository(
            .new(
              repositoryUrl: .literal('https://example.com'),
              sourceCodeVersion: .new(type: .branch, value: .literal('BRANCH')),
            ),
          ),
        ),
      ),
    );

    add(
      AwsApprunnerVpcConnector(
        'apprunner_vpc_connector',
        securityGroups: .literal([.literal(leftover)]),
        subnets: .literal([.literal(leftover)]),
        vpcConnectorName: .literal(leftover),
      ),
    );

    add(
      AwsApprunnerVpcIngressConnection(
        'apprunner_vpc_ingress_connection',
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
        'appstream_directory_config',
        directoryName: .literal(leftover),
        organizationalUnitDistinguishedNames: .literal([leftover]),
        serviceAccountCredentials:
            AppstreamDirectoryConfigServiceAccountCredentials(
              accountName: .literal(leftover),
              accountPassword: leftoverSecret,
            ),
      ),
    );

    add(
      AwsAppstreamFleet(
        'appstream_fleet',
        instanceType: .literal(leftover),
        name: .literal(leftover),
        computeCapacity: AppstreamFleetComputeCapacity(
          desiredInstances: .literal(200),
        ),
      ),
    );

    add(
      AwsAppstreamFleetStackAssociation(
        'appstream_fleet_stack_association',
        fleetName: .literal(leftover),
        stackName: .literal(leftover),
      ),
    );

    add(
      AwsAppstreamImageBuilder(
        'appstream_image_builder',
        image: .imageArn(.literal(arn)),
        instanceType: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(AwsAppstreamStack('appstream_stack', name: .literal(leftover)));

    add(
      AwsAppstreamUser(
        'appstream_user',
        authenticationType: .api,
        userName: .literal(leftover),
      ),
    );

    add(
      AwsAppstreamUserStackAssociation(
        'appstream_user_stack_association',
        authenticationType: .api,
        stackName: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncApi(
        'appsync_api',
        name: .literal(leftover),
        eventConfig: [
          AppsyncApiEventConfig(
            defaultSubscribeAuthMode: [.new(authType: .apiKey)],
            connectionAuthMode: [.new(authType: .apiKey)],
            defaultPublishAuthMode: [.new(authType: .apiKey)],
            authProvider: [.new(authType: .apiKey)],
          ),
        ],
      ),
    );

    add(
      AwsAppsyncApiCache(
        'appsync_api_cache',
        apiCachingBehavior: .fullRequestCaching,
        apiId: .literal(leftover),
        ttl: .literal(200),
        type: .t2Small,
      ),
    );

    add(AwsAppsyncApiKey('appsync_api_key', apiId: .literal(leftover)));

    add(
      AwsAppsyncChannelNamespace(
        'appsync_channel_namespace',
        apiId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncDatasource(
        'appsync_datasource',
        apiId: .literal(leftover),
        name: .literal(leftover),
        type: .awsLambda,
      ),
    );

    add(
      AwsAppsyncDomainName(
        'appsync_domain_name',
        certificateArn: .literal(arn),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncDomainNameApiAssociation(
        'appsync_domain_name_api_association',
        apiId: .literal(leftover),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncFunction(
        'appsync_function',
        apiId: .literal(leftover),
        dataSource: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncGraphqlApi(
        'appsync_graphql_api',
        authenticationType: .apiKey,
        name: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncResolver(
        'appsync_resolver',
        apiId: .literal(leftover),
        field: .literal(leftover),
        type: .literal(leftover),
      ),
    );

    add(
      AwsAppsyncSourceApiAssociation(
        'appsync_source_api_association',
        mergedApi: .mergedApiArn(.literal(arn)),
        sourceApi: .sourceApiArn(.literal(arn)),
      ),
    );

    add(
      AwsAppsyncType(
        'appsync_type',
        apiId: .literal(leftover),
        definition: .literal(leftover),
        format: .sdl,
      ),
    );

    add(
      AwsArcregionswitchPlan(
        'arcregionswitch_plan',
        executionRole: .literal(arn),
        name: .literal(leftover),
        recoveryApproach: .activeactive,
        regions: .literal([leftover, 'leftover1']),
      ),
    );

    add(
      AwsArczonalshiftAutoshiftObserverNotificationStatus(
        'arczonalshift_autoshift_observer_notification_st',
        status: .enabled,
      ),
    );

    add(
      AwsArczonalshiftZonalAutoshiftConfiguration(
        'arczonalshift_zonal_autoshift_configuration',
        resourceArn: .literal(arn),
        zonalAutoshiftStatus: .enabled,
      ),
    );

    add(
      AwsAthenaCapacityReservation(
        'athena_capacity_reservation',
        name: .literal(leftover),
        targetDpus: .literal(200),
      ),
    );

    add(
      AwsAthenaDataCatalog(
        'athena_data_catalog',
        description: .literal(leftover),
        name: .literal(leftover),
        parameters: .literal({'k': leftover}),
        type: .lambda,
      ),
    );

    add(AwsAthenaDatabase('athena_database', name: .literal(leftover)));

    add(
      AwsAthenaNamedQuery(
        'athena_named_query',
        database: .literal(leftover),
        name: .literal(leftover),
        query: .literal(leftover),
      ),
    );

    add(
      AwsAthenaPreparedStatement(
        'athena_prepared_statement',
        name: .literal(leftover),
        queryStatement: .literal(leftover),
        workgroup: .literal(leftover),
      ),
    );

    add(AwsAthenaWorkgroup('athena_workgroup', name: .literal(leftover)));

    add(
      AwsAuditmanagerAccountRegistration('auditmanager_account_registration'),
    );

    add(
      AwsAuditmanagerAssessment(
        'auditmanager_assessment',
        frameworkId: .literal(leftover),
        name: .literal(leftover),
        roles: [
          AuditmanagerAssessmentRoles(
            roleArn: .literal(arn),
            roleType: .processOwner,
          ),
        ],
      ),
    );

    add(
      AwsAuditmanagerAssessmentDelegation(
        'auditmanager_assessment_delegation',
        assessmentId: .literal(leftover),
        controlSetId: .literal(leftover),
        roleArn: .literal(arn),
        roleType: .processOwner,
      ),
    );

    add(
      AwsAuditmanagerAssessmentReport(
        'auditmanager_assessment_report',
        assessmentId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerControl('auditmanager_control', name: .literal(leftover)),
    );

    add(
      AwsAuditmanagerFramework(
        'auditmanager_framework',
        name: .literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerFrameworkShare(
        'auditmanager_framework_share',
        destinationAccount: .literal('123456789012'),
        destinationRegion: .literal('us-east-1'),
        frameworkId: .literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerOrganizationAdminAccountRegistration(
        'auditmanager_organization_admin_account_registra',
        adminAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsAutoscalingAttachment(
        'autoscaling_attachment',
        autoscalingGroupName: .literal(leftover),
        target: .elb(.literal(leftover)),
      ),
    );

    add(
      AwsAutoscalingGroup(
        'autoscaling_group',
        instanceSource: .launchConfiguration(.literal(leftover)),
        maxSize: .literal(200),
        minSize: .literal(200),
      ),
    );

    add(
      AwsAutoscalingGroupTag(
        'autoscaling_group_tag',
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
        'autoscaling_lifecycle_hook',
        autoscalingGroupName: .literal(leftover),
        lifecycleTransition: .autoscalingEc2InstanceLaunching,
        name: .literal(leftover),
      ),
    );

    add(
      AwsAutoscalingNotification(
        'autoscaling_notification',
        groupNames: .literal([leftover]),
        notifications: .literal([leftover]),
        topicArn: .literal(arn),
      ),
    );

    add(
      AwsAutoscalingPolicy(
        'autoscaling_policy',
        autoscalingGroupName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsAutoscalingSchedule(
        'autoscaling_schedule',
        autoscalingGroupName: .literal(leftover),
        scheduledActionName: .literal(leftover),
      ),
    );

    add(
      AwsAutoscalingTrafficSourceAttachment(
        'autoscaling_traffic_source_attachment',
        autoscalingGroupName: .literal(leftover),
      ),
    );

    add(
      AwsAutoscalingplansScalingPlan(
        'autoscalingplans_scaling_plan',
        name: .literal(leftover),
        applicationSource: AutoscalingplansScalingPlanApplicationSource(
          selector: .cloudformationStackArn(.literal(arn)),
        ),
        scalingInstruction: [
          AutoscalingplansScalingPlanScalingInstruction(
            maxCapacity: .literal(200),
            minCapacity: .literal(200),
            resourceId: .literal(leftover),
            scalableDimension: .autoscalingAutoscalinggroupDesiredcapacity,
            serviceNamespace: .autoscaling,
            targetTrackingConfiguration: [.new(targetValue: .literal(200))],
          ),
        ],
      ),
    );

    add(
      AwsBackupFramework(
        'backup_framework',
        name: .literal(leftover),
        control: [BackupFrameworkControl(name: .literal(leftover))],
      ),
    );

    add(
      AwsBackupGlobalSettings(
        'backup_global_settings',
        globalSettings: .literal({'k': leftover}),
      ),
    );

    add(
      AwsBackupLogicallyAirGappedVault(
        'backup_logically_air_gapped_vault',
        maxRetentionDays: .literal(200),
        minRetentionDays: .literal(200),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBackupPlan(
        'backup_plan',
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
        'backup_region_settings',
        resourceTypeOptInPreference: .literal({'k': true}),
      ),
    );

    add(
      AwsBackupReportPlan(
        'backup_report_plan',
        name: .literal(leftover),
        reportDeliveryChannel: BackupReportPlanReportDeliveryChannel(
          s3BucketName: .literal(leftover),
        ),
        reportSetting: BackupReportPlanReportSetting(
          reportTemplate: .backupJobReport,
        ),
      ),
    );

    add(
      AwsBackupRestoreTestingPlan(
        'backup_restore_testing_plan',
        name: .literal(leftover),
        scheduleExpression: .literal(leftover),
        recoveryPointSelection: [
          BackupRestoreTestingPlanRecoveryPointSelection(
            algorithm: .latestWithinWindow,
            includeVaults: .literal(['*']),
            recoveryPointTypes: [.continuous],
          ),
        ],
      ),
    );

    add(
      AwsBackupRestoreTestingSelection(
        'backup_restore_testing_selection',
        iamRoleArn: .literal(arn),
        name: .literal(leftover),
        protectedResource: .protectedResourceArns(.literal([arn])),
        protectedResourceType: .literal(leftover),
        restoreTestingPlanName: .literal(leftover),
      ),
    );

    add(
      AwsBackupSelection(
        'backup_selection',
        iamRoleArn: .literal(arn),
        name: .literal(leftover),
        planId: .literal(leftover),
      ),
    );

    add(AwsBackupVault('backup_vault', name: .literal(leftover)));

    add(
      AwsBackupVaultLockConfiguration(
        'backup_vault_lock_configuration',
        backupVaultName: .literal(leftover),
      ),
    );

    add(
      AwsBackupVaultNotifications(
        'backup_vault_notifications',
        backupVaultEvents: [.backupJobStarted],
        backupVaultName: .literal(leftover),
        snsTopicArn: .literal(arn),
      ),
    );

    add(
      AwsBackupVaultPolicy(
        'backup_vault_policy',
        backupVaultName: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsBatchComputeEnvironment('batch_compute_environment', type: .managed),
    );

    add(
      AwsBatchJobDefinition(
        'batch_job_definition',
        name: .literal(leftover),
        type: .container,
      ),
    );

    add(
      AwsBatchJobQueue(
        'batch_job_queue',
        name: .literal(leftover),
        priority: .literal(200),
        state: .literal('ENABLED'),
      ),
    );

    add(
      AwsBatchSchedulingPolicy(
        'batch_scheduling_policy',
        name: .literal(leftover),
      ),
    );

    add(AwsBcmdataexportsExport('bcmdataexports_export'));

    add(
      AwsBedrockCustomModel(
        'bedrock_custom_model',
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
        'bedrock_evaluation_job',
        jobName: .literal(leftover),
        roleArn: .literal(arn),
        evaluationConfig: [
          .automated([
            .new(
              datasetMetricConfig: [
                .new(
                  metricNames: .literal([leftover]),
                  taskType: .summarization,
                  dataset: [.new(name: .literal(leftover))],
                ),
              ],
            ),
          ]),
        ],
        inferenceConfig: [
          .model([
            .bedrockModel([.new(modelIdentifier: .literal(leftover))]),
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
        'bedrock_foundation_model_agreement',
        modelId: .literal(leftover),
        offerToken: .literal(leftover),
      ),
    );

    add(
      AwsBedrockGuardrail(
        'bedrock_guardrail',
        blockedInputMessaging: .literal(leftover),
        blockedOutputsMessaging: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockGuardrailVersion(
        'bedrock_guardrail_version',
        guardrailArn: .literal(arn),
      ),
    );

    add(
      AwsBedrockInferenceProfile(
        'bedrock_inference_profile',
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockModelInvocationJob(
        'bedrock_model_invocation_job',
        jobName: .literal(leftover),
        modelId: .literal(leftover),
        roleArn: .literal(arn),
        inputDataConfig: [
          BedrockModelInvocationJobInputDataConfig(
            s3InputDataConfig: [
              .new(s3Uri: .literal('s3://leftover-bucket/leftover')),
            ],
          ),
        ],
        outputDataConfig: [
          BedrockModelInvocationJobOutputDataConfig(
            s3OutputDataConfig: [
              .new(s3Uri: .literal('s3://leftover-bucket/leftover')),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockModelInvocationLoggingConfiguration(
        'bedrock_model_invocation_logging_configuration',
        loggingConfig: [
          BedrockModelInvocationLoggingConfigurationLoggingConfig(
            embeddingDataDeliveryEnabled: .literal(true),
          ),
        ],
      ),
    );

    add(
      AwsBedrockProvisionedModelThroughput(
        'bedrock_provisioned_model_throughput',
        modelArn: .literal(arn),
        modelUnits: .literal(200),
        provisionedModelName: .literal(leftover),
      ),
    );

    add(
      AwsBedrockUseCaseForModelAccess(
        'bedrock_use_case_for_model_access',
        formData: .literal(policy),
      ),
    );

    add(
      AwsBedrockagentAgent(
        'bedrockagent_agent',
        agentName: .literal(leftover),
        agentResourceRoleArn: .literal(arn),
        foundationModel: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentAgentActionGroup(
        'bedrockagent_agent_action_group',
        actionGroupName: .literal(leftover),
        agentId: .literal(leftover),
        agentVersion: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentAgentAlias(
        'bedrockagent_agent_alias',
        agentAliasName: .literal(leftover),
        agentId: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentAgentCollaborator(
        'bedrockagent_agent_collaborator',
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
        'bedrockagent_agent_knowledge_base_association',
        agentId: .literal(leftover),
        description: .literal(leftover),
        knowledgeBaseId: .literal(leftover),
        knowledgeBaseState: .enabled,
      ),
    );

    add(
      AwsBedrockagentDataSource(
        'bedrockagent_data_source',
        knowledgeBaseId: .literal(leftover),
        name: .literal(leftover),
        dataSourceConfiguration: [
          BedrockagentDataSourceConfiguration(
            type: .s3,
            s3Configuration: [.new(bucketArn: .literal(arn))],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentFlow(
        'bedrockagent_flow',
        executionRoleArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentKnowledgeBase(
        'bedrockagent_knowledge_base',
        name: .literal(leftover),
        roleArn: .literal(arn),
        knowledgeBaseConfiguration: [
          BedrockagentKnowledgeBaseConfiguration(
            type: .vector,
            vectorKnowledgeBaseConfiguration: [
              .new(embeddingModelArn: .literal(arn)),
            ],
          ),
        ],
      ),
    );

    add(AwsBedrockagentPrompt('bedrockagent_prompt', name: .literal(leftover)));

    add(
      AwsBedrockagentcoreAgentRuntime(
        'bedrockagentcore_agent_runtime',
        agentRuntimeName: .literal(leftover),
        roleArn: .literal(arn),
        agentRuntimeArtifact: [
          BedrockagentcoreAgentRuntimeArtifact(
            codeConfiguration: [
              .new(entryPoint: .literal([leftover]), runtime: .python310),
            ],
          ),
        ],
        networkConfiguration: [
          BedrockagentcoreAgentRuntimeNetworkConfiguration(
            networkMode: .public,
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreAgentRuntimeEndpoint(
        'bedrockagentcore_agent_runtime_endpoint',
        agentRuntimeId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreApiKeyCredentialProvider(
        'bedrockagentcore_api_key_credential_provider',
        apiKey: .apiKey(leftoverSecret),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreBrowser(
        'bedrockagentcore_browser',
        name: .literal(leftover),
        networkConfiguration: [
          BedrockagentcoreBrowserNetworkConfiguration(networkMode: .public),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreBrowserProfile(
        'bedrockagentcore_browser_profile',
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreCodeInterpreter(
        'bedrockagentcore_code_interpreter',
        name: .literal(leftover),
        networkConfiguration: [
          BedrockagentcoreCodeInterpreterNetworkConfiguration(
            networkMode: .public,
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreEvaluator(
        'bedrockagentcore_evaluator',
        evaluatorName: .literal(leftover),
        level: .toolCall,
        evaluatorConfig: [
          .codeBased([
            .new(lambdaConfig: [.new(lambdaArn: .literal(arn))]),
          ]),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreGateway(
        'bedrockagentcore_gateway',
        authorizerType: .awsIam,
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsBedrockagentcoreGatewayRule(
        'bedrockagentcore_gateway_rule',
        gatewayIdentifier: .literal(leftover),
        priority: .literal(200),
      ),
    );

    add(
      AwsBedrockagentcoreGatewayTarget(
        'bedrockagentcore_gateway_target',
        gatewayIdentifier: .literal(leftover),
        name: .literal(leftover),
        targetConfiguration: [
          BedrockagentcoreGatewayTargetConfiguration(
            http: [
              .new(agentcoreRuntime: [.new(arn: .literal(arn))]),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreHarness(
        'bedrockagentcore_harness',
        executionRoleArn: .literal(arn),
        harnessName: .literal(leftover),
        model: [
          BedrockagentcoreHarnessModel(
            bedrockModelConfig: [.new(modelId: .literal(leftover))],
          ),
        ],
        systemPrompt: [
          BedrockagentcoreHarnessSystemPrompt(text: leftoverSecret),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreMemory(
        'bedrockagentcore_memory',
        eventExpiryDuration: .literal(200),
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreMemoryStrategy(
        'bedrockagentcore_memory_strategy',
        memoryId: .literal(leftover),
        name: .literal(leftover),
        type: .semantic,
        namespaces: .literal([leftover]),
      ),
    );

    add(
      AwsBedrockagentcoreOauth2CredentialProvider(
        'bedrockagentcore_oauth2_credential_provider',
        credentialProviderVendor: .googleoauth2,
        name: .literal(leftover),
        oauth2ProviderConfig: [
          BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfig(
            googleOauth2ProviderConfig: [
              .new(clientId: leftoverSecret, clientSecret: leftoverSecret),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreOnlineEvaluationConfig(
        'bedrockagentcore_online_evaluation_config',
        enableOnCreate: .literal(true),
        evaluationExecutionRoleArn: .literal(arn),
        onlineEvaluationConfigName: .literal(leftover),
        dataSourceConfig: [
          BedrockagentcoreOnlineEvaluationConfigDataSourceConfig(
            cloudwatchLogs: [
              .new(
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
            samplingConfig: [.new(samplingPercentage: .literal(50))],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcorePolicy(
        'bedrockagentcore_policy',
        name: .literal(leftover),
        policyEngineId: .literal('T0OLrnw-qkcm9dd3b0'),
        definition: [
          BedrockagentcorePolicyDefinition(
            cedar: [.new(statement: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcorePolicyEngine(
        'bedrockagentcore_policy_engine',
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreRegistry(
        'bedrockagentcore_registry',
        name: .literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreResourcePolicy(
        'bedrockagentcore_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsBedrockagentcoreTokenVaultCmk(
        'bedrockagentcore_token_vault_cmk',
        kmsConfiguration: [
          BedrockagentcoreTokenVaultCmkKmsConfiguration(
            keyType: .customermanagedkey,
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreWorkloadIdentity(
        'bedrockagentcore_workload_identity',
        name: .literal(leftover),
      ),
    );

    add(AwsBillingView('billing_view', name: .literal(leftover)));

    add(
      AwsBudgetsBudget('budgets_budget', budgetType: .usage, timeUnit: .daily),
    );

    add(
      AwsBudgetsBudgetAction(
        'budgets_budget_action',
        actionType: .applyIamPolicy,
        approvalModel: .automatic,
        budgetName: .literal(leftover),
        executionRoleArn: .literal(arn),
        notificationType: .actual,
        actionThreshold: BudgetsBudgetActionThreshold(
          actionThresholdType: .percentage,
          actionThresholdValue: .literal(200),
        ),
        definition: BudgetsBudgetActionDefinition(
          iamActionDefinition: .new(policyArn: .literal(arn)),
        ),
        subscriber: [
          BudgetsBudgetActionSubscriber(
            address: .literal(leftover),
            subscriptionType: .sns,
          ),
        ],
      ),
    );

    add(
      AwsCeAnomalyMonitor(
        'ce_anomaly_monitor',
        monitorType: .dimensional,
        name: .literal(leftover),
      ),
    );

    add(
      AwsCeAnomalySubscription(
        'ce_anomaly_subscription',
        frequency: .daily,
        monitorArnList: .literal([arn]),
        name: .literal(leftover),
        subscriber: [
          CeAnomalySubscriptionSubscriber(
            address: .literal(leftover),
            type: .email,
          ),
        ],
      ),
    );

    add(
      AwsCeCostAllocationTag(
        'ce_cost_allocation_tag',
        status: .active,
        tagKey: .literal(leftover),
      ),
    );

    add(
      AwsCeCostCategory(
        'ce_cost_category',
        name: .literal(leftover),
        ruleVersion: .literal(leftover),
        rule: [CeCostCategoryRule(type: .regular)],
      ),
    );

    add(
      AwsChatbotSlackChannelConfiguration(
        'chatbot_slack_channel_configuration',
        configurationName: .literal(leftover),
        iamRoleArn: .literal(arn),
        slackChannelId: .literal(leftover),
        slackTeamId: .literal(leftover),
      ),
    );

    add(
      AwsChatbotTeamsChannelConfiguration(
        'chatbot_teams_channel_configuration',
        channelId: .literal(leftover),
        configurationName: .literal(leftover),
        iamRoleArn: .literal(arn),
        teamId: .literal(leftover),
        tenantId: .literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnector(
        'chime_voice_connector',
        name: .literal(leftover),
        requireEncryption: .literal(true),
      ),
    );

    add(
      AwsChimeVoiceConnectorGroup(
        'chime_voice_connector_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorLogging(
        'chime_voice_connector_logging',
        voiceConnectorId: .literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorOrigination(
        'chime_voice_connector_origination',
        voiceConnectorId: .literal(leftover),
        route: [
          ChimeVoiceConnectorOriginationRoute(
            host: .literal('10.0.0.1'),
            priority: .literal(1),
            protocol: .tcp,
            weight: .literal(1),
          ),
        ],
      ),
    );

    add(
      AwsChimeVoiceConnectorStreaming(
        'chime_voice_connector_streaming',
        dataRetention: .literal(200),
        voiceConnectorId: .literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorTermination(
        'chime_voice_connector_termination',
        callingRegions: .literal(['US']),
        cidrAllowList: .literal(['10.0.0.0/28']),
        voiceConnectorId: .literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorTerminationCredentials(
        'chime_voice_connector_termination_credentials',
        voiceConnectorId: .literal(leftover),
        credentials: [
          ChimeVoiceConnectorTerminationCredentials(
            password: leftoverSecret,
            username: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsChimesdkmediapipelinesMediaInsightsPipelineConfiguration(
        'chimesdkmediapipelines_media_insights_pipeline_c',
        name: .literal(leftover),
        resourceAccessRoleArn: .literal(arn),
        elements: [
          ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElements(
            type: .amazontranscribecallanalyticsprocessor,
          ),
        ],
      ),
    );

    add(
      AwsChimesdkvoiceGlobalSettings(
        'chimesdkvoice_global_settings',
        voiceConnector: ChimesdkvoiceGlobalSettingsVoiceConnector(
          cdrBucket: .literal(leftover),
        ),
      ),
    );

    add(
      AwsChimesdkvoiceSipMediaApplication(
        'chimesdkvoice_sip_media_application',
        awsRegion: .literal('us-east-1'),
        name: .literal(leftover),
        endpoints: ChimesdkvoiceSipMediaApplicationEndpoints(
          lambdaArn: .literal(arn),
        ),
      ),
    );

    add(
      AwsChimesdkvoiceSipRule(
        'chimesdkvoice_sip_rule',
        name: .literal(leftover),
        triggerType: .tophonenumber,
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
        'chimesdkvoice_voice_profile_domain',
        name: .literal(leftover),
        serverSideEncryptionConfiguration:
            ChimesdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration(
              kmsKeyArn: .literal(arn),
            ),
      ),
    );

    add(
      AwsCleanroomsCollaboration(
        'cleanrooms_collaboration',
        creatorDisplayName: .literal(leftover),
        creatorMemberAbilities: .literal([leftover]),
        description: .literal(leftover),
        name: .literal(leftover),
        queryLogStatus: .literal(leftover),
      ),
    );

    add(
      AwsCleanroomsConfiguredTable(
        'cleanrooms_configured_table',
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
        'cleanrooms_membership',
        collaborationId: .literal(leftover),
        queryLogStatus: .enabled,
      ),
    );

    add(
      AwsCloud9EnvironmentEc2(
        'cloud9_environment_ec2',
        imageId: .amazonlinux1X8664,
        instanceType: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloud9EnvironmentMembership(
        'cloud9_environment_membership',
        environmentId: .literal(leftover),
        permissions: .owner,
        userArn: .literal(arn),
      ),
    );

    add(
      AwsCloudcontrolapiResource(
        'cloudcontrolapi_resource',
        desiredState: .literal(leftover),
        typeName: .literal('AWS::S3::Bucket'),
      ),
    );

    add(
      AwsCloudformationStack('cloudformation_stack', name: .literal(leftover)),
    );

    add(
      AwsCloudformationStackInstances(
        'cloudformation_stack_instances',
        stackSetName: .literal(leftover),
      ),
    );

    add(
      AwsCloudformationStackSet(
        'cloudformation_stack_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudformationStackSetInstance(
        'cloudformation_stack_set_instance',
        stackSetName: .literal(leftover),
      ),
    );

    add(
      AwsCloudformationType(
        'cloudformation_type',
        schemaHandlerPackage: .literal('s3://leftover-bucket/leftover'),
        typeName: .literal('Leftover::Example::Thing'),
      ),
    );

    add(
      AwsCloudfrontAnycastIpList(
        'cloudfront_anycast_ip_list',
        ipCount: .literal(3),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontCachePolicy(
        'cloudfront_cache_policy',
        name: .literal(leftover),
        parametersInCacheKeyAndForwardedToOrigin:
            CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOrigin(
              cookiesConfig: .new(cookieBehavior: .none),
              headersConfig: .new(headerBehavior: .none),
              queryStringsConfig: .new(queryStringBehavior: .none),
            ),
      ),
    );

    add(
      AwsCloudfrontConnectionFunction(
        'cloudfront_connection_function',
        connectionFunctionCode: .literal(leftover),
        name: .literal(leftover),
        connectionFunctionConfig: [
          CloudfrontConnectionFunctionConfig(
            comment: .literal(leftover),
            runtime: .cloudfrontJs1p0,
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontConnectionGroup(
        'cloudfront_connection_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontContinuousDeploymentPolicy(
        'cloudfront_continuous_deployment_policy',
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
        'cloudfront_distribution_tenant',
        distributionId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontFieldLevelEncryptionConfig(
        'cloudfront_field_level_encryption_config',
        contentTypeProfileConfig:
            CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfig(
              forwardWhenContentTypeIsUnknown: .literal(true),
              contentTypeProfiles: .new(
                items: [
                  .new(
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
        'cloudfront_field_level_encryption_profile',
        name: .literal(leftover),
        encryptionEntities:
            CloudfrontFieldLevelEncryptionProfileEncryptionEntities(
              items: [
                .new(
                  providerId: .literal(leftover),
                  publicKeyId: .literal(leftover),
                  fieldPatterns: .new(items: .literal([leftover])),
                ),
              ],
            ),
      ),
    );

    add(
      AwsCloudfrontFunction(
        'cloudfront_function',
        code: .literal(leftover),
        name: .literal(leftover),
        runtime: .cloudfrontJs1p0,
      ),
    );

    add(
      AwsCloudfrontKeyGroup(
        'cloudfront_key_group',
        items: .literal([leftover]),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontKeyValueStore(
        'cloudfront_key_value_store',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontMonitoringSubscription(
        'cloudfront_monitoring_subscription',
        distributionId: .literal(leftover),
        monitoringSubscription: CloudfrontMonitoringSubscription(
          realtimeMetricsSubscriptionConfig: .new(
            realtimeMetricsSubscriptionStatus: .enabled,
          ),
        ),
      ),
    );

    add(
      AwsCloudfrontMultitenantDistribution(
        'cloudfront_multitenant_distribution',
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
            viewerProtocolPolicy: .allowAll,
            allowedMethods: [
              .new(cachedMethods: [.get], items: .literal(['GET'])),
            ],
          ),
        ],
        tenantConfig: [
          CloudfrontMultitenantDistributionTenantConfig(
            parameterDefinition: [.new(name: .literal(leftover))],
          ),
        ],
      ),
    );

    add(AwsCloudfrontOriginAccessIdentity('cloudfront_origin_access_identity'));

    add(
      AwsCloudfrontOriginRequestPolicy(
        'cloudfront_origin_request_policy',
        name: .literal(leftover),
        cookiesConfig: CloudfrontOriginRequestPolicyCookiesConfig(
          cookieBehavior: .none,
        ),
        headersConfig: CloudfrontOriginRequestPolicyHeadersConfig(
          headerBehavior: .none,
        ),
        queryStringsConfig: CloudfrontOriginRequestPolicyQueryStringsConfig(
          queryStringBehavior: .none,
        ),
      ),
    );

    add(
      AwsCloudfrontPublicKey(
        'cloudfront_public_key',
        encodedKey: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontRealtimeLogConfig(
        'cloudfront_realtime_log_config',
        fields: .literal([leftover]),
        name: .literal(leftover),
        samplingRate: .literal(1),
        endpoint: CloudfrontRealtimeLogConfigEndpoint(
          streamType: .kinesis,
          kinesisStreamConfig: .new(
            roleArn: .literal(arn),
            streamArn: .literal(arn),
          ),
        ),
      ),
    );

    add(
      AwsCloudfrontResponseHeadersPolicy(
        'cloudfront_response_headers_policy',
        name: .literal(leftover),
        corsConfig: CloudfrontResponseHeadersPolicyCorsConfig(
          accessControlAllowCredentials: .literal(true),
          originOverride: .literal(true),
          accessControlAllowHeaders: .new(items: .literal([leftover])),
          accessControlAllowMethods: .new(items: .literal([leftover])),
          accessControlAllowOrigins: .new(items: .literal([leftover])),
        ),
        customHeadersConfig: CloudfrontResponseHeadersPolicyCustomHeadersConfig(
          items: [
            .new(
              header: .literal(leftover),
              override: .literal(true),
              value: .literal(leftover),
            ),
          ],
        ),
        removeHeadersConfig: CloudfrontResponseHeadersPolicyRemoveHeadersConfig(
          items: [.new(header: .literal(leftover))],
        ),
        securityHeadersConfig:
            CloudfrontResponseHeadersPolicySecurityHeadersConfig(
              contentSecurityPolicy: .new(
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
        'cloudfront_trust_store',
        name: .literal(leftover),
        caCertificatesBundleSource: [
          CloudfrontTrustStoreCaCertificatesBundleSource(
            caCertificatesBundleS3Location: [
              .new(
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
        'cloudfront_vpc_origin',
        vpcOriginEndpointConfig: [
          CloudfrontVpcOriginEndpointConfig(
            arn: .literal(arn),
            httpPort: .literal(200),
            httpsPort: .literal(200),
            name: .literal(leftover),
            originProtocolPolicy: .httpOnly,
            originSslProtocols: [
              .new(items: .literal(['SSLv3']), quantity: .literal(200)),
            ],
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontkeyvaluestoreKey(
        'cloudfrontkeyvaluestore_key',
        key: .literal(leftover),
        keyValueStoreArn: .literal(arn),
        value: .literal(leftover),
      ),
    );

    add(
      AwsCloudfrontkeyvaluestoreKeysExclusive(
        'cloudfrontkeyvaluestore_keys_exclusive',
        keyValueStoreArn: .literal(arn),
      ),
    );

    add(
      AwsCloudhsmV2Cluster(
        'cloudhsm_v2_cluster',
        hsmType: .hsm1Medium,
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsCloudhsmV2Hsm(
        'cloudhsm_v2_hsm',
        placement: .availabilityZone(.literal('us-east-1a')),
        clusterId: .literal(leftover),
      ),
    );

    add(AwsCloudsearchDomain('cloudsearch_domain', name: .literal(leftover)));

    add(
      AwsCloudsearchDomainServiceAccessPolicy(
        'cloudsearch_domain_service_access_policy',
        accessPolicy: .literal(policy),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsCloudtrail(
        'cloudtrail',
        name: .literal(leftover),
        s3BucketName: .literal(leftover),
      ),
    );

    add(
      AwsCloudtrailEventDataStore(
        'cloudtrail_event_data_store',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudtrailOrganizationDelegatedAdminAccount(
        'cloudtrail_organization_delegated_admin_account',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      AwsCloudwatchAlarmMuteRule(
        'cloudwatch_alarm_mute_rule',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchCompositeAlarm(
        'cloudwatch_composite_alarm',
        alarmName: .literal(leftover),
        alarmRule: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchContributorInsightRule(
        'cloudwatch_contributor_insight_rule',
        ruleDefinition: .literal(policy),
        ruleName: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchContributorManagedInsightRule(
        'cloudwatch_contributor_managed_insight_rule',
        resourceArn: .literal(arn),
        templateName: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchDashboard(
        'cloudwatch_dashboard',
        dashboardBody: .literal(policy),
        dashboardName: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventApiDestination(
        'cloudwatch_event_api_destination',
        connectionArn: .literal(arn),
        httpMethod: .post,
        invocationEndpoint: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventArchive(
        'cloudwatch_event_archive',
        eventSourceArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventBus('cloudwatch_event_bus', name: .literal(leftover)),
    );

    add(
      AwsCloudwatchEventBusPolicy(
        'cloudwatch_event_bus_policy',
        policy: .literal(policy),
      ),
    );

    add(
      AwsCloudwatchEventConnection(
        'cloudwatch_event_connection',
        authorizationType: .basic,
        name: .literal(leftover),
        authParameters: CloudwatchEventConnectionAuthParameters(
          auth: .apiKey(.new(key: .literal(leftover), value: leftoverSecret)),
        ),
      ),
    );

    add(
      AwsCloudwatchEventEndpoint(
        'cloudwatch_event_endpoint',
        name: .literal(leftover),
        eventBus: [
          CloudwatchEventEndpointEventBus(eventBusArn: .literal(arn)),
          CloudwatchEventEndpointEventBus(eventBusArn: .literal(arn)),
        ],
        routingConfig: CloudwatchEventEndpointRoutingConfig(
          failoverConfig: .new(
            primary: .new(healthCheck: .literal(arn)),
            secondary: .new(route: .literal('us-east-1')),
          ),
        ),
      ),
    );

    add(
      AwsCloudwatchEventPermission(
        'cloudwatch_event_permission',
        principal: .literal('123456789012'),
        statementId: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventRule(
        'cloudwatch_event_rule',
        eventPattern: .literal(policy),
        scheduleExpression: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventTarget(
        'cloudwatch_event_target',
        arn: .literal(arn),
        rule: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogAccountPolicy(
        'cloudwatch_log_account_policy',
        policyDocument: .literal(policy),
        policyName: .literal(leftover),
        policyType: .dataProtectionPolicy,
      ),
    );

    add(
      AwsCloudwatchLogAnomalyDetector(
        'cloudwatch_log_anomaly_detector',
        enabled: .literal(true),
        logGroupArnList: .literal([leftover]),
      ),
    );

    add(
      AwsCloudwatchLogDataProtectionPolicy(
        'cloudwatch_log_data_protection_policy',
        logGroupName: .literal(leftover),
        policyDocument: .literal(policy),
      ),
    );

    add(
      AwsCloudwatchLogDelivery(
        'cloudwatch_log_delivery',
        deliveryDestinationArn: .literal(arn),
        deliverySourceName: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogDeliveryDestination(
        'cloudwatch_log_delivery_destination',
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
        'cloudwatch_log_delivery_destination_policy',
        deliveryDestinationName: .literal(leftover),
        deliveryDestinationPolicy: .literal(policy),
      ),
    );

    add(
      AwsCloudwatchLogDeliverySource(
        'cloudwatch_log_delivery_source',
        logType: .literal(leftover),
        name: .literal(leftover),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsCloudwatchLogDestination(
        'cloudwatch_log_destination',
        name: .literal(leftover),
        roleArn: .literal(arn),
        targetArn: .literal(arn),
      ),
    );

    add(
      AwsCloudwatchLogDestinationPolicy(
        'cloudwatch_log_destination_policy',
        accessPolicy: .literal(policy),
        destinationName: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogIndexPolicy(
        'cloudwatch_log_index_policy',
        logGroupName: .literal(leftover),
        policyDocument: .literal(policy),
      ),
    );

    add(
      AwsCloudwatchLogMetricFilter(
        'cloudwatch_log_metric_filter',
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
        'cloudwatch_log_resource_policy',
        policyDocument: .literal(policy),
        scope: .policyName(.literal(leftover)),
      ),
    );

    add(
      AwsCloudwatchLogS3TableIntegrationSource(
        'cloudwatch_log_s3_table_integration_source',
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
        'cloudwatch_log_storage_tier_policy',
        storageTier: .standard,
      ),
    );

    add(
      AwsCloudwatchLogStream(
        'cloudwatch_log_stream',
        logGroupName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogSubscriptionFilter(
        'cloudwatch_log_subscription_filter',
        destinationArn: .literal(arn),
        filterPattern: .literal(leftover),
        logGroupName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogTransformer(
        'cloudwatch_log_transformer',
        logGroupArn: .literal(arn),
        transformerConfig: [
          CloudwatchLogTransformerConfig(
            addKeys: [
              .new(
                entry: [
                  .new(key: .literal(leftover), value: .literal(leftover)),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsCloudwatchMetricAlarm(
        'cloudwatch_metric_alarm',
        alarmName: .literal(leftover),
        signal: .metricName(.literal(leftover)),
      ),
    );

    add(
      AwsCloudwatchMetricStream(
        'cloudwatch_metric_stream',
        firehoseArn: .literal(arn),
        outputFormat: .json,
        roleArn: .literal(arn),
      ),
    );

    add(AwsCloudwatchOtelEnrichment('cloudwatch_otel_enrichment'));

    add(
      AwsCloudwatchQueryDefinition(
        'cloudwatch_query_definition',
        name: .literal(leftover),
        queryString: .literal(leftover),
      ),
    );

    add(
      AwsCodeartifactDomain('codeartifact_domain', domain: .literal(leftover)),
    );

    add(
      AwsCodeartifactDomainPermissionsPolicy(
        'codeartifact_domain_permissions_policy',
        domain: .literal(leftover),
      ),
    );

    add(
      AwsCodeartifactRepository(
        'codeartifact_repository',
        domain: .literal(leftover),
        repository: .literal(leftover),
      ),
    );

    add(
      AwsCodeartifactRepositoryPermissionsPolicy(
        'codeartifact_repository_permissions_policy',
        domain: .literal(leftover),
        policyDocument: .literal(policy),
        repository: .literal(leftover),
      ),
    );

    add(
      AwsCodebuildFleet(
        'codebuild_fleet',
        baseCapacity: .literal(200),
        computeType: .buildGeneral1Small,
        environmentType: .windowsContainer,
        name: .literal(leftover),
      ),
    );

    add(
      AwsCodebuildProject(
        'codebuild_project',
        name: .literal(leftover),
        serviceRole: .literal(arn),
        artifacts: CodebuildProjectArtifacts(type: .codepipeline),
        environment: CodebuildProjectEnvironment(
          computeType: .buildGeneral1Small,
          image: .literal(leftover),
          type: .windowsContainer,
        ),
        source: CodebuildProjectSource(type: .codecommit),
      ),
    );

    add(
      AwsCodebuildReportGroup(
        'codebuild_report_group',
        name: .literal(leftover),
        type: .test,
        exportConfig: CodebuildReportGroupExportConfig(type: .s3),
      ),
    );

    add(
      AwsCodebuildResourcePolicy(
        'codebuild_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsCodebuildSourceCredential(
        'codebuild_source_credential',
        authType: .oauth,
        serverType: .github,
        token: leftoverSecret,
      ),
    );

    add(
      AwsCodebuildWebhook('codebuild_webhook', projectName: .literal(leftover)),
    );

    add(
      AwsCodecatalystDevEnvironment(
        'codecatalyst_dev_environment',
        instanceType: .devStandard1Small,
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
        'codecatalyst_project',
        displayName: .literal(leftover),
        spaceName: .literal(leftover),
      ),
    );

    add(
      AwsCodecatalystSourceRepository(
        'codecatalyst_source_repository',
        name: .literal(leftover),
        projectName: .literal(leftover),
        spaceName: .literal(leftover),
      ),
    );

    add(
      AwsCodecommitApprovalRuleTemplate(
        'codecommit_approval_rule_template',
        content: .literal(policy),
        name: .literal(leftover),
      ),
    );

    add(
      AwsCodecommitApprovalRuleTemplateAssociation(
        'codecommit_approval_rule_template_association',
        approvalRuleTemplateName: .literal(leftover),
        repositoryName: .literal(leftover),
      ),
    );

    add(
      AwsCodecommitRepository(
        'codecommit_repository',
        repositoryName: .literal(leftover),
      ),
    );

    add(
      AwsCodecommitTrigger(
        'codecommit_trigger',
        repositoryName: .literal(leftover),
        trigger: [
          CodecommitTrigger(
            destinationArn: .literal(arn),
            events: [.all],
            name: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsCodeconnectionsConnection(
        'codeconnections_connection',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCodeconnectionsHost(
        'codeconnections_host',
        name: .literal(leftover),
        providerEndpoint: .literal(leftover),
        providerType: .bitbucket,
      ),
    );

    add(AwsCodedeployApp('codedeploy_app', name: .literal(leftover)));

    add(
      AwsCodedeployDeploymentConfig(
        'codedeploy_deployment_config',
        deploymentConfigName: .literal(leftover),
      ),
    );

    add(
      AwsCodedeployDeploymentGroup(
        'codedeploy_deployment_group',
        appName: .literal(leftover),
        deploymentGroupName: .literal(leftover),
        serviceRoleArn: .literal(arn),
      ),
    );

    add(
      AwsCodeguruprofilerProfilingGroup(
        'codeguruprofiler_profiling_group',
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
        'codegurureviewer_repository_association',
        repository: CodegurureviewerRepositoryAssociationRepository(
          bitbucket: .new(
            connectionArn: .literal(arn),
            name: .literal(leftover),
            owner: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsCodepipeline(
        'codepipeline',
        name: .literal(leftover),
        roleArn: .literal(arn),
        artifactStore: [
          CodepipelineArtifactStore(location: .literal(leftover), type: .s3),
        ],
        stage: [
          CodepipelineStage(
            name: .literal(leftover),
            action: [
              .new(
                category: .source,
                name: .literal(leftover),
                owner: .aws,
                provider: .literal(leftover),
                version: .literal(leftover),
              ),
            ],
          ),
          CodepipelineStage(
            name: .literal('leftover1'),
            action: [
              .new(
                category: .source,
                name: .literal(leftover),
                owner: .aws,
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
        'codepipeline_custom_action_type',
        category: .source,
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
        'codepipeline_webhook',
        authentication: .githubHmac,
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
        'codestarconnections_connection',
        name: .literal(leftover),
      ),
    );

    add(
      AwsCodestarconnectionsHost(
        'codestarconnections_host',
        name: .literal(leftover),
        providerEndpoint: .literal(leftover),
        providerType: .bitbucket,
      ),
    );

    add(
      AwsCodestarnotificationsNotificationRule(
        'codestarnotifications_notification_rule',
        detailType: .basic,
        eventTypeIds: .literal([leftover]),
        name: .literal(leftover),
        resource: .literal(arn),
      ),
    );

    add(
      AwsCognitoIdentityPool(
        'cognito_identity_pool',
        identityPoolName: .literal(leftover),
      ),
    );

    add(
      AwsCognitoIdentityPoolProviderPrincipalTag(
        'cognito_identity_pool_provider_principal_tag',
        identityPoolId: .literal(
          'us-east-1:12345678-1234-1234-1234-123456789012',
        ),
        identityProviderName: .literal(leftover),
      ),
    );

    add(
      AwsCognitoIdentityPoolRolesAttachment(
        'cognito_identity_pool_roles_attachment',
        identityPoolId: .literal(leftover),
        roles: .literal({'k': leftover}),
      ),
    );

    add(
      AwsCognitoIdentityProvider(
        'cognito_identity_provider',
        providerDetails: .literal({'k': leftover}),
        providerName: .literal(leftover),
        providerType: .saml,
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoLogDeliveryConfiguration(
        'cognito_log_delivery_configuration',
        userPoolId: .literal(leftover),
        logConfigurations: [
          CognitoLogDeliveryConfigurationLogConfigurations(
            eventSource: .usernotification,
            logLevel: .error,
          ),
        ],
      ),
    );

    add(
      AwsCognitoManagedLoginBranding(
        'cognito_managed_login_branding',
        clientId: .literal(leftover),
        style: .settings(.literal(policy)),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoManagedUserPoolClient(
        'cognito_managed_user_pool_client',
        name: .namePrefix(.literal(leftover)),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoResourceServer(
        'cognito_resource_server',
        identifier: .literal(leftover),
        name: .literal(leftover),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoRiskConfiguration(
        'cognito_risk_configuration',
        userPoolId: .literal('us-east-1_leftover'),
        accountTakeoverRiskConfiguration:
            CognitoRiskConfigurationAccountTakeoverRiskConfiguration(
              actions: .new(
                highAction: .new(eventAction: .block, notify: .literal(true)),
              ),
            ),
        compromisedCredentialsRiskConfiguration:
            CognitoRiskConfigurationCompromisedCredentialsRiskConfiguration(
              actions: .new(eventAction: .block),
            ),
      ),
    );

    add(
      AwsCognitoUser(
        'cognito_user',
        userPoolId: .literal(leftover),
        username: .literal(leftover),
      ),
    );

    add(
      AwsCognitoUserGroup(
        'cognito_user_group',
        name: .literal(leftover),
        userPoolId: .literal('us-east-1_leftover'),
      ),
    );

    add(
      AwsCognitoUserInGroup(
        'cognito_user_in_group',
        groupName: .literal(leftover),
        userPoolId: .literal('us-east-1_leftover'),
        username: .literal(leftover),
      ),
    );

    add(AwsCognitoUserPool('cognito_user_pool', name: .literal(leftover)));

    add(
      AwsCognitoUserPoolClient(
        'cognito_user_pool_client',
        name: .literal(leftover),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoUserPoolDomain(
        'cognito_user_pool_domain',
        domain: .literal(leftover),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      AwsCognitoUserPoolUiCustomization(
        'cognito_user_pool_ui_customization',
        userPoolId: .literal(leftover),
        css: .literal(leftover),
        imageFile: .literal(leftover),
      ),
    );

    add(
      AwsComprehendDocumentClassifier(
        'comprehend_document_classifier',
        dataAccessRoleArn: .literal(arn),
        languageCode: .en,
        name: .literal(leftover),
        inputDataConfig: ComprehendDocumentClassifierInputDataConfig(
          source: .augmentedManifests([
            .new(
              attributeNames: .literal([leftover]),
              s3Uri: .literal('https://example.com'),
            ),
          ]),
        ),
      ),
    );

    add(
      AwsComprehendEntityRecognizer(
        'comprehend_entity_recognizer',
        dataAccessRoleArn: .literal(arn),
        languageCode: .en,
        name: .literal(leftover),
        inputDataConfig: ComprehendEntityRecognizerInputDataConfig(
          labels: .annotations(.new(s3Uri: .literal('https://example.com'))),
          source: .augmentedManifests([
            .new(
              attributeNames: .literal([leftover]),
              s3Uri: .literal('https://example.com'),
            ),
          ]),
          entityTypes: [.new(type: .literal(leftover))],
        ),
      ),
    );

    add(
      AwsComputeoptimizerEnrollmentStatus(
        'computeoptimizer_enrollment_status',
        status: .active,
      ),
    );

    add(
      AwsComputeoptimizerRecommendationPreferences(
        'computeoptimizer_recommendation_preferences',
        resourceType: .autoscalinggroup,
        enhancedInfrastructureMetrics: .active,
        scope: [
          ComputeoptimizerRecommendationPreferencesScope(
            name: .organization,
            value: .literal(leftover),
          ),
        ],
        externalMetricsPreference: [
          ComputeoptimizerRecommendationPreferencesExternalMetricsPreference(
            source: .datadog,
          ),
        ],
      ),
    );

    add(
      AwsConfigAggregateAuthorization(
        'config_aggregate_authorization',
        accountId: .literal('123456789012'),
        region: .authorizedAwsRegion(.literal('us-east-1')),
      ),
    );

    add(
      AwsConfigConfigRule(
        'config_config_rule',
        name: .literal(leftover),
        source: ConfigConfigRuleSource(owner: .customLambda),
      ),
    );

    add(
      AwsConfigConfigurationAggregator(
        'config_configuration_aggregator',
        name: .literal(leftover),
      ),
    );

    add(
      AwsConfigConfigurationRecorder(
        'config_configuration_recorder',
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsConfigConfigurationRecorderStatus(
        'config_configuration_recorder_status',
        isEnabled: .literal(true),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConfigConformancePack(
        'config_conformance_pack',
        name: .literal(leftover),
        templateS3Uri: .literal('s3://leftover-bucket/leftover'),
      ),
    );

    add(
      AwsConfigDeliveryChannel(
        'config_delivery_channel',
        s3BucketName: .literal(leftover),
      ),
    );

    add(
      AwsConfigOrganizationConformancePack(
        'config_organization_conformance_pack',
        name: .literal(leftover),
      ),
    );

    add(
      AwsConfigOrganizationCustomPolicyRule(
        'config_organization_custom_policy_rule',
        name: .literal(leftover),
        policyRuntime: .literal(leftover),
        policyText: .literal(leftover),
        triggerTypes: [.configurationitemchangenotification],
      ),
    );

    add(
      AwsConfigOrganizationCustomRule(
        'config_organization_custom_rule',
        lambdaFunctionArn: .literal(arn),
        name: .literal(leftover),
        triggerTypes: [.configurationitemchangenotification],
      ),
    );

    add(
      AwsConfigOrganizationManagedRule(
        'config_organization_managed_rule',
        name: .literal(leftover),
        ruleIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsConfigRemediationConfiguration(
        'config_remediation_configuration',
        configRuleName: .literal(leftover),
        targetId: .literal(leftover),
        targetType: .ssmDocument,
      ),
    );

    add(
      AwsConfigRetentionConfiguration(
        'config_retention_configuration',
        retentionPeriodInDays: .literal(200),
      ),
    );

    add(
      AwsConnectBotAssociation(
        'connect_bot_association',
        instanceId: .literal('i-0123456789abcdef0'),
        lexBot: ConnectBotAssociationLexBot(name: .literal(leftover)),
      ),
    );

    add(
      AwsConnectContactFlow(
        'connect_contact_flow',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConnectContactFlowModule(
        'connect_contact_flow_module',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConnectHoursOfOperation(
        'connect_hours_of_operation',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
        timeZone: .literal(leftover),
        config: [
          ConnectHoursOfOperationConfig(
            day: .sunday,
            endTime: .new(hours: .literal(200), minutes: .literal(200)),
            startTime: .new(hours: .literal(200), minutes: .literal(200)),
          ),
        ],
      ),
    );

    add(
      AwsConnectInstance(
        'connect_instance',
        identityManagementType: .saml,
        inboundCallsEnabled: .literal(true),
        outboundCallsEnabled: .literal(true),
        instanceAlias: .literal(leftover),
      ),
    );

    add(
      AwsConnectInstanceStorageConfig(
        'connect_instance_storage_config',
        instanceId: .literal('i-0123456789abcdef0'),
        resourceType: .chatTranscripts,
        storageConfig: ConnectInstanceStorageConfig(storageType: .s3),
      ),
    );

    add(
      AwsConnectLambdaFunctionAssociation(
        'connect_lambda_function_association',
        functionArn: .literal(arn),
        instanceId: .literal('i-0123456789abcdef0'),
      ),
    );

    add(
      AwsConnectPhoneNumber(
        'connect_phone_number',
        countryCode: .af,
        targetArn: .literal(arn),
        type: .tollFree,
      ),
    );

    add(
      AwsConnectPhoneNumberContactFlowAssociation(
        'connect_phone_number_contact_flow_association',
        contactFlowId: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        phoneNumberId: .literal(leftover),
      ),
    );

    add(
      AwsConnectQueue(
        'connect_queue',
        hoursOfOperationId: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConnectQuickConnect(
        'connect_quick_connect',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
        quickConnectConfig: ConnectQuickConnectConfig(quickConnectType: .user),
      ),
    );

    add(
      AwsConnectRoutingProfile(
        'connect_routing_profile',
        defaultOutboundQueueId: .literal(leftover),
        description: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
        mediaConcurrencies: [
          ConnectRoutingProfileMediaConcurrencies(
            channel: .voice,
            concurrency: .literal(1),
          ),
        ],
      ),
    );

    add(
      AwsConnectSecurityProfile(
        'connect_security_profile',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConnectUser(
        'connect_user',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
        routingProfileId: .literal(leftover),
        securityProfileIds: .literal([leftover]),
        phoneConfig: ConnectUserPhoneConfig(phoneType: .softPhone),
      ),
    );

    add(
      AwsConnectUserHierarchyGroup(
        'connect_user_hierarchy_group',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsConnectUserHierarchyStructure(
        'connect_user_hierarchy_structure',
        instanceId: .literal('i-0123456789abcdef0'),
        hierarchyStructure: ConnectUserHierarchyStructure(
          levelFive: .new(name: .literal(leftover)),
        ),
      ),
    );

    add(
      AwsConnectVocabulary(
        'connect_vocabulary',
        content: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        languageCode: .arAe,
        name: .literal(leftover),
      ),
    );

    add(
      AwsControltowerBaseline(
        'controltower_baseline',
        baselineIdentifier: .literal(leftover),
        baselineVersion: .literal(leftover),
        targetIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsControltowerControl(
        'controltower_control',
        controlIdentifier: .literal(arn),
        targetIdentifier: .literal(arn),
      ),
    );

    add(
      AwsControltowerLandingZone(
        'controltower_landing_zone',
        manifestJson: .literal(policy),
        version: .literal(leftover),
      ),
    );

    add(
      AwsCostoptimizationhubEnrollmentStatus(
        'costoptimizationhub_enrollment_status',
      ),
    );

    add(AwsCostoptimizationhubPreferences('costoptimizationhub_preferences'));

    add(
      AwsCurReportDefinition(
        'cur_report_definition',
        additionalSchemaElements: [.resources],
        compression: .zip,
        format: .textorcsv,
        reportName: .literal(leftover),
        s3Bucket: .literal(leftover),
        s3Prefix: .literal(leftover),
        s3Region: .literal('us-east-1'),
        timeUnit: .hourly,
      ),
    );

    add(AwsCustomerGateway('customer_gateway', type: .ipsec1));

    add(
      AwsCustomerprofilesDomain(
        'customerprofiles_domain',
        defaultExpirationDays: .literal(200),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsCustomerprofilesProfile(
        'customerprofiles_profile',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsDataexchangeDataSet(
        'dataexchange_data_set',
        assetType: .s3Snapshot,
        description: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDataexchangeEventAction(
        'dataexchange_event_action',
        action: [
          DataexchangeEventAction(
            exportRevisionToS3: [
              .new(revisionDestination: [.new(bucket: .literal(leftover))]),
            ],
          ),
        ],
        event: [
          DataexchangeEventActionEvent(
            revisionPublished: [.new(dataSetId: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      AwsDataexchangeRevision(
        'dataexchange_revision',
        dataSetId: .literal(leftover),
      ),
    );

    add(
      AwsDataexchangeRevisionAssets(
        'dataexchange_revision_assets',
        dataSetId: .literal(leftover),
      ),
    );

    add(
      AwsDatapipelinePipeline(
        'datapipeline_pipeline',
        name: .literal(leftover),
      ),
    );

    add(
      AwsDatapipelinePipelineDefinition(
        'datapipeline_pipeline_definition',
        pipelineId: .literal(leftover),
        pipelineObject: [
          DatapipelinePipelineDefinitionPipelineObject(
            id: .literal(leftover),
            name: .literal(leftover),
          ),
        ],
      ),
    );

    add(AwsDatasyncAgent('datasync_agent'));

    add(
      AwsDatasyncLocationAzureBlob(
        'datasync_location_azure_blob',
        agentArns: .literal([arn]),
        authenticationType: .sas,
        containerUrl: .literal('https://example.com'),
      ),
    );

    add(
      AwsDatasyncLocationEfs(
        'datasync_location_efs',
        efsFileSystemArn: .literal(arn),
        ec2Config: DatasyncLocationEfsEc2Config(
          securityGroupArns: .literal([arn]),
          subnetArn: .literal(arn),
        ),
      ),
    );

    add(
      AwsDatasyncLocationFsxLustreFileSystem(
        'datasync_location_fsx_lustre_file_system',
        fsxFilesystemArn: .literal(arn),
        securityGroupArns: .literal([arn]),
      ),
    );

    add(
      AwsDatasyncLocationFsxOntapFileSystem(
        'datasync_location_fsx_ontap_file_system',
        securityGroupArns: .literal([arn]),
        storageVirtualMachineArn: .literal(arn),
        protocol: .nfs(.new(mountOptions: .new(version: .nfs3))),
      ),
    );

    add(
      AwsDatasyncLocationFsxOpenzfsFileSystem(
        'datasync_location_fsx_openzfs_file_system',
        fsxFilesystemArn: .literal(arn),
        securityGroupArns: .literal([arn]),
        protocol: DatasyncLocationFsxOpenzfsFileSystemProtocol(
          nfs: .new(mountOptions: .new(version: .automatic)),
        ),
      ),
    );

    add(
      AwsDatasyncLocationFsxWindowsFileSystem(
        'datasync_location_fsx_windows_file_system',
        fsxFilesystemArn: .literal(arn),
        password: leftoverSecret,
        securityGroupArns: .literal([arn]),
        user: .literal(leftover),
      ),
    );

    add(
      AwsDatasyncLocationHdfs(
        'datasync_location_hdfs',
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
        'datasync_location_nfs',
        serverHostname: .literal(leftover),
        subdirectory: .literal(leftover),
        onPremConfig: DatasyncLocationNfsOnPremConfig(
          agentArns: .literal([arn]),
        ),
      ),
    );

    add(
      AwsDatasyncLocationObjectStorage(
        'datasync_location_object_storage',
        bucketName: .literal(leftover),
        serverHostname: .literal(leftover),
      ),
    );

    add(
      AwsDatasyncLocationS3(
        'datasync_location_s3',
        s3BucketArn: .literal(arn),
        subdirectory: .literal(leftover),
        s3Config: DatasyncLocationS3Config(bucketAccessRoleArn: .literal(arn)),
      ),
    );

    add(
      AwsDatasyncLocationSmb(
        'datasync_location_smb',
        agentArns: .literal([arn]),
        password: leftoverSecret,
        serverHostname: .literal(leftover),
        subdirectory: .literal(leftover),
        user: .literal(leftover),
      ),
    );

    add(
      AwsDatasyncTask(
        'datasync_task',
        destinationLocationArn: .literal(arn),
        sourceLocationArn: .literal(arn),
      ),
    );

    add(
      AwsDatazoneAssetType(
        'datazone_asset_type',
        domainIdentifier: .literal(leftover),
        name: .literal(leftover),
        owningProjectIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneDomain(
        'datazone_domain',
        domainExecutionRole: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneEnvironment(
        'datazone_environment',
        domainIdentifier: .literal(leftover),
        name: .literal(leftover),
        profileIdentifier: .literal(leftover),
        projectIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneEnvironmentBlueprintConfiguration(
        'datazone_environment_blueprint_configuration',
        domainId: .literal(leftover),
        enabledRegions: .literal([leftover]),
        environmentBlueprintId: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneEnvironmentProfile(
        'datazone_environment_profile',
        awsAccountRegion: .literal('us-east-1'),
        domainIdentifier: .literal(leftover),
        environmentBlueprintIdentifier: .literal(leftover),
        name: .literal(leftover),
        projectIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneFormType(
        'datazone_form_type',
        domainIdentifier: .literal('dzd-xRc'),
        name: .literal(leftover),
        owningProjectIdentifier: .literal(leftover),
        model: [DatazoneFormTypeModel(smithy: .literal(leftover))],
      ),
    );

    add(
      AwsDatazoneGlossary(
        'datazone_glossary',
        domainIdentifier: .literal(leftover),
        name: .literal(leftover),
        owningProjectIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneGlossaryTerm(
        'datazone_glossary_term',
        glossaryIdentifier: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDatazonePolicyGrant(
        'datazone_policy_grant',
        domainIdentifier: .literal(leftover),
        entityIdentifier: .literal(leftover),
        entityType: .domainUnit,
        policyType: .createDomainUnit,
        detail: [
          DatazonePolicyGrantDetail(
            addToProjectMemberPool: [
              .new(includeChildDomainUnits: .literal(true)),
            ],
          ),
        ],
        principal: [
          DatazonePolicyGrantPrincipal(
            domainUnit: [.new(domainUnitDesignation: .owner)],
          ),
        ],
      ),
    );

    add(
      AwsDatazoneProject(
        'datazone_project',
        domainIdentifier: .literal('dzd-xRc'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDatazoneUserProfile(
        'datazone_user_profile',
        domainIdentifier: .literal(leftover),
        userIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDaxCluster(
        'dax_cluster',
        clusterName: .literal(leftover),
        iamRoleArn: .literal(arn),
        nodeType: .literal(leftover),
        replicationFactor: .literal(200),
      ),
    );

    add(AwsDaxParameterGroup('dax_parameter_group', name: .literal(leftover)));

    add(
      AwsDaxSubnetGroup(
        'dax_subnet_group',
        name: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsDbClusterSnapshot(
        'db_cluster_snapshot',
        dbClusterIdentifier: .literal(leftover),
        dbClusterSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDbEventSubscription('db_event_subscription', snsTopic: .literal(arn)),
    );

    add(AwsDbInstance('db_instance', instanceClass: .literal(leftover)));

    add(
      AwsDbInstanceAutomatedBackupsReplication(
        'db_instance_automated_backups_replication',
        sourceDbInstanceArn: .literal(arn),
      ),
    );

    add(
      AwsDbInstanceRoleAssociation(
        'db_instance_role_association',
        dbInstanceIdentifier: .literal(leftover),
        featureName: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsDbOptionGroup(
        'db_option_group',
        engineName: .literal(leftover),
        majorEngineVersion: .literal(leftover),
      ),
    );

    add(AwsDbParameterGroup('db_parameter_group', family: .literal(leftover)));

    add(
      AwsDbProxy(
        'db_proxy',
        engineFamily: .mysql,
        name: .literal(leftover),
        roleArn: .literal(arn),
        vpcSubnetIds: .literal([leftover]),
      ),
    );

    add(
      AwsDbProxyDefaultTargetGroup(
        'db_proxy_default_target_group',
        dbProxyName: .literal(leftover),
      ),
    );

    add(
      AwsDbProxyEndpoint(
        'db_proxy_endpoint',
        dbProxyEndpointName: .literal(leftover),
        dbProxyName: .literal(leftover),
        vpcSubnetIds: .literal([leftover]),
      ),
    );

    add(
      AwsDbProxyTarget(
        'db_proxy_target',
        database: .dbClusterIdentifier(.literal(leftover)),
        dbProxyName: .literal(leftover),
        targetGroupName: .literal(leftover),
      ),
    );

    add(
      AwsDbSnapshot(
        'db_snapshot',
        dbInstanceIdentifier: .literal(leftover),
        dbSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDbSnapshotCopy(
        'db_snapshot_copy',
        sourceDbSnapshotIdentifier: .literal(leftover),
        targetDbSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDbSubnetGroup(
        'db_subnet_group',
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsDefaultNetworkAcl(
        'default_network_acl',
        defaultNetworkAclId: .literal(leftover),
      ),
    );

    add(
      AwsDefaultRouteTable(
        'default_route_table',
        defaultRouteTableId: .literal(leftover),
      ),
    );

    add(AwsDefaultSecurityGroup('default_security_group'));

    add(
      AwsDefaultSubnet(
        'default_subnet',
        availabilityZone: .literal('us-east-1a'),
      ),
    );

    add(AwsDefaultVpc('default_vpc'));

    add(AwsDefaultVpcDhcpOptions('default_vpc_dhcp_options'));

    add(AwsDetectiveGraph('detective_graph'));

    add(
      AwsDetectiveInvitationAccepter(
        'detective_invitation_accepter',
        graphArn: .literal(arn),
      ),
    );

    add(
      AwsDetectiveMember(
        'detective_member',
        accountId: .literal('123456789012'),
        emailAddress: .literal('leftover@example.com'),
        graphArn: .literal(arn),
      ),
    );

    add(
      AwsDetectiveOrganizationAdminAccount(
        'detective_organization_admin_account',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      AwsDetectiveOrganizationConfiguration(
        'detective_organization_configuration',
        autoEnable: .literal(true),
        graphArn: .literal(arn),
      ),
    );

    add(
      AwsDevicefarmDevicePool(
        'devicefarm_device_pool',
        name: .literal(leftover),
        projectArn: .literal(arn),
        rule: [DevicefarmDevicePoolRule(attribute: .arn)],
      ),
    );

    add(
      AwsDevicefarmInstanceProfile(
        'devicefarm_instance_profile',
        name: .literal(leftover),
      ),
    );

    add(
      AwsDevicefarmNetworkProfile(
        'devicefarm_network_profile',
        name: .literal(leftover),
        projectArn: .literal(arn),
      ),
    );

    add(AwsDevicefarmProject('devicefarm_project', name: .literal(leftover)));

    add(
      AwsDevicefarmTestGridProject(
        'devicefarm_test_grid_project',
        name: .literal(leftover),
      ),
    );

    add(
      AwsDevicefarmUpload(
        'devicefarm_upload',
        name: .literal(leftover),
        projectArn: .literal(arn),
        type: .androidApp,
      ),
    );

    add(
      AwsDevopsguruEventSourcesConfig(
        'devopsguru_event_sources_config',
        eventSources: [
          DevopsguruEventSourcesConfigEventSources(
            amazonCodeGuruProfiler: [.new(status: .enabled)],
          ),
        ],
      ),
    );

    add(
      AwsDevopsguruNotificationChannel(
        'devopsguru_notification_channel',
        sns: [DevopsguruNotificationChannelSns(topicArn: .literal(arn))],
      ),
    );

    add(
      AwsDevopsguruResourceCollection(
        'devopsguru_resource_collection',
        type: .awsCloudFormation,
      ),
    );

    add(
      AwsDevopsguruServiceIntegration(
        'devopsguru_service_integration',
        kmsServerSideEncryption: [
          DevopsguruServiceIntegrationKmsServerSideEncryption(
            kmsKeyId: .literal(leftover),
          ),
        ],
        logsAnomalyDetection: [
          DevopsguruServiceIntegrationLogsAnomalyDetection(
            optInStatus: .enabled,
          ),
        ],
        opsCenter: [
          DevopsguruServiceIntegrationOpsCenter(optInStatus: .enabled),
        ],
      ),
    );

    add(
      AwsDirectoryServiceConditionalForwarder(
        'directory_service_conditional_forwarder',
        directoryId: .literal(leftover),
        dnsIps: .literal([leftover]),
        remoteDomainName: .literal('example.com'),
      ),
    );

    add(
      AwsDirectoryServiceDirectory(
        'directory_service_directory',
        name: .literal('example.com'),
        password: leftoverSecret,
      ),
    );

    add(
      AwsDirectoryServiceLogSubscription(
        'directory_service_log_subscription',
        directoryId: .literal(leftover),
        logGroupName: .literal(leftover),
      ),
    );

    add(
      AwsDirectoryServiceRadiusSettings(
        'directory_service_radius_settings',
        authenticationProtocol: .pap,
        directoryId: .literal(leftover),
        displayLabel: .literal(leftover),
        radiusPort: .literal(200),
        radiusRetries: .literal(0),
        radiusServers: .literal([leftover]),
        radiusTimeout: .literal(1),
        sharedSecret: leftoverSecret,
      ),
    );

    add(
      AwsDirectoryServiceRegion(
        'directory_service_region',
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
        'directory_service_shared_directory',
        directoryId: .literal(leftover),
        target: DirectoryServiceSharedDirectoryTarget(id: .literal(leftover)),
      ),
    );

    add(
      AwsDirectoryServiceSharedDirectoryAccepter(
        'directory_service_shared_directory_accepter',
        sharedDirectoryId: .literal(leftover),
      ),
    );

    add(
      AwsDirectoryServiceTrust(
        'directory_service_trust',
        directoryId: .literal('d-1234567890'),
        remoteDomainName: .literal('example.com'),
        trustDirection: .twoWay,
        trustPassword: .literal(leftover),
      ),
    );

    add(
      AwsDlmLifecyclePolicy(
        'dlm_lifecycle_policy',
        description: .literal(leftover),
        executionRoleArn: .literal(arn),
        policyDetails: DlmLifecyclePolicyDetails(copyTags: .literal(true)),
        defaultPolicy: .volume,
      ),
    );

    add(
      AwsDmsCertificate(
        'dms_certificate',
        certificateId: .literal(leftover),
        content: .certificatePem(leftoverSecret),
      ),
    );

    add(
      AwsDmsDataProvider(
        'dms_data_provider',
        engine: .aurora,
        settings: [
          DmsDataProviderSettings(
            docDbSettings: [.new(certificateArn: .literal(arn))],
          ),
        ],
      ),
    );

    add(
      AwsDmsEndpoint(
        'dms_endpoint',
        endpointId: .literal(leftover),
        endpointType: .source,
        engineName: .aurora,
      ),
    );

    add(
      AwsDmsEventSubscription(
        'dms_event_subscription',
        eventCategories: .literal([leftover]),
        name: .literal(leftover),
        snsTopicArn: .literal(arn),
        sourceType: .replicationInstance,
      ),
    );

    add(AwsDmsInstanceProfile('dms_instance_profile'));

    add(
      AwsDmsMigrationProject(
        'dms_migration_project',
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
        'dms_replication_config',
        replicationConfigIdentifier: .literal(leftover),
        replicationType: .fullLoad,
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
        'dms_replication_instance',
        replicationInstanceClass: .literal(leftover),
        replicationInstanceId: .literal(leftover),
      ),
    );

    add(
      AwsDmsReplicationSubnetGroup(
        'dms_replication_subnet_group',
        replicationSubnetGroupDescription: .literal(leftover),
        replicationSubnetGroupId: .literal(leftover),
        subnetIds: .literal([.literal(leftover), .literal('leftover1')]),
      ),
    );

    add(
      AwsDmsReplicationTask(
        'dms_replication_task',
        migrationType: .fullLoad,
        replicationInstanceArn: .literal(arn),
        replicationTaskId: .literal(leftover),
        sourceEndpointArn: .literal(arn),
        tableMappings: .literal(policy),
        targetEndpointArn: .literal(arn),
      ),
    );

    add(
      AwsDmsS3Endpoint(
        'dms_s3_endpoint',
        bucketName: .literal(leftover),
        endpointId: .literal(leftover),
        endpointType: .source,
        serviceAccessRoleArn: .literal(arn),
      ),
    );

    add(AwsDocdbCluster('docdb_cluster'));

    add(
      AwsDocdbClusterInstance(
        'docdb_cluster_instance',
        clusterIdentifier: .literal(leftover),
        instanceClass: .literal(leftover),
      ),
    );

    add(
      AwsDocdbClusterParameterGroup(
        'docdb_cluster_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsDocdbClusterSnapshot(
        'docdb_cluster_snapshot',
        dbClusterIdentifier: .literal(leftover),
        dbClusterSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDocdbEventSubscription(
        'docdb_event_subscription',
        snsTopicArn: .literal(arn),
      ),
    );

    add(
      AwsDocdbGlobalCluster(
        'docdb_global_cluster',
        source: .engine(.docdb),
        globalClusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsDocdbSubnetGroup(
        'docdb_subnet_group',
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsDocdbelasticCluster(
        'docdbelastic_cluster',
        adminUserName: .literal(leftover),
        adminUserPassword: leftoverSecret,
        authType: .plainText,
        name: .literal(leftover),
        shardCapacity: .literal(200),
        shardCount: .literal(1),
      ),
    );

    add(
      AwsDrsReplicationConfigurationTemplate(
        'drs_replication_configuration_template',
        associateDefaultSecurityGroup: .literal(true),
        bandwidthThrottling: .literal(200),
        createPublicIp: .literal(true),
        dataPlaneRouting: .privateIp,
        defaultLargeStagingDiskType: .gp2,
        ebsEncryption: .defaultCase,
        replicationServerInstanceType: .literal(leftover),
        replicationServersSecurityGroupsIds: .literal([leftover]),
        stagingAreaSubnetId: .literal(leftover),
        stagingAreaTags: .literal({'k': leftover}),
        useDedicatedReplicationServer: .literal(true),
      ),
    );

    add(AwsDsqlCluster('dsql_cluster'));

    add(
      AwsDsqlClusterPeering(
        'dsql_cluster_peering',
        clusters: .literal([leftover]),
        identifier: .literal(leftover),
        witnessRegion: .literal('us-east-1'),
      ),
    );

    add(
      AwsDsqlClusterPolicy(
        'dsql_cluster_policy',
        identifier: .literal('abcdefghijklmnopqrstuvwxyz'),
        policy: .literal(policy),
      ),
    );

    add(
      AwsDxBgpPeer(
        'dx_bgp_peer',
        addressFamily: .ipv4,
        virtualInterfaceId: .literal(leftover),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDxConnection(
        'dx_connection',
        bandwidth: .literal('1Gbps'),
        location: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDxConnectionAssociation(
        'dx_connection_association',
        connectionId: .literal(leftover),
        lagId: .literal(leftover),
      ),
    );

    add(
      AwsDxConnectionConfirmation(
        'dx_connection_confirmation',
        connectionId: .literal(leftover),
      ),
    );

    add(
      AwsDxGateway(
        'dx_gateway',
        amazonSideAsn: .literal('64512'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDxGatewayAssociation(
        'dx_gateway_association',
        dxGatewayId: .literal(leftover),
        associatedGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsDxGatewayAssociationProposal(
        'dx_gateway_association_proposal',
        associatedGatewayId: .literal(leftover),
        dxGatewayId: .literal(leftover),
        dxGatewayOwnerAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsDxHostedConnection(
        'dx_hosted_connection',
        bandwidth: .literal('1Gbps'),
        connectionId: .literal(leftover),
        name: .literal(leftover),
        ownerAccountId: .literal('123456789012'),
        vlan: .literal(200),
      ),
    );

    add(
      AwsDxHostedPrivateVirtualInterface(
        'dx_hosted_private_virtual_interface',
        addressFamily: .ipv4,
        connectionId: .literal(leftover),
        name: .literal(leftover),
        ownerAccountId: .literal('123456789012'),
        vlan: .literal(200),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDxHostedPrivateVirtualInterfaceAccepter(
        'dx_hosted_private_virtual_interface_accepter',
        gatewayId: .dxGatewayId(.literal(leftover)),
        virtualInterfaceId: .literal(leftover),
      ),
    );

    add(
      AwsDxHostedPublicVirtualInterface(
        'dx_hosted_public_virtual_interface',
        addressFamily: .ipv4,
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
        'dx_hosted_public_virtual_interface_accepter',
        virtualInterfaceId: .literal(leftover),
      ),
    );

    add(
      AwsDxHostedTransitVirtualInterface(
        'dx_hosted_transit_virtual_interface',
        addressFamily: .ipv4,
        connectionId: .literal(leftover),
        name: .literal(leftover),
        ownerAccountId: .literal('123456789012'),
        vlan: .literal(200),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDxHostedTransitVirtualInterfaceAccepter(
        'dx_hosted_transit_virtual_interface_accepter',
        dxGatewayId: .literal(leftover),
        virtualInterfaceId: .literal(leftover),
      ),
    );

    add(
      AwsDxLag(
        'dx_lag',
        connectionsBandwidth: .literal('1Gbps'),
        location: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsDxMacsecKeyAssociation(
        'dx_macsec_key_association',
        connectionId: .literal(leftover),
        secretArn: .literal(
          'arn:aws:secretsmanager:us-east-1:123456789012:secret:leftover',
        ),
      ),
    );

    add(
      AwsDxPrivateVirtualInterface(
        'dx_private_virtual_interface',
        addressFamily: .ipv4,
        connectionId: .literal(leftover),
        gatewayId: .dxGatewayId(.literal(leftover)),
        name: .literal(leftover),
        vlan: .literal(200),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDxPublicVirtualInterface(
        'dx_public_virtual_interface',
        addressFamily: .ipv4,
        bgpAsn: .literal(200),
        connectionId: .literal(leftover),
        name: .literal(leftover),
        routeFilterPrefixes: .literal([leftover]),
        vlan: .literal(200),
      ),
    );

    add(
      AwsDxTransitVirtualInterface(
        'dx_transit_virtual_interface',
        addressFamily: .ipv4,
        connectionId: .literal(leftover),
        dxGatewayId: .literal(leftover),
        name: .literal(leftover),
        vlan: .literal(200),
        bgpAsn: .literal(200),
      ),
    );

    add(
      AwsDynamodbContributorInsights(
        'dynamodb_contributor_insights',
        tableName: .literal(leftover),
      ),
    );

    add(
      AwsDynamodbGlobalSecondaryIndex(
        'dynamodb_global_secondary_index',
        indexName: .literal(leftover),
        tableName: .literal(leftover),
        keySchema: [
          DynamodbGlobalSecondaryIndexKeySchema(
            attributeName: .literal(leftover),
            attributeType: .s,
            keyType: .hash,
          ),
        ],
      ),
    );

    add(
      AwsDynamodbGlobalTable(
        'dynamodb_global_table',
        name: .literal(leftover),
        replica: [DynamodbGlobalTableReplica(regionName: .literal(leftover))],
      ),
    );

    add(
      AwsDynamodbKinesisStreamingDestination(
        'dynamodb_kinesis_streaming_destination',
        streamArn: .literal(arn),
        tableName: .literal(leftover),
      ),
    );

    add(
      AwsDynamodbResourcePolicy(
        'dynamodb_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsDynamodbTableExport(
        'dynamodb_table_export',
        s3Bucket: .literal(leftover),
        tableArn: .literal(arn),
      ),
    );

    add(
      AwsDynamodbTableItem(
        'dynamodb_table_item',
        hashKey: .literal(leftover),
        item: .literal('{"pk": {"S": "leftover"}}'),
        tableName: .literal(leftover),
      ),
    );

    add(
      AwsDynamodbTableReplica(
        'dynamodb_table_replica',
        globalTableArn: .literal(arn),
      ),
    );

    add(
      AwsDynamodbTag(
        'dynamodb_tag',
        key: .literal(leftover),
        resourceArn: .literal(arn),
        value: .literal(leftover),
      ),
    );

    add(AwsEbsDefaultKmsKey('ebs_default_kms_key', keyArn: .literal(arn)));

    add(AwsEbsEncryptionByDefault('ebs_encryption_by_default'));

    add(
      AwsEbsFastSnapshotRestore(
        'ebs_fast_snapshot_restore',
        availabilityZone: .literal('us-east-1a'),
        snapshotId: .literal(leftover),
      ),
    );

    add(AwsEbsSnapshot('ebs_snapshot', volumeId: .literal(leftover)));

    add(
      AwsEbsSnapshotBlockPublicAccess(
        'ebs_snapshot_block_public_access',
        state: .blockAllSharing,
      ),
    );

    add(
      AwsEbsSnapshotCopy(
        'ebs_snapshot_copy',
        sourceRegion: .literal('us-east-1'),
        sourceSnapshotId: .literal(leftover),
      ),
    );

    add(
      AwsEbsSnapshotImport(
        'ebs_snapshot_import',
        diskContainer: EbsSnapshotImportDiskContainer(
          format: .vmdk,
          source: .url(.literal('https://example.com')),
        ),
      ),
    );

    add(
      AwsEbsVolume(
        'ebs_volume',
        availabilityZone: .literal('us-east-1a'),
        size: .literal(200),
        snapshotId: .literal(leftover),
      ),
    );

    add(
      AwsEbsVolumeCopy('ebs_volume_copy', sourceVolumeId: .literal(leftover)),
    );

    add(
      AwsEc2AllowedImagesSettings(
        'ec2_allowed_images_settings',
        state: .enabled,
      ),
    );

    add(
      AwsEc2AvailabilityZoneGroup(
        'ec2_availability_zone_group',
        groupName: .literal(leftover),
        optInStatus: .optedIn,
      ),
    );

    add(
      AwsEc2CapacityBlockReservation(
        'ec2_capacity_block_reservation',
        capacityBlockOfferingId: .literal(leftover),
        instancePlatform: .linuxUnix,
      ),
    );

    add(
      AwsEc2CapacityReservation(
        'ec2_capacity_reservation',
        availabilityZone: .literal('us-east-1a'),
        instanceCount: .literal(200),
        instancePlatform: .linuxUnix,
        instanceType: .literal(leftover),
      ),
    );

    add(
      AwsEc2CarrierGateway(
        'ec2_carrier_gateway',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2ClientVpnAuthorizationRule(
        'ec2_client_vpn_authorization_rule',
        audience: .accessGroupId(.literal(leftover)),
        clientVpnEndpointId: .literal(leftover),
        targetNetworkCidr: .literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsEc2ClientVpnEndpoint(
        'ec2_client_vpn_endpoint',
        serverCertificateArn: .literal(arn),
        authenticationOptions: [
          Ec2ClientVpnEndpointAuthenticationOptions(
            type: .certificateAuthentication,
          ),
        ],
        connectionLogOptions: Ec2ClientVpnEndpointConnectionLogOptions(
          enabled: .literal(true),
        ),
      ),
    );

    add(
      AwsEc2ClientVpnNetworkAssociation(
        'ec2_client_vpn_network_association',
        clientVpnEndpointId: .literal(leftover),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2ClientVpnRoute(
        'ec2_client_vpn_route',
        clientVpnEndpointId: .literal(leftover),
        destinationCidrBlock: .literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsEc2DefaultCreditSpecification(
        'ec2_default_credit_specification',
        cpuCredits: .standard,
        instanceFamily: .t2,
      ),
    );

    add(
      AwsEc2Fleet(
        'ec2_fleet',
        launchTemplateConfig: [
          Ec2FleetLaunchTemplateConfig(
            launchTemplateSpecification: .new(version: .literal(leftover)),
          ),
        ],
        targetCapacitySpecification: Ec2FleetTargetCapacitySpecification(
          defaultTargetCapacityType: .spot,
          totalTargetCapacity: .literal(200),
        ),
      ),
    );

    add(
      AwsEc2Host(
        'ec2_host',
        availabilityZone: .literal('us-east-1a'),
        instance: .instanceFamily(.literal(leftover)),
      ),
    );

    add(
      AwsEc2ImageBlockPublicAccess(
        'ec2_image_block_public_access',
        state: .blockNewSharing,
      ),
    );

    add(
      AwsEc2InstanceConnectEndpoint(
        'ec2_instance_connect_endpoint',
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2InstanceMetadataDefaults(
        'ec2_instance_metadata_defaults',
        httpEndpoint: .literal('disabled'),
        httpPutResponseHopLimit: .literal(1),
      ),
    );

    add(
      AwsEc2InstanceState(
        'ec2_instance_state',
        instanceId: .literal('i-0123456789abcdef0'),
        state: .running,
      ),
    );

    add(
      AwsEc2LocalGatewayRoute(
        'ec2_local_gateway_route',
        destinationCidrBlock: .literal('10.0.0.0/16'),
        localGatewayRouteTableId: .literal(leftover),
        localGatewayVirtualInterfaceGroupId: .literal(leftover),
      ),
    );

    add(
      AwsEc2LocalGatewayRouteTable(
        'ec2_local_gateway_route_table',
        localGatewayId: .literal(leftover),
        mode: .directVpcRouting,
      ),
    );

    add(
      AwsEc2LocalGatewayRouteTableVirtualInterfaceGroupAssociation(
        'ec2_local_gateway_route_table_virtual_interface_',
        localGatewayRouteTableId: .literal(leftover),
        localGatewayVirtualInterfaceGroupId: .literal(leftover),
      ),
    );

    add(
      AwsEc2LocalGatewayRouteTableVpcAssociation(
        'ec2_local_gateway_route_table_vpc_association',
        localGatewayRouteTableId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2ManagedPrefixList(
        'ec2_managed_prefix_list',
        addressFamily: .ipv4,
        maxEntries: .literal(200),
        name: .literal(leftover),
      ),
    );

    add(
      AwsEc2ManagedPrefixListEntry(
        'ec2_managed_prefix_list_entry',
        cidr: .literal('10.0.0.0/16'),
        prefixListId: .literal(leftover),
      ),
    );

    add(AwsEc2NetworkInsightsAccessScope('ec2_network_insights_access_scope'));

    add(
      AwsEc2NetworkInsightsAnalysis(
        'ec2_network_insights_analysis',
        networkInsightsPathId: .literal(leftover),
      ),
    );

    add(
      AwsEc2NetworkInsightsPath(
        'ec2_network_insights_path',
        protocol: .tcp,
        source: .literal(leftover),
      ),
    );

    add(
      AwsEc2SecondaryNetwork(
        'ec2_secondary_network',
        ipv4CidrBlock: .literal('10.0.0.0/16'),
        networkType: .rdma,
      ),
    );

    add(
      AwsEc2SecondarySubnet(
        'ec2_secondary_subnet',
        ipv4CidrBlock: .literal('10.0.0.0/16'),
        secondaryNetworkId: .literal(leftover),
      ),
    );

    add(AwsEc2SerialConsoleAccess('ec2_serial_console_access'));

    add(
      AwsEc2SubnetCidrReservation(
        'ec2_subnet_cidr_reservation',
        cidrBlock: .literal('10.0.0.0/16'),
        reservationType: .prefix,
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2Tag(
        'ec2_tag',
        key: .literal(leftover),
        resourceId: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(AwsEc2TrafficMirrorFilter('ec2_traffic_mirror_filter'));

    add(
      AwsEc2TrafficMirrorFilterRule(
        'ec2_traffic_mirror_filter_rule',
        destinationCidrBlock: .literal('10.0.0.0/16'),
        ruleAction: .accept,
        ruleNumber: .literal(200),
        sourceCidrBlock: .literal('10.0.0.0/16'),
        trafficDirection: .ingress,
        trafficMirrorFilterId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TrafficMirrorSession(
        'ec2_traffic_mirror_session',
        networkInterfaceId: .literal(leftover),
        sessionNumber: .literal(200),
        trafficMirrorFilterId: .literal(leftover),
        trafficMirrorTargetId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TrafficMirrorTarget(
        'ec2_traffic_mirror_target',
        destination: .gatewayLoadBalancerEndpointId(.literal(leftover)),
      ),
    );

    add(AwsEc2TransitGateway('ec2_transit_gateway'));

    add(
      AwsEc2TransitGatewayConnect(
        'ec2_transit_gateway_connect',
        transitGatewayId: .literal(leftover),
        transportAttachmentId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayConnectPeer(
        'ec2_transit_gateway_connect_peer',
        insideCidrBlocks: .literal(['169.254.100.0/29']),
        peerAddress: .literal('10.0.0.1'),
        transitGatewayAttachmentId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayDefaultRouteTableAssociation(
        'ec2_transit_gateway_default_route_table_associat',
        transitGatewayId: .literal(leftover),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayDefaultRouteTablePropagation(
        'ec2_transit_gateway_default_route_table_propagat',
        transitGatewayId: .literal(leftover),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMeteringPolicy(
        'ec2_transit_gateway_metering_policy',
        transitGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMeteringPolicyEntry(
        'ec2_transit_gateway_metering_policy_entry',
        meteredAccount: .sourceAttachmentOwner,
        policyRuleNumber: .literal(200),
        transitGatewayMeteringPolicyId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastDomain(
        'ec2_transit_gateway_multicast_domain',
        transitGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastDomainAssociation(
        'ec2_transit_gateway_multicast_domain_association',
        subnetId: .literal('subnet-0123456789abcdef0'),
        transitGatewayAttachmentId: .literal(leftover),
        transitGatewayMulticastDomainId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastGroupMember(
        'ec2_transit_gateway_multicast_group_member',
        groupIpAddress: .literal('224.0.0.1'),
        networkInterfaceId: .literal(leftover),
        transitGatewayMulticastDomainId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastGroupSource(
        'ec2_transit_gateway_multicast_group_source',
        groupIpAddress: .literal('224.0.0.1'),
        networkInterfaceId: .literal(leftover),
        transitGatewayMulticastDomainId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPeeringAttachment(
        'ec2_transit_gateway_peering_attachment',
        peerRegion: .literal('us-east-1'),
        peerTransitGatewayId: .literal(leftover),
        transitGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPeeringAttachmentAccepter(
        'ec2_transit_gateway_peering_attachment_accepter',
        transitGatewayAttachmentId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPolicyTable(
        'ec2_transit_gateway_policy_table',
        transitGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPolicyTableAssociation(
        'ec2_transit_gateway_policy_table_association',
        transitGatewayAttachmentId: .literal(leftover),
        transitGatewayPolicyTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPolicyTableEntry(
        'ec2_transit_gateway_policy_table_entry',
        policyRuleNumber: .literal(leftover),
        targetRouteTableId: .literal(leftover),
        transitGatewayPolicyTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPrefixListReference(
        'ec2_transit_gateway_prefix_list_reference',
        prefixListId: .literal(leftover),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRoute(
        'ec2_transit_gateway_route',
        destinationCidrBlock: .literal('10.0.0.0/16'),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRouteTable(
        'ec2_transit_gateway_route_table',
        transitGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRouteTableAssociation(
        'ec2_transit_gateway_route_table_association',
        transitGatewayAttachmentId: .literal(leftover),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRouteTablePropagation(
        'ec2_transit_gateway_route_table_propagation',
        transitGatewayAttachmentId: .literal(leftover),
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayVpcAttachment(
        'ec2_transit_gateway_vpc_attachment',
        subnetIds: .literal([.literal(leftover)]),
        transitGatewayId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2TransitGatewayVpcAttachmentAccepter(
        'ec2_transit_gateway_vpc_attachment_accepter',
        transitGatewayAttachmentId: .literal(leftover),
      ),
    );

    add(
      AwsEcrAccountSetting(
        'ecr_account_setting',
        name: .basicScanTypeVersion,
        value: .awsNative,
      ),
    );

    add(
      AwsEcrPullThroughCacheRule(
        'ecr_pull_through_cache_rule',
        ecrRepositoryPrefix: .literal(leftover),
        upstreamRegistryUrl: .literal('https://example.com'),
      ),
    );

    add(
      AwsEcrPullTimeUpdateExclusion(
        'ecr_pull_time_update_exclusion',
        principalArn: .literal(arn),
      ),
    );

    add(AwsEcrRegistryPolicy('ecr_registry_policy', policy: .literal(policy)));

    add(
      AwsEcrRegistryScanningConfiguration(
        'ecr_registry_scanning_configuration',
        scanType: .basic,
      ),
    );

    add(AwsEcrReplicationConfiguration('ecr_replication_configuration'));

    add(
      AwsEcrRepositoryCreationTemplate(
        'ecr_repository_creation_template',
        appliedFor: [.replication],
        prefix: .literal(leftover),
      ),
    );

    add(
      AwsEcrRepositoryPolicy(
        'ecr_repository_policy',
        policy: .literal(policy),
        repository: .literal(leftover),
      ),
    );

    add(
      AwsEcrpublicRepository(
        'ecrpublic_repository',
        repositoryName: .literal(leftover),
      ),
    );

    add(
      AwsEcrpublicRepositoryPolicy(
        'ecrpublic_repository_policy',
        policy: .literal(policy),
        repositoryName: .literal(leftover),
      ),
    );

    add(
      AwsEcsAccountSettingDefault(
        'ecs_account_setting_default',
        name: .literal('serviceLongArnFormat'),
        value: .literal(leftover),
      ),
    );

    add(
      AwsEcsCapacityProvider('ecs_capacity_provider', name: .literal(leftover)),
    );

    add(
      AwsEcsClusterCapacityProviders(
        'ecs_cluster_capacity_providers',
        clusterName: .literal(leftover),
      ),
    );

    add(
      AwsEcsDaemon(
        'ecs_daemon',
        capacityProviderArns: .literal([arn]),
        daemonTaskDefinitionArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsEcsDaemonTaskDefinition(
        'ecs_daemon_task_definition',
        family: .literal(leftover),
        containerDefinition: [
          EcsDaemonTaskDefinitionContainerDefinition(image: .literal(leftover)),
        ],
      ),
    );

    add(AwsEcsService('ecs_service', name: .literal(leftover)));

    add(
      AwsEcsTag(
        'ecs_tag',
        key: .literal(leftover),
        resourceArn: .literal(arn),
        value: .literal(leftover),
      ),
    );

    add(
      AwsEcsTaskDefinition(
        'ecs_task_definition',
        containerDefinitions: .literal(
          '[{"name": "leftover", "image": "public.ecr.aws/nginx/nginx:latest", "essential": true}]',
        ),
        family: .literal(leftover),
      ),
    );

    add(
      AwsEcsTaskSet(
        'ecs_task_set',
        cluster: .literal(leftover),
        service: .literal(leftover),
        taskDefinition: .literal(leftover),
      ),
    );

    add(
      AwsEfsAccessPoint('efs_access_point', fileSystemId: .literal(leftover)),
    );

    add(
      AwsEfsBackupPolicy(
        'efs_backup_policy',
        fileSystemId: .literal(leftover),
        backupPolicy: EfsBackupPolicy(status: .disabled),
      ),
    );

    add(AwsEfsFileSystem('efs_file_system'));

    add(
      AwsEfsFileSystemPolicy(
        'efs_file_system_policy',
        fileSystemId: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsEfsMountTarget(
        'efs_mount_target',
        fileSystemId: .literal(leftover),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEfsReplicationConfiguration(
        'efs_replication_configuration',
        sourceFileSystemId: .literal(leftover),
        destination: EfsReplicationConfigurationDestination(
          availabilityZoneName: .literal('us-east-1a'),
        ),
      ),
    );

    add(
      AwsEgressOnlyInternetGateway(
        'egress_only_internet_gateway',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(AwsEip('eip'));

    add(
      AwsEipAssociation(
        'eip_association',
        target: .instanceId(.literal('i-0123456789abcdef0')),
      ),
    );

    add(
      AwsEipDomainName(
        'eip_domain_name',
        allocationId: .literal(leftover),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsEksAccessEntry(
        'eks_access_entry',
        clusterName: .literal(leftover),
        principalArn: .literal(arn),
      ),
    );

    add(
      AwsEksAccessPolicyAssociation(
        'eks_access_policy_association',
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
        'eks_addon',
        addonName: .literal(leftover),
        clusterName: .literal(leftover),
      ),
    );

    add(
      AwsEksCapability(
        'eks_capability',
        capabilityName: .literal(leftover),
        clusterName: .literal(leftover),
        deletePropagationPolicy: .retain,
        roleArn: .literal(arn),
        type: .ack,
      ),
    );

    add(
      AwsEksCluster(
        'eks_cluster',
        name: .literal(leftover),
        roleArn: .literal(arn),
        vpcConfig: EksClusterVpcConfig(
          subnetIds: .literal([.literal(leftover)]),
        ),
      ),
    );

    add(
      AwsEksFargateProfile(
        'eks_fargate_profile',
        clusterName: .literal(leftover),
        fargateProfileName: .literal(leftover),
        podExecutionRoleArn: .literal(arn),
        selector: [EksFargateProfileSelector(namespace: .literal(leftover))],
      ),
    );

    add(
      AwsEksIdentityProviderConfig(
        'eks_identity_provider_config',
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
        'eks_node_group',
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
        'eks_pod_identity_association',
        clusterName: .literal(leftover),
        namespace: .literal(leftover),
        roleArn: .literal(arn),
        serviceAccount: .literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkApplication(
        'elastic_beanstalk_application',
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkApplicationVersion(
        'elastic_beanstalk_application_version',
        application: .literal(leftover),
        bucket: .literal(leftover),
        key: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkConfigurationTemplate(
        'elastic_beanstalk_configuration_template',
        application: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkEnvironment(
        'elastic_beanstalk_environment',
        application: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheCluster(
        'elasticache_cluster',
        clusterId: .literal(leftover),
        source: .engine(.memcached),
      ),
    );

    add(
      AwsElasticacheGlobalReplicationGroup(
        'elasticache_global_replication_group',
        globalReplicationGroupIdSuffix: .literal(leftover),
        primaryReplicationGroupId: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheParameterGroup(
        'elasticache_parameter_group',
        family: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheReplicationGroup(
        'elasticache_replication_group',
        description: .literal(leftover),
        replicationGroupId: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheReservedCacheNode(
        'elasticache_reserved_cache_node',
        reservedCacheNodesOfferingId: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheServerlessCache(
        'elasticache_serverless_cache',
        engine: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheSubnetGroup(
        'elasticache_subnet_group',
        name: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsElasticacheUser(
        'elasticache_user',
        accessString: .literal(leftover),
        engine: .redis,
        userId: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheUserGroup(
        'elasticache_user_group',
        engine: .redis,
        userGroupId: .literal(leftover),
      ),
    );

    add(
      AwsElasticacheUserGroupAssociation(
        'elasticache_user_group_association',
        userGroupId: .literal(leftover),
        userId: .literal(leftover),
      ),
    );

    add(
      AwsElasticsearchDomain(
        'elasticsearch_domain',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsElasticsearchDomainPolicy(
        'elasticsearch_domain_policy',
        accessPolicies: .literal(policy),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsElasticsearchDomainSamlOptions(
        'elasticsearch_domain_saml_options',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsElasticsearchVpcEndpoint(
        'elasticsearch_vpc_endpoint',
        domainArn: .literal(arn),
        vpcOptions: ElasticsearchVpcEndpointVpcOptions(
          subnetIds: .literal([.literal(leftover)]),
        ),
      ),
    );

    add(
      AwsElastictranscoderPipeline(
        'elastictranscoder_pipeline',
        inputBucket: .literal(leftover),
        role: .literal(arn),
      ),
    );

    add(
      AwsElastictranscoderPreset('elastictranscoder_preset', container: .flac),
    );

    add(
      AwsElb(
        'elb',
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
        'elb_attachment',
        elb: .literal(leftover),
        instance: .literal(leftover),
      ),
    );

    add(
      AwsEmrBlockPublicAccessConfiguration(
        'emr_block_public_access_configuration',
        blockPublicSecurityGroupRules: .literal(true),
      ),
    );

    add(
      AwsEmrCluster(
        'emr_cluster',
        name: .literal(leftover),
        releaseLabel: .literal(leftover),
        serviceRole: .literal(leftover),
      ),
    );

    add(
      AwsEmrInstanceFleet('emr_instance_fleet', clusterId: .literal(leftover)),
    );

    add(
      AwsEmrInstanceGroup(
        'emr_instance_group',
        clusterId: .literal(leftover),
        instanceType: .literal(leftover),
      ),
    );

    add(
      AwsEmrManagedScalingPolicy(
        'emr_managed_scaling_policy',
        clusterId: .literal(leftover),
        computeLimits: [
          EmrManagedScalingPolicyComputeLimits(
            maximumCapacityUnits: .literal(200),
            minimumCapacityUnits: .literal(200),
            unitType: .instancefleetunits,
          ),
        ],
      ),
    );

    add(
      AwsEmrSecurityConfiguration(
        'emr_security_configuration',
        configuration: .literal(policy),
      ),
    );

    add(
      AwsEmrStudio(
        'emr_studio',
        authMode: .sso,
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
        'emr_studio_session_mapping',
        identity: .identityId(.literal(leftover)),
        identityType: .user,
        sessionPolicyArn: .literal(arn),
        studioId: .literal(leftover),
      ),
    );

    add(
      AwsEmrcontainersJobTemplate(
        'emrcontainers_job_template',
        name: .literal(leftover),
        jobTemplateData: EmrcontainersJobTemplateData(
          executionRoleArn: .literal(arn),
          releaseLabel: .literal(leftover),
          jobDriver: .sparkSqlJobDriver(.new(entryPoint: .literal(leftover))),
        ),
      ),
    );

    add(
      AwsEmrcontainersVirtualCluster(
        'emrcontainers_virtual_cluster',
        name: .literal(leftover),
        containerProvider: EmrcontainersVirtualClusterContainerProvider(
          id: .literal(leftover),
          type: .eks,
          info: .new(eksInfo: .new(namespace: .literal(leftover))),
        ),
      ),
    );

    add(
      AwsEmrserverlessApplication(
        'emrserverless_application',
        name: .literal(leftover),
        releaseLabel: .literal(leftover),
        type: .literal(leftover),
      ),
    );

    add(
      AwsEvidentlyFeature(
        'evidently_feature',
        name: .literal(leftover),
        project: .literal(leftover),
        variations: [
          EvidentlyFeatureVariations(
            name: .literal(leftover),
            value: .new(boolValue: .literal('true')),
          ),
        ],
      ),
    );

    add(
      AwsEvidentlyLaunch(
        'evidently_launch',
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

    add(AwsEvidentlyProject('evidently_project', name: .literal(leftover)));

    add(
      AwsEvidentlySegment(
        'evidently_segment',
        name: .literal(leftover),
        pattern: .literal(policy),
      ),
    );

    add(
      AwsFinspaceKxCluster(
        'finspace_kx_cluster',
        azMode: .single,
        environmentId: .literal(leftover),
        name: .literal(leftover),
        releaseLabel: .literal(leftover),
        type: .hdb,
        vpcConfiguration: FinspaceKxClusterVpcConfiguration(
          ipAddressType: .ipV4,
          securityGroupIds: .literal([.literal(leftover)]),
          subnetIds: .literal([.literal(leftover)]),
          vpcId: .literal('vpc-0123456789abcdef0'),
        ),
      ),
    );

    add(
      AwsFinspaceKxDatabase(
        'finspace_kx_database',
        environmentId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxDataview(
        'finspace_kx_dataview',
        autoUpdate: .literal(true),
        azMode: .single,
        databaseName: .literal(leftover),
        environmentId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxEnvironment(
        'finspace_kx_environment',
        kmsKeyId: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxScalingGroup(
        'finspace_kx_scaling_group',
        availabilityZoneId: .literal('us-east-1a'),
        environmentId: .literal(leftover),
        hostType: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxUser(
        'finspace_kx_user',
        environmentId: .literal(leftover),
        iamRole: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxVolume(
        'finspace_kx_volume',
        availabilityZones: .literal(['us-east-1a']),
        azMode: .single,
        environmentId: .literal(leftover),
        name: .literal(leftover),
        type: .nas1,
      ),
    );

    add(
      AwsFisExperimentTemplate(
        'fis_experiment_template',
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

    add(AwsFisSafetyLeverState('fis_safety_lever_state'));

    add(
      AwsFisTargetAccountConfiguration(
        'fis_target_account_configuration',
        accountId: .literal('123456789012'),
        experimentTemplateId: .literal(leftover),
      ),
    );

    add(AwsFlowLog('flow_log', source: .eniId(.literal(leftover))));

    add(AwsFmsAdminAccount('fms_admin_account'));

    add(
      AwsFmsPolicy(
        'fms_policy',
        excludeResourceTags: .literal(true),
        name: .literal(leftover),
        securityServicePolicyData: FmsPolicySecurityServicePolicyData(
          type: .literal(leftover),
        ),
      ),
    );

    add(AwsFmsResourceSet('fms_resource_set'));

    add(AwsFsxBackup('fsx_backup'));

    add(
      AwsFsxDataRepositoryAssociation(
        'fsx_data_repository_association',
        dataRepositoryPath: .literal('s3://leftover-bucket/leftover'),
        fileSystemId: .literal('fs-0123456789abcdef0'),
        fileSystemPath: .literal('/leftover'),
      ),
    );

    add(
      AwsFsxFileCache(
        'fsx_file_cache',
        fileCacheType: .lustre,
        fileCacheTypeVersion: .literal('2.12'),
        storageCapacity: .literal(200),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsFsxLustreFileSystem(
        'fsx_lustre_file_system',
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsFsxOntapFileSystem(
        'fsx_ontap_file_system',
        deploymentType: .multiAz1,
        preferredSubnetId: .literal(leftover),
        storageCapacity: .literal(1024),
        subnetIds: .literal([.literal(leftover)]),
        throughputCapacity: .throughputCapacity(.literal(128)),
      ),
    );

    add(
      AwsFsxOntapStorageVirtualMachine(
        'fsx_ontap_storage_virtual_machine',
        fileSystemId: .literal('fs-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsFsxOntapVolume(
        'fsx_ontap_volume',
        name: .literal(leftover),
        size: .sizeInBytes(.literal('64512')),
        storageVirtualMachineId: .literal('svm-0123456789abcdef0'),
      ),
    );

    add(
      AwsFsxOpenzfsFileSystem(
        'fsx_openzfs_file_system',
        deploymentType: .singleAz1,
        subnetIds: .literal([.literal(leftover)]),
        throughputCapacity: .literal(200),
      ),
    );

    add(
      AwsFsxOpenzfsSnapshot(
        'fsx_openzfs_snapshot',
        name: .literal(leftover),
        volumeId: .literal('fsvol-0123456789abcdef0'),
      ),
    );

    add(
      AwsFsxOpenzfsVolume(
        'fsx_openzfs_volume',
        name: .literal(leftover),
        parentVolumeId: .literal('fsvol-0123456789abcdef0'),
      ),
    );

    add(
      AwsFsxS3AccessPointAttachment(
        'fsx_s3_access_point_attachment',
        name: .literal(leftover),
        type: .openzfs,
        openzfsConfiguration: [
          FsxS3AccessPointAttachmentOpenzfsConfiguration(
            volumeId: .literal(leftover),
            fileSystemIdentity: [.new(type: .posix)],
          ),
        ],
      ),
    );

    add(
      AwsFsxWindowsFileSystem(
        'fsx_windows_file_system',
        subnetIds: .literal([.literal(leftover)]),
        throughputCapacity: .literal(8),
      ),
    );

    add(
      AwsGameliftAlias(
        'gamelift_alias',
        name: .literal(leftover),
        routingStrategy: GameliftAliasRoutingStrategy(type: .simple),
      ),
    );

    add(
      AwsGameliftBuild(
        'gamelift_build',
        name: .literal(leftover),
        operatingSystem: .windows2012,
        storageLocation: GameliftBuildStorageLocation(
          bucket: .literal(leftover),
          key: .literal(leftover),
          roleArn: .literal(arn),
        ),
      ),
    );

    add(
      AwsGameliftFleet(
        'gamelift_fleet',
        artifact: .buildId(.literal(leftover)),
        ec2InstanceType: .t2Micro,
        name: .literal(leftover),
      ),
    );

    add(
      AwsGameliftGameServerGroup(
        'gamelift_game_server_group',
        gameServerGroupName: .literal(leftover),
        maxSize: .literal(200),
        minSize: .literal(200),
        roleArn: .literal(arn),
        instanceDefinition: [
          GameliftGameServerGroupInstanceDefinition(instanceType: .c5Large),
          GameliftGameServerGroupInstanceDefinition(instanceType: .c5Xlarge),
        ],
        launchTemplate: GameliftGameServerGroupLaunchTemplate(
          identifier: .id(.literal('lt-0123456789abcdef0')),
        ),
      ),
    );

    add(
      AwsGameliftGameSessionQueue(
        'gamelift_game_session_queue',
        name: .literal(leftover),
      ),
    );

    add(
      AwsGameliftScript(
        'gamelift_script',
        name: .literal(leftover),
        code: .storageLocation(
          .new(
            bucket: .literal(leftover),
            key: .literal(leftover),
            roleArn: .literal(arn),
          ),
        ),
      ),
    );

    add(AwsGlacierVault('glacier_vault', name: .literal(leftover)));

    add(
      AwsGlacierVaultLock(
        'glacier_vault_lock',
        completeLock: .literal(true),
        policy: .literal(policy),
        vaultName: .literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorAccelerator(
        'globalaccelerator_accelerator',
        name: .literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorCrossAccountAttachment(
        'globalaccelerator_cross_account_attachment',
        name: .literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorCustomRoutingAccelerator(
        'globalaccelerator_custom_routing_accelerator',
        name: .literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorCustomRoutingEndpointGroup(
        'globalaccelerator_custom_routing_endpoint_group',
        listenerArn: .literal(arn),
        destinationConfiguration: [
          GlobalacceleratorCustomRoutingEndpointGroupDestinationConfiguration(
            fromPort: .literal(200),
            protocols: [.tcp],
            toPort: .literal(200),
          ),
        ],
      ),
    );

    add(
      AwsGlobalacceleratorCustomRoutingListener(
        'globalaccelerator_custom_routing_listener',
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
        'globalaccelerator_endpoint_group',
        listenerArn: .literal(arn),
      ),
    );

    add(
      AwsGlobalacceleratorListener(
        'globalaccelerator_listener',
        acceleratorArn: .literal(arn),
        protocol: .tcp,
        portRange: [
          GlobalacceleratorListenerPortRange(fromPort: .literal(200)),
        ],
      ),
    );

    add(
      AwsGlueCatalog(
        'glue_catalog',
        name: .literal(leftover),
        catalogProperties: [
          GlueCatalogProperties(
            dataLakeAccessProperties: [.new(catalogType: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      AwsGlueCatalogDatabase('glue_catalog_database', name: .literal(leftover)),
    );

    add(
      AwsGlueCatalogTable(
        'glue_catalog_table',
        databaseName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsGlueCatalogTableOptimizer(
        'glue_catalog_table_optimizer',
        catalogId: .literal(leftover),
        databaseName: .literal(leftover),
        tableName: .literal(leftover),
        type: .compaction,
        configuration: [
          GlueCatalogTableOptimizerConfiguration(
            enabled: .literal(true),
            roleArn: .literal(arn),
          ),
        ],
      ),
    );

    add(AwsGlueClassifier('glue_classifier', name: .literal(leftover)));

    add(AwsGlueConnection('glue_connection', name: .literal(leftover)));

    add(
      AwsGlueCrawler(
        'glue_crawler',
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
        'glue_data_catalog_encryption_settings',
        dataCatalogEncryptionSettings: GlueDataCatalogEncryptionSettings(
          connectionPasswordEncryption: .new(
            returnConnectionPasswordEncrypted: .literal(true),
          ),
          encryptionAtRest: .new(catalogEncryptionMode: .disabled),
        ),
      ),
    );

    add(
      AwsGlueDataQualityRuleset(
        'glue_data_quality_ruleset',
        name: .literal(leftover),
        ruleset: .literal(leftover),
      ),
    );

    add(
      AwsGlueDevEndpoint(
        'glue_dev_endpoint',
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsGlueJob(
        'glue_job',
        name: .literal(leftover),
        roleArn: .literal(arn),
        command: GlueJobCommand(scriptLocation: .literal(leftover)),
      ),
    );

    add(
      AwsGlueMlTransform(
        'glue_ml_transform',
        name: .literal(leftover),
        roleArn: .literal(arn),
        inputRecordTables: [
          GlueMlTransformInputRecordTables(
            databaseName: .literal(leftover),
            tableName: .literal(leftover),
          ),
        ],
        parameters: GlueMlTransformParameters(
          transformType: .findMatches,
          findMatchesParameters: .new(accuracyCostTradeOff: .literal(1)),
        ),
      ),
    );

    add(
      AwsGluePartition(
        'glue_partition',
        databaseName: .literal(leftover),
        partitionValues: .literal([leftover]),
        tableName: .literal(leftover),
      ),
    );

    add(
      AwsGluePartitionIndex(
        'glue_partition_index',
        databaseName: .literal(leftover),
        tableName: .literal(leftover),
        partitionIndex: GluePartitionIndex(indexName: .literal(leftover)),
      ),
    );

    add(AwsGlueRegistry('glue_registry', registryName: .literal(leftover)));

    add(
      AwsGlueResourcePolicy('glue_resource_policy', policy: .literal(policy)),
    );

    add(
      AwsGlueSchema(
        'glue_schema',
        compatibility: .none,
        dataFormat: .avro,
        schemaDefinition: .literal(leftover),
        schemaName: .literal(leftover),
      ),
    );

    add(
      AwsGlueSecurityConfiguration(
        'glue_security_configuration',
        name: .literal(leftover),
        encryptionConfiguration:
            GlueSecurityConfigurationEncryptionConfiguration(
              cloudwatchEncryption: .new(cloudwatchEncryptionMode: .disabled),
              jobBookmarksEncryption: .new(
                jobBookmarksEncryptionMode: .disabled,
              ),
              s3Encryption: .new(kmsKeyArn: .literal(arn)),
            ),
      ),
    );

    add(
      AwsGlueTrigger(
        'glue_trigger',
        name: .literal(leftover),
        type: .scheduled,
        actions: [
          GlueTriggerActions(arguments: .literal({'k': leftover})),
        ],
      ),
    );

    add(
      AwsGlueUserDefinedFunction(
        'glue_user_defined_function',
        className: .literal(leftover),
        databaseName: .literal(leftover),
        name: .literal(leftover),
        ownerName: .literal(leftover),
        ownerType: .user,
      ),
    );

    add(AwsGlueWorkflow('glue_workflow'));

    add(
      AwsGrafanaLicenseAssociation(
        'grafana_license_association',
        licenseType: .enterprise,
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsGrafanaRoleAssociation(
        'grafana_role_association',
        role: .literal(leftover),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspace(
        'grafana_workspace',
        accountAccessType: .currentAccount,
        authenticationProviders: [.awsSso],
        permissionType: .customerManaged,
      ),
    );

    add(
      AwsGrafanaWorkspaceApiKey(
        'grafana_workspace_api_key',
        keyName: .literal(leftover),
        keyRole: .admin,
        secondsToLive: .literal(200),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspaceSamlConfiguration(
        'grafana_workspace_saml_configuration',
        editorRoleValues: .literal([leftover]),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspaceServiceAccount(
        'grafana_workspace_service_account',
        grafanaRole: .admin,
        name: .literal(leftover),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspaceServiceAccountToken(
        'grafana_workspace_service_account_token',
        name: .literal(leftover),
        secondsToLive: .literal(200),
        serviceAccountId: .literal('123456789012'),
        workspaceId: .literal(leftover),
      ),
    );

    add(AwsGuarddutyDetector('guardduty_detector'));

    add(
      AwsGuarddutyDetectorFeature(
        'guardduty_detector_feature',
        detectorId: .literal(leftover),
        name: .s3DataEvents,
        status: .enabled,
      ),
    );

    add(
      AwsGuarddutyFilter(
        'guardduty_filter',
        action: .noop,
        detectorId: .literal(leftover),
        name: .literal(leftover),
        rank: .literal(200),
        findingCriteria: GuarddutyFilterFindingCriteria(
          criterion: [.new(field: .literal(leftover))],
        ),
      ),
    );

    add(
      AwsGuarddutyInviteAccepter(
        'guardduty_invite_accepter',
        detectorId: .literal(leftover),
        masterAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsGuarddutyIpset(
        'guardduty_ipset',
        activate: .literal(true),
        detectorId: .literal(leftover),
        format: .txt,
        location: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsGuarddutyMalwareProtectionPlan(
        'guardduty_malware_protection_plan',
        role: .literal(arn),
        protectedResource: [
          GuarddutyMalwareProtectionPlanProtectedResource(
            s3Bucket: [.new(bucketName: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      AwsGuarddutyMember(
        'guardduty_member',
        accountId: .literal('123456789012'),
        detectorId: .literal(leftover),
        email: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsGuarddutyMemberDetectorFeature(
        'guardduty_member_detector_feature',
        accountId: .literal('123456789012'),
        detectorId: .literal(leftover),
        name: .s3DataEvents,
        status: .enabled,
      ),
    );

    add(
      AwsGuarddutyOrganizationAdminAccount(
        'guardduty_organization_admin_account',
        adminAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsGuarddutyOrganizationConfiguration(
        'guardduty_organization_configuration',
        autoEnableOrganizationMembers: .newCase,
        detectorId: .literal(leftover),
      ),
    );

    add(
      AwsGuarddutyOrganizationConfigurationFeature(
        'guardduty_organization_configuration_feature',
        autoEnable: .newCase,
        detectorId: .literal(leftover),
        name: .s3DataEvents,
      ),
    );

    add(
      AwsGuarddutyPublishingDestination(
        'guardduty_publishing_destination',
        destinationArn: .literal(arn),
        detectorId: .literal(leftover),
        kmsKeyArn: .literal(arn),
      ),
    );

    add(
      AwsGuarddutyThreatintelset(
        'guardduty_threatintelset',
        activate: .literal(true),
        detectorId: .literal(leftover),
        format: .txt,
        location: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(AwsIamAccessKey('iam_access_key', user: .literal(leftover)));

    add(
      AwsIamAccountAlias('iam_account_alias', accountAlias: .literal(leftover)),
    );

    add(AwsIamAccountPasswordPolicy('iam_account_password_policy'));

    add(AwsIamGroup('iam_group', name: .literal(leftover)));

    add(
      AwsIamGroupMembership(
        'iam_group_membership',
        group: .literal(leftover),
        name: .literal(leftover),
        users: .literal([leftover]),
      ),
    );

    add(
      AwsIamGroupPoliciesExclusive(
        'iam_group_policies_exclusive',
        groupName: .literal(leftover),
        policyNames: .literal([leftover]),
      ),
    );

    add(
      AwsIamGroupPolicy(
        'iam_group_policy',
        group: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsIamGroupPolicyAttachment(
        'iam_group_policy_attachment',
        group: .literal(leftover),
        policyArn: .literal(arn),
      ),
    );

    add(
      AwsIamGroupPolicyAttachmentsExclusive(
        'iam_group_policy_attachments_exclusive',
        groupName: .literal(leftover),
        policyArns: .literal([.literal(arn)]),
      ),
    );

    add(AwsIamInstanceProfile('iam_instance_profile'));

    add(
      AwsIamOpenidConnectProvider(
        'iam_openid_connect_provider',
        clientIdList: .literal([leftover]),
        url: .literal('https://example.com'),
      ),
    );

    add(
      AwsIamOrganizationsFeatures(
        'iam_organizations_features',
        enabledFeatures: [.rootcredentialsmanagement],
      ),
    );

    add(
      AwsIamOutboundWebIdentityFederation(
        'iam_outbound_web_identity_federation',
      ),
    );

    add(AwsIamPolicy('iam_policy', policy: .literal(policy)));

    add(
      AwsIamPolicyAttachment(
        'iam_policy_attachment',
        name: .literal(leftover),
        policyArn: .literal(arn),
        groups: .literal([leftover]),
        roles: .literal([.literal(leftover)]),
        users: .literal([leftover]),
      ),
    );

    add(
      AwsIamRolePoliciesExclusive(
        'iam_role_policies_exclusive',
        policyNames: .literal([leftover]),
        roleName: .literal(leftover),
      ),
    );

    add(
      AwsIamRolePolicyAttachmentsExclusive(
        'iam_role_policy_attachments_exclusive',
        policyArns: .literal([.literal(arn)]),
        roleName: .literal(leftover),
      ),
    );

    add(
      AwsIamSamlProvider(
        'iam_saml_provider',
        name: .literal(leftover),
        samlMetadataDocument: .literal(leftover * 130),
      ),
    );

    add(
      AwsIamSecurityTokenServicePreferences(
        'iam_security_token_service_preferences',
        globalEndpointTokenVersion: .v1token,
      ),
    );

    add(
      AwsIamServerCertificate(
        'iam_server_certificate',
        certificateBody: .literal(leftover),
        privateKey: leftoverSecret,
      ),
    );

    add(
      AwsIamServiceLinkedRole(
        'iam_service_linked_role',
        awsServiceName: .literal('elasticbeanstalk.amazonaws.com'),
      ),
    );

    add(
      AwsIamServiceSpecificCredential(
        'iam_service_specific_credential',
        serviceName: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsIamSigningCertificate(
        'iam_signing_certificate',
        certificateBody: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(AwsIamUser('iam_user', name: .literal(leftover)));

    add(
      AwsIamUserGroupMembership(
        'iam_user_group_membership',
        groups: .literal([leftover]),
        user: .literal(leftover),
      ),
    );

    add(
      AwsIamUserLoginProfile(
        'iam_user_login_profile',
        user: .literal(leftover),
      ),
    );

    add(
      AwsIamUserPoliciesExclusive(
        'iam_user_policies_exclusive',
        policyNames: .literal([leftover]),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsIamUserPolicy(
        'iam_user_policy',
        policy: .literal(policy),
        user: .literal(leftover),
      ),
    );

    add(
      AwsIamUserPolicyAttachment(
        'iam_user_policy_attachment',
        policyArn: .literal(arn),
        user: .literal(leftover),
      ),
    );

    add(
      AwsIamUserPolicyAttachmentsExclusive(
        'iam_user_policy_attachments_exclusive',
        policyArns: .literal([.literal(arn)]),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsIamUserSshKey(
        'iam_user_ssh_key',
        encoding: .ssh,
        publicKey: .literal(leftover),
        username: .literal(leftover),
      ),
    );

    add(
      AwsIamVirtualMfaDevice(
        'iam_virtual_mfa_device',
        virtualMfaDeviceName: .literal(leftover),
      ),
    );

    add(
      AwsIdentitystoreGroup(
        'identitystore_group',
        displayName: .literal(leftover),
        identityStoreId: .literal(leftover),
      ),
    );

    add(
      AwsIdentitystoreGroupMembership(
        'identitystore_group_membership',
        groupId: .literal(leftover),
        identityStoreId: .literal(leftover),
        memberId: .literal(leftover),
      ),
    );

    add(
      AwsIdentitystoreUser(
        'identitystore_user',
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
        'imagebuilder_component',
        document: .data(.literal(leftover)),
        name: .literal(leftover),
        platform: .windows,
        version: .literal(leftover),
      ),
    );

    add(
      AwsImagebuilderContainerRecipe(
        'imagebuilder_container_recipe',
        containerType: .docker,
        dockerfileTemplate: .dockerfileTemplateData(.literal(leftover)),
        name: .literal(leftover),
        parentImage: .literal(leftover),
        version: .literal(leftover),
        component: [
          ImagebuilderContainerRecipeComponent(componentArn: .literal(arn)),
        ],
        targetRepository: ImagebuilderContainerRecipeTargetRepository(
          repositoryName: .literal(leftover),
          service: .ecr,
        ),
      ),
    );

    add(
      AwsImagebuilderDistributionConfiguration(
        'imagebuilder_distribution_configuration',
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
        'imagebuilder_image',
        recipeArn: .containerRecipeArn(.literal(arn)),
        infrastructureConfigurationArn: .literal(arn),
      ),
    );

    add(
      AwsImagebuilderImagePipeline(
        'imagebuilder_image_pipeline',
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
        'imagebuilder_image_recipe',
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
        'imagebuilder_infrastructure_configuration',
        instanceProfileName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsImagebuilderLifecyclePolicy(
        'imagebuilder_lifecycle_policy',
        executionRole: .literal(arn),
        name: .literal(leftover),
        resourceType: .amiImage,
        policyDetail: [
          ImagebuilderLifecyclePolicyDetail(
            action: [.new(type: .delete)],
            filter: [.new(type: .age, value: .literal(1), unit: .days)],
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
        'imagebuilder_workflow',
        document: .data(.literal(leftover)),
        name: .literal(leftover),
        type: .build,
        version: .literal('1.0.0'),
      ),
    );

    add(
      AwsInspector2DelegatedAdminAccount(
        'inspector2_delegated_admin_account',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      AwsInspector2Enabler(
        'inspector2_enabler',
        accountIds: .literal(['123456789012']),
        resourceTypes: [.ec2],
      ),
    );

    add(
      AwsInspector2Filter(
        'inspector2_filter',
        action: .none,
        name: .literal(leftover),
        filterCriteria: [
          Inspector2FilterCriteria(
            awsAccountId: [
              .new(comparison: .equals, value: .literal(leftover)),
            ],
          ),
        ],
      ),
    );

    add(
      AwsInspector2MemberAssociation(
        'inspector2_member_association',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      AwsInspector2OrganizationConfiguration(
        'inspector2_organization_configuration',
        autoEnable: Inspector2OrganizationConfigurationAutoEnable(
          ec2: .literal(true),
          ecr: .literal(true),
        ),
      ),
    );

    add(
      AwsInspectorAssessmentTarget(
        'inspector_assessment_target',
        name: .literal(leftover),
      ),
    );

    add(
      AwsInspectorAssessmentTemplate(
        'inspector_assessment_template',
        duration: .literal(200),
        name: .literal(leftover),
        rulesPackageArns: .literal([arn]),
        targetArn: .literal(arn),
      ),
    );

    add(
      AwsInspectorResourceGroup(
        'inspector_resource_group',
        tags: .literal({'k': leftover}),
      ),
    );

    add(
      AwsInstance(
        'instance',
        instanceType: .literal(leftover),
        ami: .literal(leftover),
        launchTemplate: InstanceLaunchTemplate(
          identifier: .id(.literal('lt-0123456789abcdef0')),
        ),
      ),
    );

    add(AwsInternetGateway('internet_gateway'));

    add(
      AwsInternetGatewayAttachment(
        'internet_gateway_attachment',
        internetGatewayId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsInternetmonitorMonitor(
        'internetmonitor_monitor',
        monitorName: .literal(leftover),
        maxCityNetworksToMonitor: .literal(200),
        trafficPercentageToMonitor: .literal(1),
      ),
    );

    add(
      AwsInvoicingInvoiceUnit(
        'invoicing_invoice_unit',
        invoiceReceiver: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsIotAuthorizer(
        'iot_authorizer',
        authorizerFunctionArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(AwsIotBillingGroup('iot_billing_group', name: .literal(leftover)));

    add(
      AwsIotCaCertificate(
        'iot_ca_certificate',
        active: .literal(true),
        allowAutoRegistration: .literal(true),
        caCertificatePem: leftoverSecret,
      ),
    );

    add(AwsIotCertificate('iot_certificate', active: .literal(true)));

    add(
      AwsIotDomainConfiguration(
        'iot_domain_configuration',
        name: .literal(leftover),
      ),
    );

    add(
      AwsIotEventConfigurations(
        'iot_event_configurations',
        eventConfigurations: .literal({'THING': true}),
      ),
    );

    add(
      AwsIotIndexingConfiguration(
        'iot_indexing_configuration',
        thingGroupIndexingConfiguration:
            IotIndexingConfigurationThingGroupIndexingConfiguration(
              thingGroupIndexingMode: .off,
            ),
        thingIndexingConfiguration:
            IotIndexingConfigurationThingIndexingConfiguration(
              thingIndexingMode: .off,
            ),
      ),
    );

    add(
      AwsIotLoggingOptions(
        'iot_logging_options',
        defaultLogLevel: .debug,
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsIotPolicy(
        'iot_policy',
        name: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsIotPolicyAttachment(
        'iot_policy_attachment',
        policy: .literal(policy),
        target: .literal(leftover),
      ),
    );

    add(
      AwsIotProvisioningTemplate(
        'iot_provisioning_template',
        name: .literal(leftover),
        provisioningRoleArn: .literal(arn),
        templateBody: .literal(policy),
      ),
    );

    add(
      AwsIotRoleAlias(
        'iot_role_alias',
        alias: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(AwsIotThing('iot_thing', name: .literal(leftover)));

    add(AwsIotThingGroup('iot_thing_group', name: .literal(leftover)));

    add(
      AwsIotThingGroupMembership(
        'iot_thing_group_membership',
        thingGroupName: .literal(leftover),
        thingName: .literal(leftover),
      ),
    );

    add(
      AwsIotThingPrincipalAttachment(
        'iot_thing_principal_attachment',
        principal: .literal(leftover),
        thing: .literal(leftover),
      ),
    );

    add(AwsIotThingType('iot_thing_type', name: .literal(leftover)));

    add(
      AwsIotTopicRule(
        'iot_topic_rule',
        enabled: .literal(true),
        name: .literal(leftover),
        sql: .literal(leftover),
        sqlVersion: .literal(leftover),
      ),
    );

    add(
      AwsIotTopicRuleDestination(
        'iot_topic_rule_destination',
        vpcConfiguration: IotTopicRuleDestinationVpcConfiguration(
          roleArn: .literal(arn),
          subnetIds: .literal([.literal(leftover)]),
          vpcId: .literal('vpc-0123456789abcdef0'),
        ),
      ),
    );

    add(AwsIvsChannel('ivs_channel'));

    add(
      AwsIvsPlaybackKeyPair(
        'ivs_playback_key_pair',
        publicKey: .literal(leftover),
      ),
    );

    add(
      AwsIvsRecordingConfiguration(
        'ivs_recording_configuration',
        destinationConfiguration:
            IvsRecordingConfigurationDestinationConfiguration(
              s3: .new(bucketName: .literal(leftover)),
            ),
      ),
    );

    add(AwsIvschatLoggingConfiguration('ivschat_logging_configuration'));

    add(AwsIvschatRoom('ivschat_room'));

    add(
      AwsKendraDataSource(
        'kendra_data_source',
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
        name: .literal(leftover),
        type: .s3,
      ),
    );

    add(
      AwsKendraExperience(
        'kendra_experience',
        indexId: .literal(leftover),
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsKendraFaq(
        'kendra_faq',
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
        'kendra_index',
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsKendraQuerySuggestionsBlockList(
        'kendra_query_suggestions_block_list',
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
        'kendra_thesaurus',
        indexId: .literal(leftover),
        name: .literal(leftover),
        roleArn: .literal(arn),
        sourceS3Path: KendraThesaurusSourceS3Path(
          bucket: .literal(leftover),
          key: .literal(leftover),
        ),
      ),
    );

    add(AwsKeyPair('key_pair', publicKey: .literal(leftover)));

    add(AwsKeyspacesKeyspace('keyspaces_keyspace', name: .literal(leftover)));

    add(
      AwsKeyspacesTable(
        'keyspaces_table',
        keyspaceName: .literal(leftover),
        tableName: .literal(leftover),
        schemaDefinition: KeyspacesTableSchemaDefinition(
          column: [.new(name: .literal(leftover), type: .literal(leftover))],
          partitionKey: [.new(name: .literal(leftover))],
        ),
      ),
    );

    add(AwsKinesisAccountSettings('kinesis_account_settings'));

    add(
      AwsKinesisAnalyticsApplication(
        'kinesis_analytics_application',
        name: .literal(leftover),
      ),
    );

    add(
      AwsKinesisFirehoseDeliveryStream(
        'kinesis_firehose_delivery_stream',
        destination: .elasticsearch,
        name: .literal(leftover),
      ),
    );

    add(
      AwsKinesisResourcePolicy(
        'kinesis_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(AwsKinesisStream('kinesis_stream', name: .literal(leftover)));

    add(
      AwsKinesisStreamConsumer(
        'kinesis_stream_consumer',
        name: .literal(leftover),
        streamArn: .literal(arn),
      ),
    );

    add(
      AwsKinesisVideoStream('kinesis_video_stream', name: .literal(leftover)),
    );

    add(
      AwsKinesisanalyticsv2Application(
        'kinesisanalyticsv2_application',
        name: .literal(leftover),
        runtimeEnvironment: .sql10,
        serviceExecutionRole: .literal(arn),
      ),
    );

    add(
      AwsKinesisanalyticsv2ApplicationSnapshot(
        'kinesisanalyticsv2_application_snapshot',
        applicationName: .literal(leftover),
        snapshotName: .literal(leftover),
      ),
    );

    add(AwsKmsAlias('kms_alias', targetKeyId: .literal(leftover)));

    add(
      AwsKmsCiphertext(
        'kms_ciphertext',
        keyId: .literal(leftover),
        plaintext: .plaintext(leftoverSecret),
      ),
    );

    add(
      AwsKmsCustomKeyStore(
        'kms_custom_key_store',
        customKeyStoreName: .literal(leftover),
      ),
    );

    add(AwsKmsExternalKey('kms_external_key'));

    add(
      AwsKmsGrant(
        'kms_grant',
        granteePrincipal: .literal(arn),
        keyId: .literal(leftover),
        operations: [.decrypt],
      ),
    );

    add(AwsKmsKey('kms_key'));

    add(
      AwsKmsKeyPolicy(
        'kms_key_policy',
        keyId: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsKmsReplicaExternalKey(
        'kms_replica_external_key',
        primaryKeyArn: .literal(arn),
      ),
    );

    add(AwsKmsReplicaKey('kms_replica_key', primaryKeyArn: .literal(arn)));

    add(
      AwsLakeformationDataCellsFilter(
        'lakeformation_data_cells_filter',
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

    add(AwsLakeformationDataLakeSettings('lakeformation_data_lake_settings'));

    add(
      AwsLakeformationIdentityCenterConfiguration(
        'lakeformation_identity_center_configuration',
        instanceArn: .literal(arn),
      ),
    );

    add(
      AwsLakeformationLfTag(
        'lakeformation_lf_tag',
        key: .literal(leftover),
        values: .literal([leftover]),
      ),
    );

    add(
      AwsLakeformationLfTagExpression(
        'lakeformation_lf_tag_expression',
        name: .literal(leftover),
        expression: [
          LakeformationLfTagExpression(
            tagKey: .literal(leftover),
            tagValues: .literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsLakeformationOptIn(
        'lakeformation_opt_in',
        principal: [
          LakeformationOptInPrincipal(
            dataLakePrincipalIdentifier: .literal(leftover),
          ),
        ],
        resourceData: [
          .database([.new(name: .literal(leftover))]),
        ],
      ),
    );

    add(
      AwsLakeformationPermissions(
        'lakeformation_permissions',
        resource: .catalogResource(.literal(true)),
        permissions: [.all],
        principal: .literal(arn),
      ),
    );

    add(AwsLakeformationResource('lakeformation_resource', arn: .literal(arn)));

    add(
      AwsLakeformationResourceLfTag(
        'lakeformation_resource_lf_tag',
        resource: .database([.new(name: .literal(leftover))]),
        lfTag: [
          LakeformationResourceLfTag(
            key: .literal(leftover),
            value: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsLakeformationResourceLfTags(
        'lakeformation_resource_lf_tags',
        resource: .database(.new(name: .literal(leftover))),
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
        'lambda_alias',
        functionName: .literal(leftover),
        functionVersion: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLambdaCapacityProvider(
        'lambda_capacity_provider',
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
        'lambda_code_signing_config',
        allowedPublishers: LambdaCodeSigningConfigAllowedPublishers(
          signingProfileVersionArns: .literal([arn]),
        ),
      ),
    );

    add(
      AwsLambdaEventSourceMapping(
        'lambda_event_source_mapping',
        eventSource: .eventSourceArn(.literal(arn)),
        functionName: .literal(leftover),
      ),
    );

    add(
      AwsLambdaFunctionEventInvokeConfig(
        'lambda_function_event_invoke_config',
        functionName: .literal(leftover),
      ),
    );

    add(
      AwsLambdaFunctionRecursionConfig(
        'lambda_function_recursion_config',
        functionName: .literal(leftover),
        recursiveLoop: .allow,
      ),
    );

    add(
      AwsLambdaFunctionScalingConfig(
        'lambda_function_scaling_config',
        functionName: .literal(leftover),
        qualifier: .literal('1'),
        functionScalingConfig: [
          LambdaFunctionScalingConfig(maxExecutionEnvironments: .literal(200)),
        ],
      ),
    );

    add(
      AwsLambdaInvocation(
        'lambda_invocation',
        functionName: .literal(leftover),
        input: .literal(policy),
      ),
    );

    add(
      AwsLambdaLayerVersion(
        'lambda_layer_version',
        layerName: .literal(leftover),
      ),
    );

    add(
      AwsLambdaLayerVersionPermission(
        'lambda_layer_version_permission',
        action: .literal(leftover),
        layerName: .literal(leftover),
        principal: .literal(leftover),
        statementId: .literal(leftover),
        versionNumber: .literal(200),
      ),
    );

    add(
      AwsLambdaProvisionedConcurrencyConfig(
        'lambda_provisioned_concurrency_config',
        functionName: .literal(leftover),
        provisionedConcurrentExecutions: .literal(200),
        qualifier: .literal(leftover),
      ),
    );

    add(
      AwsLambdaResourcePolicy(
        'lambda_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsLambdaRuntimeManagementConfig(
        'lambda_runtime_management_config',
        functionName: .literal(leftover),
      ),
    );

    add(
      AwsLambdacoreNetworkConnector(
        'lambdacore_network_connector',
        name: .literal(leftover),
        operatorRole: .literal(arn),
        configuration: [
          LambdacoreNetworkConnectorConfiguration(
            vpcEgressConfiguration: [
              .new(
                associatedComputeResourceTypes: [.microvm],
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
        'lambdamicrovms_image',
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
        'lambdamicrovms_microvm',
        imageArn: .literal(arn),
      ),
    );

    add(
      AwsLaunchConfiguration(
        'launch_configuration',
        imageId: .literal(leftover),
        instanceType: .literal(leftover),
      ),
    );

    add(AwsLaunchTemplate('launch_template'));

    add(
      AwsLb(
        'lb',
        subnet: .subnetMapping([
          .new(subnetId: .literal('subnet-0123456789abcdef0')),
        ]),
      ),
    );

    add(
      AwsLbCookieStickinessPolicy(
        'lb_cookie_stickiness_policy',
        lbPort: .literal(200),
        loadBalancer: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLbListener(
        'lb_listener',
        loadBalancerArn: .literal(arn),
        defaultAction: [LbListenerDefaultAction(type: .forward)],
      ),
    );

    add(
      AwsLbListenerCertificate(
        'lb_listener_certificate',
        certificateArn: .literal(arn),
        listenerArn: .literal(arn),
      ),
    );

    add(
      AwsLbListenerRule(
        'lb_listener_rule',
        listenerArn: .literal(arn),
        action: [LbListenerRuleAction(type: .forward)],
        condition: [
          LbListenerRuleCondition(
            hostHeader: .new(regexValues: .literal([leftover])),
          ),
        ],
      ),
    );

    add(
      AwsLbSslNegotiationPolicy(
        'lb_ssl_negotiation_policy',
        lbPort: .literal(200),
        loadBalancer: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(AwsLbTargetGroup('lb_target_group'));

    add(
      AwsLbTargetGroupAttachment(
        'lb_target_group_attachment',
        targetGroupArn: .literal(arn),
        targetId: .literal(leftover),
      ),
    );

    add(
      AwsLbTrustStore(
        'lb_trust_store',
        caCertificatesBundleS3Bucket: .literal(leftover),
        caCertificatesBundleS3Key: .literal(leftover),
      ),
    );

    add(
      AwsLbTrustStoreRevocation(
        'lb_trust_store_revocation',
        revocationsS3Bucket: .literal(leftover),
        revocationsS3Key: .literal(leftover),
        trustStoreArn: .literal(arn),
      ),
    );

    add(
      AwsLexBot(
        'lex_bot',
        childDirected: .literal(true),
        name: .literal(leftover),
        abortStatement: LexBotAbortStatement(
          message: [
            .new(
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
        'lex_bot_alias',
        botName: .literal(leftover),
        botVersion: .literal('\$LATEST'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLexIntent(
        'lex_intent',
        name: .literal(leftover),
        fulfillmentActivity: LexIntentFulfillmentActivity(type: .returnintent),
      ),
    );

    add(
      AwsLexSlotType(
        'lex_slot_type',
        name: .literal(leftover),
        enumerationValue: [
          LexSlotTypeEnumerationValue(value: .literal(leftover)),
        ],
      ),
    );

    add(
      AwsLexv2modelsBot(
        'lexv2models_bot',
        idleSessionTtlInSeconds: .literal(200),
        name: .literal(leftover),
        roleArn: .literal(arn),
        dataPrivacy: [Lexv2modelsBotDataPrivacy(childDirected: .literal(true))],
      ),
    );

    add(
      AwsLexv2modelsBotLocale(
        'lexv2models_bot_locale',
        botId: .literal(leftover),
        botVersion: .literal(leftover),
        localeId: .literal(leftover),
        nLuIntentConfidenceThreshold: .literal(200),
      ),
    );

    add(
      AwsLexv2modelsBotVersion(
        'lexv2models_bot_version',
        botId: .literal(leftover),
        localeSpecification: .literal({
          'en_US': {'source_bot_version': 'DRAFT'},
        }),
      ),
    );

    add(
      AwsLexv2modelsIntent(
        'lexv2models_intent',
        botId: .literal(leftover),
        botVersion: .literal(leftover),
        localeId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLexv2modelsSlot(
        'lexv2models_slot',
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
        'lexv2models_slot_type',
        botId: .literal(leftover),
        botVersion: .literal(leftover),
        localeId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLicensemanagerAssociation(
        'licensemanager_association',
        licenseConfigurationArn: .literal(arn),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsLicensemanagerGrant(
        'licensemanager_grant',
        allowedOperations: [.creategrant],
        licenseArn: .literal(arn),
        name: .literal(leftover),
        principal: .literal(arn),
      ),
    );

    add(
      AwsLicensemanagerGrantAccepter(
        'licensemanager_grant_accepter',
        grantArn: .literal(arn),
      ),
    );

    add(
      AwsLicensemanagerLicenseConfiguration(
        'licensemanager_license_configuration',
        licenseCountingType: .vcpu,
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailBucket(
        'lightsail_bucket',
        bundleId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailBucketAccessKey(
        'lightsail_bucket_access_key',
        bucketName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailBucketResourceAccess(
        'lightsail_bucket_resource_access',
        bucketName: .literal(leftover),
        resourceName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailCertificate(
        'lightsail_certificate',
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailContainerService(
        'lightsail_container_service',
        name: .literal(leftover),
        power: .literal('nano'),
        scale: .literal(1),
      ),
    );

    add(
      AwsLightsailContainerServiceDeploymentVersion(
        'lightsail_container_service_deployment_version',
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
        'lightsail_database',
        blueprintId: .literal(leftover),
        bundleId: .literal(leftover),
        masterDatabaseName: .literal(leftover),
        masterPassword: leftoverSecret,
        masterUsername: .literal(leftover),
        relationalDatabaseName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailDisk(
        'lightsail_disk',
        availabilityZone: .literal('us-east-1a'),
        name: .literal(leftover),
        sizeInGb: .literal(200),
      ),
    );

    add(
      AwsLightsailDiskAttachment(
        'lightsail_disk_attachment',
        diskName: .literal(leftover),
        diskPath: .literal(leftover),
        instanceName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailDistribution(
        'lightsail_distribution',
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

    add(AwsLightsailDomain('lightsail_domain', domainName: .literal(leftover)));

    add(
      AwsLightsailDomainEntry(
        'lightsail_domain_entry',
        domainName: .literal(leftover),
        name: .literal(leftover),
        target: .literal(leftover),
        type: .a,
      ),
    );

    add(
      AwsLightsailInstance(
        'lightsail_instance',
        availabilityZone: .literal('us-east-1a'),
        blueprintId: .literal(leftover),
        bundleId: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailInstancePublicPorts(
        'lightsail_instance_public_ports',
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

    add(AwsLightsailKeyPair('lightsail_key_pair'));

    add(
      AwsLightsailLb(
        'lightsail_lb',
        instancePort: .literal(200),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailLbAttachment(
        'lightsail_lb_attachment',
        instanceName: .literal(leftover),
        lbName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailLbCertificate(
        'lightsail_lb_certificate',
        lbName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsLightsailLbCertificateAttachment(
        'lightsail_lb_certificate_attachment',
        certificateName: .literal(leftover),
        lbName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailLbHttpsRedirectionPolicy(
        'lightsail_lb_https_redirection_policy',
        enabled: .literal(true),
        lbName: .literal(leftover),
      ),
    );

    add(
      AwsLightsailLbStickinessPolicy(
        'lightsail_lb_stickiness_policy',
        cookieDuration: .literal(200),
        enabled: .literal(true),
        lbName: .literal(leftover),
      ),
    );

    add(AwsLightsailStaticIp('lightsail_static_ip', name: .literal(leftover)));

    add(
      AwsLightsailStaticIpAttachment(
        'lightsail_static_ip_attachment',
        instanceName: .literal(leftover),
        staticIpName: .literal(leftover),
      ),
    );

    add(
      AwsLoadBalancerBackendServerPolicy(
        'load_balancer_backend_server_policy',
        instancePort: .literal(200),
        loadBalancerName: .literal(leftover),
      ),
    );

    add(
      AwsLoadBalancerListenerPolicy(
        'load_balancer_listener_policy',
        loadBalancerName: .literal(leftover),
        loadBalancerPort: .literal(200),
      ),
    );

    add(
      AwsLoadBalancerPolicy(
        'load_balancer_policy',
        loadBalancerName: .literal(leftover),
        policyName: .literal(leftover),
        policyTypeName: .literal(leftover),
      ),
    );

    add(
      AwsLocationGeofenceCollection(
        'location_geofence_collection',
        collectionName: .literal(leftover),
      ),
    );

    add(
      AwsLocationMap(
        'location_map',
        mapName: .literal(leftover),
        configuration: LocationMapConfiguration(style: .literal(leftover)),
      ),
    );

    add(
      AwsLocationPlaceIndex(
        'location_place_index',
        dataSource: .literal(leftover),
        indexName: .literal(leftover),
      ),
    );

    add(
      AwsLocationRouteCalculator(
        'location_route_calculator',
        calculatorName: .literal(leftover),
        dataSource: .literal(leftover),
      ),
    );

    add(
      AwsLocationTracker('location_tracker', trackerName: .literal(leftover)),
    );

    add(
      AwsLocationTrackerAssociation(
        'location_tracker_association',
        consumerArn: .literal(arn),
        trackerName: .literal(leftover),
      ),
    );

    add(
      AwsM2Application(
        'm2_application',
        engineType: .microfocus,
        name: .literal(leftover),
        definition: [.content(.literal(leftover))],
      ),
    );

    add(
      AwsM2Deployment(
        'm2_deployment',
        applicationId: .literal(leftover),
        applicationVersion: .literal(200),
        environmentId: .literal(leftover),
        start: .literal(true),
      ),
    );

    add(
      AwsM2Environment(
        'm2_environment',
        engineType: .microfocus,
        instanceType: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(AwsMacie2Account('macie2_account'));

    add(
      AwsMacie2ClassificationExportConfiguration(
        'macie2_classification_export_configuration',
        s3Destination: Macie2ClassificationExportConfigurationS3Destination(
          bucketName: .literal(leftover),
          kmsKeyArn: .literal(arn),
        ),
      ),
    );

    add(
      AwsMacie2ClassificationJob(
        'macie2_classification_job',
        jobType: .oneTime,
        s3JobDefinition: Macie2ClassificationJobS3JobDefinition(
          bucket: .bucketCriteria(
            .new(
              excludes: .new(
                and: [.new(simpleCriterion: .new(comparator: .eq))],
              ),
            ),
          ),
        ),
      ),
    );

    add(AwsMacie2CustomDataIdentifier('macie2_custom_data_identifier'));

    add(
      AwsMacie2FindingsFilter(
        'macie2_findings_filter',
        action: .archive,
        findingCriteria: Macie2FindingsFilterFindingCriteria(
          criterion: [.new(field: .literal(leftover))],
        ),
      ),
    );

    add(
      AwsMacie2InvitationAccepter(
        'macie2_invitation_accepter',
        administratorAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsMacie2Member(
        'macie2_member',
        accountId: .literal('123456789012'),
        email: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsMacie2OrganizationAdminAccount(
        'macie2_organization_admin_account',
        adminAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsMacie2OrganizationConfiguration(
        'macie2_organization_configuration',
        autoEnable: .literal(true),
      ),
    );

    add(AwsMailmanagerArchive('mailmanager_archive', name: .literal(leftover)));

    add(
      AwsMailmanagerIngressPoint(
        'mailmanager_ingress_point',
        name: .literal(leftover),
        ruleSetId: .literal(leftover),
        trafficPolicyId: .literal(leftover),
        type: .open,
      ),
    );

    add(
      AwsMailmanagerRelay(
        'mailmanager_relay',
        name: .literal(leftover),
        serverName: .literal(leftover),
        serverPort: .literal(200),
      ),
    );

    add(
      AwsMailmanagerRuleSet('mailmanager_rule_set', name: .literal(leftover)),
    );

    add(
      AwsMailmanagerTrafficPolicy(
        'mailmanager_traffic_policy',
        defaultAction: .allow,
        name: .literal(leftover),
      ),
    );

    add(
      AwsMainRouteTableAssociation(
        'main_route_table_association',
        routeTableId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(AwsMediaConvertQueue('media_convert_queue', name: .literal(leftover)));

    add(
      AwsMediaPackageChannel(
        'media_package_channel',
        channelId: .literal(leftover),
      ),
    );

    add(
      AwsMediaPackagev2ChannelGroup(
        'media_packagev2_channel_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsMediaStoreContainer('media_store_container', name: .literal(leftover)),
    );

    add(
      AwsMediaStoreContainerPolicy(
        'media_store_container_policy',
        containerName: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsMedialiveChannel(
        'medialive_channel',
        channelClass: .standard,
        name: .literal(leftover),
        destinations: [MedialiveChannelDestinations(id: .literal(leftover))],
        encoderSettings: MedialiveChannelEncoderSettings(
          outputGroups: [
            .new(
              outputGroupSettings: .new(
                archiveGroupSettings: [
                  .new(destination: .new(destinationRefId: .literal(leftover))),
                ],
              ),
              outputs: [
                .new(
                  outputSettings: .new(
                    archiveOutputSettings: .new(extension: .literal(leftover)),
                  ),
                ),
              ],
            ),
          ],
          timecodeConfig: .new(source: .literal('EMBEDDED')),
        ),
        inputAttachments: [
          MedialiveChannelInputAttachments(
            inputAttachmentName: .literal(leftover),
            inputId: .literal(leftover),
          ),
        ],
        inputSpecification: MedialiveChannelInputSpecification(
          codec: .mpeg2,
          inputResolution: .sd,
          maximumBitrate: .max10Mbps,
        ),
      ),
    );

    add(
      AwsMedialiveInput(
        'medialive_input',
        name: .literal(leftover),
        type: .udpPush,
      ),
    );

    add(
      AwsMedialiveInputSecurityGroup(
        'medialive_input_security_group',
        whitelistRules: [
          MedialiveInputSecurityGroupWhitelistRules(
            cidr: .literal('10.0.0.0/16'),
          ),
        ],
      ),
    );

    add(
      AwsMedialiveMultiplex(
        'medialive_multiplex',
        availabilityZones: .literal(['us-east-1a', 'us-east-1a1']),
        name: .literal(leftover),
      ),
    );

    add(
      AwsMedialiveMultiplexProgram(
        'medialive_multiplex_program',
        multiplexId: .literal(leftover),
        programName: .literal(leftover),
      ),
    );

    add(AwsMemorydbAcl('memorydb_acl'));

    add(
      AwsMemorydbCluster(
        'memorydb_cluster',
        aclName: .literal(leftover),
        nodeType: .literal(leftover),
      ),
    );

    add(
      AwsMemorydbMultiRegionCluster(
        'memorydb_multi_region_cluster',
        multiRegionClusterNameSuffix: .literal(leftover),
        nodeType: .literal(leftover),
      ),
    );

    add(
      AwsMemorydbParameterGroup(
        'memorydb_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsMemorydbSnapshot('memorydb_snapshot', clusterName: .literal(leftover)),
    );

    add(
      AwsMemorydbSubnetGroup(
        'memorydb_subnet_group',
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsMemorydbUser(
        'memorydb_user',
        accessString: .literal(leftover),
        userName: .literal(leftover),
        authenticationMode: MemorydbUserAuthenticationMode(type: .password),
      ),
    );

    add(
      AwsMqBroker(
        'mq_broker',
        brokerName: .literal(leftover),
        engineType: .activemq,
        engineVersion: .literal(leftover),
        hostInstanceType: .literal(leftover),
      ),
    );

    add(
      AwsMqConfiguration(
        'mq_configuration',
        data: .literal(leftover),
        engineType: .activemq,
        engineVersion: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsMskChannel(
        'msk_channel',
        channelName: .literal(leftover),
        clusterArn: .literal(arn),
        destination: .icebergDestination([
          .new(
            appendOnly: .literal(true),
            serviceExecutionRoleArn: .literal(arn),
            deadLetterQueueS3: [.new(bucketArn: .literal(arn))],
            destinationTable: [
              .new(destinationDatabaseName: .literal(leftover)),
            ],
            schemaEvolution: [.new(enableSchemaEvolution: .literal(true))],
            tableCreation: [.new(enableTableCreation: .literal(true))],
          ),
        ]),
        topicConfiguration: [
          MskChannelTopicConfiguration(
            topicArn: .literal(arn),
            recordConverter: [.new(valueConverter: .byteArray)],
          ),
        ],
      ),
    );

    add(
      AwsMskCluster(
        'msk_cluster',
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
        'msk_cluster_policy',
        clusterArn: .literal(arn),
        policy: .literal(policy),
      ),
    );

    add(
      AwsMskConfiguration(
        'msk_configuration',
        name: .literal(leftover),
        serverProperties: .literal(leftover),
      ),
    );

    add(
      AwsMskReplicator(
        'msk_replicator',
        replicatorName: .literal(leftover),
        serviceExecutionRoleArn: .literal(arn),
        kafkaCluster: [
          MskReplicatorKafkaCluster(
            amazonMskCluster: .new(mskClusterArn: .literal(arn)),
          ),
          MskReplicatorKafkaCluster(
            amazonMskCluster: .new(mskClusterArn: .literal(arn)),
          ),
        ],
        replicationInfoList: MskReplicatorReplicationInfoList(
          sourceKafkaCluster: .sourceKafkaClusterArn(.literal(arn)),
          targetCompressionType: .literal(leftover),
          targetKafkaCluster: .targetKafkaClusterArn(.literal(arn)),
          consumerGroupReplication: [
            .new(consumerGroupsToReplicate: .literal([leftover])),
          ],
          topicReplication: [
            .new(topicsToReplicate: .literal([leftover])),
          ],
        ),
      ),
    );

    add(
      AwsMskScramSecretAssociation(
        'msk_scram_secret_association',
        clusterArn: .literal(arn),
        secretArnList: .literal([arn]),
      ),
    );

    add(
      AwsMskServerlessCluster(
        'msk_serverless_cluster',
        clusterName: .literal(leftover),
        clientAuthentication: MskServerlessClusterClientAuthentication(
          sasl: .new(iam: .new(enabled: .literal(true))),
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
        'msk_single_scram_secret_association',
        clusterArn: .literal(arn),
        secretArn: .literal(arn),
      ),
    );

    add(
      AwsMskTopic(
        'msk_topic',
        clusterArn: .literal(arn),
        name: .literal(leftover),
        partitionCount: .literal(200),
        replicationFactor: .literal(200),
      ),
    );

    add(
      AwsMskVpcConnection(
        'msk_vpc_connection',
        authentication: .literal(leftover),
        clientSubnets: .literal([leftover]),
        securityGroups: .literal([.literal(leftover)]),
        targetClusterArn: .literal(arn),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsMskconnectConnector(
        'mskconnect_connector',
        connectorConfiguration: .literal({'k': leftover}),
        kafkaconnectVersion: .literal(leftover),
        name: .literal(leftover),
        serviceExecutionRoleArn: .literal(arn),
        capacity: .autoscaling(
          .new(maxWorkerCount: .literal(1), minWorkerCount: .literal(1)),
        ),
        kafkaCluster: MskconnectConnectorKafkaCluster(
          apacheKafkaCluster: .new(
            bootstrapServers: .literal(leftover),
            vpc: .new(
              securityGroups: .literal([.literal(leftover)]),
              subnets: .literal([.literal(leftover)]),
            ),
          ),
        ),
        kafkaClusterClientAuthentication:
            MskconnectConnectorKafkaClusterClientAuthentication(
              authenticationType: .none,
            ),
        kafkaClusterEncryptionInTransit:
            MskconnectConnectorKafkaClusterEncryptionInTransit(
              encryptionType: .plaintext,
            ),
        plugin: [
          MskconnectConnectorPlugin(
            customPlugin: .new(arn: .literal(arn), revision: .literal(200)),
          ),
        ],
      ),
    );

    add(
      AwsMskconnectCustomPlugin(
        'mskconnect_custom_plugin',
        contentType: .jar,
        name: .literal(leftover),
        location: MskconnectCustomPluginLocation(
          s3: .new(bucketArn: .literal(arn), fileKey: .literal(leftover)),
        ),
      ),
    );

    add(
      AwsMskconnectWorkerConfiguration(
        'mskconnect_worker_configuration',
        name: .literal(leftover),
        propertiesFileContent: .literal(leftover),
      ),
    );

    add(
      AwsMwaaEnvironment(
        'mwaa_environment',
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

    add(AwsNatGateway('nat_gateway'));

    add(
      AwsNatGatewayEipAssociation(
        'nat_gateway_eip_association',
        allocationId: .literal(leftover),
        natGatewayId: .literal(leftover),
      ),
    );

    add(AwsNeptuneCluster('neptune_cluster'));

    add(
      AwsNeptuneClusterEndpoint(
        'neptune_cluster_endpoint',
        clusterEndpointIdentifier: .literal(leftover),
        clusterIdentifier: .literal(leftover),
        endpointType: .any,
      ),
    );

    add(
      AwsNeptuneClusterInstance(
        'neptune_cluster_instance',
        clusterIdentifier: .literal(leftover),
        instanceClass: .literal(leftover),
      ),
    );

    add(
      AwsNeptuneClusterParameterGroup(
        'neptune_cluster_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsNeptuneClusterSnapshot(
        'neptune_cluster_snapshot',
        dbClusterIdentifier: .literal(leftover),
        dbClusterSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsNeptuneEventSubscription(
        'neptune_event_subscription',
        snsTopicArn: .literal(arn),
      ),
    );

    add(
      AwsNeptuneGlobalCluster(
        'neptune_global_cluster',
        source: .engine(.neptune),
        globalClusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsNeptuneParameterGroup(
        'neptune_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsNeptuneSubnetGroup(
        'neptune_subnet_group',
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsNeptunegraphGraph(
        'neptunegraph_graph',
        provisionedMemory: .literal(8),
      ),
    );

    add(
      AwsNeptunegraphPrivateGraphEndpoint(
        'neptunegraph_private_graph_endpoint',
        graphIdentifier: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(AwsNetworkAcl('network_acl', vpcId: .literal('vpc-0123456789abcdef0')));

    add(
      AwsNetworkAclAssociation(
        'network_acl_association',
        networkAclId: .literal(leftover),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkAclRule(
        'network_acl_rule',
        cidr: .cidrBlock(.literal('10.0.0.0/16')),
        networkAclId: .literal(leftover),
        protocol: .literal('tcp'),
        ruleAction: .allow,
        ruleNumber: .literal(200),
      ),
    );

    add(
      AwsNetworkInterface(
        'network_interface',
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkInterfaceAttachment(
        'network_interface_attachment',
        deviceIndex: .literal(200),
        instanceId: .literal('i-0123456789abcdef0'),
        networkInterfaceId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkInterfacePermission(
        'network_interface_permission',
        awsAccountId: .literal('123456789012'),
        networkInterfaceId: .literal(leftover),
        permission: .instanceAttach,
      ),
    );

    add(
      AwsNetworkInterfaceSgAttachment(
        'network_interface_sg_attachment',
        networkInterfaceId: .literal(leftover),
        securityGroupId: .literal('sg-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkfirewallContainerAssociation(
        'networkfirewall_container_association',
        containerAssociationName: .literal(leftover),
        type: .ecs,
        containerMonitoringConfiguration: [
          NetworkfirewallContainerAssociationContainerMonitoringConfiguration(
            clusterArn: .literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsNetworkfirewallFirewall(
        'networkfirewall_firewall',
        firewallPolicyArn: .literal(arn),
        name: .literal(leftover),
        attachment: .transitGatewayId(.literal(leftover)),
      ),
    );

    add(
      AwsNetworkfirewallFirewallPolicy(
        'networkfirewall_firewall_policy',
        name: .literal(leftover),
        firewallPolicy: NetworkfirewallFirewallPolicy(
          statelessDefaultActions: .literal([leftover]),
          statelessFragmentDefaultActions: .literal([leftover]),
        ),
      ),
    );

    add(
      AwsNetworkfirewallFirewallTransitGatewayAttachmentAccepter(
        'networkfirewall_firewall_transit_gateway_attachm',
        transitGatewayAttachmentId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkfirewallLoggingConfiguration(
        'networkfirewall_logging_configuration',
        firewallArn: .literal(arn),
        loggingConfiguration: NetworkfirewallLoggingConfiguration(
          logDestinationConfig: [
            .new(
              logDestination: .literal({'bucketName': leftover}),
              logDestinationType: .s3,
              logType: .flow,
            ),
          ],
        ),
      ),
    );

    add(
      AwsNetworkfirewallResourcePolicy(
        'networkfirewall_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkfirewallRuleGroup(
        'networkfirewall_rule_group',
        capacity: .literal(200),
        name: .literal(leftover),
        type: .stateless,
      ),
    );

    add(
      AwsNetworkfirewallTlsInspectionConfiguration(
        'networkfirewall_tls_inspection_configuration',
        name: .literal(leftover),
        tlsInspectionConfiguration: [
          NetworkfirewallTlsInspectionConfiguration(
            serverCertificateConfiguration: [
              .new(
                scope: [
                  .new(
                    protocols: .literal([6]),
                    destination: [
                      .new(addressDefinition: .literal('10.0.0.0/16')),
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
        'networkfirewall_vpc_endpoint_association',
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
        'networkflowmonitor_monitor',
        monitorName: .literal(leftover),
        scopeArn: .literal(arn),
        localResource: [
          NetworkflowmonitorMonitorLocalResource(
            identifier: .literal(leftover),
            type: .awsEc2Vpc,
          ),
        ],
      ),
    );

    add(
      AwsNetworkflowmonitorScope(
        'networkflowmonitor_scope',
        target: [
          NetworkflowmonitorScopeTarget(
            region: .literal('us-east-1'),
            targetIdentifier: [
              .new(
                targetType: .account,
                targetId: [.new(accountId: .literal('123456789012'))],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsNetworkmanagerAttachmentAccepter(
        'networkmanager_attachment_accepter',
        attachmentId: .literal(leftover),
        attachmentType: .connect,
      ),
    );

    add(
      AwsNetworkmanagerAttachmentRoutingPolicyLabel(
        'networkmanager_attachment_routing_policy_label',
        attachmentId: .literal(leftover),
        coreNetworkId: .literal(leftover),
        routingPolicyLabel: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerConnectAttachment(
        'networkmanager_connect_attachment',
        coreNetworkId: .literal('core-network-0123456789abcdef0'),
        edgeLocation: .literal(leftover),
        transportAttachmentId: .literal('attachment-0123456789abcdef0'),
        options: NetworkmanagerConnectAttachmentOptions(protocol: .gre),
      ),
    );

    add(
      AwsNetworkmanagerConnectPeer(
        'networkmanager_connect_peer',
        connectAttachmentId: .literal('attachment-0123456789abcdef0'),
        peerAddress: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerConnection(
        'networkmanager_connection',
        connectedDeviceId: .literal(leftover),
        deviceId: .literal(leftover),
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerCoreNetwork(
        'networkmanager_core_network',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerCoreNetworkPolicyAttachment(
        'networkmanager_core_network_policy_attachment',
        coreNetworkId: .literal('core-network-0123456789abcdef0'),
        policyDocument: .literal(policy),
      ),
    );

    add(
      AwsNetworkmanagerCustomerGatewayAssociation(
        'networkmanager_customer_gateway_association',
        customerGatewayArn: .literal(arn),
        deviceId: .literal(leftover),
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerDevice(
        'networkmanager_device',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerDxGatewayAttachment(
        'networkmanager_dx_gateway_attachment',
        coreNetworkId: .literal(leftover),
        directConnectGatewayArn: .literal(arn),
        edgeLocations: .literal([leftover]),
      ),
    );

    add(AwsNetworkmanagerGlobalNetwork('networkmanager_global_network'));

    add(
      AwsNetworkmanagerLink(
        'networkmanager_link',
        globalNetworkId: .literal(leftover),
        siteId: .literal(leftover),
        bandwidth: NetworkmanagerLinkBandwidth(downloadSpeed: .literal(200)),
      ),
    );

    add(
      AwsNetworkmanagerLinkAssociation(
        'networkmanager_link_association',
        deviceId: .literal(leftover),
        globalNetworkId: .literal(leftover),
        linkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerPrefixListAssociation(
        'networkmanager_prefix_list_association',
        coreNetworkId: .literal(leftover),
        prefixListAlias: .literal(leftover),
        prefixListArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerSite(
        'networkmanager_site',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerSiteToSiteVpnAttachment(
        'networkmanager_site_to_site_vpn_attachment',
        coreNetworkId: .literal(leftover),
        vpnConnectionArn: .literal(
          'arn:aws:ec2:us-east-1:123456789012:vpn-connection/vpn-0123456789abcdef0',
        ),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayConnectPeerAssociation(
        'networkmanager_transit_gateway_connect_peer_asso',
        deviceId: .literal(leftover),
        globalNetworkId: .literal(leftover),
        transitGatewayConnectPeerArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayPeering(
        'networkmanager_transit_gateway_peering',
        coreNetworkId: .literal(leftover),
        transitGatewayArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayRegistration(
        'networkmanager_transit_gateway_registration',
        globalNetworkId: .literal(leftover),
        transitGatewayArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayRouteTableAttachment(
        'networkmanager_transit_gateway_route_table_attac',
        peeringId: .literal(leftover),
        transitGatewayRouteTableArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerVpcAttachment(
        'networkmanager_vpc_attachment',
        coreNetworkId: .literal(leftover),
        subnetArns: .literal([arn]),
        vpcArn: .literal(arn),
      ),
    );

    add(
      AwsNetworkmonitorMonitor(
        'networkmonitor_monitor',
        monitorName: .literal(leftover),
      ),
    );

    add(
      AwsNetworkmonitorProbe(
        'networkmonitor_probe',
        destination: .literal(leftover),
        monitorName: .literal(leftover),
        protocol: .tcp,
        sourceArn: .literal(arn),
      ),
    );

    add(
      AwsNotificationsChannelAssociation(
        'notifications_channel_association',
        arn: .literal(arn),
        notificationConfigurationArn: .literal(arn),
      ),
    );

    add(
      AwsNotificationsEventRule(
        'notifications_event_rule',
        eventType: .literal(leftover),
        notificationConfigurationArn: .literal(arn),
        regions: .literal([leftover]),
        source: .literal('awsO1avdq40u4icn'),
      ),
    );

    add(
      AwsNotificationsManagedNotificationAccountContactAssociation(
        'notifications_managed_notification_account_conta',
        contactIdentifier: .accountPrimary,
        managedNotificationConfigurationArn: .literal(arn),
      ),
    );

    add(
      AwsNotificationsManagedNotificationAdditionalChannelAssociation(
        'notifications_managed_notification_additional_ch',
        channelArn: .literal(arn),
        managedNotificationArn: .literal(arn),
      ),
    );

    add(
      AwsNotificationsNotificationConfiguration(
        'notifications_notification_configuration',
        description: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsNotificationsNotificationHub(
        'notifications_notification_hub',
        notificationHubRegion: .literal('us-east-1'),
      ),
    );

    add(
      AwsNotificationsOrganizationalUnitAssociation(
        'notifications_organizational_unit_association',
        notificationConfigurationArn: .literal(arn),
        organizationalUnitId: .literal(leftover),
      ),
    );

    add(
      AwsNotificationsOrganizationsAccess(
        'notifications_organizations_access',
        enabled: .literal(true),
      ),
    );

    add(
      AwsNotificationscontactsEmailContact(
        'notificationscontacts_email_contact',
        emailAddress: .literal('leftover@example.com'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsOamLink(
        'oam_link',
        labelTemplate: .literal(leftover),
        resourceTypes: [.awsCloudwatchMetric],
        sinkIdentifier: .literal(leftover),
      ),
    );

    add(AwsOamSink('oam_sink', name: .literal(leftover)));

    add(
      AwsOamSinkPolicy(
        'oam_sink_policy',
        policy: .literal(policy),
        sinkIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsObservabilityadminCentralizationRuleForOrganization(
        'observabilityadmin_centralization_rule_for_organ',
        ruleName: .literal(leftover),
        rule: [
          ObservabilityadminCentralizationRuleForOrganizationRule(
            source: [
              .new(regions: .literal(['us-east-1']), scope: .literal(leftover)),
            ],
            destination: [
              .new(
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
        'observabilityadmin_s3_table_integration',
        roleArn: .literal(arn),
        encryption: [
          ObservabilityadminS3TableIntegrationEncryption(sseAlgorithm: .awsKms),
        ],
      ),
    );

    add(
      AwsObservabilityadminTelemetryEnrichment(
        'observabilityadmin_telemetry_enrichment',
      ),
    );

    add(
      AwsObservabilityadminTelemetryEvaluation(
        'observabilityadmin_telemetry_evaluation',
      ),
    );

    add(
      AwsObservabilityadminTelemetryEvaluationForOrganization(
        'observabilityadmin_telemetry_evaluation_for_orga',
      ),
    );

    add(
      AwsObservabilityadminTelemetryPipeline(
        'observabilityadmin_telemetry_pipeline',
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
        'observabilityadmin_telemetry_rule',
        ruleName: .literal(leftover),
        rule: [ObservabilityadminTelemetryRule(telemetryType: .logs)],
      ),
    );

    add(
      AwsObservabilityadminTelemetryRuleForOrganization(
        'observabilityadmin_telemetry_rule_for_organizati',
        ruleName: .literal(leftover),
        rule: [
          ObservabilityadminTelemetryRuleForOrganizationRule(
            telemetryType: .logs,
          ),
        ],
      ),
    );

    add(
      AwsOdbCloudAutonomousVmCluster(
        'odb_cloud_autonomous_vm_cluster',
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
            preference: .noPreference,
          ),
        ],
        odbNetworkId: .literal(leftover),
        cloudExadataInfrastructureId: .literal(leftover),
      ),
    );

    add(
      AwsOdbCloudExadataInfrastructure(
        'odb_cloud_exadata_infrastructure',
        availabilityZoneId: .literal('us-east-1a'),
        displayName: .literal(leftover),
        shape: .literal(leftover),
        maintenanceWindow: [
          OdbCloudExadataInfrastructureMaintenanceWindow(
            customActionTimeoutInMins: .literal(200),
            isCustomActionTimeoutEnabled: .literal(true),
            patchingMode: .rolling,
            preference: .noPreference,
          ),
        ],
      ),
    );

    add(
      AwsOdbCloudVmCluster(
        'odb_cloud_vm_cluster',
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
        'odb_iam_role_association',
        awsIntegration: .literal(leftover),
        iamRoleArn: .literal(arn),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsOdbNetwork(
        'odb_network',
        availabilityZoneId: .literal('us-east-1a'),
        backupSubnetCidr: .literal('10.0.0.0/16'),
        clientSubnetCidr: .literal('10.0.0.0/16'),
        displayName: .literal(leftover),
        s3Access: .enabled,
        zeroEtlAccess: .enabled,
      ),
    );

    add(
      AwsOdbNetworkPeeringConnection(
        'odb_network_peering_connection',
        displayName: .literal(leftover),
        peerNetworkId: .literal(leftover),
        odbNetworkId: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchApplication(
        'opensearch_application',
        name: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchAuthorizeVpcEndpointAccess(
        'opensearch_authorize_vpc_endpoint_access',
        account: .literal(leftover),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchDomain('opensearch_domain', domainName: .literal(leftover)),
    );

    add(
      AwsOpensearchDomainPolicy(
        'opensearch_domain_policy',
        accessPolicies: .literal(policy),
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchDomainSamlOptions(
        'opensearch_domain_saml_options',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchInboundConnectionAccepter(
        'opensearch_inbound_connection_accepter',
        connectionId: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchOutboundConnection(
        'opensearch_outbound_connection',
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
        'opensearch_package',
        packageName: .literal(leftover),
        packageType: .txtDictionary,
        packageSource: OpensearchPackageSource(
          s3BucketName: .literal(leftover),
          s3Key: .literal(leftover),
        ),
      ),
    );

    add(
      AwsOpensearchPackageAssociation(
        'opensearch_package_association',
        domainName: .literal(leftover),
        packageId: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchVpcEndpoint(
        'opensearch_vpc_endpoint',
        domainArn: .literal(arn),
        vpcOptions: OpensearchVpcEndpointVpcOptions(
          subnetIds: .literal([.literal(leftover)]),
        ),
      ),
    );

    add(
      AwsOpensearchserverlessAccessPolicy(
        'opensearchserverless_access_policy',
        name: .literal(leftover),
        policy: .literal(policy),
        type: .data,
      ),
    );

    add(
      AwsOpensearchserverlessCollection(
        'opensearchserverless_collection',
        name: .literal(leftover),
      ),
    );

    add(
      AwsOpensearchserverlessCollectionGroup(
        'opensearchserverless_collection_group',
        name: .literal(leftover),
        standbyReplicas: .enabled,
      ),
    );

    add(
      AwsOpensearchserverlessLifecyclePolicy(
        'opensearchserverless_lifecycle_policy',
        name: .literal(leftover),
        policy: .literal(policy),
        type: .retention,
      ),
    );

    add(
      AwsOpensearchserverlessSecurityConfig(
        'opensearchserverless_security_config',
        name: .literal(leftover),
        type: .saml,
        options: .iamFederationOptions([
          .new(groupAttribute: .literal(leftover)),
        ]),
      ),
    );

    add(
      AwsOpensearchserverlessSecurityPolicy(
        'opensearchserverless_security_policy',
        name: .literal(leftover),
        policy: .literal(policy),
        type: .encryption,
      ),
    );

    add(
      AwsOpensearchserverlessVpcEndpoint(
        'opensearchserverless_vpc_endpoint',
        name: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsOrganizationsAccount(
        'organizations_account',
        email: .literal('leftover@example.com'),
        name: .literal(leftover),
      ),
    );

    add(
      AwsOrganizationsAwsServiceAccess(
        'organizations_aws_service_access',
        servicePrincipal: .literal('ec2.amazonaws.com'),
      ),
    );

    add(
      AwsOrganizationsDelegatedAdministrator(
        'organizations_delegated_administrator',
        accountId: .literal('123456789012'),
        servicePrincipal: .literal(leftover),
      ),
    );

    add(AwsOrganizationsOrganization('organizations_organization'));

    add(
      AwsOrganizationsOrganizationalUnit(
        'organizations_organizational_unit',
        name: .literal(leftover),
        parentId: .literal('r-ab12'),
      ),
    );

    add(
      AwsOrganizationsPolicy(
        'organizations_policy',
        content: .literal(policy),
        name: .literal(leftover),
      ),
    );

    add(
      AwsOrganizationsPolicyAttachment(
        'organizations_policy_attachment',
        policyId: .literal(leftover),
        targetId: .literal(leftover),
      ),
    );

    add(
      AwsOrganizationsResourcePolicy(
        'organizations_resource_policy',
        content: .literal(policy),
      ),
    );

    add(
      AwsOrganizationsTag(
        'organizations_tag',
        key: .literal(leftover),
        resourceId: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(
      AwsOsisPipeline(
        'osis_pipeline',
        maxUnits: .literal(200),
        minUnits: .literal(200),
        pipelineConfigurationBody: .literal(leftover),
        pipelineName: .literal(leftover),
      ),
    );

    add(
      AwsOsisPipelineEndpoint(
        'osis_pipeline_endpoint',
        pipelineArn: .literal(arn),
      ),
    );

    add(
      AwsOsisResourcePolicy(
        'osis_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsOutpostsCapacityTask(
        'outposts_capacity_task',
        outpostIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsPaymentcryptographyKey(
        'paymentcryptography_key',
        exportable: .literal(true),
      ),
    );

    add(
      AwsPaymentcryptographyKeyAlias(
        'paymentcryptography_key_alias',
        aliasName: .literal('alias/leftover'),
      ),
    );

    add(
      AwsPinpointAdmChannel(
        'pinpoint_adm_channel',
        applicationId: .literal(leftover),
        clientId: leftoverSecret,
        clientSecret: leftoverSecret,
      ),
    );

    add(
      AwsPinpointApnsChannel(
        'pinpoint_apns_channel',
        applicationId: .literal(leftover),
      ),
    );

    add(
      AwsPinpointApnsSandboxChannel(
        'pinpoint_apns_sandbox_channel',
        applicationId: .literal(leftover),
      ),
    );

    add(
      AwsPinpointApnsVoipChannel(
        'pinpoint_apns_voip_channel',
        applicationId: .literal(leftover),
      ),
    );

    add(
      AwsPinpointApnsVoipSandboxChannel(
        'pinpoint_apns_voip_sandbox_channel',
        applicationId: .literal(leftover),
      ),
    );

    add(AwsPinpointApp('pinpoint_app'));

    add(
      AwsPinpointBaiduChannel(
        'pinpoint_baidu_channel',
        apiKey: leftoverSecret,
        applicationId: .literal(leftover),
        secretKey: leftoverSecret,
      ),
    );

    add(
      AwsPinpointEmailChannel(
        'pinpoint_email_channel',
        applicationId: .literal(leftover),
        fromAddress: .literal(leftover),
        identity: .literal(arn),
      ),
    );

    add(
      AwsPinpointEmailTemplate(
        'pinpoint_email_template',
        templateName: .literal(leftover),
      ),
    );

    add(
      AwsPinpointEventStream(
        'pinpoint_event_stream',
        applicationId: .literal(leftover),
        destinationStreamArn: .literal(arn),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsPinpointGcmChannel(
        'pinpoint_gcm_channel',
        credentials: .serviceJson(leftoverSecret),
        applicationId: .literal(leftover),
      ),
    );

    add(
      AwsPinpointSmsChannel(
        'pinpoint_sms_channel',
        applicationId: .literal(leftover),
      ),
    );

    add(
      AwsPinpointsmsvoicev2ConfigurationSet(
        'pinpointsmsvoicev2_configuration_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsPinpointsmsvoicev2EventDestination(
        'pinpointsmsvoicev2_event_destination',
        configurationSetName: .literal(leftover),
        eventDestinationName: .literal(leftover),
        matchingEventTypes: [.all],
        target: .cloudwatchLogsDestination([
          .new(iamRoleArn: .literal(arn), logGroupArn: .literal(arn)),
        ]),
      ),
    );

    add(
      AwsPinpointsmsvoicev2Keyword(
        'pinpointsmsvoicev2_keyword',
        keyword: .literal('LEFTOVER'),
        keywordMessage: .literal(leftover),
        originationIdentityArn: .literal(arn),
      ),
    );

    add(
      AwsPinpointsmsvoicev2OptOutList(
        'pinpointsmsvoicev2_opt_out_list',
        name: .literal(leftover),
      ),
    );

    add(
      AwsPinpointsmsvoicev2PhoneNumber(
        'pinpointsmsvoicev2_phone_number',
        isoCountryCode: .literal('US'),
        messageType: .transactional,
        numberCapabilities: [.sms],
        numberType: .longCode,
      ),
    );

    add(
      AwsPinpointsmsvoicev2Pool(
        'pinpointsmsvoicev2_pool',
        messageType: .transactional,
        originationIdentities: .literal([leftover]),
      ),
    );

    add(
      AwsPinpointsmsvoicev2ResourcePolicy(
        'pinpointsmsvoicev2_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsPinpointsmsvoicev2SenderId(
        'pinpointsmsvoicev2_sender_id',
        isoCountryCode: .literal('US'),
        senderId: .literal('LEFTOVER'),
      ),
    );

    add(
      AwsPipesPipe(
        'pipes_pipe',
        roleArn: .literal(arn),
        source: .literal(arn),
        target: .literal(arn),
      ),
    );

    add(
      AwsPlacementGroup(
        'placement_group',
        name: .literal(leftover),
        strategy: .cluster,
      ),
    );

    add(
      AwsPrometheusAlertManagerDefinition(
        'prometheus_alert_manager_definition',
        definition: .literal(leftover),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsPrometheusAnomalyDetector(
        'prometheus_anomaly_detector',
        alias: .literal(leftover),
        workspaceId: .literal(leftover),
        configuration: [
          PrometheusAnomalyDetectorConfiguration(
            randomCutForest: [.new(query: .literal(leftover))],
          ),
        ],
        missingDataAction: [.markAsAnomaly(.literal(true))],
      ),
    );

    add(
      AwsPrometheusQueryLoggingConfiguration(
        'prometheus_query_logging_configuration',
        workspaceId: .literal(leftover),
        destination: [
          PrometheusQueryLoggingConfigurationDestination(
            filters: [.new(qspThreshold: .literal(200))],
            cloudwatchLogs: [
              .new(
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
        'prometheus_resource_policy',
        policyDocument: .literal(policy),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsPrometheusRuleGroupNamespace(
        'prometheus_rule_group_namespace',
        data: .literal(leftover),
        name: .literal(leftover),
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsPrometheusScraper(
        'prometheus_scraper',
        scrapeConfiguration: .literal(leftover),
        destination: [
          PrometheusScraperDestination(
            amp: [.new(workspaceArn: .literal(arn))],
          ),
        ],
      ),
    );

    add(
      AwsPrometheusScraperLoggingConfiguration(
        'prometheus_scraper_logging_configuration',
        scraperId: .literal(leftover),
        loggingDestination: [
          PrometheusScraperLoggingConfigurationLoggingDestination(
            cloudwatchLogs: [
              .new(
                logGroupArn: .literal(
                  'arn:aws:logs:us-east-1:123456789012:log-group:leftover:*',
                ),
              ),
            ],
          ),
        ],
      ),
    );

    add(AwsPrometheusWorkspace('prometheus_workspace'));

    add(
      AwsPrometheusWorkspaceConfiguration(
        'prometheus_workspace_configuration',
        workspaceId: .literal(leftover),
      ),
    );

    add(
      AwsProxyProtocolPolicy(
        'proxy_protocol_policy',
        instancePorts: .literal(['64512']),
        loadBalancer: .literal(leftover),
      ),
    );

    add(
      AwsQbusinessApplication(
        'qbusiness_application',
        displayName: .literal(leftover),
        iamServiceRoleArn: .literal(arn),
        identityCenterInstanceArn: .literal(arn),
        attachmentsConfiguration: [
          QbusinessApplicationAttachmentsConfiguration(
            attachmentsControlMode: .enabled,
          ),
        ],
      ),
    );

    add(AwsQldbLedger('qldb_ledger', permissionsMode: .allowAll));

    add(
      AwsQldbStream(
        'qldb_stream',
        inclusiveStartTime: .literal('2026-01-01T00:00:00Z'),
        ledgerName: .literal(leftover),
        roleArn: .literal(arn),
        streamName: .literal(leftover),
        kinesisConfiguration: QldbStreamKinesisConfiguration(
          streamArn: .literal(arn),
        ),
      ),
    );

    add(AwsQuicksightAccountSettings('quicksight_account_settings'));

    add(
      AwsQuicksightAccountSubscription(
        'quicksight_account_subscription',
        accountName: .literal(leftover),
        authenticationMethod: .iamAndQuicksight,
        edition: .standard,
        notificationEmail: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsQuicksightAnalysis(
        'quicksight_analysis',
        analysisId: .literal(leftover),
        name: .literal(leftover),
        sourceEntity: QuicksightAnalysisSourceEntity(
          sourceTemplate: .new(
            arn: .literal(arn),
            dataSetReferences: [
              .new(
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
        'quicksight_custom_permissions',
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
        'quicksight_dashboard',
        dashboardId: .literal(leftover),
        name: .literal(leftover),
        versionDescription: .literal(leftover),
        sourceEntity: QuicksightDashboardSourceEntity(
          sourceTemplate: .new(
            arn: .literal(arn),
            dataSetReferences: [
              .new(
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
        'quicksight_data_set',
        dataSetId: .literal(leftover),
        importMode: .spice,
        name: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightDataSource(
        'quicksight_data_source',
        dataSourceId: .literal(leftover),
        name: .literal(leftover),
        type: .adobeAnalytics,
        parameters: QuicksightDataSourceParameters(
          amazonElasticsearch: .new(domain: .literal(leftover)),
        ),
      ),
    );

    add(AwsQuicksightFolder('quicksight_folder', folderId: .literal(leftover)));

    add(
      AwsQuicksightFolderMembership(
        'quicksight_folder_membership',
        folderId: .literal(leftover),
        memberId: .literal(leftover),
        memberType: .dashboard,
      ),
    );

    add(AwsQuicksightGroup('quicksight_group', groupName: .literal(leftover)));

    add(
      AwsQuicksightGroupMembership(
        'quicksight_group_membership',
        groupName: .literal(leftover),
        memberName: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightIamPolicyAssignment(
        'quicksight_iam_policy_assignment',
        assignmentName: .literal(leftover),
        assignmentStatus: .enabled,
      ),
    );

    add(
      AwsQuicksightIngestion(
        'quicksight_ingestion',
        dataSetId: .literal(leftover),
        ingestionId: .literal(leftover),
        ingestionType: .incrementalRefresh,
      ),
    );

    add(
      AwsQuicksightIpRestriction(
        'quicksight_ip_restriction',
        enabled: .literal(true),
      ),
    );

    add(
      AwsQuicksightKeyRegistration(
        'quicksight_key_registration',
        keyRegistration: [QuicksightKeyRegistration(keyArn: .literal(arn))],
      ),
    );

    add(
      AwsQuicksightNamespace(
        'quicksight_namespace',
        namespace: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightRefreshSchedule(
        'quicksight_refresh_schedule',
        dataSetId: .literal(leftover),
        scheduleId: .literal(leftover),
        schedule: [
          QuicksightRefreshSchedule(
            refreshType: .incrementalRefresh,
            scheduleFrequency: [.new(interval: .minute15)],
          ),
        ],
      ),
    );

    add(
      AwsQuicksightRoleCustomPermission(
        'quicksight_role_custom_permission',
        customPermissionsName: .literal(leftover),
        role: .admin,
      ),
    );

    add(
      AwsQuicksightRoleMembership(
        'quicksight_role_membership',
        memberName: .literal(leftover),
        role: .admin,
      ),
    );

    add(
      AwsQuicksightTemplate(
        'quicksight_template',
        name: .literal(leftover),
        templateId: .literal(leftover),
        versionDescription: .literal(leftover),
        sourceEntity: QuicksightTemplateSourceEntity(
          sourceAnalysis: .new(
            arn: .literal(arn),
            dataSetReferences: [
              .new(
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
        'quicksight_template_alias',
        aliasName: .literal(leftover),
        templateId: .literal(leftover),
        templateVersionNumber: .literal(200),
      ),
    );

    add(
      AwsQuicksightTheme(
        'quicksight_theme',
        baseThemeId: .literal(leftover),
        name: .literal(leftover),
        themeId: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightUser(
        'quicksight_user',
        email: .literal('leftover@example.com'),
        identityType: .iam,
        userRole: .admin,
      ),
    );

    add(
      AwsQuicksightUserCustomPermission(
        'quicksight_user_custom_permission',
        customPermissionsName: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsQuicksightVpcConnection(
        'quicksight_vpc_connection',
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
        'ram_permission',
        name: .literal(leftover),
        policyTemplate: .literal(leftover),
        resourceType: .literal(leftover),
      ),
    );

    add(
      AwsRamPrincipalAssociation(
        'ram_principal_association',
        principal: .literal(arn),
        resourceShareArn: .literal(arn),
      ),
    );

    add(
      AwsRamResourceAssociation(
        'ram_resource_association',
        resourceArn: .literal(arn),
        resourceShareArn: .literal(arn),
      ),
    );

    add(AwsRamResourceShare('ram_resource_share', name: .literal(leftover)));

    add(
      AwsRamResourceShareAccepter(
        'ram_resource_share_accepter',
        shareArn: .literal(arn),
      ),
    );

    add(
      AwsRamResourceShareAssociationsExclusive(
        'ram_resource_share_associations_exclusive',
        resourceShareArn: .literal(arn),
      ),
    );

    add(AwsRamSharingWithOrganization('ram_sharing_with_organization'));

    add(
      AwsRbinRule(
        'rbin_rule',
        resourceType: .ebsSnapshot,
        retentionPeriod: RbinRuleRetentionPeriod(
          retentionPeriodUnit: .days,
          retentionPeriodValue: .literal(200),
        ),
      ),
    );

    add(
      AwsRdsCertificate(
        'rds_certificate',
        certificateIdentifier: .literal(leftover),
      ),
    );

    add(AwsRdsCluster('rds_cluster', engine: .literal('aurora-mysql')));

    add(
      AwsRdsClusterActivityStream(
        'rds_cluster_activity_stream',
        kmsKeyId: .literal(leftover),
        mode: .sync,
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsRdsClusterEndpoint(
        'rds_cluster_endpoint',
        clusterEndpointIdentifier: .literal(leftover),
        clusterIdentifier: .literal(leftover),
        customEndpointType: .reader,
      ),
    );

    add(
      AwsRdsClusterInstance(
        'rds_cluster_instance',
        clusterIdentifier: .literal(leftover),
        engine: .literal('aurora-mysql'),
        instanceClass: .literal(leftover),
      ),
    );

    add(
      AwsRdsClusterParameterGroup(
        'rds_cluster_parameter_group',
        family: .literal(leftover),
      ),
    );

    add(
      AwsRdsClusterRoleAssociation(
        'rds_cluster_role_association',
        dbClusterIdentifier: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsRdsClusterSnapshotCopy(
        'rds_cluster_snapshot_copy',
        sourceDbClusterSnapshotIdentifier: .literal(leftover),
        targetDbClusterSnapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRdsCustomDbEngineVersion(
        'rds_custom_db_engine_version',
        engine: .literal('custom-oracle-ee'),
        engineVersion: .literal(leftover),
      ),
    );

    add(
      AwsRdsExportTask(
        'rds_export_task',
        exportTaskIdentifier: .literal(leftover),
        iamRoleArn: .literal(arn),
        kmsKeyId: .literal(leftover),
        s3BucketName: .literal(leftover),
        sourceArn: .literal(arn),
      ),
    );

    add(
      AwsRdsGlobalCluster(
        'rds_global_cluster',
        globalClusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRdsInstanceState(
        'rds_instance_state',
        identifier: .literal(leftover),
        state: .available,
      ),
    );

    add(
      AwsRdsIntegration(
        'rds_integration',
        integrationName: .literal(leftover),
        sourceArn: .literal(arn),
        targetArn: .literal(arn),
      ),
    );

    add(
      AwsRdsReservedInstance(
        'rds_reserved_instance',
        offeringId: .literal(leftover),
      ),
    );

    add(
      AwsRdsShardGroup(
        'rds_shard_group',
        dbClusterIdentifier: .literal(leftover),
        dbShardGroupIdentifier: .literal(leftover),
        maxAcu: .literal(200),
      ),
    );

    add(
      AwsRedshiftAuthenticationProfile(
        'redshift_authentication_profile',
        authenticationProfileContent: .literal(policy),
        authenticationProfileName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftCluster(
        'redshift_cluster',
        clusterIdentifier: .literal(leftover),
        nodeType: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftClusterIamRoles(
        'redshift_cluster_iam_roles',
        clusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftClusterSnapshot(
        'redshift_cluster_snapshot',
        clusterIdentifier: .literal(leftover),
        snapshotIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftDataShareAuthorization(
        'redshift_data_share_authorization',
        consumerIdentifier: .literal(leftover),
        dataShareArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftDataShareConsumerAssociation(
        'redshift_data_share_consumer_association',
        consumer: .associateEntireAccount(.literal(true)),
        dataShareArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftEndpointAccess(
        'redshift_endpoint_access',
        clusterIdentifier: .literal(leftover),
        endpointName: .literal(leftover),
        subnetGroupName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftEndpointAuthorization(
        'redshift_endpoint_authorization',
        account: .literal('123456789012'),
        clusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftEventSubscription(
        'redshift_event_subscription',
        name: .literal(leftover),
        snsTopicArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftHsmClientCertificate(
        'redshift_hsm_client_certificate',
        hsmClientCertificateIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftHsmConfiguration(
        'redshift_hsm_configuration',
        description: .literal(leftover),
        hsmConfigurationIdentifier: .literal(leftover),
        hsmIpAddress: .literal('10.0.0.1'),
        hsmPartitionName: .literal(leftover),
        hsmPartitionPassword: leftoverSecret,
        hsmServerPublicCertificate: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftIdcApplication(
        'redshift_idc_application',
        iamRoleArn: .literal(arn),
        idcDisplayName: .literal(leftover),
        idcInstanceArn: .literal(arn),
        redshiftIdcApplicationName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftIntegration(
        'redshift_integration',
        integrationName: .literal(leftover),
        sourceArn: .literal(arn),
        targetArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftLogging(
        'redshift_logging',
        clusterIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftNamespaceRegistration(
        'redshift_namespace_registration',
        consumerIdentifier: .literal(leftover),
        namespaceType: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftParameterGroup(
        'redshift_parameter_group',
        family: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftPartner(
        'redshift_partner',
        accountId: .literal('123456789012'),
        clusterIdentifier: .literal(leftover),
        databaseName: .literal(leftover),
        partnerName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftResourcePolicy(
        'redshift_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftScheduledAction(
        'redshift_scheduled_action',
        iamRole: .literal(leftover),
        name: .literal(leftover),
        schedule: .literal(leftover),
        targetAction: .pauseCluster(
          .new(clusterIdentifier: .literal(leftover)),
        ),
      ),
    );

    add(
      AwsRedshiftSnapshotCopy(
        'redshift_snapshot_copy',
        clusterIdentifier: .literal(leftover),
        destinationRegion: .literal('us-east-1'),
      ),
    );

    add(
      AwsRedshiftSnapshotCopyGrant(
        'redshift_snapshot_copy_grant',
        snapshotCopyGrantName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftSnapshotSchedule(
        'redshift_snapshot_schedule',
        definitions: .literal([leftover]),
      ),
    );

    add(
      AwsRedshiftSnapshotScheduleAssociation(
        'redshift_snapshot_schedule_association',
        clusterIdentifier: .literal(leftover),
        scheduleIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftSubnetGroup(
        'redshift_subnet_group',
        name: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
      ),
    );

    add(
      AwsRedshiftUsageLimit(
        'redshift_usage_limit',
        amount: .literal(200),
        clusterIdentifier: .literal(leftover),
        featureType: .spectrum,
        limitType: .time,
      ),
    );

    add(
      AwsRedshiftdataStatement(
        'redshiftdata_statement',
        database: .literal(leftover),
        sql: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessCustomDomainAssociation(
        'redshiftserverless_custom_domain_association',
        customDomainCertificateArn: .literal(arn),
        customDomainName: .literal(leftover),
        workgroupName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessEndpointAccess(
        'redshiftserverless_endpoint_access',
        endpointName: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
        workgroupName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessNamespace(
        'redshiftserverless_namespace',
        namespaceName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessResourcePolicy(
        'redshiftserverless_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsRedshiftserverlessSnapshot(
        'redshiftserverless_snapshot',
        namespaceName: .literal(leftover),
        snapshotName: .literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessUsageLimit(
        'redshiftserverless_usage_limit',
        amount: .literal(200),
        resourceArn: .literal(arn),
        usageType: .serverlessCompute,
      ),
    );

    add(
      AwsRedshiftserverlessWorkgroup(
        'redshiftserverless_workgroup',
        namespaceName: .literal(leftover),
        workgroupName: .literal(leftover),
      ),
    );

    add(
      AwsRekognitionCollection(
        'rekognition_collection',
        collectionId: .literal(leftover),
      ),
    );

    add(AwsRekognitionProject('rekognition_project', name: .literal(leftover)));

    add(
      AwsRekognitionStreamProcessor(
        'rekognition_stream_processor',
        name: .literal(leftover),
        roleArn: .literal(arn),
        input: [
          RekognitionStreamProcessorInput(
            kinesisVideoStream: [.new(arn: .literal(arn))],
          ),
        ],
        output: [
          .kinesisDataStream([.new(arn: .literal(arn))]),
        ],
        settings: [
          .connectedHome([
            .new(labels: [.person]),
          ]),
        ],
      ),
    );

    add(
      AwsResiliencehubResiliencyPolicy(
        'resiliencehub_resiliency_policy',
        name: .literal(leftover),
        tier: .missioncritical,
      ),
    );

    add(
      AwsResiliencehubv2Assertion(
        'resiliencehubv2_assertion',
        serviceArn: .literal(arn),
        text: .literal(leftover),
      ),
    );

    add(
      AwsResiliencehubv2InputSource(
        'resiliencehubv2_input_source',
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
        'resiliencehubv2_policy',
        name: .literal(leftover),
        multiAz: [
          Resiliencehubv2PolicyMultiAz(disasterRecoveryApproach: .activeActive),
        ],
      ),
    );

    add(
      AwsResiliencehubv2Service(
        'resiliencehubv2_service',
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
        'resiliencehubv2_service_function',
        criticality: .primary,
        name: .literal(leftover),
        serviceArn: .literal(arn),
      ),
    );

    add(
      AwsResiliencehubv2System(
        'resiliencehubv2_system',
        name: .literal(leftover),
      ),
    );

    add(
      AwsResiliencehubv2UserJourney(
        'resiliencehubv2_user_journey',
        name: .literal(leftover),
        systemArn: .literal(arn),
      ),
    );

    add(AwsResourceexplorer2Index('resourceexplorer2_index', type: .local));

    add(
      AwsResourceexplorer2View(
        'resourceexplorer2_view',
        name: .literal(leftover),
      ),
    );

    add(
      AwsResourcegroupsGroup('resourcegroups_group', name: .literal(leftover)),
    );

    add(
      AwsResourcegroupsResource(
        'resourcegroups_resource',
        groupArn: .literal(arn),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsRolesanywhereProfile(
        'rolesanywhere_profile',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRolesanywhereTrustAnchor(
        'rolesanywhere_trust_anchor',
        name: .literal(leftover),
        source: RolesanywhereTrustAnchorSource(
          sourceType: .awsAcmPca,
          sourceData: .new(acmPcaArn: .literal(arn)),
        ),
      ),
    );

    add(
      AwsRoute(
        'route',
        routeTableId: .literal(leftover),
        ipv4Egress: .destinationCidrBlock(.literal('10.0.0.0/16')),
        carrierIpv6: .carrierGatewayId(.literal(leftover)),
      ),
    );

    add(
      AwsRoute53CidrCollection(
        'route53_cidr_collection',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53CidrLocation(
        'route53_cidr_location',
        cidrBlocks: .literal(['10.0.0.0/16']),
        cidrCollectionId: .literal('10.0.0.0/16'),
        name: .literal(leftover),
      ),
    );

    add(AwsRoute53DelegationSet('route53_delegation_set'));

    add(AwsRoute53HealthCheck('route53_health_check', type: .http));

    add(
      AwsRoute53HostedZoneDnssec(
        'route53_hosted_zone_dnssec',
        hostedZoneId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53KeySigningKey(
        'route53_key_signing_key',
        hostedZoneId: .literal(leftover),
        keyManagementServiceArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53QueryLog(
        'route53_query_log',
        cloudwatchLogGroupArn: .literal(arn),
        zoneId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53RecordsExclusive(
        'route53_records_exclusive',
        zoneId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverConfig(
        'route53_resolver_config',
        autodefinedReverseFlag: .enable,
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverDnssecConfig(
        'route53_resolver_dnssec_config',
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverEndpoint(
        'route53_resolver_endpoint',
        direction: .inbound,
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
        'route53_resolver_firewall_config',
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverFirewallDomainList(
        'route53_resolver_firewall_domain_list',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverFirewallRule(
        'route53_resolver_firewall_rule',
        action: .allow,
        firewallRuleGroupId: .literal(leftover),
        name: .literal(leftover),
        priority: .literal(200),
      ),
    );

    add(
      AwsRoute53ResolverFirewallRuleGroup(
        'route53_resolver_firewall_rule_group',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverFirewallRuleGroupAssociation(
        'route53_resolver_firewall_rule_group_association',
        firewallRuleGroupId: .literal(leftover),
        name: .literal(leftover),
        priority: .literal(200),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsRoute53ResolverQueryLogConfig(
        'route53_resolver_query_log_config',
        destinationArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverQueryLogConfigAssociation(
        'route53_resolver_query_log_config_association',
        resolverQueryLogConfigId: .literal(leftover),
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverRule(
        'route53_resolver_rule',
        domainName: .literal(leftover),
        ruleType: .forward,
      ),
    );

    add(
      AwsRoute53ResolverRuleAssociation(
        'route53_resolver_rule_association',
        resolverRuleId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsRoute53TrafficPolicy(
        'route53_traffic_policy',
        document: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53TrafficPolicyInstance(
        'route53_traffic_policy_instance',
        hostedZoneId: .literal(leftover),
        name: .literal(leftover),
        trafficPolicyId: .literal(leftover),
        trafficPolicyVersion: .literal(200),
        ttl: .literal(200),
      ),
    );

    add(
      AwsRoute53VpcAssociationAuthorization(
        'route53_vpc_association_authorization',
        vpcId: .literal('vpc-0123456789abcdef0'),
        zoneId: .literal(leftover),
      ),
    );

    add(AwsRoute53Zone('route53_zone', name: .literal(leftover)));

    add(
      AwsRoute53ZoneAssociation(
        'route53_zone_association',
        vpcId: .literal('vpc-0123456789abcdef0'),
        zoneId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53domainsDelegationSignerRecord(
        'route53domains_delegation_signer_record',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsRoute53domainsDomain(
        'route53domains_domain',
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
        'route53domains_registered_domain',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsRoute53profilesAssociation(
        'route53profiles_association',
        name: .literal(leftover),
        profileId: .literal(leftover),
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsRoute53profilesProfile(
        'route53profiles_profile',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53profilesResourceAssociation(
        'route53profiles_resource_association',
        name: .literal(leftover),
        profileId: .literal(leftover),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigCluster(
        'route53recoverycontrolconfig_cluster',
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigControlPanel(
        'route53recoverycontrolconfig_control_panel',
        clusterArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigRoutingControl(
        'route53recoverycontrolconfig_routing_control',
        clusterArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigSafetyRule(
        'route53recoverycontrolconfig_safety_rule',
        controls: .assertedControls(.literal([leftover])),
        controlPanelArn: .literal(arn),
        name: .literal(leftover),
        waitPeriodMs: .literal(200),
        ruleConfig: Route53recoverycontrolconfigSafetyRuleConfig(
          inverted: .literal(true),
          threshold: .literal(200),
          type: .atleast,
        ),
      ),
    );

    add(
      AwsRoute53recoveryreadinessCell(
        'route53recoveryreadiness_cell',
        cellName: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoveryreadinessReadinessCheck(
        'route53recoveryreadiness_readiness_check',
        readinessCheckName: .literal(leftover),
        resourceSetName: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoveryreadinessRecoveryGroup(
        'route53recoveryreadiness_recovery_group',
        recoveryGroupName: .literal(leftover),
      ),
    );

    add(
      AwsRoute53recoveryreadinessResourceSet(
        'route53recoveryreadiness_resource_set',
        resourceSetName: .literal(leftover),
        resourceSetType: .literal(leftover),
        resources: [
          Route53recoveryreadinessResourceSetResources(
            readinessScopes: .literal([leftover]),
          ),
        ],
      ),
    );

    add(AwsRouteTable('route_table', vpcId: .literal('vpc-0123456789abcdef0')));

    add(
      AwsRouteTableAssociation(
        'route_table_association',
        target: .gatewayId(.literal(leftover)),
        routeTableId: .literal(leftover),
      ),
    );

    add(
      AwsRumAppMonitor(
        'rum_app_monitor',
        domain: .domain(.literal(leftover)),
        name: .literal(leftover),
      ),
    );

    add(
      AwsRumMetricsDestination(
        'rum_metrics_destination',
        appMonitorName: .literal(leftover),
        destination: .cloudwatch,
      ),
    );

    add(
      AwsS3AccessPoint(
        's3_access_point',
        bucket: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(AwsS3AccountPublicAccessBlock('s3_account_public_access_block'));

    add(
      AwsS3BucketAbac(
        's3_bucket_abac',
        bucket: .literal(leftover),
        abacStatus: [S3BucketAbacStatus(status: .literal(leftover))],
      ),
    );

    add(
      AwsS3BucketAccelerateConfiguration(
        's3_bucket_accelerate_configuration',
        bucket: .literal(leftover),
        status: .enabled,
      ),
    );

    add(
      AwsS3BucketAcl(
        's3_bucket_acl',
        policy: .accessControlPolicy(.new(owner: .new(id: .literal(leftover)))),
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketAnalyticsConfiguration(
        's3_bucket_analytics_configuration',
        bucket: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketCorsConfiguration(
        's3_bucket_cors_configuration',
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
        's3_bucket_intelligent_tiering_configuration',
        bucket: .literal(leftover),
        name: .literal(leftover),
        tiering: [
          S3BucketIntelligentTieringConfigurationTiering(
            accessTier: .archiveAccess,
            days: .literal(200),
          ),
        ],
      ),
    );

    add(
      AwsS3BucketInventory(
        's3_bucket_inventory',
        bucket: .literal(leftover),
        includedObjectVersions: .all,
        name: .literal(leftover),
        destination: S3BucketInventoryDestination(
          bucket: .new(bucketArn: .literal(arn), format: .csv),
        ),
        schedule: S3BucketInventorySchedule(frequency: .daily),
      ),
    );

    add(
      AwsS3BucketLifecycleConfiguration(
        's3_bucket_lifecycle_configuration',
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketLogging(
        's3_bucket_logging',
        bucket: .literal(leftover),
        targetBucket: .literal(leftover),
        targetPrefix: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketMetadataConfiguration(
        's3_bucket_metadata_configuration',
        bucket: .literal(leftover),
        metadataConfiguration: [
          S3BucketMetadataConfiguration(
            journalTableConfiguration: [
              .new(recordExpiration: [.new(expiration: .enabled)]),
            ],
            inventoryTableConfiguration: [.new(configurationState: .enabled)],
          ),
        ],
      ),
    );

    add(
      AwsS3BucketMetric(
        's3_bucket_metric',
        bucket: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketNotification(
        's3_bucket_notification',
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketObject(
        's3_bucket_object',
        bucket: .literal(leftover),
        key: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketObjectLockConfiguration(
        's3_bucket_object_lock_configuration',
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsS3BucketOwnershipControls(
        's3_bucket_ownership_controls',
        bucket: .literal(leftover),
        rule: S3BucketOwnershipControlsRule(
          objectOwnership: .bucketownerpreferred,
        ),
      ),
    );

    add(
      AwsS3BucketReplicationConfiguration(
        's3_bucket_replication_configuration',
        bucket: .literal(leftover),
        role: .literal(arn),
        rule: [
          S3BucketReplicationConfigurationRule(
            status: .enabled,
            destination: .new(bucket: .literal(arn)),
          ),
        ],
      ),
    );

    add(
      AwsS3BucketRequestPaymentConfiguration(
        's3_bucket_request_payment_configuration',
        bucket: .literal(leftover),
        payer: .requester,
      ),
    );

    add(
      AwsS3BucketServerSideEncryptionConfiguration(
        's3_bucket_server_side_encryption_configuration',
        bucket: .literal(leftover),
        rule: [
          S3BucketServerSideEncryptionConfigurationRule(
            blockedEncryptionTypes: [.none],
          ),
        ],
      ),
    );

    add(
      AwsS3BucketVersioning(
        's3_bucket_versioning',
        bucket: .literal(leftover),
        versioningConfiguration: S3BucketVersioningConfiguration(
          status: .literal('Enabled'),
        ),
      ),
    );

    add(
      AwsS3BucketWebsiteConfiguration(
        's3_bucket_website_configuration',
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsS3DirectoryBucket(
        's3_directory_bucket',
        bucket: .literal('leftover--use1-az4--x-s3'),
        location: [S3DirectoryBucketLocation(name: .literal(leftover))],
      ),
    );

    add(
      AwsS3Object(
        's3_object',
        bucket: .literal(leftover),
        key: .literal(leftover),
      ),
    );

    add(
      AwsS3ObjectCopy(
        's3_object_copy',
        bucket: .literal(leftover),
        key: .literal(leftover),
        source: .literal(leftover),
      ),
    );

    add(
      AwsS3controlAccessGrant(
        's3control_access_grant',
        accessGrantsLocationId: .literal(leftover),
        permission: .read,
        grantee: [
          S3controlAccessGrantGrantee(
            granteeIdentifier: .literal(leftover),
            granteeType: .directoryUser,
          ),
        ],
      ),
    );

    add(AwsS3controlAccessGrantsInstance('s3control_access_grants_instance'));

    add(
      AwsS3controlAccessGrantsInstanceResourcePolicy(
        's3control_access_grants_instance_resource_policy',
        policy: .literal(policy),
      ),
    );

    add(
      AwsS3controlAccessGrantsLocation(
        's3control_access_grants_location',
        iamRoleArn: .literal(arn),
        locationScope: .literal(leftover),
      ),
    );

    add(
      AwsS3controlAccessPointPolicy(
        's3control_access_point_policy',
        accessPointArn: .literal(arn),
        policy: .literal(policy),
      ),
    );

    add(
      AwsS3controlBucket(
        's3control_bucket',
        bucket: .literal(leftover),
        outpostId: .literal(leftover),
      ),
    );

    add(
      AwsS3controlBucketLifecycleConfiguration(
        's3control_bucket_lifecycle_configuration',
        bucket: .literal(arn),
        rule: [
          S3controlBucketLifecycleConfigurationRule(id: .literal(leftover)),
        ],
      ),
    );

    add(
      AwsS3controlBucketPolicy(
        's3control_bucket_policy',
        bucket: .literal(arn),
        policy: .literal(policy),
      ),
    );

    add(
      AwsS3controlDirectoryBucketAccessPointScope(
        's3control_directory_bucket_access_point_scope',
        accountId: .literal('123456789012'),
        name: .literal('leftover--use1-az4--xa-s3'),
        scope: [
          S3controlDirectoryBucketAccessPointScope(permissions: [.getobject]),
        ],
      ),
    );

    add(
      AwsS3controlMultiRegionAccessPoint(
        's3control_multi_region_access_point',
        details: S3controlMultiRegionAccessPointDetails(
          name: .literal(leftover),
          region: [.new(bucket: .literal(leftover))],
        ),
      ),
    );

    add(
      AwsS3controlMultiRegionAccessPointPolicy(
        's3control_multi_region_access_point_policy',
        details: S3controlMultiRegionAccessPointPolicyDetails(
          name: .literal(leftover),
          policy: .literal(policy),
        ),
      ),
    );

    add(
      AwsS3controlMultiRegionAccessPointRoutes(
        's3control_multi_region_access_point_routes',
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
        's3control_object_lambda_access_point',
        name: .literal(leftover),
        configuration: S3controlObjectLambdaAccessPointConfiguration(
          supportingAccessPoint: .literal(arn),
          transformationConfiguration: [
            .new(
              actions: [.getobject],
              contentTransformation: .new(
                awsLambda: .new(functionArn: .literal(arn)),
              ),
            ),
          ],
        ),
      ),
    );

    add(
      AwsS3controlObjectLambdaAccessPointPolicy(
        's3control_object_lambda_access_point_policy',
        name: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsS3controlStorageLensConfiguration(
        's3control_storage_lens_configuration',
        configId: .literal(leftover),
        storageLensConfiguration: S3controlStorageLensConfiguration(
          enabled: .literal(true),
          accountLevel: .new(
            bucketLevel: .new(activityMetrics: .new(enabled: .literal(true))),
          ),
        ),
      ),
    );

    add(
      AwsS3filesAccessPoint(
        's3files_access_point',
        fileSystemId: .literal(leftover),
      ),
    );

    add(
      AwsS3filesFileSystem(
        's3files_file_system',
        bucket: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsS3filesFileSystemPolicy(
        's3files_file_system_policy',
        fileSystemId: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsS3filesMountTarget(
        's3files_mount_target',
        fileSystemId: .literal(leftover),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsS3filesSynchronizationConfiguration(
        's3files_synchronization_configuration',
        fileSystemId: .literal(leftover),
      ),
    );

    add(
      AwsS3outpostsEndpoint(
        's3outposts_endpoint',
        outpostId: .literal(leftover),
        securityGroupId: .literal('sg-0123456789abcdef0'),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsS3tablesNamespace(
        's3tables_namespace',
        namespace: .literal(leftover),
        tableBucketArn: .literal(arn),
      ),
    );

    add(
      AwsS3tablesTable(
        's3tables_table',
        format: .iceberg,
        name: .literal(leftover),
        namespace: .literal(leftover),
        tableBucketArn: .literal(arn),
      ),
    );

    add(
      AwsS3tablesTableBucket('s3tables_table_bucket', name: .literal(leftover)),
    );

    add(
      AwsS3tablesTableBucketPolicy(
        's3tables_table_bucket_policy',
        resourcePolicy: .literal(policy),
        tableBucketArn: .literal(arn),
      ),
    );

    add(
      AwsS3tablesTableBucketReplication(
        's3tables_table_bucket_replication',
        role: .literal(arn),
        tableBucketArn: .literal(arn),
      ),
    );

    add(
      AwsS3tablesTablePolicy(
        's3tables_table_policy',
        name: .literal(leftover),
        namespace: .literal(leftover),
        resourcePolicy: .literal(policy),
        tableBucketArn: .literal(arn),
      ),
    );

    add(
      AwsS3tablesTableReplication(
        's3tables_table_replication',
        role: .literal(arn),
        tableArn: .literal(arn),
      ),
    );

    add(
      AwsS3vectorsIndex(
        's3vectors_index',
        dataType: .float32,
        dimension: .literal(200),
        distanceMetric: .euclidean,
        indexName: .literal(leftover),
        vectorBucketName: .literal(leftover),
      ),
    );

    add(
      AwsS3vectorsVectorBucket(
        's3vectors_vector_bucket',
        vectorBucketName: .literal(leftover),
      ),
    );

    add(
      AwsS3vectorsVectorBucketPolicy(
        's3vectors_vector_bucket_policy',
        policy: .literal(policy),
        vectorBucketArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerAlgorithm(
        'sagemaker_algorithm',
        algorithmName: .literal(leftover),
        trainingSpecification: [
          SagemakerAlgorithmTrainingSpecification(
            supportedTrainingInstanceTypes: [.mlM4Xlarge],
            trainingImage: .literal(leftover),
            trainingChannels: [
              .new(
                name: .literal(leftover),
                supportedContentTypes: .literal([leftover]),
                supportedInputModes: [.pipe],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSagemakerApp(
        'sagemaker_app',
        appName: .literal(leftover),
        appType: .jupyterserver,
        domainId: .literal(leftover),
        owner: .spaceName(.literal(leftover)),
      ),
    );

    add(
      AwsSagemakerAppImageConfig(
        'sagemaker_app_image_config',
        appImageConfigName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerCodeRepository(
        'sagemaker_code_repository',
        codeRepositoryName: .literal(leftover),
        gitConfig: SagemakerCodeRepositoryGitConfig(
          repositoryUrl: .literal('https://example.com'),
        ),
      ),
    );

    add(
      AwsSagemakerDataQualityJobDefinition(
        'sagemaker_data_quality_job_definition',
        roleArn: .literal(arn),
        dataQualityAppSpecification:
            SagemakerDataQualityJobDefinitionDataQualityAppSpecification(
              imageUri: .literal('https://example.com'),
            ),
        dataQualityJobInput:
            SagemakerDataQualityJobDefinitionDataQualityJobInput(
              batchTransformInput: .new(
                dataCapturedDestinationS3Uri: .literal('https://example.com'),
                datasetFormat: .new(csv: .new(header: .literal(true))),
              ),
            ),
        dataQualityJobOutputConfig:
            SagemakerDataQualityJobDefinitionDataQualityJobOutputConfig(
              monitoringOutputs: .new(
                s3Output: .new(s3Uri: .literal('https://example.com')),
              ),
            ),
        jobResources: SagemakerDataQualityJobDefinitionJobResources(
          clusterConfig: .new(
            instanceCount: .literal(200),
            instanceType: .mlT3Medium,
            volumeSizeInGb: .literal(200),
          ),
        ),
      ),
    );

    add(
      AwsSagemakerDevice(
        'sagemaker_device',
        deviceFleetName: .literal(leftover),
        device: SagemakerDevice(deviceName: .literal(leftover)),
      ),
    );

    add(
      AwsSagemakerDeviceFleet(
        'sagemaker_device_fleet',
        deviceFleetName: .literal(leftover),
        roleArn: .literal(arn),
        outputConfig: SagemakerDeviceFleetOutputConfig(
          s3OutputLocation: .literal(leftover),
        ),
      ),
    );

    add(
      AwsSagemakerDomain(
        'sagemaker_domain',
        authMode: .sso,
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
        'sagemaker_endpoint',
        endpointConfigName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerEndpointConfiguration(
        'sagemaker_endpoint_configuration',
        productionVariants: [
          SagemakerEndpointConfigurationProductionVariants(
            acceleratorType: .mlEia1Medium,
          ),
        ],
      ),
    );

    add(
      AwsSagemakerFeatureGroup(
        'sagemaker_feature_group',
        eventTimeFeatureName: .literal(leftover),
        featureGroupName: .literal(leftover),
        recordIdentifierFeatureName: .literal(leftover),
        roleArn: .literal(arn),
        featureDefinition: [
          SagemakerFeatureGroupFeatureDefinition(collectionType: .list),
        ],
        offlineStoreConfig: SagemakerFeatureGroupOfflineStoreConfig(
          s3StorageConfig: .new(s3Uri: .literal('https://example.com')),
        ),
        onlineStoreConfig: SagemakerFeatureGroupOnlineStoreConfig(
          enableOnlineStore: .literal(true),
        ),
      ),
    );

    add(
      AwsSagemakerFlowDefinition(
        'sagemaker_flow_definition',
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
        'sagemaker_hub',
        hubDescription: .literal(leftover),
        hubName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerHubContentReference(
        'sagemaker_hub_content_reference',
        hubContentName: .literal(leftover),
        hubName: .literal(leftover),
        sagemakerPublicHubContentArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerHumanTaskUi(
        'sagemaker_human_task_ui',
        humanTaskUiName: .literal(leftover),
        uiTemplate: SagemakerHumanTaskUiTemplate(content: .literal(leftover)),
      ),
    );

    add(
      AwsSagemakerHyperParameterTuningJob(
        'sagemaker_hyper_parameter_tuning_job',
        name: .literal(leftover),
        config: [
          SagemakerHyperParameterTuningJobConfig(
            strategy: .bayesian,
            resourceLimits: [.new(maxParallelTrainingJobs: .literal(200))],
          ),
        ],
      ),
    );

    add(
      AwsSagemakerImage(
        'sagemaker_image',
        imageName: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerImageVersion(
        'sagemaker_image_version',
        baseImage: .literal(leftover),
        imageName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerLabelingJob(
        'sagemaker_labeling_job',
        labelAttributeName: .literal(leftover),
        labelingJobName: .literal(leftover),
        roleArn: .literal(arn),
        inputConfig: [
          SagemakerLabelingJobInputConfig(
            dataSource: [
              .new(
                s3DataSource: [
                  .new(manifestS3Uri: .literal('https://example.com')),
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
            uiConfig: [.new(humanTaskUiArn: .literal(arn))],
          ),
        ],
      ),
    );

    add(
      AwsSagemakerMlflowApp(
        'sagemaker_mlflow_app',
        artifactStoreUri: .literal('https://example.com'),
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerMlflowTrackingServer(
        'sagemaker_mlflow_tracking_server',
        artifactStoreUri: .literal('https://example.com'),
        roleArn: .literal(arn),
        trackingServerName: .literal(leftover),
      ),
    );

    add(AwsSagemakerModel('sagemaker_model', executionRoleArn: .literal(arn)));

    add(
      AwsSagemakerModelCard(
        'sagemaker_model_card',
        content: .literal(policy),
        modelCardName: .literal(leftover),
        modelCardStatus: .draft,
      ),
    );

    add(
      AwsSagemakerModelCardExportJob(
        'sagemaker_model_card_export_job',
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
        'sagemaker_model_package_group',
        modelPackageGroupName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerModelPackageGroupPolicy(
        'sagemaker_model_package_group_policy',
        modelPackageGroupName: .literal(leftover),
        resourcePolicy: .literal(policy),
      ),
    );

    add(
      AwsSagemakerMonitoringSchedule(
        'sagemaker_monitoring_schedule',
        monitoringScheduleConfig: SagemakerMonitoringScheduleConfig(
          monitoringType: .dataquality,
        ),
      ),
    );

    add(
      AwsSagemakerNotebookInstance(
        'sagemaker_notebook_instance',
        instanceType: .mlT2Medium,
        name: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsSagemakerNotebookInstanceLifecycleConfiguration(
        'sagemaker_notebook_instance_lifecycle_configurat',
      ),
    );

    add(
      AwsSagemakerPipeline(
        'sagemaker_pipeline',
        pipelineDefinition: .pipelineDefinition(.literal(policy)),
        pipelineDisplayName: .literal(leftover),
        pipelineName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerProject(
        'sagemaker_project',
        projectName: .literal(leftover),
        serviceCatalogProvisioningDetails:
            SagemakerProjectServiceCatalogProvisioningDetails(
              productId: .literal(leftover),
            ),
      ),
    );

    add(
      AwsSagemakerServicecatalogPortfolioStatus(
        'sagemaker_servicecatalog_portfolio_status',
        status: .enabled,
      ),
    );

    add(
      AwsSagemakerSpace(
        'sagemaker_space',
        domainId: .literal(leftover),
        spaceName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerStudioLifecycleConfig(
        'sagemaker_studio_lifecycle_config',
        studioLifecycleConfigAppType: .jupyterserver,
        studioLifecycleConfigContent: .literal(leftover),
        studioLifecycleConfigName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerTrainingJob(
        'sagemaker_training_job',
        roleArn: .literal(arn),
        trainingJobName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerUserProfile(
        'sagemaker_user_profile',
        domainId: .literal(leftover),
        userProfileName: .literal(leftover),
      ),
    );

    add(
      AwsSagemakerWorkforce(
        'sagemaker_workforce',
        workforceName: .literal(leftover),
        identityProvider: .cognitoConfig(
          .new(clientId: .literal(leftover), userPool: .literal(leftover)),
        ),
      ),
    );

    add(
      AwsSagemakerWorkteam(
        'sagemaker_workteam',
        description: .literal(leftover),
        workteamName: .literal(leftover),
        memberDefinition: [
          SagemakerWorkteamMemberDefinition(
            cognitoMemberDefinition: .new(
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
        'savingsplans_savings_plan',
        commitment: .literal(leftover),
        savingsPlanOfferingId: .literal(leftover),
      ),
    );

    add(
      AwsSchedulerSchedule(
        'scheduler_schedule',
        scheduleExpression: .literal(leftover),
        flexibleTimeWindow: SchedulerScheduleFlexibleTimeWindow(mode: .off),
        target: SchedulerScheduleTarget(
          arn: .literal(arn),
          roleArn: .literal(arn),
        ),
      ),
    );

    add(AwsSchedulerScheduleGroup('scheduler_schedule_group'));

    add(AwsSchemasDiscoverer('schemas_discoverer', sourceArn: .literal(arn)));

    add(AwsSchemasRegistry('schemas_registry', name: .literal(leftover)));

    add(
      AwsSchemasRegistryPolicy(
        'schemas_registry_policy',
        policy: .literal(policy),
        registryName: .literal(leftover),
      ),
    );

    add(
      AwsSchemasSchema(
        'schemas_schema',
        content: .literal(leftover),
        name: .literal(leftover),
        registryName: .literal(leftover),
        type: .openapi3,
      ),
    );

    add(AwsSecretsmanagerSecret('secretsmanager_secret'));

    add(
      AwsSecretsmanagerSecretPolicy(
        'secretsmanager_secret_policy',
        policy: .literal(policy),
        secretArn: .literal(arn),
      ),
    );

    add(
      AwsSecretsmanagerSecretRotation(
        'secretsmanager_secret_rotation',
        secretId: .literal(leftover),
      ),
    );

    add(
      AwsSecretsmanagerSecretVersion(
        'secretsmanager_secret_version',
        secretId: .literal(leftover),
      ),
    );

    add(
      AwsSecretsmanagerTag(
        'secretsmanager_tag',
        key: .literal(leftover),
        secretId: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(AwsSecurityGroup('security_group'));

    add(
      AwsSecurityGroupRule(
        'security_group_rule',
        fromPort: .literal(200),
        protocol: .literal(leftover),
        securityGroupId: .literal('sg-0123456789abcdef0'),
        toPort: .literal(200),
        type: .egress,
        cidrBlocks: .literal(['10.0.0.0/16']),
      ),
    );

    add(AwsSecurityhubAccount('securityhub_account'));

    add(AwsSecurityhubAccountV2('securityhub_account_v2'));

    add(
      AwsSecurityhubActionTarget(
        'securityhub_action_target',
        description: .literal(leftover),
        identifier: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsSecurityhubAggregatorV2(
        'securityhub_aggregator_v2',
        regionLinkingMode: .literal(leftover),
      ),
    );

    add(
      AwsSecurityhubAutomationRule(
        'securityhub_automation_rule',
        description: .literal(leftover),
        ruleName: .literal(leftover),
        ruleOrder: .literal(200),
        criteria: [
          SecurityhubAutomationRuleCriteria(
            awsAccountId: [
              .new(comparison: .equals, value: .literal(leftover)),
            ],
          ),
        ],
        actions: [SecurityhubAutomationRuleActions(type: .findingFieldsUpdate)],
      ),
    );

    add(
      AwsSecurityhubAutomationRuleV2(
        'securityhub_automation_rule_v2',
        description: .literal(leftover),
        ruleName: .literal(leftover),
        ruleOrder: .literal(200),
        action: [SecurityhubAutomationRuleV2Action(type: .findingFieldsUpdate)],
        criteria: [
          SecurityhubAutomationRuleV2Criteria(
            ocsfFindingCriteriaJson: .literal(policy),
          ),
        ],
      ),
    );

    add(
      AwsSecurityhubConfigurationPolicy(
        'securityhub_configuration_policy',
        name: .literal(leftover),
        configurationPolicy: SecurityhubConfigurationPolicy(
          serviceEnabled: .literal(true),
        ),
      ),
    );

    add(
      AwsSecurityhubConfigurationPolicyAssociation(
        'securityhub_configuration_policy_association',
        policyId: .literal('SELF_MANAGED_SECURITY_HUB'),
        targetId: .literal('123456789012'),
      ),
    );

    add(
      AwsSecurityhubConnectorV2(
        'securityhub_connector_v2',
        name: .literal(leftover),
        connectorProvider: [
          .jiraCloud([.new(projectKey: .literal(leftover))]),
        ],
      ),
    );

    add(
      AwsSecurityhubFeatureV2(
        'securityhub_feature_v2',
        featureName: .networkScanning,
        featureStatus: .enabled,
      ),
    );

    add(
      AwsSecurityhubFindingAggregator(
        'securityhub_finding_aggregator',
        linkingMode: .allRegions,
      ),
    );

    add(
      AwsSecurityhubInsight(
        'securityhub_insight',
        groupByAttribute: .literal(leftover),
        name: .literal(leftover),
        filters: SecurityhubInsightFilters(
          awsAccountId: [
            .new(comparison: .literal('EQUALS'), value: .literal(leftover)),
          ],
        ),
      ),
    );

    add(
      AwsSecurityhubInviteAccepter(
        'securityhub_invite_accepter',
        masterId: .literal(leftover),
      ),
    );

    add(
      AwsSecurityhubMember(
        'securityhub_member',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      AwsSecurityhubOrganizationAdminAccount(
        'securityhub_organization_admin_account',
        adminAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsSecurityhubOrganizationConfiguration(
        'securityhub_organization_configuration',
        autoEnable: .literal(true),
      ),
    );

    add(
      AwsSecurityhubProductSubscription(
        'securityhub_product_subscription',
        productArn: .literal(arn),
      ),
    );

    add(
      AwsSecurityhubStandardsControl(
        'securityhub_standards_control',
        controlStatus: .enabled,
        standardsControlArn: .literal(arn),
      ),
    );

    add(
      AwsSecurityhubStandardsControlAssociation(
        'securityhub_standards_control_association',
        associationStatus: .enabled,
        securityControlId: .literal(leftover),
        standardsArn: .literal(arn),
      ),
    );

    add(
      AwsSecurityhubStandardsSubscription(
        'securityhub_standards_subscription',
        standardsArn: .literal(arn),
      ),
    );

    add(
      AwsSecuritylakeAwsLogSource(
        'securitylake_aws_log_source',
        source: [
          SecuritylakeAwsLogSource(
            regions: .literal([leftover]),
            sourceName: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsSecuritylakeCustomLogSource(
        'securitylake_custom_log_source',
        sourceName: .literal(leftover),
        configuration: [
          SecuritylakeCustomLogSourceConfiguration(
            providerIdentity: [
              .new(
                externalId: .literal(leftover),
                principal: .literal(leftover),
              ),
            ],
            crawlerConfiguration: [.new(roleArn: .literal(arn))],
          ),
        ],
      ),
    );

    add(
      AwsSecuritylakeDataLake(
        'securitylake_data_lake',
        metaStoreManagerRoleArn: .literal(arn),
        configuration: [
          SecuritylakeDataLakeConfiguration(region: .literal('us-east-1')),
        ],
      ),
    );

    add(
      AwsSecuritylakeSubscriber(
        'securitylake_subscriber',
        source: [
          SecuritylakeSubscriberSource(
            awsLogSourceResource: [.new(sourceName: .route53)],
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
        'securitylake_subscriber_notification',
        subscriberId: .literal(leftover),
        configuration: [
          SecuritylakeSubscriberNotificationConfiguration(
            httpsNotificationConfiguration: [
              .new(endpoint: .literal(leftover), targetRoleArn: .literal(arn)),
            ],
          ),
        ],
      ),
    );

    add(
      AwsServerlessapplicationrepositoryCloudformationStack(
        'serverlessapplicationrepository_cloudformation_s',
        applicationId: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryHttpNamespace(
        'service_discovery_http_namespace',
        name: .literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryInstance(
        'service_discovery_instance',
        attributes: .literal({'k': leftover}),
        instanceId: .literal('i-0123456789abcdef0'),
        serviceId: .literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryPrivateDnsNamespace(
        'service_discovery_private_dns_namespace',
        name: .literal(leftover),
        vpc: .literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryPublicDnsNamespace(
        'service_discovery_public_dns_namespace',
        name: .literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryService(
        'service_discovery_service',
        name: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogBudgetResourceAssociation(
        'servicecatalog_budget_resource_association',
        budgetName: .literal(leftover),
        resourceId: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogConstraint(
        'servicecatalog_constraint',
        parameters: .literal(policy),
        portfolioId: .literal(leftover),
        productId: .literal(leftover),
        type: .launch,
      ),
    );

    add(
      AwsServicecatalogOrganizationsAccess(
        'servicecatalog_organizations_access',
        enabled: .literal(true),
      ),
    );

    add(
      AwsServicecatalogPortfolio(
        'servicecatalog_portfolio',
        name: .literal(leftover),
        providerName: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogPortfolioShare(
        'servicecatalog_portfolio_share',
        portfolioId: .literal(leftover),
        principalId: .literal('123456789012'),
        type: .account,
      ),
    );

    add(
      AwsServicecatalogPrincipalPortfolioAssociation(
        'servicecatalog_principal_portfolio_association',
        portfolioId: .literal(leftover),
        principalArn: .literal(arn),
      ),
    );

    add(
      AwsServicecatalogProduct(
        'servicecatalog_product',
        name: .literal(leftover),
        owner: .literal(leftover),
        type: .cloudFormationTemplate,
        provisioningArtifactParameters:
            ServicecatalogProductProvisioningArtifactParameters(
              template: .templatePhysicalId(.literal(leftover)),
            ),
      ),
    );

    add(
      AwsServicecatalogProductPortfolioAssociation(
        'servicecatalog_product_portfolio_association',
        portfolioId: .literal(leftover),
        productId: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogProvisionedProduct(
        'servicecatalog_provisioned_product',
        name: .literal(leftover),
        identifier: .productId(.literal(leftover)),
        provisioningArtifact: .provisioningArtifactId(.literal(leftover)),
      ),
    );

    add(
      AwsServicecatalogProvisioningArtifact(
        'servicecatalog_provisioning_artifact',
        productId: .literal(leftover),
        template: .templatePhysicalId(.literal(leftover)),
      ),
    );

    add(
      AwsServicecatalogServiceAction(
        'servicecatalog_service_action',
        name: .literal(leftover),
        definition: ServicecatalogServiceActionDefinition(
          name: .literal(leftover),
          version: .literal(leftover),
        ),
      ),
    );

    add(
      AwsServicecatalogTagOption(
        'servicecatalog_tag_option',
        key: .literal(leftover),
        value: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogTagOptionResourceAssociation(
        'servicecatalog_tag_option_resource_association',
        resourceId: .literal(leftover),
        tagOptionId: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogappregistryApplication(
        'servicecatalogappregistry_application',
        name: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogappregistryAttributeGroup(
        'servicecatalogappregistry_attribute_group',
        attributes: .literal(policy),
        name: .literal(leftover),
      ),
    );

    add(
      AwsServicecatalogappregistryAttributeGroupAssociation(
        'servicecatalogappregistry_attribute_group_associ',
        applicationId: .literal(leftover),
        attributeGroupId: .literal(leftover),
      ),
    );

    add(
      AwsServicequotasAutoManagement(
        'servicequotas_auto_management',
        optInLevel: .account,
        optInType: .notifyonly,
      ),
    );

    add(
      AwsServicequotasServiceQuota(
        'servicequotas_service_quota',
        quotaCode: .literal(leftover),
        serviceCode: .literal(leftover),
        value: .literal(200),
      ),
    );

    add(
      AwsServicequotasTemplate(
        'servicequotas_template',
        region: .awsRegion(.literal('us-east-1')),
        quotaCode: .literal(leftover),
        serviceCode: .literal(leftover),
        value: .literal(200),
      ),
    );

    add(
      AwsServicequotasTemplateAssociation('servicequotas_template_association'),
    );

    add(
      AwsSesActiveReceiptRuleSet(
        'ses_active_receipt_rule_set',
        ruleSetName: .literal(leftover),
      ),
    );

    add(
      AwsSesConfigurationSet('ses_configuration_set', name: .literal(leftover)),
    );

    add(AwsSesDomainDkim('ses_domain_dkim', domain: .literal(leftover)));

    add(
      AwsSesDomainIdentity('ses_domain_identity', domain: .literal(leftover)),
    );

    add(
      AwsSesDomainIdentityVerification(
        'ses_domain_identity_verification',
        domain: .literal(leftover),
      ),
    );

    add(
      AwsSesDomainMailFrom(
        'ses_domain_mail_from',
        domain: .literal(leftover),
        mailFromDomain: .literal(leftover),
      ),
    );

    add(
      AwsSesEmailIdentity(
        'ses_email_identity',
        email: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesEventDestination(
        'ses_event_destination',
        configurationSetName: .literal(leftover),
        matchingTypes: [.send],
        name: .literal(leftover),
      ),
    );

    add(
      AwsSesIdentityNotificationTopic(
        'ses_identity_notification_topic',
        identity: .literal(leftover),
        notificationType: .bounce,
      ),
    );

    add(
      AwsSesIdentityPolicy(
        'ses_identity_policy',
        identity: .literal(leftover),
        name: .literal(leftover),
        policy: .literal(policy),
      ),
    );

    add(
      AwsSesReceiptFilter(
        'ses_receipt_filter',
        cidr: .literal('10.0.0.0/16'),
        name: .literal(leftover),
        policy: .block,
      ),
    );

    add(
      AwsSesReceiptRule(
        'ses_receipt_rule',
        name: .literal(leftover),
        ruleSetName: .literal(leftover),
      ),
    );

    add(
      AwsSesReceiptRuleSet(
        'ses_receipt_rule_set',
        ruleSetName: .literal(leftover),
      ),
    );

    add(AwsSesTemplate('ses_template', name: .literal(leftover)));

    add(
      AwsSesv2AccountSuppressionAttributes(
        'sesv2_account_suppression_attributes',
        suppressedReasons: [.bounce],
      ),
    );

    add(
      AwsSesv2AccountVdmAttributes(
        'sesv2_account_vdm_attributes',
        vdmEnabled: .enabled,
      ),
    );

    add(
      AwsSesv2ConfigurationSet(
        'sesv2_configuration_set',
        configurationSetName: .literal(leftover),
      ),
    );

    add(
      AwsSesv2ConfigurationSetEventDestination(
        'sesv2_configuration_set_event_destination',
        configurationSetName: .literal(leftover),
        eventDestinationName: .literal(leftover),
        eventDestination: Sesv2ConfigurationSetEventDestination(
          matchingEventTypes: [.send],
          target: .cloudWatchDestination(
            .new(
              dimensionConfiguration: [
                .new(
                  defaultDimensionValue: .literal(leftover),
                  dimensionName: .literal(leftover),
                  dimensionValueSource: .messageTag,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    add(
      AwsSesv2ContactList(
        'sesv2_contact_list',
        contactListName: .literal(leftover),
      ),
    );

    add(
      AwsSesv2DedicatedIpAssignment(
        'sesv2_dedicated_ip_assignment',
        destinationPoolName: .literal(leftover),
        ip: .literal('10.0.0.1'),
      ),
    );

    add(
      AwsSesv2DedicatedIpPool(
        'sesv2_dedicated_ip_pool',
        poolName: .literal(leftover),
      ),
    );

    add(
      AwsSesv2EmailIdentity(
        'sesv2_email_identity',
        emailIdentity: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesv2EmailIdentityFeedbackAttributes(
        'sesv2_email_identity_feedback_attributes',
        emailIdentity: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesv2EmailIdentityMailFromAttributes(
        'sesv2_email_identity_mail_from_attributes',
        emailIdentity: .literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesv2EmailIdentityPolicy(
        'sesv2_email_identity_policy',
        emailIdentity: .literal('leftover@example.com'),
        policy: .literal(policy),
        policyName: .literal(leftover),
      ),
    );

    add(
      AwsSesv2MultiRegionEndpoint(
        'sesv2_multi_region_endpoint',
        endpointName: .literal(leftover),
      ),
    );

    add(AwsSesv2Tenant('sesv2_tenant', tenantName: .literal(leftover)));

    add(
      AwsSesv2TenantResourceAssociation(
        'sesv2_tenant_resource_association',
        resourceArn: .literal(arn),
        tenantName: .literal(leftover),
      ),
    );

    add(AwsSfnActivity('sfn_activity', name: .literal(leftover)));

    add(
      AwsSfnAlias(
        'sfn_alias',
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
        'sfn_state_machine',
        definition: .literal(leftover),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsShieldApplicationLayerAutomaticResponse(
        'shield_application_layer_automatic_response',
        action: .block,
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsShieldDrtAccessLogBucketAssociation(
        'shield_drt_access_log_bucket_association',
        logBucket: .literal(leftover),
        roleArnAssociationId: .literal(leftover),
      ),
    );

    add(
      AwsShieldDrtAccessRoleArnAssociation(
        'shield_drt_access_role_arn_association',
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsShieldProactiveEngagement(
        'shield_proactive_engagement',
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
        'shield_protection',
        name: .literal(leftover),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsShieldProtectionGroup(
        'shield_protection_group',
        aggregation: .sum,
        pattern: .all,
        protectionGroupId: .literal(leftover),
      ),
    );

    add(
      AwsShieldProtectionHealthCheckAssociation(
        'shield_protection_health_check_association',
        healthCheckArn: .literal(arn),
        shieldProtectionId: .literal(leftover),
      ),
    );

    add(AwsShieldSubscription('shield_subscription'));

    add(
      AwsSignerSigningJob(
        'signer_signing_job',
        profileName: .literal(leftover),
        destination: SignerSigningJobDestination(
          s3: .new(bucket: .literal(leftover)),
        ),
        source: SignerSigningJobSource(
          s3: .new(
            bucket: .literal(leftover),
            key: .literal(leftover),
            version: .literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsSignerSigningProfile(
        'signer_signing_profile',
        platformId: .awslambdaSha384Ecdsa,
      ),
    );

    add(
      AwsSignerSigningProfilePermission(
        'signer_signing_profile_permission',
        action: .signerStartsigningjob,
        principal: .literal(leftover),
        profileName: .literal(leftover),
      ),
    );

    add(
      AwsSnapshotCreateVolumePermission(
        'snapshot_create_volume_permission',
        accountId: .literal('123456789012'),
        snapshotId: .literal(leftover),
      ),
    );

    add(
      AwsSnsPlatformApplication(
        'sns_platform_application',
        name: .literal(leftover),
        platform: .literal(leftover),
        platformCredential: leftoverSecret,
      ),
    );

    add(
      AwsSnsSmsPreferences(
        'sns_sms_preferences',
        defaultSenderId: .literal(leftover),
        defaultSmsType: .literal('Promotional'),
        deliveryStatusIamRoleArn: .literal(arn),
        deliveryStatusSuccessSamplingRate: .literal(leftover),
        monthlySpendLimit: .literal(200),
        usageReportS3Bucket: .literal(leftover),
      ),
    );

    add(AwsSnsTopic('sns_topic'));

    add(
      AwsSnsTopicDataProtectionPolicy(
        'sns_topic_data_protection_policy',
        arn: .literal(arn),
        policy: .literal(policy),
      ),
    );

    add(
      AwsSnsTopicPolicy(
        'sns_topic_policy',
        arn: .literal(arn),
        policy: .literal(policy),
      ),
    );

    add(
      AwsSnsTopicSubscription(
        'sns_topic_subscription',
        endpoint: .literal(leftover),
        protocol: .literal('application'),
        topicArn: .literal(arn),
      ),
    );

    add(
      AwsSpotDatafeedSubscription(
        'spot_datafeed_subscription',
        bucket: .literal(leftover),
      ),
    );

    add(
      AwsSpotFleetRequest(
        'spot_fleet_request',
        iamFleetRole: .literal(arn),
        targetCapacity: .literal(200),
        launch: .launchSpecification([
          .new(ami: .literal(leftover), instanceType: .literal(leftover)),
        ]),
      ),
    );

    add(
      AwsSpotInstanceRequest(
        'spot_instance_request',
        ami: .literal(leftover),
        instanceType: .literal(leftover),
        launchTemplate: SpotInstanceRequestLaunchTemplate(
          identifier: .id(.literal('lt-0123456789abcdef0')),
        ),
      ),
    );

    add(AwsSqsQueue('sqs_queue'));

    add(
      AwsSqsQueuePolicy(
        'sqs_queue_policy',
        policy: .literal(policy),
        queueUrl: .literal('https://example.com'),
      ),
    );

    add(
      AwsSqsQueueRedriveAllowPolicy(
        'sqs_queue_redrive_allow_policy',
        queueUrl: .literal('https://example.com'),
        redriveAllowPolicy: .literal(policy),
      ),
    );

    add(
      AwsSqsQueueRedrivePolicy(
        'sqs_queue_redrive_policy',
        queueUrl: .literal('https://example.com'),
        redrivePolicy: .literal(policy),
      ),
    );

    add(AwsSsmActivation('ssm_activation', iamRole: .literal(leftover)));

    add(AwsSsmAssociation('ssm_association', name: .literal(leftover)));

    add(
      AwsSsmDefaultPatchBaseline(
        'ssm_default_patch_baseline',
        baselineId: .literal('pb-0123456789abcdef0'),
        operatingSystem: .windows,
      ),
    );

    add(
      AwsSsmDocument(
        'ssm_document',
        content: .literal(leftover),
        documentType: .command,
        name: .literal(leftover),
      ),
    );

    add(
      AwsSsmMaintenanceWindow(
        'ssm_maintenance_window',
        cutoff: .literal(200),
        duration: .literal(200),
        name: .literal(leftover),
        schedule: .literal(leftover),
      ),
    );

    add(
      AwsSsmMaintenanceWindowTarget(
        'ssm_maintenance_window_target',
        resourceType: .instance,
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
        'ssm_maintenance_window_task',
        taskArn: .literal(arn),
        taskType: .runCommand,
        windowId: .literal(leftover),
      ),
    );

    add(
      AwsSsmParameter(
        'ssm_parameter',
        value: .value(leftoverSecret),
        name: .literal(leftover),
        type: .string,
      ),
    );

    add(AwsSsmPatchBaseline('ssm_patch_baseline', name: .literal(leftover)));

    add(
      AwsSsmPatchGroup(
        'ssm_patch_group',
        baselineId: .literal(leftover),
        patchGroup: .literal(leftover),
      ),
    );

    add(
      AwsSsmResourceDataSync(
        'ssm_resource_data_sync',
        name: .literal(leftover),
        s3Destination: SsmResourceDataSyncS3Destination(
          bucketName: .literal(leftover),
          region: .literal('us-east-1'),
        ),
      ),
    );

    add(
      AwsSsmServiceSetting(
        'ssm_service_setting',
        settingId: .literal(arn),
        settingValue: .literal(leftover),
      ),
    );

    add(
      AwsSsmcontactsContact(
        'ssmcontacts_contact',
        alias: .literal(leftover),
        type: .literal(leftover),
      ),
    );

    add(
      AwsSsmcontactsContactChannel(
        'ssmcontacts_contact_channel',
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
        'ssmcontacts_plan',
        contactId: .literal(leftover),
        stage: [SsmcontactsPlanStage(durationInMinutes: .literal(200))],
      ),
    );

    add(
      AwsSsmcontactsRotation(
        'ssmcontacts_rotation',
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

    add(AwsSsmincidentsReplicationSet('ssmincidents_replication_set'));

    add(
      AwsSsmincidentsResponsePlan(
        'ssmincidents_response_plan',
        name: .literal(leftover),
        incidentTemplate: SsmincidentsResponsePlanIncidentTemplate(
          impact: .literal(200),
          title: .literal(leftover),
        ),
      ),
    );

    add(
      AwsSsmquicksetupConfigurationManager(
        'ssmquicksetup_configuration_manager',
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
        'ssoadmin_account_assignment',
        instanceArn: .literal(arn),
        permissionSetArn: .literal(arn),
        principalId: .literal('12345678-1234-1234-1234-123456789012'),
        principalType: .user,
        targetId: .literal('123456789012'),
        targetType: .awsAccount,
      ),
    );

    add(
      AwsSsoadminApplication(
        'ssoadmin_application',
        applicationProviderArn: .literal(arn),
        instanceArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsSsoadminApplicationAccessScope(
        'ssoadmin_application_access_scope',
        applicationArn: .literal(arn),
        scope: .literal(leftover),
      ),
    );

    add(
      AwsSsoadminApplicationAssignment(
        'ssoadmin_application_assignment',
        applicationArn: .literal(arn),
        principalId: .literal(leftover),
        principalType: .user,
      ),
    );

    add(
      AwsSsoadminApplicationAssignmentConfiguration(
        'ssoadmin_application_assignment_configuration',
        applicationArn: .literal(arn),
        assignmentRequired: .literal(true),
      ),
    );

    add(
      AwsSsoadminCustomerManagedPolicyAttachment(
        'ssoadmin_customer_managed_policy_attachment',
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
        'ssoadmin_customer_managed_policy_attachments_exc',
        instanceArn: .literal(arn),
        permissionSetArn: .literal(arn),
      ),
    );

    add(
      AwsSsoadminInstanceAccessControlAttributes(
        'ssoadmin_instance_access_control_attributes',
        instanceArn: .literal(arn),
        attribute: [
          SsoadminInstanceAccessControlAttributesAttribute(
            key: .literal(leftover),
            value: [
              .new(source: .literal([leftover])),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSsoadminManagedPolicyAttachment(
        'ssoadmin_managed_policy_attachment',
        instanceArn: .literal(arn),
        managedPolicyArn: .literal(arn),
        permissionSetArn: .literal(arn),
      ),
    );

    add(
      AwsSsoadminManagedPolicyAttachmentsExclusive(
        'ssoadmin_managed_policy_attachments_exclusive',
        instanceArn: .literal(arn),
        managedPolicyArns: .literal([arn]),
        permissionSetArn: .literal(arn),
      ),
    );

    add(
      AwsSsoadminPermissionSet(
        'ssoadmin_permission_set',
        instanceArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      AwsSsoadminPermissionSetInlinePolicy(
        'ssoadmin_permission_set_inline_policy',
        inlinePolicy: .literal(policy),
        instanceArn: .literal(arn),
        permissionSetArn: .literal(arn),
      ),
    );

    add(
      AwsSsoadminPermissionsBoundaryAttachment(
        'ssoadmin_permissions_boundary_attachment',
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
        'ssoadmin_region',
        instanceArn: .literal(arn),
        regionName: .literal('us-east-1'),
      ),
    );

    add(
      AwsSsoadminTrustedTokenIssuer(
        'ssoadmin_trusted_token_issuer',
        instanceArn: .literal(arn),
        name: .literal(leftover),
        trustedTokenIssuerType: .oidcJwt,
        trustedTokenIssuerConfiguration: [
          SsoadminTrustedTokenIssuerConfiguration(
            oidcJwtConfiguration: [
              .new(
                claimAttributePath: .literal(leftover),
                identityStoreAttributePath: .literal(leftover),
                issuerUrl: .literal('https://example.com'),
                jwksRetrievalOption: .openIdDiscovery,
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsStoragegatewayCache(
        'storagegateway_cache',
        diskId: .literal(leftover),
        gatewayArn: .literal(arn),
      ),
    );

    add(
      AwsStoragegatewayCachedIscsiVolume(
        'storagegateway_cached_iscsi_volume',
        gatewayArn: .literal(arn),
        networkInterfaceId: .literal(leftover),
        targetName: .literal(leftover),
        volumeSizeInBytes: .literal(200),
      ),
    );

    add(
      AwsStoragegatewayFileSystemAssociation(
        'storagegateway_file_system_association',
        gatewayArn: .literal(arn),
        locationArn: .literal(arn),
        password: leftoverSecret,
        username: .literal(leftover),
      ),
    );

    add(
      AwsStoragegatewayGateway(
        'storagegateway_gateway',
        activation: .activationKey(.literal(leftover)),
        gatewayName: .literal(leftover),
        gatewayTimezone: .literal('GMT+9:47'),
      ),
    );

    add(
      AwsStoragegatewayNfsFileShare(
        'storagegateway_nfs_file_share',
        clientList: .literal(['10.0.0.0/16']),
        gatewayArn: .literal(arn),
        locationArn: .literal(arn),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsStoragegatewaySmbFileShare(
        'storagegateway_smb_file_share',
        gatewayArn: .literal(arn),
        locationArn: .literal(arn),
        roleArn: .literal(arn),
      ),
    );

    add(
      AwsStoragegatewayStoredIscsiVolume(
        'storagegateway_stored_iscsi_volume',
        diskId: .literal(leftover),
        gatewayArn: .literal(arn),
        networkInterfaceId: .literal(leftover),
        preserveExistingData: .literal(true),
        targetName: .literal(leftover),
      ),
    );

    add(
      AwsStoragegatewayTapePool(
        'storagegateway_tape_pool',
        poolName: .literal(leftover),
        storageClass: .deepArchive,
      ),
    );

    add(
      AwsStoragegatewayUploadBuffer(
        'storagegateway_upload_buffer',
        disk: .diskId(.literal(leftover)),
        gatewayArn: .literal(arn),
      ),
    );

    add(
      AwsStoragegatewayWorkingStorage(
        'storagegateway_working_storage',
        diskId: .literal(leftover),
        gatewayArn: .literal(arn),
      ),
    );

    add(AwsSubnet('subnet', vpcId: .literal('vpc-0123456789abcdef0')));

    add(
      AwsSwfDomain(
        'swf_domain',
        workflowExecutionRetentionPeriodInDays: .literal('30'),
      ),
    );

    add(
      AwsSyntheticsCanary(
        'synthetics_canary',
        artifactS3Location: .literal(leftover),
        executionRoleArn: .literal(arn),
        handler: .literal(leftover),
        name: .literal(leftover),
        runtimeVersion: .literal(leftover),
        schedule: SyntheticsCanarySchedule(expression: .literal(leftover)),
      ),
    );

    add(AwsSyntheticsGroup('synthetics_group', name: .literal(leftover)));

    add(
      AwsSyntheticsGroupAssociation(
        'synthetics_group_association',
        canaryArn: .literal(arn),
        groupName: .literal(leftover),
      ),
    );

    add(
      AwsTimestreaminfluxdbDbCluster(
        'timestreaminfluxdb_db_cluster',
        dbInstanceType: .dbInfluxMedium,
        name: .literal(leftover),
        vpcSecurityGroupIds: .literal([.literal('sg-huetvnpt7rr')]),
        vpcSubnetIds: .literal(['subnet-d7c56hy72wj']),
      ),
    );

    add(
      AwsTimestreaminfluxdbDbInstance(
        'timestreaminfluxdb_db_instance',
        allocatedStorage: .literal(200),
        bucket: .literal(leftover),
        dbInstanceType: .dbInfluxMedium,
        name: .literal(leftover),
        organization: .literal(leftover),
        password: leftoverSecret,
        username: .literal(leftover),
        vpcSecurityGroupIds: .literal([.literal('sg-huetvnpt7rr')]),
        vpcSubnetIds: .literal(['subnet-d7c56hy72wj']),
      ),
    );

    add(
      AwsTimestreamqueryScheduledQuery(
        'timestreamquery_scheduled_query',
        executionRoleArn: .literal(arn),
        name: .literal(leftover),
        queryString: .literal(leftover),
        notificationConfiguration: [
          TimestreamqueryScheduledQueryNotificationConfiguration(
            snsConfiguration: [.new(topicArn: .literal(arn))],
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
              .new(
                databaseName: .literal(leftover),
                tableName: .literal(leftover),
                timeColumn: .literal(leftover),
                dimensionMapping: [
                  .new(dimensionValueType: .varchar, name: .literal(leftover)),
                ],
              ),
            ],
          ),
        ],
        errorReportConfiguration: [
          TimestreamqueryScheduledQueryErrorReportConfiguration(
            s3Configuration: [.new(bucketName: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      AwsTimestreamwriteDatabase(
        'timestreamwrite_database',
        databaseName: .literal(leftover),
      ),
    );

    add(
      AwsTimestreamwriteTable(
        'timestreamwrite_table',
        databaseName: .literal(leftover),
        tableName: .literal(leftover),
      ),
    );

    add(
      AwsTranscribeLanguageModel(
        'transcribe_language_model',
        baseModelName: .narrowband,
        languageCode: .afZa,
        modelName: .literal(leftover),
        inputDataConfig: TranscribeLanguageModelInputDataConfig(
          dataAccessRoleArn: .literal(arn),
          s3Uri: .literal('https://example.com'),
        ),
      ),
    );

    add(
      AwsTranscribeMedicalVocabulary(
        'transcribe_medical_vocabulary',
        languageCode: .enUs,
        vocabularyFileUri: .literal('https://example.com'),
        vocabularyName: .literal(leftover),
      ),
    );

    add(
      AwsTranscribeVocabulary(
        'transcribe_vocabulary',
        languageCode: .literal('af-ZA'),
        terms: .phrases(.literal([leftover])),
        vocabularyName: .literal(leftover),
      ),
    );

    add(
      AwsTranscribeVocabularyFilter(
        'transcribe_vocabulary_filter',
        languageCode: .literal('af-ZA'),
        terms: .vocabularyFilterFileUri(.literal('https://example.com')),
        vocabularyFilterName: .literal(leftover),
      ),
    );

    add(
      AwsTransferAccess(
        'transfer_access',
        externalId: .literal(leftover),
        serverId: .literal('s-0123456789abcdef0'),
      ),
    );

    add(
      AwsTransferAgreement(
        'transfer_agreement',
        accessRole: .literal(arn),
        baseDirectory: .literal(leftover),
        localProfileId: .literal(leftover),
        partnerProfileId: .literal(leftover),
        serverId: .literal(leftover),
      ),
    );

    add(
      AwsTransferCertificate(
        'transfer_certificate',
        certificate: leftoverSecret,
        usage: .signing,
      ),
    );

    add(
      AwsTransferConnector(
        'transfer_connector',
        accessRole: .literal(leftover),
      ),
    );

    add(
      AwsTransferHostKey(
        'transfer_host_key',
        hostKeyBody: .hostKeyBodyWo(leftoverSecret),
        serverId: .literal(leftover),
      ),
    );

    add(
      AwsTransferProfile(
        'transfer_profile',
        as2Id: .literal(leftover),
        profileType: .local,
      ),
    );

    add(AwsTransferServer('transfer_server'));

    add(
      AwsTransferSshKey(
        'transfer_ssh_key',
        body: .literal(leftover),
        serverId: .literal('s-0123456789abcdef0'),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsTransferTag(
        'transfer_tag',
        key: .literal(leftover),
        resourceArn: .literal(arn),
        value: .literal(leftover),
      ),
    );

    add(
      AwsTransferUser(
        'transfer_user',
        role: .literal(arn),
        serverId: .literal('s-0123456789abcdef0'),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsTransferWebApp(
        'transfer_web_app',
        identityProviderDetails: [
          TransferWebAppIdentityProviderDetails(
            identityCenterConfig: [.new(instanceArn: .literal(arn))],
          ),
        ],
      ),
    );

    add(
      AwsTransferWebAppCustomization(
        'transfer_web_app_customization',
        webAppId: .literal(leftover),
      ),
    );

    add(
      AwsTransferWorkflow(
        'transfer_workflow',
        steps: [TransferWorkflowSteps(type: .copy)],
      ),
    );

    add(AwsUxcAccountCustomizations('uxc_account_customizations'));

    add(
      AwsVerifiedaccessEndpoint(
        'verifiedaccess_endpoint',
        attachmentType: .vpc,
        endpointType: .loadBalancer,
        verifiedAccessGroupId: .literal(leftover),
      ),
    );

    add(
      AwsVerifiedaccessGroup(
        'verifiedaccess_group',
        verifiedaccessInstanceId: .literal(leftover),
      ),
    );

    add(AwsVerifiedaccessInstance('verifiedaccess_instance'));

    add(
      AwsVerifiedaccessInstanceLoggingConfiguration(
        'verifiedaccess_instance_logging_configuration',
        verifiedaccessInstanceId: .literal(leftover),
        accessLogs: VerifiedaccessInstanceLoggingConfigurationAccessLogs(
          includeTrustContext: .literal(true),
        ),
      ),
    );

    add(
      AwsVerifiedaccessInstanceTrustProviderAttachment(
        'verifiedaccess_instance_trust_provider_attachmen',
        verifiedaccessInstanceId: .literal(leftover),
        verifiedaccessTrustProviderId: .literal(leftover),
      ),
    );

    add(
      AwsVerifiedaccessTrustProvider(
        'verifiedaccess_trust_provider',
        policyReferenceName: .literal(leftover),
        trustProviderType: .user,
      ),
    );

    add(
      AwsVerifiedpermissionsIdentitySource(
        'verifiedpermissions_identity_source',
        policyStoreId: .literal(leftover),
        configuration: [
          VerifiedpermissionsIdentitySourceConfiguration(
            cognitoUserPoolConfiguration: [.new(userPoolArn: .literal(arn))],
          ),
        ],
      ),
    );

    add(
      AwsVerifiedpermissionsPolicy(
        'verifiedpermissions_policy',
        policyStoreId: .literal(leftover),
        definition: [
          VerifiedpermissionsPolicyDefinition(
            static: [.new(statement: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      AwsVerifiedpermissionsPolicyStore(
        'verifiedpermissions_policy_store',
        validationSettings: [
          VerifiedpermissionsPolicyStoreValidationSettings(mode: .off),
        ],
      ),
    );

    add(
      AwsVerifiedpermissionsPolicyTemplate(
        'verifiedpermissions_policy_template',
        policyStoreId: .literal(leftover),
        statement: .literal(leftover),
      ),
    );

    add(
      AwsVerifiedpermissionsSchema(
        'verifiedpermissions_schema',
        policyStoreId: .literal(leftover),
        definition: [
          VerifiedpermissionsSchemaDefinition(value: .literal(policy)),
        ],
      ),
    );

    add(
      AwsVolumeAttachment(
        'volume_attachment',
        deviceName: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        volumeId: .literal(leftover),
      ),
    );

    add(AwsVpc('vpc'));

    add(
      AwsVpcBlockPublicAccessExclusion(
        'vpc_block_public_access_exclusion',
        internetGatewayExclusionMode: .allowBidirectional,
        target: .subnetId(.literal('subnet-0123456789abcdef0')),
      ),
    );

    add(
      AwsVpcBlockPublicAccessOptions(
        'vpc_block_public_access_options',
        internetGatewayBlockMode: .off,
      ),
    );

    add(
      AwsVpcDhcpOptions(
        'vpc_dhcp_options',
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
        'vpc_dhcp_options_association',
        dhcpOptionsId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcEncryptionControl(
        'vpc_encryption_control',
        mode: .monitor,
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcEndpoint('vpc_endpoint', vpcId: .literal('vpc-0123456789abcdef0')),
    );

    add(
      AwsVpcEndpointConnectionAccepter(
        'vpc_endpoint_connection_accepter',
        vpcEndpointId: .literal(leftover),
        vpcEndpointServiceId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointConnectionNotification(
        'vpc_endpoint_connection_notification',
        connectionEvents: .literal([leftover]),
        connectionNotificationArn: .literal(arn),
        vpcEndpoint: .vpcEndpointId(.literal(leftover)),
      ),
    );

    add(
      AwsVpcEndpointPolicy(
        'vpc_endpoint_policy',
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointPrivateDns(
        'vpc_endpoint_private_dns',
        privateDnsEnabled: .literal(true),
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointRouteTableAssociation(
        'vpc_endpoint_route_table_association',
        routeTableId: .literal(leftover),
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointSecurityGroupAssociation(
        'vpc_endpoint_security_group_association',
        securityGroupId: .literal('sg-0123456789abcdef0'),
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointService(
        'vpc_endpoint_service',
        acceptanceRequired: .literal(true),
      ),
    );

    add(
      AwsVpcEndpointServiceAllowedPrincipal(
        'vpc_endpoint_service_allowed_principal',
        principalArn: .literal(arn),
        vpcEndpointServiceId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointServicePrivateDnsVerification(
        'vpc_endpoint_service_private_dns_verification',
        serviceId: .literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointSubnetAssociation(
        'vpc_endpoint_subnet_association',
        subnetId: .literal('subnet-0123456789abcdef0'),
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(
      AwsVpcIpam(
        'vpc_ipam',
        operatingRegions: [
          VpcIpamOperatingRegions(regionName: .literal('us-east-1')),
        ],
      ),
    );

    add(
      AwsVpcIpamOrganizationAdminAccount(
        'vpc_ipam_organization_admin_account',
        delegatedAdminAccountId: .literal('123456789012'),
      ),
    );

    add(
      AwsVpcIpamPool(
        'vpc_ipam_pool',
        addressFamily: .ipv4,
        ipamScopeId: .literal(leftover),
      ),
    );

    add(
      AwsVpcIpamPoolCidr('vpc_ipam_pool_cidr', ipamPoolId: .literal(leftover)),
    );

    add(
      AwsVpcIpamPoolCidrAllocation(
        'vpc_ipam_pool_cidr_allocation',
        ipamPoolId: .literal(leftover),
      ),
    );

    add(
      AwsVpcIpamPreviewNextCidr(
        'vpc_ipam_preview_next_cidr',
        ipamPoolId: .literal(leftover),
      ),
    );

    add(
      AwsVpcIpamResourceDiscovery(
        'vpc_ipam_resource_discovery',
        operatingRegions: [
          VpcIpamResourceDiscoveryOperatingRegions(
            regionName: .literal('us-east-1'),
          ),
        ],
      ),
    );

    add(
      AwsVpcIpamResourceDiscoveryAssociation(
        'vpc_ipam_resource_discovery_association',
        ipamId: .literal(leftover),
        ipamResourceDiscoveryId: .literal(leftover),
      ),
    );

    add(AwsVpcIpamScope('vpc_ipam_scope', ipamId: .literal(leftover)));

    add(
      AwsVpcIpv4CidrBlockAssociation(
        'vpc_ipv4_cidr_block_association',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcIpv6CidrBlockAssociation(
        'vpc_ipv6_cidr_block_association',
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcNetworkPerformanceMetricSubscription(
        'vpc_network_performance_metric_subscription',
        destination: .literal(leftover),
        source: .literal(leftover),
      ),
    );

    add(
      AwsVpcPeeringConnection(
        'vpc_peering_connection',
        peerVpcId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcPeeringConnectionAccepter(
        'vpc_peering_connection_accepter',
        vpcPeeringConnectionId: .literal(leftover),
      ),
    );

    add(
      AwsVpcPeeringConnectionOptions(
        'vpc_peering_connection_options',
        vpcPeeringConnectionId: .literal(leftover),
      ),
    );

    add(AwsVpcRouteServer('vpc_route_server', amazonSideAsn: .literal(200)));

    add(
      AwsVpcRouteServerEndpoint(
        'vpc_route_server_endpoint',
        routeServerId: .literal(leftover),
        subnetId: .literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcRouteServerPeer(
        'vpc_route_server_peer',
        peerAddress: .literal(leftover),
        routeServerEndpointId: .literal(leftover),
        bgpOptions: [VpcRouteServerPeerBgpOptions(peerAsn: .literal(200))],
      ),
    );

    add(
      AwsVpcRouteServerPropagation(
        'vpc_route_server_propagation',
        routeServerId: .literal(leftover),
        routeTableId: .literal(leftover),
      ),
    );

    add(
      AwsVpcRouteServerVpcAssociation(
        'vpc_route_server_vpc_association',
        routeServerId: .literal(leftover),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcSecurityGroupEgressRule(
        'vpc_security_group_egress_rule',
        ipProtocol: .literal(leftover),
        securityGroupId: .literal('sg-0123456789abcdef0'),
        cidrIpv4: .literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsVpcSecurityGroupIngressRule(
        'vpc_security_group_ingress_rule',
        ipProtocol: .literal(leftover),
        securityGroupId: .literal('sg-0123456789abcdef0'),
        cidrIpv4: .literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsVpcSecurityGroupRulesExclusive(
        'vpc_security_group_rules_exclusive',
        egressRuleIds: .literal([leftover]),
        ingressRuleIds: .literal([leftover]),
        securityGroupId: .literal('sg-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcSecurityGroupVpcAssociation(
        'vpc_security_group_vpc_association',
        securityGroupId: .literal('sg-0123456789abcdef0'),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpclatticeAccessLogSubscription(
        'vpclattice_access_log_subscription',
        destinationArn: .literal(arn),
        resourceIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeAuthPolicy(
        'vpclattice_auth_policy',
        policy: .literal(policy),
        resourceIdentifier: .literal(arn),
      ),
    );

    add(
      AwsVpclatticeDomainVerification(
        'vpclattice_domain_verification',
        domainName: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeListener(
        'vpclattice_listener',
        name: .literal(leftover),
        protocol: .http,
        defaultAction: VpclatticeListenerDefaultAction(
          fixedResponse: .new(statusCode: .literal(200)),
        ),
        serviceArn: .literal(arn),
        serviceIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeListenerRule(
        'vpclattice_listener_rule',
        listenerIdentifier: .literal(leftover),
        name: .literal(leftover),
        priority: .literal(1),
        serviceIdentifier: .literal(leftover),
        action: .fixedResponse(.new(statusCode: .literal(200))),
        match: VpclatticeListenerRuleMatch(
          httpMatch: .new(method: .literal(leftover)),
        ),
      ),
    );

    add(
      AwsVpclatticeResourceConfiguration(
        'vpclattice_resource_configuration',
        name: .literal(leftover),
        parent: .resourceGatewayIdentifier(.literal(leftover)),
        protocol: .tcp,
      ),
    );

    add(
      AwsVpclatticeResourceGateway(
        'vpclattice_resource_gateway',
        name: .literal(leftover),
        subnetIds: .literal([.literal(leftover)]),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpclatticeResourcePolicy(
        'vpclattice_resource_policy',
        policy: .literal(policy),
        resourceArn: .literal(arn),
      ),
    );

    add(AwsVpclatticeService('vpclattice_service', name: .literal(leftover)));

    add(
      AwsVpclatticeServiceNetwork(
        'vpclattice_service_network',
        name: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetworkResourceAssociation(
        'vpclattice_service_network_resource_association',
        resourceConfigurationIdentifier: .literal(leftover),
        serviceNetworkIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetworkServiceAssociation(
        'vpclattice_service_network_service_association',
        serviceIdentifier: .literal(leftover),
        serviceNetworkIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetworkVpcAssociation(
        'vpclattice_service_network_vpc_association',
        serviceNetworkIdentifier: .literal(leftover),
        vpcIdentifier: .literal(leftover),
      ),
    );

    add(
      AwsVpclatticeTargetGroup(
        'vpclattice_target_group',
        name: .literal(leftover),
        type: .ip,
      ),
    );

    add(
      AwsVpclatticeTargetGroupAttachment(
        'vpclattice_target_group_attachment',
        targetGroupIdentifier: .literal(leftover),
        target: VpclatticeTargetGroupAttachmentTarget(id: .literal(leftover)),
      ),
    );

    add(
      AwsVpnConcentrator(
        'vpn_concentrator',
        transitGatewayId: .literal(leftover),
        type: .ipsec1,
      ),
    );

    add(
      AwsVpnConnection(
        'vpn_connection',
        customerGatewayId: .literal(leftover),
        type: .ipsec1,
      ),
    );

    add(
      AwsVpnConnectionRoute(
        'vpn_connection_route',
        destinationCidrBlock: .literal('10.0.0.0/16'),
        vpnConnectionId: .literal(leftover),
      ),
    );

    add(AwsVpnGateway('vpn_gateway'));

    add(
      AwsVpnGatewayAttachment(
        'vpn_gateway_attachment',
        vpcId: .literal('vpc-0123456789abcdef0'),
        vpnGatewayId: .literal(leftover),
      ),
    );

    add(
      AwsVpnGatewayRoutePropagation(
        'vpn_gateway_route_propagation',
        routeTableId: .literal(leftover),
        vpnGatewayId: .literal(leftover),
      ),
    );

    add(AwsWafByteMatchSet('waf_byte_match_set', name: .literal(leftover)));

    add(AwsWafGeoMatchSet('waf_geo_match_set', name: .literal(leftover)));

    add(AwsWafIpset('waf_ipset', name: .literal(leftover)));

    add(
      AwsWafRateBasedRule(
        'waf_rate_based_rule',
        metricName: .literal(leftover),
        name: .literal(leftover),
        rateKey: .literal(leftover),
        rateLimit: .literal(200),
      ),
    );

    add(AwsWafRegexMatchSet('waf_regex_match_set', name: .literal(leftover)));

    add(
      AwsWafRegexPatternSet('waf_regex_pattern_set', name: .literal(leftover)),
    );

    add(
      AwsWafRule(
        'waf_rule',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafRuleGroup(
        'waf_rule_group',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafSizeConstraintSet(
        'waf_size_constraint_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafSqlInjectionMatchSet(
        'waf_sql_injection_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafWebAcl(
        'waf_web_acl',
        metricName: .literal(leftover),
        name: .literal(leftover),
        defaultAction: WafWebAclDefaultAction(type: .literal(leftover)),
      ),
    );

    add(AwsWafXssMatchSet('waf_xss_match_set', name: .literal(leftover)));

    add(
      AwsWafregionalByteMatchSet(
        'wafregional_byte_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalGeoMatchSet(
        'wafregional_geo_match_set',
        name: .literal(leftover),
      ),
    );

    add(AwsWafregionalIpset('wafregional_ipset', name: .literal(leftover)));

    add(
      AwsWafregionalRateBasedRule(
        'wafregional_rate_based_rule',
        metricName: .literal(leftover),
        name: .literal(leftover),
        rateKey: .literal(leftover),
        rateLimit: .literal(200),
      ),
    );

    add(
      AwsWafregionalRegexMatchSet(
        'wafregional_regex_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalRegexPatternSet(
        'wafregional_regex_pattern_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalRule(
        'wafregional_rule',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalRuleGroup(
        'wafregional_rule_group',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalSizeConstraintSet(
        'wafregional_size_constraint_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalSqlInjectionMatchSet(
        'wafregional_sql_injection_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalWebAcl(
        'wafregional_web_acl',
        metricName: .literal(leftover),
        name: .literal(leftover),
        defaultAction: WafregionalWebAclDefaultAction(type: .block),
      ),
    );

    add(
      AwsWafregionalWebAclAssociation(
        'wafregional_web_acl_association',
        resourceArn: .literal(arn),
        webAclId: .literal(leftover),
      ),
    );

    add(
      AwsWafregionalXssMatchSet(
        'wafregional_xss_match_set',
        name: .literal(leftover),
      ),
    );

    add(
      AwsWafv2ApiKey(
        'wafv2_api_key',
        scope: .cloudfront,
        tokenDomains: .literal(['example.com']),
      ),
    );

    add(
      AwsWafv2IpSet(
        'wafv2_ip_set',
        ipAddressVersion: .ipv4,
        scope: .cloudfront,
      ),
    );

    add(AwsWafv2RegexPatternSet('wafv2_regex_pattern_set', scope: .cloudfront));

    add(
      AwsWafv2RuleGroup(
        'wafv2_rule_group',
        capacity: .literal(200),
        scope: .regional,
        visibilityConfig: Wafv2RuleGroupVisibilityConfig(
          cloudwatchMetricsEnabled: .literal(true),
          metricName: .literal(leftover),
          sampledRequestsEnabled: .literal(true),
        ),
      ),
    );

    add(
      AwsWafv2WebAcl(
        'wafv2_web_acl',
        scope: .regional,
        defaultAction: Wafv2WebAclDefaultAction(
          allow: .new(
            customRequestHandling: .new(
              insertHeader: [
                .new(name: .literal(leftover), value: .literal(leftover)),
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
        'wafv2_web_acl_association',
        resourceArn: .literal(arn),
        webAclArn: .literal(arn),
      ),
    );

    add(
      AwsWafv2WebAclLoggingConfiguration(
        'wafv2_web_acl_logging_configuration',
        logDestinationConfigs: .literal([arn]),
        resourceArn: .literal(arn),
      ),
    );

    add(
      AwsWafv2WebAclRule(
        'wafv2_web_acl_rule',
        name: .literal(leftover),
        priority: .literal(200),
        webAclArn: .literal(arn),
        behavior: .action([
          .new(
            allow: [
              .new(
                customRequestHandling: [
                  .new(
                    insertHeader: [
                      .new(name: .literal(leftover), value: .literal(leftover)),
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
              .new(
                statement: [
                  .new(
                    andStatement: [
                      .new(
                        statement: [
                          .new(
                            andStatement: [
                              .new(
                                statement: [
                                  .new(
                                    asnMatchStatement: [
                                      .new(asnList: .literal([64512])),
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
        'wafv2_web_acl_rule_group_association',
        priority: .literal(200),
        ruleName: .literal(leftover),
        webAclArn: .literal(arn),
        source: .managedRuleGroup([
          .new(name: .literal(leftover), vendorName: .literal(leftover)),
        ]),
      ),
    );

    add(
      AwsWorkmailDefaultDomain(
        'workmail_default_domain',
        domainName: .literal(leftover),
        organizationId: .literal(leftover),
      ),
    );

    add(
      AwsWorkmailDomain(
        'workmail_domain',
        domainName: .literal(leftover),
        organizationId: .literal(leftover),
      ),
    );

    add(
      AwsWorkmailGroup(
        'workmail_group',
        email: .literal('leftover@example.com'),
        name: .literal(leftover),
        organizationId: .literal(leftover),
      ),
    );

    add(
      AwsWorkmailOrganization(
        'workmail_organization',
        organizationAlias: .literal(leftover),
      ),
    );

    add(
      AwsWorkmailUser(
        'workmail_user',
        displayName: .literal(leftover),
        email: .literal('leftover@example.com'),
        name: .literal(leftover),
        organizationId: .literal(leftover),
      ),
    );

    add(
      AwsWorkspacesConnectionAlias(
        'workspaces_connection_alias',
        connectionString: .literal(leftover),
      ),
    );

    add(AwsWorkspacesDirectory('workspaces_directory'));

    add(AwsWorkspacesIpGroup('workspaces_ip_group', name: .literal(leftover)));

    add(
      AwsWorkspacesPool(
        'workspaces_pool',
        bundleId: .literal('wsb-leftover1'),
        description: .literal(leftover),
        directoryId: .literal('wsd-leftover1'),
        poolName: .literal(leftover),
        runningMode: .autoStop,
      ),
    );

    add(
      AwsWorkspacesWorkspace(
        'workspaces_workspace',
        bundleId: .literal(leftover),
        directoryId: .literal(leftover),
        userName: .literal(leftover),
      ),
    );

    add(
      AwsWorkspaceswebBrowserSettings(
        'workspacesweb_browser_settings',
        browserPolicy: .literal(policy),
      ),
    );

    add(
      AwsWorkspaceswebBrowserSettingsAssociation(
        'workspacesweb_browser_settings_association',
        browserSettingsArn: .literal(arn),
        portalArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebDataProtectionSettings(
        'workspacesweb_data_protection_settings',
        displayName: .literal(leftover),
      ),
    );

    add(
      AwsWorkspaceswebDataProtectionSettingsAssociation(
        'workspacesweb_data_protection_settings_associati',
        dataProtectionSettingsArn: .literal(arn),
        portalArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebIdentityProvider(
        'workspacesweb_identity_provider',
        identityProviderDetails: .literal({'k': leftover}),
        identityProviderName: .literal(leftover),
        identityProviderType: .saml,
        portalArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebIpAccessSettings(
        'workspacesweb_ip_access_settings',
        displayName: .literal(leftover),
        ipRule: [
          WorkspaceswebIpAccessSettingsIpRule(ipRange: .literal(leftover)),
        ],
      ),
    );

    add(
      AwsWorkspaceswebIpAccessSettingsAssociation(
        'workspacesweb_ip_access_settings_association',
        ipAccessSettingsArn: .literal(arn),
        portalArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebNetworkSettings(
        'workspacesweb_network_settings',
        securityGroupIds: .literal([.literal(leftover)]),
        subnetIds: .literal([.literal(leftover), .literal('leftover1')]),
        vpcId: .literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsWorkspaceswebNetworkSettingsAssociation(
        'workspacesweb_network_settings_association',
        networkSettingsArn: .literal(arn),
        portalArn: .literal(arn),
      ),
    );

    add(AwsWorkspaceswebPortal('workspacesweb_portal'));

    add(
      AwsWorkspaceswebSessionLogger(
        'workspacesweb_session_logger',
        logConfiguration: [
          WorkspaceswebSessionLoggerLogConfiguration(
            s3: [
              .new(
                bucket: .literal(leftover),
                folderStructure: .flat,
                logFileFormat: .jsonlines,
              ),
            ],
          ),
        ],
        eventFilter: [
          .include([.websiteinteract]),
        ],
      ),
    );

    add(
      AwsWorkspaceswebSessionLoggerAssociation(
        'workspacesweb_session_logger_association',
        portalArn: .literal(arn),
        sessionLoggerArn: .literal(arn),
      ),
    );

    add(AwsWorkspaceswebTrustStore('workspacesweb_trust_store'));

    add(
      AwsWorkspaceswebTrustStoreAssociation(
        'workspacesweb_trust_store_association',
        portalArn: .literal(arn),
        trustStoreArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebUserAccessLoggingSettings(
        'workspacesweb_user_access_logging_settings',
        kinesisStreamArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebUserAccessLoggingSettingsAssociation(
        'workspacesweb_user_access_logging_settings_assoc',
        portalArn: .literal(arn),
        userAccessLoggingSettingsArn: .literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebUserSettings(
        'workspacesweb_user_settings',
        copyAllowed: .disabled,
        downloadAllowed: .disabled,
        pasteAllowed: .disabled,
        printAllowed: .disabled,
        uploadAllowed: .disabled,
      ),
    );

    add(
      AwsWorkspaceswebUserSettingsAssociation(
        'workspacesweb_user_settings_association',
        portalArn: .literal(arn),
        userSettingsArn: .literal(arn),
      ),
    );

    add(AwsXrayEncryptionConfig('xray_encryption_config', type: .none));

    add(
      AwsXrayGroup(
        'xray_group',
        filterExpression: .literal(leftover),
        groupName: .literal(leftover),
      ),
    );

    add(
      AwsXrayIndexingRule(
        'xray_indexing_rule',
        name: .literal(leftover),
        rule: [
          XrayIndexingRule(
            probabilistic: [.new(desiredSamplingPercentage: .literal(200))],
          ),
        ],
      ),
    );

    add(
      AwsXrayResourcePolicy(
        'xray_resource_policy',
        policyDocument: .literal(policy),
        policyName: .literal(leftover),
      ),
    );

    add(
      AwsXraySamplingRule(
        'xray_sampling_rule',
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
        'xray_trace_segment_destination',
        destination: .xray,
      ),
    );

    add(DataAwsAccountPrimaryContact('d_account_primary_contact'));

    add(DataAwsAccountRegions('d_account_regions'));

    add(
      DataAwsAccountaccessApplication(
        'd_accountaccess_application',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsAccountaccessEntitlements(
        'd_accountaccess_entitlements',
        applicationArn: .literal(arn),
        filter: [
          DataAccountaccessEntitlementsFilter(
            principalRole: [.new(accountId: .literal('123456789012'))],
          ),
        ],
      ),
    );

    add(
      DataAwsAcmCertificate(
        'd_acm_certificate',
        domain: .literal(leftover),
        tags: .literal({'k': leftover}),
      ),
    );

    add(
      DataAwsAcmpcaCertificate(
        'd_acmpca_certificate',
        arn: .literal(arn),
        certificateAuthorityArn: .literal(arn),
      ),
    );

    add(
      DataAwsAcmpcaCertificateAuthority(
        'd_acmpca_certificate_authority',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsAgentregistryRegistry(
        'd_agentregistry_registry',
        registryId: .literal(leftover),
      ),
    );

    add(DataAwsAlb('d_alb'));

    add(DataAwsAlbListener('d_alb_listener'));

    add(DataAwsAlbTargetGroup('d_alb_target_group'));

    add(DataAwsAmi('d_ami'));

    add(DataAwsAmiIds('d_ami_ids', owners: .literal([leftover])));

    add(
      DataAwsApiGatewayApiKey('d_api_gateway_api_key', id: .literal(leftover)),
    );

    add(DataAwsApiGatewayApiKeys('d_api_gateway_api_keys'));

    add(
      DataAwsApiGatewayAuthorizer(
        'd_api_gateway_authorizer',
        authorizerId: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      DataAwsApiGatewayAuthorizers(
        'd_api_gateway_authorizers',
        restApiId: .literal(leftover),
      ),
    );

    add(
      DataAwsApiGatewayDomainName(
        'd_api_gateway_domain_name',
        domainName: .literal(leftover),
      ),
    );

    add(
      DataAwsApiGatewayExport(
        'd_api_gateway_export',
        exportType: .literal('oas30'),
        restApiId: .literal(leftover),
        stageName: .literal(leftover),
      ),
    );

    add(
      DataAwsApiGatewayResource(
        'd_api_gateway_resource',
        path: .literal(leftover),
        restApiId: .literal(leftover),
      ),
    );

    add(
      DataAwsApiGatewayRestApi(
        'd_api_gateway_rest_api',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsApiGatewaySdk(
        'd_api_gateway_sdk',
        restApiId: .literal(leftover),
        sdkType: .literal('java'),
        stageName: .literal(leftover),
      ),
    );

    add(
      DataAwsApiGatewayVpcLink(
        'd_api_gateway_vpc_link',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsApigatewayv2Api('d_apigatewayv2_api', apiId: .literal(leftover)),
    );

    add(DataAwsApigatewayv2Apis('d_apigatewayv2_apis'));

    add(
      DataAwsApigatewayv2Export(
        'd_apigatewayv2_export',
        apiId: .literal(leftover),
        outputType: .literal('JSON'),
        specification: .literal('OAS30'),
      ),
    );

    add(
      DataAwsApigatewayv2VpcLink(
        'd_apigatewayv2_vpc_link',
        vpcLinkId: .literal(leftover),
      ),
    );

    add(
      DataAwsAppconfigApplication(
        'd_appconfig_application',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsAppconfigConfigurationProfile(
        'd_appconfig_configuration_profile',
        applicationId: .literal(leftover),
        configurationProfileId: .literal(leftover),
      ),
    );

    add(
      DataAwsAppconfigConfigurationProfiles(
        'd_appconfig_configuration_profiles',
        applicationId: .literal(leftover),
      ),
    );

    add(
      DataAwsAppconfigEnvironment(
        'd_appconfig_environment',
        applicationId: .literal(leftover),
        environmentId: .literal(leftover),
      ),
    );

    add(
      DataAwsAppconfigEnvironments(
        'd_appconfig_environments',
        applicationId: .literal(leftover),
      ),
    );

    add(
      DataAwsAppintegrationsEventIntegration(
        'd_appintegrations_event_integration',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsAppmeshGatewayRoute(
        'd_appmesh_gateway_route',
        meshName: .literal(leftover),
        name: .literal(leftover),
        virtualGatewayName: .literal(leftover),
      ),
    );

    add(DataAwsAppmeshMesh('d_appmesh_mesh', name: .literal(leftover)));

    add(
      DataAwsAppmeshRoute(
        'd_appmesh_route',
        meshName: .literal(leftover),
        name: .literal(leftover),
        virtualRouterName: .literal(leftover),
      ),
    );

    add(
      DataAwsAppmeshVirtualGateway(
        'd_appmesh_virtual_gateway',
        meshName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsAppmeshVirtualNode(
        'd_appmesh_virtual_node',
        meshName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsAppmeshVirtualRouter(
        'd_appmesh_virtual_router',
        meshName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsAppmeshVirtualService(
        'd_appmesh_virtual_service',
        meshName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(DataAwsApprunnerHostedZoneId('d_apprunner_hosted_zone_id'));

    add(DataAwsAppstreamImage('d_appstream_image'));

    add(
      DataAwsArcregionswitchPlan('d_arcregionswitch_plan', arn: .literal(arn)),
    );

    add(
      DataAwsArcregionswitchRoute53HealthChecks(
        'd_arcregionswitch_route53_health_checks',
        planArn: .literal(arn),
      ),
    );

    add(DataAwsArn('d_arn', arn: .literal(arn)));

    add(
      DataAwsAthenaNamedQuery('d_athena_named_query', name: .literal(leftover)),
    );

    add(
      DataAwsAuditmanagerControl(
        'd_auditmanager_control',
        name: .literal(leftover),
        type: .literal('Standard'),
      ),
    );

    add(
      DataAwsAuditmanagerFramework(
        'd_auditmanager_framework',
        frameworkType: .literal('Standard'),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsAutoscalingGroup('d_autoscaling_group', name: .literal(leftover)),
    );

    add(DataAwsAutoscalingGroups('d_autoscaling_groups'));

    add(DataAwsAvailabilityZone('d_availability_zone'));

    add(DataAwsAvailabilityZones('d_availability_zones'));

    add(DataAwsBackupFramework('d_backup_framework', name: .literal(leftover)));

    add(DataAwsBackupPlan('d_backup_plan', planId: .literal(leftover)));

    add(
      DataAwsBackupReportPlan('d_backup_report_plan', name: .literal(leftover)),
    );

    add(
      DataAwsBackupSelection(
        'd_backup_selection',
        planId: .literal(leftover),
        selectionId: .literal(leftover),
      ),
    );

    add(DataAwsBackupVault('d_backup_vault', name: .literal(leftover)));

    add(
      DataAwsBatchComputeEnvironment(
        'd_batch_compute_environment',
        name: .literal(leftover),
      ),
    );

    add(DataAwsBatchJobDefinition('d_batch_job_definition'));

    add(DataAwsBatchJobQueue('d_batch_job_queue', name: .literal(leftover)));

    add(
      DataAwsBatchSchedulingPolicy(
        'd_batch_scheduling_policy',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsBedrockCustomModel(
        'd_bedrock_custom_model',
        modelId: .literal(leftover),
      ),
    );

    add(DataAwsBedrockCustomModels('d_bedrock_custom_models'));

    add(
      DataAwsBedrockFoundationModel(
        'd_bedrock_foundation_model',
        modelId: .literal(leftover),
      ),
    );

    add(
      DataAwsBedrockFoundationModelAgreementOffers(
        'd_bedrock_foundation_model_agreement_offers',
        modelId: .literal('2e.lzvycjp-i167ebv/zatu8l86d38a'),
      ),
    );

    add(DataAwsBedrockFoundationModels('d_bedrock_foundation_models'));

    add(
      DataAwsBedrockInferenceProfile(
        'd_bedrock_inference_profile',
        inferenceProfileId: .literal(leftover),
      ),
    );

    add(DataAwsBedrockInferenceProfiles('d_bedrock_inference_profiles'));

    add(
      DataAwsBedrockUseCaseForModelAccess(
        'd_bedrock_use_case_for_model_access',
      ),
    );

    add(
      DataAwsBedrockagentAgentVersions(
        'd_bedrockagent_agent_versions',
        agentId: .literal(leftover),
      ),
    );

    add(DataAwsBillingServiceAccount('d_billing_service_account'));

    add(DataAwsBillingViews('d_billing_views'));

    add(DataAwsBudgetsBudget('d_budgets_budget', name: .literal(leftover)));

    add(DataAwsCanonicalUserId('d_canonical_user_id'));

    add(
      DataAwsCeCostCategory(
        'd_ce_cost_category',
        costCategoryArn: .literal(arn),
      ),
    );

    add(
      DataAwsCeTags(
        'd_ce_tags',
        timePeriod: DataCeTagsTimePeriod(
          end: .literal(leftover),
          start: .literal(leftover),
        ),
      ),
    );

    add(
      DataAwsChatbotSlackWorkspace(
        'd_chatbot_slack_workspace',
        slackTeamName: .literal(leftover),
      ),
    );

    add(
      DataAwsCloudcontrolapiResource(
        'd_cloudcontrolapi_resource',
        identifier: .literal(leftover),
        typeName: .literal('AWS::S3::Bucket'),
      ),
    );

    add(
      DataAwsCloudformationExport(
        'd_cloudformation_export',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsCloudformationStack(
        'd_cloudformation_stack',
        name: .literal(leftover),
      ),
    );

    add(DataAwsCloudformationType('d_cloudformation_type'));

    add(
      DataAwsCloudfrontConnectionGroup(
        'd_cloudfront_connection_group',
        routingEndpoint: .literal(leftover),
      ),
    );

    add(
      DataAwsCloudfrontDistribution(
        'd_cloudfront_distribution',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsCloudfrontDistributionTenant(
        'd_cloudfront_distribution_tenant',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsCloudfrontFunction(
        'd_cloudfront_function',
        name: .literal(leftover),
        stage: .literal('DEVELOPMENT'),
      ),
    );

    add(
      DataAwsCloudfrontLogDeliveryCanonicalUserId(
        'd_cloudfront_log_delivery_canonical_user_id',
      ),
    );

    add(
      DataAwsCloudfrontOriginAccessControl(
        'd_cloudfront_origin_access_control',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsCloudfrontOriginAccessIdentities(
        'd_cloudfront_origin_access_identities',
      ),
    );

    add(
      DataAwsCloudfrontOriginAccessIdentity(
        'd_cloudfront_origin_access_identity',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsCloudfrontOriginRequestPolicy(
        'd_cloudfront_origin_request_policy',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsCloudfrontRealtimeLogConfig(
        'd_cloudfront_realtime_log_config',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsCloudfrontResponseHeadersPolicy(
        'd_cloudfront_response_headers_policy',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsCloudhsmV2Cluster(
        'd_cloudhsm_v2_cluster',
        clusterId: .literal(leftover),
      ),
    );

    add(DataAwsCloudtrailServiceAccount('d_cloudtrail_service_account'));

    add(
      DataAwsCloudwatchContributorManagedInsightRules(
        'd_cloudwatch_contributor_managed_insight_rules',
        resourceArn: .literal(arn),
      ),
    );

    add(
      DataAwsCloudwatchEventBus(
        'd_cloudwatch_event_bus',
        name: .literal(leftover),
      ),
    );

    add(DataAwsCloudwatchEventBuses('d_cloudwatch_event_buses'));

    add(
      DataAwsCloudwatchEventConnection(
        'd_cloudwatch_event_connection',
        name: .literal(leftover),
      ),
    );

    add(DataAwsCloudwatchEventSource('d_cloudwatch_event_source'));

    add(
      DataAwsCloudwatchLogDataProtectionPolicyDocument(
        'd_cloudwatch_log_data_protection_policy_document',
        name: .literal(leftover),
        statement: [
          DataCloudwatchLogDataProtectionPolicyDocumentStatement(
            dataIdentifiers: .literal([leftover]),
            operation: .new(
              audit: .new(
                findingsDestination: .new(
                  cloudwatchLogs: .new(logGroup: .literal(leftover)),
                ),
              ),
            ),
          ),
          DataCloudwatchLogDataProtectionPolicyDocumentStatement(
            dataIdentifiers: .literal([leftover]),
            operation: .new(
              audit: .new(
                findingsDestination: .new(
                  cloudwatchLogs: .new(logGroup: .literal(leftover)),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    add(
      DataAwsCloudwatchLogGroup(
        'd_cloudwatch_log_group',
        name: .literal(leftover),
      ),
    );

    add(DataAwsCloudwatchLogGroups('d_cloudwatch_log_groups'));

    add(
      DataAwsCodeartifactAuthorizationToken(
        'd_codeartifact_authorization_token',
        domain: .literal(leftover),
      ),
    );

    add(
      DataAwsCodeartifactRepositoryEndpoint(
        'd_codeartifact_repository_endpoint',
        domain: .literal(leftover),
        format: .literal('npm'),
        repository: .literal(leftover),
      ),
    );

    add(DataAwsCodebuildFleet('d_codebuild_fleet', name: .literal(leftover)));

    add(
      DataAwsCodecatalystDevEnvironment(
        'd_codecatalyst_dev_environment',
        envId: .literal(leftover),
        projectName: .literal(leftover),
        spaceName: .literal(leftover),
      ),
    );

    add(
      DataAwsCodecommitApprovalRuleTemplate(
        'd_codecommit_approval_rule_template',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsCodecommitRepository(
        'd_codecommit_repository',
        repositoryName: .literal(leftover),
      ),
    );

    add(
      DataAwsCodeguruprofilerProfilingGroup(
        'd_codeguruprofiler_profiling_group',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsCodestarconnectionsConnection(
        'd_codestarconnections_connection',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsCognitoIdentityPool(
        'd_cognito_identity_pool',
        identityPoolName: .literal(leftover),
      ),
    );

    add(
      DataAwsCognitoUserGroup(
        'd_cognito_user_group',
        name: .literal(leftover),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      DataAwsCognitoUserGroups(
        'd_cognito_user_groups',
        userPoolId: .literal(leftover),
      ),
    );

    add(
      DataAwsCognitoUserPool(
        'd_cognito_user_pool',
        userPoolId: .literal(leftover),
      ),
    );

    add(
      DataAwsCognitoUserPoolClient(
        'd_cognito_user_pool_client',
        clientId: .literal(leftover),
        userPoolId: .literal(leftover),
      ),
    );

    add(
      DataAwsCognitoUserPoolClients(
        'd_cognito_user_pool_clients',
        userPoolId: .literal(leftover),
      ),
    );

    add(
      DataAwsCognitoUserPoolSigningCertificate(
        'd_cognito_user_pool_signing_certificate',
        userPoolId: .literal(leftover),
      ),
    );

    add(
      DataAwsCognitoUserPools('d_cognito_user_pools', name: .literal(leftover)),
    );

    add(
      DataAwsConnectBotAssociation(
        'd_connect_bot_association',
        instanceId: .literal('i-0123456789abcdef0'),
        lexBot: DataConnectBotAssociationLexBot(name: .literal(leftover)),
      ),
    );

    add(
      DataAwsConnectContactFlow(
        'd_connect_contact_flow',
        instanceId: .literal('i-0123456789abcdef0'),
        contactFlowId: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectContactFlowModule(
        'd_connect_contact_flow_module',
        instanceId: .literal('i-0123456789abcdef0'),
        contactFlowModuleId: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectHoursOfOperation(
        'd_connect_hours_of_operation',
        instanceId: .literal('i-0123456789abcdef0'),
        hoursOfOperationId: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectInstance(
        'd_connect_instance',
        instanceAlias: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectInstanceStorageConfig(
        'd_connect_instance_storage_config',
        associationId: .literal(leftover),
        instanceId: .literal('i-0123456789abcdef0'),
        resourceType: .literal('CHAT_TRANSCRIPTS'),
      ),
    );

    add(
      DataAwsConnectLambdaFunctionAssociation(
        'd_connect_lambda_function_association',
        functionArn: .literal(arn),
        instanceId: .literal('i-0123456789abcdef0'),
      ),
    );

    add(
      DataAwsConnectPrompt(
        'd_connect_prompt',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectQueue(
        'd_connect_queue',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectQuickConnect(
        'd_connect_quick_connect',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectRoutingProfile(
        'd_connect_routing_profile',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectSecurityProfile(
        'd_connect_security_profile',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectUser(
        'd_connect_user',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectUserHierarchyGroup(
        'd_connect_user_hierarchy_group',
        instanceId: .literal('i-0123456789abcdef0'),
        hierarchyGroupId: .literal(leftover),
      ),
    );

    add(
      DataAwsConnectUserHierarchyStructure(
        'd_connect_user_hierarchy_structure',
        instanceId: .literal('i-0123456789abcdef0'),
      ),
    );

    add(
      DataAwsConnectVocabulary(
        'd_connect_vocabulary',
        instanceId: .literal('i-0123456789abcdef0'),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsControltowerControls(
        'd_controltower_controls',
        targetIdentifier: .literal(arn),
      ),
    );

    add(
      DataAwsCurReportDefinition(
        'd_cur_report_definition',
        reportName: .literal(leftover),
      ),
    );

    add(DataAwsCustomerGateway('d_customer_gateway'));

    add(
      DataAwsDatapipelinePipeline(
        'd_datapipeline_pipeline',
        pipelineId: .literal(leftover),
      ),
    );

    add(
      DataAwsDatapipelinePipelineDefinition(
        'd_datapipeline_pipeline_definition',
        pipelineId: .literal(leftover),
      ),
    );

    add(DataAwsDatazoneDomain('d_datazone_domain', name: .literal(leftover)));

    add(
      DataAwsDatazoneEnvironmentBlueprint(
        'd_datazone_environment_blueprint',
        domainId: .literal(leftover),
        managed: .literal(true),
        name: .literal(leftover),
      ),
    );

    add(DataAwsDbClusterSnapshot('d_db_cluster_snapshot'));

    add(DataAwsDbEventCategories('d_db_event_categories'));

    add(DataAwsDbInstance('d_db_instance'));

    add(DataAwsDbInstances('d_db_instances'));

    add(
      DataAwsDbParameterGroup('d_db_parameter_group', name: .literal(leftover)),
    );

    add(DataAwsDbProxy('d_db_proxy', name: .literal(leftover)));

    add(DataAwsDbSnapshot('d_db_snapshot'));

    add(DataAwsDbSubnetGroup('d_db_subnet_group', name: .literal(leftover)));

    add(DataAwsDefaultTags('d_default_tags'));

    add(
      DataAwsDevopsguruNotificationChannel(
        'd_devopsguru_notification_channel',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsDevopsguruResourceCollection(
        'd_devopsguru_resource_collection',
        type: .literal('AWS_CLOUD_FORMATION'),
      ),
    );

    add(
      DataAwsDirectoryServiceDirectory(
        'd_directory_service_directory',
        directoryId: .literal(leftover),
      ),
    );

    add(
      DataAwsDmsCertificate(
        'd_dms_certificate',
        certificateId: .literal(leftover),
      ),
    );

    add(DataAwsDmsEndpoint('d_dms_endpoint', endpointId: .literal(leftover)));

    add(
      DataAwsDmsReplicationInstance(
        'd_dms_replication_instance',
        replicationInstanceId: .literal(leftover),
      ),
    );

    add(
      DataAwsDmsReplicationSubnetGroup(
        'd_dms_replication_subnet_group',
        replicationSubnetGroupId: .literal(leftover),
      ),
    );

    add(
      DataAwsDmsReplicationTask(
        'd_dms_replication_task',
        replicationTaskId: .literal(leftover),
      ),
    );

    add(DataAwsDocdbEngineVersion('d_docdb_engine_version'));

    add(DataAwsDocdbOrderableDbInstance('d_docdb_orderable_db_instance'));

    add(DataAwsDxConnection('d_dx_connection', name: .literal(leftover)));

    add(DataAwsDxGateway('d_dx_gateway', name: .literal(leftover)));

    add(DataAwsDxLocation('d_dx_location', locationCode: .literal(leftover)));

    add(DataAwsDxLocations('d_dx_locations'));

    add(
      DataAwsDxRouterConfiguration(
        'd_dx_router_configuration',
        routerTypeIdentifier: .literal(leftover),
        virtualInterfaceId: .literal(leftover),
      ),
    );

    add(DataAwsDynamodbBackups('d_dynamodb_backups'));

    add(DataAwsDynamodbTable('d_dynamodb_table', name: .literal(leftover)));

    add(
      DataAwsDynamodbTableItem(
        'd_dynamodb_table_item',
        key: .literal('{"pk": {"S": "leftover"}}'),
        tableName: .literal(leftover),
      ),
    );

    add(DataAwsDynamodbTables('d_dynamodb_tables'));

    add(DataAwsEbsDefaultKmsKey('d_ebs_default_kms_key'));

    add(DataAwsEbsEncryptionByDefault('d_ebs_encryption_by_default'));

    add(DataAwsEbsSnapshot('d_ebs_snapshot'));

    add(DataAwsEbsSnapshotIds('d_ebs_snapshot_ids'));

    add(DataAwsEbsVolume('d_ebs_volume'));

    add(DataAwsEbsVolumes('d_ebs_volumes'));

    add(
      DataAwsEc2CapacityBlockOffering(
        'd_ec2_capacity_block_offering',
        capacityDurationHours: .literal(200),
        instanceCount: .literal(200),
        instanceType: .literal(leftover),
      ),
    );

    add(
      DataAwsEc2CapacityBlockReservation(
        'd_ec2_capacity_block_reservation',
        filter: [
          DataEc2CapacityBlockReservationFilter(
            name: .literal(leftover),
            values: .literal([leftover]),
          ),
        ],
      ),
    );

    add(DataAwsEc2ClientVpnEndpoint('d_ec2_client_vpn_endpoint'));

    add(DataAwsEc2CoipPool('d_ec2_coip_pool'));

    add(DataAwsEc2CoipPools('d_ec2_coip_pools'));

    add(DataAwsEc2Host('d_ec2_host'));

    add(DataAwsEc2Hosts('d_ec2_hosts'));

    add(
      DataAwsEc2InstanceType(
        'd_ec2_instance_type',
        instanceType: .literal(leftover),
      ),
    );

    add(DataAwsEc2InstanceTypeOffering('d_ec2_instance_type_offering'));

    add(DataAwsEc2InstanceTypeOfferings('d_ec2_instance_type_offerings'));

    add(DataAwsEc2InstanceTypes('d_ec2_instance_types'));

    add(DataAwsEc2LocalGateway('d_ec2_local_gateway'));

    add(DataAwsEc2LocalGatewayRouteTable('d_ec2_local_gateway_route_table'));

    add(DataAwsEc2LocalGatewayRouteTables('d_ec2_local_gateway_route_tables'));

    add(
      DataAwsEc2LocalGatewayVirtualInterface(
        'd_ec2_local_gateway_virtual_interface',
      ),
    );

    add(
      DataAwsEc2LocalGatewayVirtualInterfaceGroup(
        'd_ec2_local_gateway_virtual_interface_group',
      ),
    );

    add(
      DataAwsEc2LocalGatewayVirtualInterfaceGroups(
        'd_ec2_local_gateway_virtual_interface_groups',
      ),
    );

    add(DataAwsEc2LocalGateways('d_ec2_local_gateways'));

    add(DataAwsEc2ManagedPrefixList('d_ec2_managed_prefix_list'));

    add(DataAwsEc2ManagedPrefixLists('d_ec2_managed_prefix_lists'));

    add(DataAwsEc2NetworkInsightsAnalysis('d_ec2_network_insights_analysis'));

    add(DataAwsEc2NetworkInsightsPath('d_ec2_network_insights_path'));

    add(
      DataAwsEc2PublicIpv4Pool(
        'd_ec2_public_ipv4_pool',
        poolId: .literal(leftover),
      ),
    );

    add(DataAwsEc2PublicIpv4Pools('d_ec2_public_ipv4_pools'));

    add(DataAwsEc2SerialConsoleAccess('d_ec2_serial_console_access'));

    add(
      DataAwsEc2ServiceLinkVirtualInterface(
        'd_ec2_service_link_virtual_interface',
        filter: [
          DataEc2ServiceLinkVirtualInterfaceFilter(
            name: .literal(leftover),
            values: .literal([leftover]),
          ),
        ],
      ),
    );

    add(
      DataAwsEc2ServiceLinkVirtualInterfaces(
        'd_ec2_service_link_virtual_interfaces',
      ),
    );

    add(DataAwsEc2SpotPrice('d_ec2_spot_price'));

    add(DataAwsEc2TransitGateway('d_ec2_transit_gateway'));

    add(DataAwsEc2TransitGatewayAttachment('d_ec2_transit_gateway_attachment'));

    add(
      DataAwsEc2TransitGatewayAttachments('d_ec2_transit_gateway_attachments'),
    );

    add(DataAwsEc2TransitGatewayConnect('d_ec2_transit_gateway_connect'));

    add(
      DataAwsEc2TransitGatewayConnectPeer('d_ec2_transit_gateway_connect_peer'),
    );

    add(
      DataAwsEc2TransitGatewayDxGatewayAttachment(
        'd_ec2_transit_gateway_dx_gateway_attachment',
      ),
    );

    add(
      DataAwsEc2TransitGatewayMulticastDomain(
        'd_ec2_transit_gateway_multicast_domain',
      ),
    );

    add(
      DataAwsEc2TransitGatewayPeeringAttachment(
        'd_ec2_transit_gateway_peering_attachment',
      ),
    );

    add(
      DataAwsEc2TransitGatewayPeeringAttachments(
        'd_ec2_transit_gateway_peering_attachments',
      ),
    );

    add(
      DataAwsEc2TransitGatewayRouteTable('d_ec2_transit_gateway_route_table'),
    );

    add(
      DataAwsEc2TransitGatewayRouteTableAssociations(
        'd_ec2_transit_gateway_route_table_associations',
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      DataAwsEc2TransitGatewayRouteTablePropagations(
        'd_ec2_transit_gateway_route_table_propagations',
        transitGatewayRouteTableId: .literal(leftover),
      ),
    );

    add(
      DataAwsEc2TransitGatewayRouteTableRoutes(
        'd_ec2_transit_gateway_route_table_routes',
        transitGatewayRouteTableId: .literal(leftover),
        filter: [
          DataEc2TransitGatewayRouteTableRoutesFilter(
            name: .literal(leftover),
            values: .literal([leftover]),
          ),
        ],
      ),
    );

    add(
      DataAwsEc2TransitGatewayRouteTables('d_ec2_transit_gateway_route_tables'),
    );

    add(
      DataAwsEc2TransitGatewayVpcAttachment(
        'd_ec2_transit_gateway_vpc_attachment',
      ),
    );

    add(
      DataAwsEc2TransitGatewayVpcAttachments(
        'd_ec2_transit_gateway_vpc_attachments',
      ),
    );

    add(
      DataAwsEc2TransitGatewayVpnAttachment(
        'd_ec2_transit_gateway_vpn_attachment',
      ),
    );

    add(DataAwsEcrAuthorizationToken('d_ecr_authorization_token'));

    add(
      DataAwsEcrImage(
        'd_ecr_image',
        repositoryName: .literal(leftover),
        imageTag: .literal(leftover),
      ),
    );

    add(DataAwsEcrImages('d_ecr_images', repositoryName: .literal(leftover)));

    add(
      DataAwsEcrLifecyclePolicyDocument(
        'd_ecr_lifecycle_policy_document',
        rule: [
          DataEcrLifecyclePolicyDocumentRule(
            priority: .literal(200),
            selection: [
              .new(
                countNumber: .literal(200),
                countType: .literal('imageCountMoreThan'),
                tagStatus: .literal('any'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      DataAwsEcrPullThroughCacheRule(
        'd_ecr_pull_through_cache_rule',
        ecrRepositoryPrefix: .literal(leftover),
      ),
    );

    add(DataAwsEcrRepositories('d_ecr_repositories'));

    add(DataAwsEcrRepository('d_ecr_repository', name: .literal(leftover)));

    add(
      DataAwsEcrRepositoryCreationTemplate(
        'd_ecr_repository_creation_template',
        prefix: .literal(leftover),
      ),
    );

    add(DataAwsEcrpublicAuthorizationToken('d_ecrpublic_authorization_token'));

    add(
      DataAwsEcrpublicImages(
        'd_ecrpublic_images',
        repositoryName: .literal(leftover),
      ),
    );

    add(DataAwsEcsCluster('d_ecs_cluster', clusterName: .literal(leftover)));

    add(DataAwsEcsClusters('d_ecs_clusters'));

    add(
      DataAwsEcsContainerDefinition(
        'd_ecs_container_definition',
        containerName: .literal(leftover),
        taskDefinition: .literal(leftover),
      ),
    );

    add(
      DataAwsEcsService(
        'd_ecs_service',
        clusterArn: .literal(arn),
        serviceName: .literal(leftover),
      ),
    );

    add(
      DataAwsEcsTaskDefinition(
        'd_ecs_task_definition',
        taskDefinition: .literal(leftover),
      ),
    );

    add(
      DataAwsEcsTaskExecution(
        'd_ecs_task_execution',
        cluster: .literal(leftover),
        taskDefinition: .literal(leftover),
      ),
    );

    add(
      DataAwsEfsAccessPoint(
        'd_efs_access_point',
        accessPointId: .literal(leftover),
      ),
    );

    add(
      DataAwsEfsAccessPoints(
        'd_efs_access_points',
        fileSystemId: .literal(leftover),
      ),
    );

    add(DataAwsEfsFileSystem('d_efs_file_system'));

    add(DataAwsEfsMountTarget('d_efs_mount_target'));

    add(DataAwsEip('d_eip'));

    add(DataAwsEips('d_eips'));

    add(
      DataAwsEksAccessEntry(
        'd_eks_access_entry',
        clusterName: .literal(leftover),
        principalArn: .literal(arn),
      ),
    );

    add(DataAwsEksAccessPolicies('d_eks_access_policies'));

    add(
      DataAwsEksAddon(
        'd_eks_addon',
        addonName: .literal(leftover),
        clusterName: .literal(leftover),
      ),
    );

    add(
      DataAwsEksAddonVersion(
        'd_eks_addon_version',
        addonName: .literal(leftover),
        kubernetesVersion: .literal(leftover),
      ),
    );

    add(DataAwsEksCluster('d_eks_cluster', name: .literal(leftover)));

    add(DataAwsEksClusterAuth('d_eks_cluster_auth', name: .literal(leftover)));

    add(DataAwsEksClusterVersions('d_eks_cluster_versions'));

    add(DataAwsEksClusters('d_eks_clusters'));

    add(
      DataAwsEksNodeGroup(
        'd_eks_node_group',
        clusterName: .literal(leftover),
        nodeGroupName: .literal(leftover),
      ),
    );

    add(
      DataAwsEksNodeGroups(
        'd_eks_node_groups',
        clusterName: .literal(leftover),
      ),
    );

    add(
      DataAwsElasticBeanstalkApplication(
        'd_elastic_beanstalk_application',
        name: .literal(leftover),
      ),
    );

    add(DataAwsElasticBeanstalkHostedZone('d_elastic_beanstalk_hosted_zone'));

    add(
      DataAwsElasticBeanstalkSolutionStack(
        'd_elastic_beanstalk_solution_stack',
        nameRegex: .literal(leftover),
      ),
    );

    add(
      DataAwsElasticacheCluster(
        'd_elasticache_cluster',
        clusterId: .literal(leftover),
      ),
    );

    add(
      DataAwsElasticacheReplicationGroup(
        'd_elasticache_replication_group',
        replicationGroupId: .literal(leftover),
      ),
    );

    add(
      DataAwsElasticacheReservedCacheNodeOffering(
        'd_elasticache_reserved_cache_node_offering',
        cacheNodeType: .literal(leftover),
        duration: .literal(leftover),
        offeringType: .literal('Light Utilization'),
        productDescription: .literal('memcached'),
      ),
    );

    add(
      DataAwsElasticacheServerlessCache(
        'd_elasticache_serverless_cache',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsElasticacheServiceUpdateActions(
        'd_elasticache_service_update_actions',
      ),
    );

    add(DataAwsElasticacheServiceUpdates('d_elasticache_service_updates'));

    add(
      DataAwsElasticacheSubnetGroup(
        'd_elasticache_subnet_group',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsElasticacheUser('d_elasticache_user', userId: .literal(leftover)),
    );

    add(
      DataAwsElasticsearchDomain(
        'd_elasticsearch_domain',
        domainName: .literal(leftover),
      ),
    );

    add(DataAwsElb('d_elb', name: .literal(leftover)));

    add(DataAwsElbHostedZoneId('d_elb_hosted_zone_id'));

    add(DataAwsElbServiceAccount('d_elb_service_account'));

    add(DataAwsEmrReleaseLabels('d_emr_release_labels'));

    add(
      DataAwsEmrSupportedInstanceTypes(
        'd_emr_supported_instance_types',
        releaseLabel: .literal(leftover),
      ),
    );

    add(
      DataAwsEmrcontainersVirtualCluster(
        'd_emrcontainers_virtual_cluster',
        virtualClusterId: .literal(leftover),
      ),
    );

    add(DataAwsFisExperimentTemplates('d_fis_experiment_templates'));

    add(
      DataAwsFsxOntapFileSystem(
        'd_fsx_ontap_file_system',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsFsxOntapStorageVirtualMachine(
        'd_fsx_ontap_storage_virtual_machine',
      ),
    );

    add(
      DataAwsFsxOntapStorageVirtualMachines(
        'd_fsx_ontap_storage_virtual_machines',
      ),
    );

    add(DataAwsFsxOpenzfsSnapshot('d_fsx_openzfs_snapshot'));

    add(
      DataAwsFsxWindowsFileSystem(
        'd_fsx_windows_file_system',
        id: .literal(leftover),
      ),
    );

    add(DataAwsGlobalacceleratorAccelerator('d_globalaccelerator_accelerator'));

    add(
      DataAwsGlobalacceleratorCustomRoutingAccelerator(
        'd_globalaccelerator_custom_routing_accelerator',
      ),
    );

    add(DataAwsGlueCatalog('d_glue_catalog', name: .literal(leftover)));

    add(
      DataAwsGlueCatalogTable(
        'd_glue_catalog_table',
        databaseName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(DataAwsGlueConnection('d_glue_connection', id: .literal(leftover)));

    add(
      DataAwsGlueDataCatalogEncryptionSettings(
        'd_glue_data_catalog_encryption_settings',
        catalogId: .literal(leftover),
      ),
    );

    add(DataAwsGlueRegistry('d_glue_registry', name: .literal(leftover)));

    add(
      DataAwsGlueScript(
        'd_glue_script',
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
            args: [.new(name: .literal(leftover), value: .literal(leftover))],
          ),
        ],
      ),
    );

    add(
      DataAwsGrafanaWorkspace(
        'd_grafana_workspace',
        workspaceId: .literal(leftover),
      ),
    );

    add(DataAwsGuarddutyDetector('d_guardduty_detector'));

    add(
      DataAwsGuarddutyFindingIds(
        'd_guardduty_finding_ids',
        detectorId: .literal(leftover),
      ),
    );

    add(DataAwsIamAccessKeys('d_iam_access_keys', user: .literal(leftover)));

    add(DataAwsIamAccountAlias('d_iam_account_alias'));

    add(DataAwsIamGroup('d_iam_group', groupName: .literal(leftover)));

    add(
      DataAwsIamInstanceProfile(
        'd_iam_instance_profile',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsIamInstanceProfiles(
        'd_iam_instance_profiles',
        roleName: .literal(leftover),
      ),
    );

    add(
      DataAwsIamOpenidConnectProvider(
        'd_iam_openid_connect_provider',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsIamOutboundWebIdentityFederation(
        'd_iam_outbound_web_identity_federation',
      ),
    );

    add(DataAwsIamPolicy('d_iam_policy'));

    add(
      DataAwsIamPrincipalPolicySimulation(
        'd_iam_principal_policy_simulation',
        actionNames: .literal([leftover]),
        policySourceArn: .literal(arn),
      ),
    );

    add(DataAwsIamRole('d_iam_role', name: .literal(leftover)));

    add(
      DataAwsIamRolePolicies(
        'd_iam_role_policies',
        roleName: .literal(leftover),
      ),
    );

    add(
      DataAwsIamRolePolicyAttachments(
        'd_iam_role_policy_attachments',
        roleName: .literal(leftover),
      ),
    );

    add(DataAwsIamRoles('d_iam_roles'));

    add(DataAwsIamSamlProvider('d_iam_saml_provider', arn: .literal(arn)));

    add(DataAwsIamServerCertificate('d_iam_server_certificate'));

    add(DataAwsIamSessionContext('d_iam_session_context', arn: .literal(arn)));

    add(DataAwsIamUser('d_iam_user', userName: .literal(leftover)));

    add(
      DataAwsIamUserSshKey(
        'd_iam_user_ssh_key',
        encoding: .literal('SSH'),
        sshPublicKeyId: .literal(leftover),
        username: .literal(leftover),
      ),
    );

    add(DataAwsIamUsers('d_iam_users'));

    add(
      DataAwsIdentitystoreGroup(
        'd_identitystore_group',
        identityStoreId: .literal(leftover),
        groupId: .literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    add(
      DataAwsIdentitystoreGroupMemberships(
        'd_identitystore_group_memberships',
        groupId: .literal(leftover),
        identityStoreId: .literal(leftover),
      ),
    );

    add(
      DataAwsIdentitystoreGroups(
        'd_identitystore_groups',
        identityStoreId: .literal(leftover),
      ),
    );

    add(
      DataAwsIdentitystoreUser(
        'd_identitystore_user',
        identityStoreId: .literal(leftover),
        userId: .literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    add(
      DataAwsIdentitystoreUsers(
        'd_identitystore_users',
        identityStoreId: .literal(leftover),
      ),
    );

    add(
      DataAwsImagebuilderComponent(
        'd_imagebuilder_component',
        arn: .literal(arn),
      ),
    );

    add(DataAwsImagebuilderComponents('d_imagebuilder_components'));

    add(
      DataAwsImagebuilderContainerRecipe(
        'd_imagebuilder_container_recipe',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsImagebuilderContainerRecipes('d_imagebuilder_container_recipes'),
    );

    add(
      DataAwsImagebuilderDistributionConfiguration(
        'd_imagebuilder_distribution_configuration',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsImagebuilderDistributionConfigurations(
        'd_imagebuilder_distribution_configurations',
      ),
    );

    add(DataAwsImagebuilderImage('d_imagebuilder_image', arn: .literal(arn)));

    add(
      DataAwsImagebuilderImagePipeline(
        'd_imagebuilder_image_pipeline',
        arn: .literal(arn),
      ),
    );

    add(DataAwsImagebuilderImagePipelines('d_imagebuilder_image_pipelines'));

    add(
      DataAwsImagebuilderImageRecipe(
        'd_imagebuilder_image_recipe',
        arn: .literal(arn),
      ),
    );

    add(DataAwsImagebuilderImageRecipes('d_imagebuilder_image_recipes'));

    add(
      DataAwsImagebuilderInfrastructureConfiguration(
        'd_imagebuilder_infrastructure_configuration',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsImagebuilderInfrastructureConfigurations(
        'd_imagebuilder_infrastructure_configurations',
      ),
    );

    add(DataAwsInspectorRulesPackages('d_inspector_rules_packages'));

    add(DataAwsInstance('d_instance'));

    add(DataAwsInstances('d_instances'));

    add(DataAwsInternetGateway('d_internet_gateway'));

    add(DataAwsIotEndpoint('d_iot_endpoint'));

    add(DataAwsIotRegistrationCode('d_iot_registration_code'));

    add(DataAwsIpRanges('d_ip_ranges', services: .literal([leftover])));

    add(DataAwsIvsStreamKey('d_ivs_stream_key', channelArn: .literal(arn)));

    add(
      DataAwsKendraExperience(
        'd_kendra_experience',
        experienceId: .literal(leftover),
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    add(
      DataAwsKendraFaq(
        'd_kendra_faq',
        faqId: .literal(leftover),
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    add(
      DataAwsKendraIndex(
        'd_kendra_index',
        id: .literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    add(
      DataAwsKendraQuerySuggestionsBlockList(
        'd_kendra_query_suggestions_block_list',
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
        querySuggestionsBlockListId: .literal(
          '12345678-1234-1234-1234-123456789012',
        ),
      ),
    );

    add(
      DataAwsKendraThesaurus(
        'd_kendra_thesaurus',
        indexId: .literal('12345678-1234-1234-1234-123456789012'),
        thesaurusId: .literal(leftover),
      ),
    );

    add(DataAwsKeyPair('d_key_pair'));

    add(
      DataAwsKinesisFirehoseDeliveryStream(
        'd_kinesis_firehose_delivery_stream',
        name: .literal(leftover),
      ),
    );

    add(DataAwsKinesisStream('d_kinesis_stream', name: .literal(leftover)));

    add(
      DataAwsKinesisStreamConsumer(
        'd_kinesis_stream_consumer',
        streamArn: .literal(arn),
      ),
    );

    add(DataAwsKmsAlias('d_kms_alias', name: .literal('alias/leftover')));

    add(
      DataAwsKmsCiphertext(
        'd_kms_ciphertext',
        keyId: .literal(leftover),
        plaintext: leftoverSecret,
      ),
    );

    add(DataAwsKmsCustomKeyStore('d_kms_custom_key_store'));

    add(DataAwsKmsKey('d_kms_key', keyId: .literal('alias/leftover')));

    add(
      DataAwsKmsPublicKey(
        'd_kms_public_key',
        keyId: .literal('alias/leftover'),
      ),
    );

    add(
      DataAwsKmsSecret(
        'd_kms_secret',
        secret: [
          DataKmsSecret(name: .literal(leftover), payload: .literal(leftover)),
        ],
      ),
    );

    add(
      DataAwsKmsSecrets(
        'd_kms_secrets',
        secret: [
          DataKmsSecretsSecret(
            name: .literal(leftover),
            payload: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      DataAwsLakeformationDataLakeSettings(
        'd_lakeformation_data_lake_settings',
      ),
    );

    add(
      DataAwsLakeformationPermissions(
        'd_lakeformation_permissions',
        principal: .literal(arn),
      ),
    );

    add(
      DataAwsLakeformationResource(
        'd_lakeformation_resource',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsLambdaAlias(
        'd_lambda_alias',
        functionName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsLambdaCodeSigningConfig(
        'd_lambda_code_signing_config',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsLambdaFunction(
        'd_lambda_function',
        functionName: .literal(leftover),
      ),
    );

    add(
      DataAwsLambdaFunctionUrl(
        'd_lambda_function_url',
        functionName: .literal(leftover),
      ),
    );

    add(DataAwsLambdaFunctions('d_lambda_functions'));

    add(
      DataAwsLambdaInvocation(
        'd_lambda_invocation',
        functionName: .literal(leftover),
        input: .literal(policy),
      ),
    );

    add(DataAwsLambdaLayerVersion('d_lambda_layer_version'));

    add(
      DataAwsLaunchConfiguration(
        'd_launch_configuration',
        name: .literal(leftover),
      ),
    );

    add(DataAwsLaunchTemplate('d_launch_template'));

    add(DataAwsLb('d_lb'));

    add(DataAwsLbHostedZoneId('d_lb_hosted_zone_id'));

    add(DataAwsLbListener('d_lb_listener'));

    add(DataAwsLbListenerRule('d_lb_listener_rule', arn: .literal(arn)));

    add(DataAwsLbTargetGroup('d_lb_target_group'));

    add(DataAwsLbTrustStore('d_lb_trust_store'));

    add(DataAwsLbs('d_lbs'));

    add(DataAwsLexBot('d_lex_bot', name: .literal(leftover)));

    add(
      DataAwsLexBotAlias(
        'd_lex_bot_alias',
        botName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(DataAwsLexIntent('d_lex_intent', name: .literal(leftover)));

    add(DataAwsLexSlotType('d_lex_slot_type', name: .literal(leftover)));

    add(DataAwsLicensemanagerGrants('d_licensemanager_grants'));

    add(
      DataAwsLicensemanagerReceivedLicense(
        'd_licensemanager_received_license',
        licenseArn: .literal(arn),
      ),
    );

    add(
      DataAwsLicensemanagerReceivedLicenses(
        'd_licensemanager_received_licenses',
      ),
    );

    add(
      DataAwsLocationGeofenceCollection(
        'd_location_geofence_collection',
        collectionName: .literal(leftover),
      ),
    );

    add(DataAwsLocationMap('d_location_map', mapName: .literal(leftover)));

    add(
      DataAwsLocationPlaceIndex(
        'd_location_place_index',
        indexName: .literal(leftover),
      ),
    );

    add(
      DataAwsLocationRouteCalculator(
        'd_location_route_calculator',
        calculatorName: .literal(leftover),
      ),
    );

    add(
      DataAwsLocationTracker(
        'd_location_tracker',
        trackerName: .literal(leftover),
      ),
    );

    add(
      DataAwsLocationTrackerAssociation(
        'd_location_tracker_association',
        consumerArn: .literal(arn),
        trackerName: .literal(leftover),
      ),
    );

    add(
      DataAwsLocationTrackerAssociations(
        'd_location_tracker_associations',
        trackerName: .literal(leftover),
      ),
    );

    add(
      DataAwsMediaConvertQueue('d_media_convert_queue', id: .literal(leftover)),
    );

    add(DataAwsMedialiveInput('d_medialive_input', id: .literal(leftover)));

    add(DataAwsMemorydbAcl('d_memorydb_acl', name: .literal(leftover)));

    add(DataAwsMemorydbCluster('d_memorydb_cluster', name: .literal(leftover)));

    add(
      DataAwsMemorydbParameterGroup(
        'd_memorydb_parameter_group',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsMemorydbSnapshot('d_memorydb_snapshot', name: .literal(leftover)),
    );

    add(
      DataAwsMemorydbSubnetGroup(
        'd_memorydb_subnet_group',
        name: .literal(leftover),
      ),
    );

    add(DataAwsMemorydbUser('d_memorydb_user', userName: .literal(leftover)));

    add(DataAwsMqBroker('d_mq_broker'));

    add(DataAwsMqBrokerEngineTypes('d_mq_broker_engine_types'));

    add(
      DataAwsMqBrokerInstanceTypeOfferings(
        'd_mq_broker_instance_type_offerings',
      ),
    );

    add(
      DataAwsMskBootstrapBrokers(
        'd_msk_bootstrap_brokers',
        clusterArn: .literal(arn),
      ),
    );

    add(DataAwsMskBrokerNodes('d_msk_broker_nodes', clusterArn: .literal(arn)));

    add(DataAwsMskCluster('d_msk_cluster', clusterName: .literal(leftover)));

    add(
      DataAwsMskConfiguration('d_msk_configuration', name: .literal(leftover)),
    );

    add(
      DataAwsMskKafkaVersion(
        'd_msk_kafka_version',
        preferredVersions: .literal([leftover]),
      ),
    );

    add(
      DataAwsMskTopic(
        'd_msk_topic',
        clusterArn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(DataAwsMskVpcConnection('d_msk_vpc_connection', arn: .literal(arn)));

    add(
      DataAwsMskconnectConnector(
        'd_mskconnect_connector',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsMskconnectCustomPlugin(
        'd_mskconnect_custom_plugin',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsMskconnectWorkerConfiguration(
        'd_mskconnect_worker_configuration',
        name: .literal(leftover),
      ),
    );

    add(DataAwsNatGateway('d_nat_gateway'));

    add(DataAwsNatGateways('d_nat_gateways'));

    add(DataAwsNeptuneEngineVersion('d_neptune_engine_version'));

    add(DataAwsNeptuneOrderableDbInstance('d_neptune_orderable_db_instance'));

    add(DataAwsNetworkAcls('d_network_acls'));

    add(DataAwsNetworkInterface('d_network_interface'));

    add(DataAwsNetworkInterfaces('d_network_interfaces'));

    add(
      DataAwsNetworkfirewallFirewall(
        'd_networkfirewall_firewall',
        arn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkfirewallFirewallPolicy(
        'd_networkfirewall_firewall_policy',
        arn: .literal(arn),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkfirewallResourcePolicy(
        'd_networkfirewall_resource_policy',
        resourceArn: .literal(arn),
      ),
    );

    add(
      DataAwsNetworkmanagerConnection(
        'd_networkmanager_connection',
        connectionId: .literal(leftover),
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkmanagerConnections(
        'd_networkmanager_connections',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkmanagerCoreNetwork(
        'd_networkmanager_core_network',
        coreNetworkId: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkmanagerCoreNetworkPolicyDocument(
        'd_networkmanager_core_network_policy_document',
        coreNetworkConfiguration: [
          DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfiguration(
            asnRanges: .literal([leftover]),
            edgeLocations: [.new(location: .literal('us-east-1'))],
          ),
        ],
        segments: [
          DataNetworkmanagerCoreNetworkPolicyDocumentSegments(
            name: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      DataAwsNetworkmanagerDevice(
        'd_networkmanager_device',
        deviceId: .literal(leftover),
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkmanagerDevices(
        'd_networkmanager_devices',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkmanagerGlobalNetwork(
        'd_networkmanager_global_network',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkmanagerGlobalNetworks('d_networkmanager_global_networks'),
    );

    add(
      DataAwsNetworkmanagerLink(
        'd_networkmanager_link',
        globalNetworkId: .literal(leftover),
        linkId: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkmanagerLinks(
        'd_networkmanager_links',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkmanagerSite(
        'd_networkmanager_site',
        globalNetworkId: .literal(leftover),
        siteId: .literal(leftover),
      ),
    );

    add(
      DataAwsNetworkmanagerSites(
        'd_networkmanager_sites',
        globalNetworkId: .literal(leftover),
      ),
    );

    add(DataAwsOamLink('d_oam_link', linkIdentifier: .literal(leftover)));

    add(DataAwsOamLinks('d_oam_links'));

    add(DataAwsOamSink('d_oam_sink', sinkIdentifier: .literal(leftover)));

    add(DataAwsOamSinks('d_oam_sinks'));

    add(
      DataAwsOdbCloudAutonomousVmCluster(
        'd_odb_cloud_autonomous_vm_cluster',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsOdbCloudAutonomousVmClusters('d_odb_cloud_autonomous_vm_clusters'),
    );

    add(
      DataAwsOdbCloudExadataInfrastructure(
        'd_odb_cloud_exadata_infrastructure',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsOdbCloudExadataInfrastructures(
        'd_odb_cloud_exadata_infrastructures',
      ),
    );

    add(
      DataAwsOdbCloudVmCluster(
        'd_odb_cloud_vm_cluster',
        id: .literal(leftover),
      ),
    );

    add(DataAwsOdbCloudVmClusters('d_odb_cloud_vm_clusters'));

    add(
      DataAwsOdbDbNode(
        'd_odb_db_node',
        cloudVmClusterId: .literal(leftover),
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsOdbDbNodes('d_odb_db_nodes', cloudVmClusterId: .literal(leftover)),
    );

    add(
      DataAwsOdbDbServer(
        'd_odb_db_server',
        cloudExadataInfrastructureId: .literal(leftover),
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsOdbDbServers(
        'd_odb_db_servers',
        cloudExadataInfrastructureId: .literal(leftover),
      ),
    );

    add(DataAwsOdbDbSystemShapes('d_odb_db_system_shapes'));

    add(DataAwsOdbGiVersions('d_odb_gi_versions'));

    add(
      DataAwsOdbIamRoleAssociation(
        'd_odb_iam_role_association',
        iamRoleArn: .literal(arn),
        resourceArn: .literal(arn),
      ),
    );

    add(DataAwsOdbNetwork('d_odb_network', id: .literal(leftover)));

    add(
      DataAwsOdbNetworkPeeringConnection(
        'd_odb_network_peering_connection',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsOdbNetworkPeeringConnections('d_odb_network_peering_connections'),
    );

    add(DataAwsOdbNetworks('d_odb_networks'));

    add(
      DataAwsOpensearchDomain(
        'd_opensearch_domain',
        domainName: .literal(leftover),
      ),
    );

    add(
      DataAwsOpensearchserverlessAccessPolicy(
        'd_opensearchserverless_access_policy',
        name: .literal(leftover),
        type: .literal('data'),
      ),
    );

    add(
      DataAwsOpensearchserverlessCollection(
        'd_opensearchserverless_collection',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsOpensearchserverlessCollectionGroup(
        'd_opensearchserverless_collection_group',
      ),
    );

    add(
      DataAwsOpensearchserverlessCollectionGroups(
        'd_opensearchserverless_collection_groups',
      ),
    );

    add(
      DataAwsOpensearchserverlessLifecyclePolicy(
        'd_opensearchserverless_lifecycle_policy',
        name: .literal(leftover),
        type: .literal('retention'),
      ),
    );

    add(
      DataAwsOpensearchserverlessSecurityConfig(
        'd_opensearchserverless_security_config',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsOpensearchserverlessSecurityPolicy(
        'd_opensearchserverless_security_policy',
        name: .literal(leftover),
        type: .literal('encryption'),
      ),
    );

    add(
      DataAwsOpensearchserverlessVpcEndpoint(
        'd_opensearchserverless_vpc_endpoint',
        vpcEndpointId: .literal('vpce-0123456789abcdef0'),
      ),
    );

    add(
      DataAwsOrganizationsAccount(
        'd_organizations_account',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      DataAwsOrganizationsDelegatedAdministrators(
        'd_organizations_delegated_administrators',
      ),
    );

    add(
      DataAwsOrganizationsDelegatedServices(
        'd_organizations_delegated_services',
        accountId: .literal('123456789012'),
      ),
    );

    add(
      DataAwsOrganizationsEntityPath(
        'd_organizations_entity_path',
        entityId: .literal('ou-ab12-cd34ef56'),
      ),
    );

    add(DataAwsOrganizationsOrganization('d_organizations_organization'));

    add(
      DataAwsOrganizationsOrganizationalUnit(
        'd_organizations_organizational_unit',
        name: .literal(leftover),
        parentId: .literal('r-ab12'),
      ),
    );

    add(
      DataAwsOrganizationsOrganizationalUnitChildAccounts(
        'd_organizations_organizational_unit_child_accoun',
        parentId: .literal(leftover),
      ),
    );

    add(
      DataAwsOrganizationsOrganizationalUnitDescendantAccounts(
        'd_organizations_organizational_unit_descendant_a',
        parentId: .literal(leftover),
      ),
    );

    add(
      DataAwsOrganizationsOrganizationalUnitDescendantOrganizationalUnits(
        'd_organizations_organizational_unit_descendant_o',
        parentId: .literal(leftover),
      ),
    );

    add(
      DataAwsOrganizationsOrganizationalUnits(
        'd_organizations_organizational_units',
        parentId: .literal(leftover),
      ),
    );

    add(
      DataAwsOrganizationsPolicies(
        'd_organizations_policies',
        filter: .literal(leftover),
      ),
    );

    add(
      DataAwsOrganizationsPoliciesForTarget(
        'd_organizations_policies_for_target',
        filter: .literal(leftover),
        targetId: .literal(leftover),
      ),
    );

    add(
      DataAwsOrganizationsPolicy(
        'd_organizations_policy',
        policyId: .literal(leftover),
      ),
    );

    add(
      DataAwsOrganizationsResourceTags(
        'd_organizations_resource_tags',
        resourceId: .literal(leftover),
      ),
    );

    add(
      DataAwsOutpostsAsset(
        'd_outposts_asset',
        arn: .literal(arn),
        assetId: .literal(leftover),
      ),
    );

    add(DataAwsOutpostsAssets('d_outposts_assets', arn: .literal(arn)));

    add(DataAwsOutpostsOutpost('d_outposts_outpost'));

    add(
      DataAwsOutpostsOutpostInstanceType(
        'd_outposts_outpost_instance_type',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsOutpostsOutpostInstanceTypes(
        'd_outposts_outpost_instance_types',
        arn: .literal(arn),
      ),
    );

    add(DataAwsOutpostsOutposts('d_outposts_outposts'));

    add(DataAwsOutpostsSite('d_outposts_site', name: .literal(leftover)));

    add(DataAwsOutpostsSites('d_outposts_sites'));

    add(DataAwsPartition('d_partition'));

    add(DataAwsPollyVoices('d_polly_voices'));

    add(DataAwsPrefixList('d_prefix_list'));

    add(
      DataAwsPricingProduct(
        'd_pricing_product',
        serviceCode: .literal(leftover),
        filters: [
          DataPricingProductFilters(
            field: .literal(leftover),
            value: .literal(leftover),
          ),
        ],
      ),
    );

    add(
      DataAwsPrometheusDefaultScraperConfiguration(
        'd_prometheus_default_scraper_configuration',
      ),
    );

    add(
      DataAwsPrometheusWorkspace(
        'd_prometheus_workspace',
        workspaceId: .literal(leftover),
      ),
    );

    add(DataAwsPrometheusWorkspaces('d_prometheus_workspaces'));

    add(DataAwsQldbLedger('d_qldb_ledger', name: .literal(leftover)));

    add(
      DataAwsQuicksightAnalysis(
        'd_quicksight_analysis',
        analysisId: .literal(leftover),
      ),
    );

    add(
      DataAwsQuicksightDataSet(
        'd_quicksight_data_set',
        dataSetId: .literal(leftover),
      ),
    );

    add(
      DataAwsQuicksightGroup(
        'd_quicksight_group',
        groupName: .literal(leftover),
      ),
    );

    add(
      DataAwsQuicksightTheme('d_quicksight_theme', themeId: .literal(leftover)),
    );

    add(
      DataAwsQuicksightUser('d_quicksight_user', userName: .literal(leftover)),
    );

    add(
      DataAwsRamResourceShare(
        'd_ram_resource_share',
        resourceOwner: .literal('SELF'),
      ),
    );

    add(DataAwsRdsCertificate('d_rds_certificate'));

    add(
      DataAwsRdsCluster('d_rds_cluster', clusterIdentifier: .literal(leftover)),
    );

    add(
      DataAwsRdsClusterParameterGroup(
        'd_rds_cluster_parameter_group',
        name: .literal(leftover),
      ),
    );

    add(DataAwsRdsClusters('d_rds_clusters'));

    add(
      DataAwsRdsEngineVersion(
        'd_rds_engine_version',
        engine: .literal(leftover),
      ),
    );

    add(DataAwsRdsEvents('d_rds_events'));

    add(
      DataAwsRdsGlobalCluster(
        'd_rds_global_cluster',
        identifier: .literal(leftover),
      ),
    );

    add(
      DataAwsRdsOrderableDbInstance(
        'd_rds_orderable_db_instance',
        engine: .literal(leftover),
      ),
    );

    add(
      DataAwsRdsReservedInstanceOffering(
        'd_rds_reserved_instance_offering',
        dbInstanceClass: .literal(leftover),
        duration: .literal(200),
        multiAz: .literal(true),
        offeringType: .literal('Partial Upfront'),
        productDescription: .literal(leftover),
      ),
    );

    add(DataAwsRdsSnapshots('d_rds_snapshots'));

    add(
      DataAwsRedshiftCluster(
        'd_redshift_cluster',
        clusterIdentifier: .literal(leftover),
      ),
    );

    add(
      DataAwsRedshiftClusterCredentials(
        'd_redshift_cluster_credentials',
        clusterIdentifier: .literal(leftover),
        dbUser: .literal(leftover),
      ),
    );

    add(DataAwsRedshiftDataShares('d_redshift_data_shares'));

    add(DataAwsRedshiftOrderableCluster('d_redshift_orderable_cluster'));

    add(
      DataAwsRedshiftProducerDataShares(
        'd_redshift_producer_data_shares',
        producerArn: .literal(arn),
      ),
    );

    add(
      DataAwsRedshiftSubnetGroup(
        'd_redshift_subnet_group',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsRedshiftserverlessCredentials(
        'd_redshiftserverless_credentials',
        workgroupName: .literal(leftover),
      ),
    );

    add(
      DataAwsRedshiftserverlessNamespace(
        'd_redshiftserverless_namespace',
        namespaceName: .literal(leftover),
      ),
    );

    add(
      DataAwsRedshiftserverlessWorkgroup(
        'd_redshiftserverless_workgroup',
        workgroupName: .literal(leftover),
      ),
    );

    add(DataAwsRegion('d_region'));

    add(DataAwsRegions('d_regions'));

    add(
      DataAwsResiliencehubv2Policy(
        'd_resiliencehubv2_policy',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsResiliencehubv2Service(
        'd_resiliencehubv2_service',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsResiliencehubv2System(
        'd_resiliencehubv2_system',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsResourceexplorer2Search(
        'd_resourceexplorer2_search',
        queryString: .literal(leftover),
      ),
    );

    add(
      DataAwsResourcegroupstaggingapiRequiredTags(
        'd_resourcegroupstaggingapi_required_tags',
      ),
    );

    add(
      DataAwsResourcegroupstaggingapiResources(
        'd_resourcegroupstaggingapi_resources',
      ),
    );

    add(DataAwsRoute('d_route', routeTableId: .literal(leftover)));

    add(
      DataAwsRoute53DelegationSet(
        'd_route53_delegation_set',
        id: .literal(leftover),
      ),
    );

    add(DataAwsRoute53Records('d_route53_records', zoneId: .literal(leftover)));

    add(DataAwsRoute53ResolverEndpoint('d_route53_resolver_endpoint'));

    add(
      DataAwsRoute53ResolverFirewallConfig(
        'd_route53_resolver_firewall_config',
        resourceId: .literal(leftover),
      ),
    );

    add(
      DataAwsRoute53ResolverFirewallDomainList(
        'd_route53_resolver_firewall_domain_list',
        firewallDomainListId: .literal(leftover),
      ),
    );

    add(
      DataAwsRoute53ResolverFirewallRuleGroup(
        'd_route53_resolver_firewall_rule_group',
        firewallRuleGroupId: .literal(leftover),
      ),
    );

    add(
      DataAwsRoute53ResolverFirewallRuleGroupAssociation(
        'd_route53_resolver_firewall_rule_group_associati',
        firewallRuleGroupAssociationId: .literal(leftover),
      ),
    );

    add(
      DataAwsRoute53ResolverFirewallRules(
        'd_route53_resolver_firewall_rules',
        firewallRuleGroupId: .literal(leftover),
      ),
    );

    add(
      DataAwsRoute53ResolverQueryLogConfig(
        'd_route53_resolver_query_log_config',
      ),
    );

    add(DataAwsRoute53ResolverRule('d_route53_resolver_rule'));

    add(DataAwsRoute53ResolverRules('d_route53_resolver_rules'));

    add(
      DataAwsRoute53TrafficPolicyDocument('d_route53_traffic_policy_document'),
    );

    add(DataAwsRoute53Zones('d_route53_zones'));

    add(
      DataAwsRoute53profilesProfile(
        'd_route53profiles_profile',
        name: .literal(leftover),
      ),
    );

    add(DataAwsRoute53profilesProfiles('d_route53profiles_profiles'));

    add(DataAwsRouteTable('d_route_table'));

    add(DataAwsRouteTables('d_route_tables'));

    add(DataAwsS3AccessPoint('d_s3_access_point', name: .literal(leftover)));

    add(DataAwsS3AccountPublicAccessBlock('d_s3_account_public_access_block'));

    add(DataAwsS3Bucket('d_s3_bucket', bucket: .literal(leftover)));

    add(
      DataAwsS3BucketNotification(
        'd_s3_bucket_notification',
        bucket: .literal(leftover),
      ),
    );

    add(
      DataAwsS3BucketObject(
        'd_s3_bucket_object',
        bucket: .literal(leftover),
        key: .literal(leftover),
      ),
    );

    add(
      DataAwsS3BucketObjectLockConfiguration(
        'd_s3_bucket_object_lock_configuration',
        bucket: .literal(leftover),
      ),
    );

    add(
      DataAwsS3BucketObjects('d_s3_bucket_objects', bucket: .literal(leftover)),
    );

    add(
      DataAwsS3BucketPolicy('d_s3_bucket_policy', bucket: .literal(leftover)),
    );

    add(
      DataAwsS3BucketReplicationConfiguration(
        'd_s3_bucket_replication_configuration',
        bucket: .literal(leftover),
      ),
    );

    add(DataAwsS3Buckets('d_s3_buckets'));

    add(DataAwsS3DirectoryBuckets('d_s3_directory_buckets'));

    add(
      DataAwsS3Object(
        'd_s3_object',
        bucket: .literal(leftover),
        key: .literal(leftover),
      ),
    );

    add(DataAwsS3Objects('d_s3_objects', bucket: .literal(leftover)));

    add(DataAwsS3controlAccessPoints('d_s3control_access_points'));

    add(
      DataAwsS3controlMultiRegionAccessPoint(
        'd_s3control_multi_region_access_point',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsS3controlMultiRegionAccessPoints(
        'd_s3control_multi_region_access_points',
      ),
    );

    add(
      DataAwsS3filesAccessPoint(
        'd_s3files_access_point',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsS3filesFileSystem('d_s3files_file_system', id: .literal(leftover)),
    );

    add(DataAwsS3filesFileSystems('d_s3files_file_systems'));

    add(
      DataAwsS3filesMountTarget(
        'd_s3files_mount_target',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsSagemakerPrebuiltEcrImage(
        'd_sagemaker_prebuilt_ecr_image',
        repositoryName: .literal('autogluon-training'),
      ),
    );

    add(DataAwsSavingsplansOfferings('d_savingsplans_offerings'));

    add(
      DataAwsSavingsplansSavingsPlan(
        'd_savingsplans_savings_plan',
        savingsPlanId: .literal(leftover),
      ),
    );

    add(
      DataAwsSecretsmanagerRandomPassword('d_secretsmanager_random_password'),
    );

    add(
      DataAwsSecretsmanagerSecret(
        'd_secretsmanager_secret',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsSecretsmanagerSecretRotation(
        'd_secretsmanager_secret_rotation',
        secretId: .literal(leftover),
      ),
    );

    add(
      DataAwsSecretsmanagerSecretVersion(
        'd_secretsmanager_secret_version',
        secretId: .literal(leftover),
      ),
    );

    add(
      DataAwsSecretsmanagerSecretVersions(
        'd_secretsmanager_secret_versions',
        secretId: .literal(leftover),
      ),
    );

    add(DataAwsSecretsmanagerSecrets('d_secretsmanager_secrets'));

    add(DataAwsSecurityGroup('d_security_group'));

    add(DataAwsSecurityGroups('d_security_groups'));

    add(DataAwsSecurityhubEnabledStandards('d_securityhub_enabled_standards'));

    add(DataAwsSecurityhubSecurityControls('d_securityhub_security_controls'));

    add(
      DataAwsSecurityhubStandardsControlAssociations(
        'd_securityhub_standards_control_associations',
        securityControlId: .literal(leftover),
      ),
    );

    add(
      DataAwsServerlessapplicationrepositoryApplication(
        'd_serverlessapplicationrepository_application',
        applicationId: .literal(arn),
      ),
    );

    add(DataAwsService('d_service'));

    add(
      DataAwsServiceDiscoveryDnsNamespace(
        'd_service_discovery_dns_namespace',
        name: .literal(leftover),
        type: .literal('DNS_PUBLIC'),
      ),
    );

    add(
      DataAwsServiceDiscoveryHttpNamespace(
        'd_service_discovery_http_namespace',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsServiceDiscoveryService(
        'd_service_discovery_service',
        name: .literal(leftover),
        namespaceId: .literal(leftover),
      ),
    );

    add(
      DataAwsServicePrincipal(
        'd_service_principal',
        serviceName: .literal(leftover),
      ),
    );

    add(
      DataAwsServicecatalogConstraint(
        'd_servicecatalog_constraint',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsServicecatalogLaunchPaths(
        'd_servicecatalog_launch_paths',
        productId: .literal(leftover),
      ),
    );

    add(
      DataAwsServicecatalogPortfolio(
        'd_servicecatalog_portfolio',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsServicecatalogPortfolioConstraints(
        'd_servicecatalog_portfolio_constraints',
        portfolioId: .literal(leftover),
      ),
    );

    add(
      DataAwsServicecatalogProduct(
        'd_servicecatalog_product',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsServicecatalogProvisioningArtifacts(
        'd_servicecatalog_provisioning_artifacts',
        productId: .literal(leftover),
      ),
    );

    add(
      DataAwsServicecatalogappregistryApplication(
        'd_servicecatalogappregistry_application',
        id: .literal(leftover),
      ),
    );

    add(
      DataAwsServicecatalogappregistryAttributeGroup(
        'd_servicecatalogappregistry_attribute_group',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsServicecatalogappregistryAttributeGroupAssociations(
        'd_servicecatalogappregistry_attribute_group_asso',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsServicequotasService(
        'd_servicequotas_service',
        serviceName: .literal(leftover),
      ),
    );

    add(
      DataAwsServicequotasServiceQuota(
        'd_servicequotas_service_quota',
        serviceCode: .literal(leftover),
        quotaCode: .literal(leftover),
      ),
    );

    add(
      DataAwsServicequotasTemplates(
        'd_servicequotas_templates',
        awsRegion: .literal('us-east-1'),
      ),
    );

    add(DataAwsSesActiveReceiptRuleSet('d_ses_active_receipt_rule_set'));

    add(
      DataAwsSesDomainIdentity(
        'd_ses_domain_identity',
        domain: .literal(leftover),
      ),
    );

    add(
      DataAwsSesEmailIdentity(
        'd_ses_email_identity',
        email: .literal('leftover@example.com'),
      ),
    );

    add(
      DataAwsSesv2ConfigurationSet(
        'd_sesv2_configuration_set',
        configurationSetName: .literal(leftover),
      ),
    );

    add(
      DataAwsSesv2DedicatedIpPool(
        'd_sesv2_dedicated_ip_pool',
        poolName: .literal(leftover),
      ),
    );

    add(
      DataAwsSesv2EmailIdentity(
        'd_sesv2_email_identity',
        emailIdentity: .literal('leftover@example.com'),
      ),
    );

    add(
      DataAwsSesv2EmailIdentityMailFromAttributes(
        'd_sesv2_email_identity_mail_from_attributes',
        emailIdentity: .literal('leftover@example.com'),
      ),
    );

    add(DataAwsSfnActivity('d_sfn_activity', arn: .literal(arn)));

    add(
      DataAwsSfnAlias(
        'd_sfn_alias',
        name: .literal(leftover),
        statemachineArn: .literal(arn),
      ),
    );

    add(
      DataAwsSfnStateMachine('d_sfn_state_machine', name: .literal(leftover)),
    );

    add(
      DataAwsSfnStateMachineVersions(
        'd_sfn_state_machine_versions',
        statemachineArn: .literal(arn),
      ),
    );

    add(
      DataAwsShieldProtection(
        'd_shield_protection',
        protectionId: .literal(leftover),
      ),
    );

    add(
      DataAwsSignerSigningJob(
        'd_signer_signing_job',
        jobId: .literal(leftover),
      ),
    );

    add(
      DataAwsSignerSigningProfile(
        'd_signer_signing_profile',
        name: .literal(leftover),
      ),
    );

    add(DataAwsSnsTopic('d_sns_topic', name: .literal(leftover)));

    add(DataAwsSpotDatafeedSubscription('d_spot_datafeed_subscription'));

    add(DataAwsSqsQueue('d_sqs_queue', name: .literal(leftover)));

    add(DataAwsSqsQueues('d_sqs_queues'));

    add(DataAwsSsmDocument('d_ssm_document', name: .literal(leftover)));

    add(DataAwsSsmInstances('d_ssm_instances'));

    add(DataAwsSsmMaintenanceWindows('d_ssm_maintenance_windows'));

    add(DataAwsSsmParameter('d_ssm_parameter', name: .literal(leftover)));

    add(
      DataAwsSsmParametersByPath(
        'd_ssm_parameters_by_path',
        path: .literal(leftover),
      ),
    );

    add(
      DataAwsSsmPatchBaseline(
        'd_ssm_patch_baseline',
        owner: .literal(leftover),
      ),
    );

    add(DataAwsSsmPatchBaselines('d_ssm_patch_baselines'));

    add(DataAwsSsmcontactsContact('d_ssmcontacts_contact', arn: .literal(arn)));

    add(
      DataAwsSsmcontactsContactChannel(
        'd_ssmcontacts_contact_channel',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsSsmcontactsPlan(
        'd_ssmcontacts_plan',
        contactId: .literal(leftover),
      ),
    );

    add(
      DataAwsSsmcontactsRotation('d_ssmcontacts_rotation', arn: .literal(arn)),
    );

    add(DataAwsSsmincidentsReplicationSet('d_ssmincidents_replication_set'));

    add(
      DataAwsSsmincidentsResponsePlan(
        'd_ssmincidents_response_plan',
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsSsoadminApplication(
        'd_ssoadmin_application',
        applicationArn: .literal(arn),
      ),
    );

    add(
      DataAwsSsoadminApplicationAssignments(
        'd_ssoadmin_application_assignments',
        applicationArn: .literal(arn),
      ),
    );

    add(
      DataAwsSsoadminApplicationProviders('d_ssoadmin_application_providers'),
    );

    add(DataAwsSsoadminInstances('d_ssoadmin_instances'));

    add(
      DataAwsSsoadminPermissionSet(
        'd_ssoadmin_permission_set',
        instanceArn: .literal(arn),
        arn: .literal(arn),
      ),
    );

    add(
      DataAwsSsoadminPermissionSets(
        'd_ssoadmin_permission_sets',
        instanceArn: .literal(arn),
      ),
    );

    add(
      DataAwsSsoadminPrincipalApplicationAssignments(
        'd_ssoadmin_principal_application_assignments',
        instanceArn: .literal(arn),
        principalId: .literal(leftover),
        principalType: .literal('USER'),
      ),
    );

    add(
      DataAwsStoragegatewayLocalDisk(
        'd_storagegateway_local_disk',
        gatewayArn: .literal(arn),
      ),
    );

    add(DataAwsSubnet('d_subnet'));

    add(DataAwsSubnets('d_subnets'));

    add(
      DataAwsSyntheticsRuntimeVersion(
        'd_synthetics_runtime_version',
        prefix: .literal(leftover),
        latest: .literal(true),
      ),
    );

    add(DataAwsSyntheticsRuntimeVersions('d_synthetics_runtime_versions'));

    add(
      DataAwsTimestreamwriteDatabase(
        'd_timestreamwrite_database',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsTimestreamwriteTable(
        'd_timestreamwrite_table',
        databaseName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsTransferConnector('d_transfer_connector', id: .literal(leftover)),
    );

    add(
      DataAwsTransferServer('d_transfer_server', serverId: .literal(leftover)),
    );

    add(DataAwsUxcServices('d_uxc_services'));

    add(
      DataAwsVerifiedpermissionsPolicyStore(
        'd_verifiedpermissions_policy_store',
        id: .literal(leftover),
      ),
    );

    add(DataAwsVpc('d_vpc'));

    add(DataAwsVpcDhcpOptions('d_vpc_dhcp_options'));

    add(DataAwsVpcEndpoint('d_vpc_endpoint'));

    add(
      DataAwsVpcEndpointAssociations(
        'd_vpc_endpoint_associations',
        vpcEndpointId: .literal(leftover),
      ),
    );

    add(DataAwsVpcEndpointService('d_vpc_endpoint_service'));

    add(DataAwsVpcIpam('d_vpc_ipam', id: .literal(leftover)));

    add(DataAwsVpcIpamPool('d_vpc_ipam_pool'));

    add(
      DataAwsVpcIpamPoolCidrs(
        'd_vpc_ipam_pool_cidrs',
        ipamPoolId: .literal(leftover),
      ),
    );

    add(DataAwsVpcIpamPools('d_vpc_ipam_pools'));

    add(
      DataAwsVpcIpamPreviewNextCidr(
        'd_vpc_ipam_preview_next_cidr',
        ipamPoolId: .literal(leftover),
      ),
    );

    add(DataAwsVpcIpams('d_vpc_ipams'));

    add(DataAwsVpcPeeringConnection('d_vpc_peering_connection'));

    add(DataAwsVpcPeeringConnections('d_vpc_peering_connections'));

    add(DataAwsVpcSecurityGroupRule('d_vpc_security_group_rule'));

    add(DataAwsVpcSecurityGroupRules('d_vpc_security_group_rules'));

    add(
      DataAwsVpclatticeAuthPolicy(
        'd_vpclattice_auth_policy',
        resourceIdentifier: .literal(arn),
      ),
    );

    add(
      DataAwsVpclatticeListener(
        'd_vpclattice_listener',
        listenerIdentifier: .literal(leftover),
        serviceIdentifier: .literal(leftover),
      ),
    );

    add(
      DataAwsVpclatticeResourcePolicy(
        'd_vpclattice_resource_policy',
        resourceArn: .literal(arn),
      ),
    );

    add(
      DataAwsVpclatticeService(
        'd_vpclattice_service',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsVpclatticeServiceNetwork(
        'd_vpclattice_service_network',
        serviceNetworkIdentifier: .literal(leftover),
      ),
    );

    add(
      DataAwsVpclatticeServiceNetworkServiceAssociations(
        'd_vpclattice_service_network_service_association',
        serviceNetworkIdentifier: .literal(leftover),
      ),
    );

    add(DataAwsVpcs('d_vpcs'));

    add(
      DataAwsVpnConnection(
        'd_vpn_connection',
        vpnConnectionId: .literal(leftover),
        filter: [
          DataVpnConnectionFilter(
            name: .literal(leftover),
            values: .literal([leftover]),
          ),
        ],
      ),
    );

    add(DataAwsVpnGateway('d_vpn_gateway'));

    add(DataAwsWafIpset('d_waf_ipset', name: .literal(leftover)));

    add(
      DataAwsWafRateBasedRule(
        'd_waf_rate_based_rule',
        name: .literal(leftover),
      ),
    );

    add(DataAwsWafRule('d_waf_rule', name: .literal(leftover)));

    add(
      DataAwsWafSubscribedRuleGroup(
        'd_waf_subscribed_rule_group',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(DataAwsWafWebAcl('d_waf_web_acl', name: .literal(leftover)));

    add(
      DataAwsWafregionalIpset('d_wafregional_ipset', name: .literal(leftover)),
    );

    add(
      DataAwsWafregionalRateBasedRule(
        'd_wafregional_rate_based_rule',
        name: .literal(leftover),
      ),
    );

    add(DataAwsWafregionalRule('d_wafregional_rule', name: .literal(leftover)));

    add(
      DataAwsWafregionalSubscribedRuleGroup(
        'd_wafregional_subscribed_rule_group',
        metricName: .literal(leftover),
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsWafregionalWebAcl(
        'd_wafregional_web_acl',
        name: .literal(leftover),
      ),
    );

    add(
      DataAwsWafv2IpSet(
        'd_wafv2_ip_set',
        name: .literal(leftover),
        scope: .literal('CLOUDFRONT'),
      ),
    );

    add(
      DataAwsWafv2ManagedRuleGroup(
        'd_wafv2_managed_rule_group',
        name: .literal(leftover),
        scope: .literal('CLOUDFRONT'),
        vendorName: .literal(leftover),
      ),
    );

    add(
      DataAwsWafv2RegexPatternSet(
        'd_wafv2_regex_pattern_set',
        name: .literal(leftover),
        scope: .literal('CLOUDFRONT'),
      ),
    );

    add(
      DataAwsWafv2RuleGroup(
        'd_wafv2_rule_group',
        name: .literal(leftover),
        scope: .literal('CLOUDFRONT'),
      ),
    );

    add(
      DataAwsWafv2WebAcl(
        'd_wafv2_web_acl',
        scope: .literal('CLOUDFRONT'),
        name: .literal(leftover),
      ),
    );

    add(DataAwsWorkspacesBundle('d_workspaces_bundle'));

    add(
      DataAwsWorkspacesDirectory(
        'd_workspaces_directory',
        directoryId: .literal(leftover),
      ),
    );

    add(
      DataAwsWorkspacesImage('d_workspaces_image', imageId: .literal(leftover)),
    );

    add(DataAwsWorkspacesWorkspace('d_workspaces_workspace'));
  }
}
