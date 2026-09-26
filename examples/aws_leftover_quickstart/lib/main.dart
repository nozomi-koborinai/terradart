// GENERATED — dart run tool/generate_aws_leftover_example.dart
// ignore_for_file: unused_element

/// Coverage stack for leftover AWS factories at pin 6.66.0.
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
        analyzerName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAccessanalyzerArchiveRule(
        localName: 'accessanalyzer_archive_rule',
        analyzerName: TfArg.literal(leftover),
        ruleName: TfArg.literal(leftover),
        filter: [
          AccessanalyzerArchiveRuleFilter(
            criteria: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsAccountAlternateContact(
        localName: 'account_alternate_contact',
        alternateContactType: TfArg.literal('BILLING'),
        emailAddress: TfArg.literal('leftover@example.com'),
        name: TfArg.literal(leftover),
        phoneNumber: TfArg.literal('+12065550100'),
        title: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAccountPrimaryContact(
        localName: 'account_primary_contact',
        addressLine1: TfArg.literal(leftover),
        city: TfArg.literal(leftover),
        countryCode: TfArg.literal(leftover),
        fullName: TfArg.literal(leftover),
        phoneNumber: TfArg.literal('+12065550100'),
        postalCode: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAccountRegion(
        localName: 'account_region',
        enabled: TfArg.literal(true),
        regionName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAccountaccessApplication(
        localName: 'accountaccess_application',
        identitySource: [
          AccountaccessApplicationIdentitySource(
            identityCenter: [
              AccountaccessApplicationIdentitySourceIdentityCenter(
                instanceArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsAccountaccessEntitlement(
        localName: 'accountaccess_entitlement',
        applicationArn: TfArg.literal(arn),
        entitlement: [
          AccountaccessEntitlementEntitlement(
            principalRole: [
              AccountaccessEntitlementEntitlementPrincipalRole(
                roleArn: TfArg.literal(arn),
                principal: [
                  AccountaccessEntitlementEntitlementPrincipalRolePrincipal(
                    identityCenter: [
                      AccountaccessEntitlementEntitlementPrincipalRolePrincipalIdentityCenter(
                        groupId: TfArg.literal(leftover),
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
      AwsAcmCertificate(
        localName: 'acm_certificate',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAcmCertificateValidation(
        localName: 'acm_certificate_validation',
        certificateArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsAcmpcaCertificate(
        localName: 'acmpca_certificate',
        certificateAuthorityArn: TfArg.literal(arn),
        certificateSigningRequest: TfArg.literal(leftover),
        signingAlgorithm: TfArg.literal('SHA256WITHECDSA'),
        validity: AcmpcaCertificateValidity(
          type: TfArg.literal('END_DATE'),
          value: TfArg.literal('2026-01-01T00:00:00Z'),
        ),
      ),
    );

    add(
      AwsAcmpcaCertificateAuthority(
        localName: 'acmpca_certificate_authority',
        certificateAuthorityConfiguration:
            AcmpcaCertificateAuthorityCertificateAuthorityConfiguration(
          keyAlgorithm: TfArg.literal('RSA_2048'),
          signingAlgorithm: TfArg.literal('SHA256WITHECDSA'),
          subject:
              AcmpcaCertificateAuthorityCertificateAuthorityConfigurationSubject(
            commonName: TfArg.literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsAcmpcaCertificateAuthorityCertificate(
        localName: 'acmpca_certificate_authority_certificate',
        certificate: TfArg.literal(leftover),
        certificateAuthorityArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsAcmpcaPermission(
        localName: 'acmpca_permission',
        actions: TfArg.literal(['IssueCertificate']),
        certificateAuthorityArn: TfArg.literal(arn),
        principal: TfArg.literal('acm.amazonaws.com'),
      ),
    );

    add(
      AwsAcmpcaPolicy(
        localName: 'acmpca_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsAgentregistryRegistry(
        localName: 'agentregistry_registry',
        name: TfArg.literal(leftover),
        discoveryConfiguration: [
          AgentregistryRegistryDiscoveryConfiguration(
            authorizerType: TfArg.literal('CUSTOM_JWT'),
            authorizerConfiguration: [
              AgentregistryRegistryDiscoveryConfigurationAuthorizerConfiguration(
                customJwtAuthorizer: [
                  AgentregistryRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer(
                    discoveryUrl: TfArg.literal('https://example.com'),
                    allowedAudience: TfArg.literal([leftover]),
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
        subnetMapping: [
          AlbSubnetMapping(
            subnetId: TfArg.literal('subnet-0123456789abcdef0'),
          ),
        ],
      ),
    );

    add(
      AwsAlbListener(
        localName: 'alb_listener',
        loadBalancerArn: TfArg.literal(arn),
        defaultAction: [
          AlbListenerDefaultAction(
            type: TfArg.literal('forward'),
          ),
        ],
      ),
    );

    add(
      AwsAlbListenerCertificate(
        localName: 'alb_listener_certificate',
        certificateArn: TfArg.literal(arn),
        listenerArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsAlbListenerRule(
        localName: 'alb_listener_rule',
        listenerArn: TfArg.literal(arn),
        action: [
          AlbListenerRuleAction(
            type: TfArg.literal('forward'),
          ),
        ],
        condition: [
          AlbListenerRuleCondition(
            hostHeader: AlbListenerRuleConditionHostHeader(
              regexValues: TfArg.literal([leftover]),
            ),
          ),
        ],
      ),
    );

    add(
      AwsAlbTargetGroup(
        localName: 'alb_target_group',
      ),
    );

    add(
      AwsAlbTargetGroupAttachment(
        localName: 'alb_target_group_attachment',
        targetGroupArn: TfArg.literal(arn),
        targetId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAmi(
        localName: 'ami',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAmiCopy(
        localName: 'ami_copy',
        name: TfArg.literal(leftover),
        sourceAmiId: TfArg.literal(leftover),
        sourceAmiRegion: TfArg.literal('us-east-1'),
      ),
    );

    add(
      AwsAmiFromInstance(
        localName: 'ami_from_instance',
        name: TfArg.literal(leftover),
        sourceInstanceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAmiLaunchPermission(
        localName: 'ami_launch_permission',
        imageId: TfArg.literal(leftover),
        accountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsAmplifyApp(
        localName: 'amplify_app',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAmplifyBackendEnvironment(
        localName: 'amplify_backend_environment',
        appId: TfArg.literal(leftover),
        environmentName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAmplifyBranch(
        localName: 'amplify_branch',
        appId: TfArg.literal(leftover),
        branchName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAmplifyDomainAssociation(
        localName: 'amplify_domain_association',
        appId: TfArg.literal(leftover),
        domainName: TfArg.literal(leftover),
        subDomain: [
          AmplifyDomainAssociationSubDomain(
            branchName: TfArg.literal(leftover),
            prefix: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsAmplifyWebhook(
        localName: 'amplify_webhook',
        appId: TfArg.literal(leftover),
        branchName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayAccount(
        localName: 'api_gateway_account',
      ),
    );

    add(
      AwsApiGatewayApiKey(
        localName: 'api_gateway_api_key',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayAuthorizer(
        localName: 'api_gateway_authorizer',
        name: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayBasePathMapping(
        localName: 'api_gateway_base_path_mapping',
        apiId: TfArg.literal(leftover),
        domainName: TfArg.literal(leftover),
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
        restApiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayDocumentationPart(
        localName: 'api_gateway_documentation_part',
        properties: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
        location: ApiGatewayDocumentationPartLocation(
          type: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsApiGatewayDocumentationVersion(
        localName: 'api_gateway_documentation_version',
        restApiId: TfArg.literal(leftover),
        version: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayDomainName(
        localName: 'api_gateway_domain_name',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayDomainNameAccessAssociation(
        localName: 'api_gateway_domain_name_access_association',
        accessAssociationSource: TfArg.literal(leftover),
        accessAssociationSourceType: TfArg.literal('VPCE'),
        domainNameArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsApiGatewayGatewayResponse(
        localName: 'api_gateway_gateway_response',
        responseType: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayIntegration(
        localName: 'api_gateway_integration',
        httpMethod: TfArg.literal('ANY'),
        resourceId: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
        type: TfArg.literal('HTTP'),
      ),
    );

    add(
      AwsApiGatewayIntegrationResponse(
        localName: 'api_gateway_integration_response',
        httpMethod: TfArg.literal('ANY'),
        resourceId: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
        statusCode: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayMethod(
        localName: 'api_gateway_method',
        authorization: TfArg.literal(leftover),
        httpMethod: TfArg.literal('ANY'),
        resourceId: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayMethodResponse(
        localName: 'api_gateway_method_response',
        httpMethod: TfArg.literal('ANY'),
        resourceId: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
        statusCode: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayMethodSettings(
        localName: 'api_gateway_method_settings',
        methodPath: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
        stageName: TfArg.literal(leftover),
        settings: ApiGatewayMethodSettingsSettings(
          cacheDataEncrypted: TfArg.literal(true),
        ),
      ),
    );

    add(
      AwsApiGatewayModel(
        localName: 'api_gateway_model',
        contentType: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayRequestValidator(
        localName: 'api_gateway_request_validator',
        name: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayResource(
        localName: 'api_gateway_resource',
        parentId: TfArg.literal(leftover),
        pathPart: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayRestApi(
        localName: 'api_gateway_rest_api',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayRestApiPolicy(
        localName: 'api_gateway_rest_api_policy',
        policy: TfArg.literal(policy),
        restApiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayRestApiPut(
        localName: 'api_gateway_rest_api_put',
        body: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayStage(
        localName: 'api_gateway_stage',
        deploymentId: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
        stageName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayUsagePlan(
        localName: 'api_gateway_usage_plan',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayUsagePlanKey(
        localName: 'api_gateway_usage_plan_key',
        keyId: TfArg.literal(leftover),
        keyType: TfArg.literal(leftover),
        usagePlanId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApiGatewayVpcLink(
        localName: 'api_gateway_vpc_link',
        name: TfArg.literal(leftover),
        targetArns: TfArg.literal([arn]),
      ),
    );

    add(
      AwsApigatewayv2Api(
        localName: 'apigatewayv2_api',
        name: TfArg.literal(leftover),
        protocolType: TfArg.literal('WEBSOCKET'),
      ),
    );

    add(
      AwsApigatewayv2ApiMapping(
        localName: 'apigatewayv2_api_mapping',
        apiId: TfArg.literal(leftover),
        domainName: TfArg.literal(leftover),
        stage: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2Authorizer(
        localName: 'apigatewayv2_authorizer',
        apiId: TfArg.literal(leftover),
        authorizerType: TfArg.literal('REQUEST'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2Deployment(
        localName: 'apigatewayv2_deployment',
        apiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2DomainName(
        localName: 'apigatewayv2_domain_name',
        domainName: TfArg.literal(leftover),
        domainNameConfiguration: Apigatewayv2DomainNameDomainNameConfiguration(
          certificateArn: TfArg.literal(arn),
          endpointType: TfArg.literal('REGIONAL'),
          securityPolicy: TfArg.literal('TLS_1_2'),
        ),
      ),
    );

    add(
      AwsApigatewayv2Integration(
        localName: 'apigatewayv2_integration',
        apiId: TfArg.literal(leftover),
        integrationType: TfArg.literal('AWS'),
      ),
    );

    add(
      AwsApigatewayv2IntegrationResponse(
        localName: 'apigatewayv2_integration_response',
        apiId: TfArg.literal(leftover),
        integrationId: TfArg.literal(leftover),
        integrationResponseKey: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2Model(
        localName: 'apigatewayv2_model',
        apiId: TfArg.literal(leftover),
        contentType: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        schema: TfArg.literal(policy),
      ),
    );

    add(
      AwsApigatewayv2Route(
        localName: 'apigatewayv2_route',
        apiId: TfArg.literal(leftover),
        routeKey: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2RouteResponse(
        localName: 'apigatewayv2_route_response',
        apiId: TfArg.literal(leftover),
        routeId: TfArg.literal(leftover),
        routeResponseKey: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2RoutingRule(
        localName: 'apigatewayv2_routing_rule',
        domainName: TfArg.literal(leftover),
        priority: TfArg.literal(200),
        action: [
          Apigatewayv2RoutingRuleAction(
            invokeApi: [
              Apigatewayv2RoutingRuleActionInvokeApi(
                apiId: TfArg.literal(leftover),
                stage: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
        condition: [
          Apigatewayv2RoutingRuleCondition(
            matchBasePaths: [
              Apigatewayv2RoutingRuleConditionMatchBasePaths(
                anyOf: TfArg.literal([leftover]),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsApigatewayv2Stage(
        localName: 'apigatewayv2_stage',
        apiId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApigatewayv2VpcLink(
        localName: 'apigatewayv2_vpc_link',
        name: TfArg.literal(leftover),
        securityGroupIds: TfArg.literal([leftover]),
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsAppCookieStickinessPolicy(
        localName: 'app_cookie_stickiness_policy',
        cookieName: TfArg.literal(leftover),
        lbPort: TfArg.literal(200),
        loadBalancer: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppautoscalingPolicy(
        localName: 'appautoscaling_policy',
        name: TfArg.literal(leftover),
        resourceId: TfArg.literal(leftover),
        scalableDimension: TfArg.literal(leftover),
        serviceNamespace: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppautoscalingScheduledAction(
        localName: 'appautoscaling_scheduled_action',
        name: TfArg.literal(leftover),
        resourceId: TfArg.literal(leftover),
        scalableDimension: TfArg.literal(leftover),
        schedule: TfArg.literal(leftover),
        serviceNamespace: TfArg.literal(leftover),
        scalableTargetAction: AppautoscalingScheduledActionScalableTargetAction(
          maxCapacity: TfArg.literal('64512'),
        ),
      ),
    );

    add(
      AwsAppautoscalingTarget(
        localName: 'appautoscaling_target',
        maxCapacity: TfArg.literal(200),
        minCapacity: TfArg.literal(200),
        resourceId: TfArg.literal(leftover),
        scalableDimension: TfArg.literal(leftover),
        serviceNamespace: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppconfigApplication(
        localName: 'appconfig_application',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppconfigConfigurationProfile(
        localName: 'appconfig_configuration_profile',
        applicationId: TfArg.literal(leftover),
        locationUri: TfArg.literal('https://example.com'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppconfigDeployment(
        localName: 'appconfig_deployment',
        applicationId: TfArg.literal(leftover),
        configurationProfileId: TfArg.literal(leftover),
        configurationVersion: TfArg.literal(leftover),
        deploymentStrategyId: TfArg.literal('yh1uqgz'),
        environmentId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppconfigDeploymentStrategy(
        localName: 'appconfig_deployment_strategy',
        deploymentDurationInMinutes: TfArg.literal(200),
        growthFactor: TfArg.literal(1),
        name: TfArg.literal(leftover),
        replicateTo: TfArg.literal('NONE'),
      ),
    );

    add(
      AwsAppconfigEnvironment(
        localName: 'appconfig_environment',
        applicationId: TfArg.literal('abc1234'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppconfigExtension(
        localName: 'appconfig_extension',
        name: TfArg.literal(leftover),
        actionPoint: [
          AppconfigExtensionActionPoint(
            point: TfArg.literal('PRE_CREATE_HOSTED_CONFIGURATION_VERSION'),
            action: [
              AppconfigExtensionActionPointAction(
                name: TfArg.literal(leftover),
                uri: TfArg.literal('https://example.com'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsAppconfigExtensionAssociation(
        localName: 'appconfig_extension_association',
        extensionArn: TfArg.literal(arn),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsAppconfigHostedConfigurationVersion(
        localName: 'appconfig_hosted_configuration_version',
        applicationId: TfArg.literal(leftover),
        configurationProfileId: TfArg.literal(leftover),
        content: TfArg.variable('leftover_secret'),
        contentType: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppfabricAppAuthorization(
        localName: 'appfabric_app_authorization',
        app: TfArg.literal(leftover),
        appBundleArn: TfArg.literal(arn),
        authType: TfArg.literal('oauth2'),
        credential: [
          AppfabricAppAuthorizationCredential(
            apiKeyCredential: [
              AppfabricAppAuthorizationCredentialApiKeyCredential(
                apiKey: TfArg.variable('leftover_secret'),
              ),
            ],
          ),
        ],
        tenant: [
          AppfabricAppAuthorizationTenant(
            tenantDisplayName: TfArg.literal(leftover),
            tenantIdentifier: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsAppfabricAppAuthorizationConnection(
        localName: 'appfabric_app_authorization_connection',
        appAuthorizationArn: TfArg.literal(arn),
        appBundleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsAppfabricAppBundle(
        localName: 'appfabric_app_bundle',
      ),
    );

    add(
      AwsAppfabricIngestion(
        localName: 'appfabric_ingestion',
        app: TfArg.literal(leftover),
        appBundleArn: TfArg.literal(arn),
        ingestionType: TfArg.literal('auditLog'),
        tenantId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppfabricIngestionDestination(
        localName: 'appfabric_ingestion_destination',
        appBundleArn: TfArg.literal(arn),
        ingestionArn: TfArg.literal(arn),
        destinationConfiguration: [
          AppfabricIngestionDestinationDestinationConfiguration(
            auditLog: [
              AppfabricIngestionDestinationDestinationConfigurationAuditLog(
                destination: [
                  AppfabricIngestionDestinationDestinationConfigurationAuditLogDestination(
                    firehoseStream: [
                      AppfabricIngestionDestinationDestinationConfigurationAuditLogDestinationFirehoseStream(
                        streamName: TfArg.literal(leftover),
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
                format: TfArg.literal('json'),
                schema: TfArg.literal('ocsf'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsAppflowConnectorProfile(
        localName: 'appflow_connector_profile',
        connectionMode: TfArg.literal('Public'),
        connectorType: TfArg.literal('Salesforce'),
        name: TfArg.literal(leftover),
        connectorProfileConfig: AppflowConnectorProfileConnectorProfileConfig(
          connectorProfileCredentials:
              AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentials(
            amplitude:
                AppflowConnectorProfileConnectorProfileConfigConnectorProfileCredentialsAmplitude(
              apiKey: TfArg.literal(leftover),
              secretKey: TfArg.variable('leftover_secret'),
            ),
          ),
          connectorProfileProperties:
              AppflowConnectorProfileConnectorProfileConfigConnectorProfileProperties(
            amplitude:
                AppflowConnectorProfileConnectorProfileConfigConnectorProfilePropertiesAmplitude(),
          ),
        ),
      ),
    );

    add(
      AwsAppflowFlow(
        localName: 'appflow_flow',
        name: TfArg.literal(leftover),
        destinationFlowConfig: [
          AppflowFlowDestinationFlowConfig(
            connectorType: TfArg.literal('Salesforce'),
            destinationConnectorProperties:
                AppflowFlowDestinationFlowConfigDestinationConnectorProperties(
              customConnector:
                  AppflowFlowDestinationFlowConfigDestinationConnectorPropertiesCustomConnector(
                entityName: TfArg.literal(leftover),
              ),
            ),
          ),
        ],
        sourceFlowConfig: AppflowFlowSourceFlowConfig(
          connectorType: TfArg.literal('Salesforce'),
          sourceConnectorProperties:
              AppflowFlowSourceFlowConfigSourceConnectorProperties(
            amplitude:
                AppflowFlowSourceFlowConfigSourceConnectorPropertiesAmplitude(
              object: TfArg.literal(leftover),
            ),
          ),
        ),
        task: [
          AppflowFlowTask(
            taskType: TfArg.literal('Arithmetic'),
          ),
        ],
        triggerConfig: AppflowFlowTriggerConfig(
          triggerType: TfArg.literal('Scheduled'),
        ),
      ),
    );

    add(
      AwsAppintegrationsDataIntegration(
        localName: 'appintegrations_data_integration',
        kmsKey: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        sourceUri: TfArg.literal('https://example.com'),
        scheduleConfig: AppintegrationsDataIntegrationScheduleConfig(
          firstExecutionFrom: TfArg.literal(leftover),
          object: TfArg.literal(leftover),
          scheduleExpression: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsAppintegrationsEventIntegration(
        localName: 'appintegrations_event_integration',
        eventbridgeBus: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        eventFilter: AppintegrationsEventIntegrationEventFilter(
          source: TfArg.literal('aws.partner/example.com/leftover'),
        ),
      ),
    );

    add(
      AwsApplicationinsightsApplication(
        localName: 'applicationinsights_application',
        resourceGroupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppmeshGatewayRoute(
        localName: 'appmesh_gateway_route',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        virtualGatewayName: TfArg.literal(leftover),
        spec: AppmeshGatewayRouteSpec(
          grpcRoute: AppmeshGatewayRouteSpecGrpcRoute(
            action: AppmeshGatewayRouteSpecGrpcRouteAction(
              target: AppmeshGatewayRouteSpecGrpcRouteActionTarget(
                virtualService:
                    AppmeshGatewayRouteSpecGrpcRouteActionTargetVirtualService(
                  virtualServiceName: TfArg.literal(leftover),
                ),
              ),
            ),
            match: AppmeshGatewayRouteSpecGrpcRouteMatch(
              serviceName: TfArg.literal(leftover),
            ),
          ),
        ),
      ),
    );

    add(
      AwsAppmeshMesh(
        localName: 'appmesh_mesh',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppmeshRoute(
        localName: 'appmesh_route',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        virtualRouterName: TfArg.literal(leftover),
        spec: AppmeshRouteSpec(
          priority: TfArg.literal(200),
        ),
      ),
    );

    add(
      AwsAppmeshVirtualGateway(
        localName: 'appmesh_virtual_gateway',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        spec: AppmeshVirtualGatewaySpec(
          listener: [
            AppmeshVirtualGatewaySpecListener(
              portMapping: AppmeshVirtualGatewaySpecListenerPortMapping(
                port: TfArg.literal(200),
                protocol: TfArg.literal('http'),
              ),
            ),
          ],
        ),
      ),
    );

    add(
      AwsAppmeshVirtualNode(
        localName: 'appmesh_virtual_node',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        spec: AppmeshVirtualNodeSpec(
          backend: [
            AppmeshVirtualNodeSpecBackend(
              virtualService: AppmeshVirtualNodeSpecBackendVirtualService(
                virtualServiceName: TfArg.literal(leftover),
              ),
            ),
          ],
        ),
      ),
    );

    add(
      AwsAppmeshVirtualRouter(
        localName: 'appmesh_virtual_router',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        spec: AppmeshVirtualRouterSpec(
          listener: [
            AppmeshVirtualRouterSpecListener(
              portMapping: AppmeshVirtualRouterSpecListenerPortMapping(
                port: TfArg.literal(200),
                protocol: TfArg.literal('http'),
              ),
            ),
          ],
        ),
      ),
    );

    add(
      AwsAppmeshVirtualService(
        localName: 'appmesh_virtual_service',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        spec: AppmeshVirtualServiceSpec(
          provider: AppmeshVirtualServiceSpecProvider(
            virtualNode: AppmeshVirtualServiceSpecProviderVirtualNode(
              virtualNodeName: TfArg.literal(leftover),
            ),
          ),
        ),
      ),
    );

    add(
      AwsApprunnerAutoScalingConfigurationVersion(
        localName: 'apprunner_auto_scaling_configuration_version',
        autoScalingConfigurationName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApprunnerConnection(
        localName: 'apprunner_connection',
        connectionName: TfArg.literal(leftover),
        providerType: TfArg.literal('GITHUB'),
      ),
    );

    add(
      AwsApprunnerCustomDomainAssociation(
        localName: 'apprunner_custom_domain_association',
        domainName: TfArg.literal(leftover),
        serviceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsApprunnerDefaultAutoScalingConfigurationVersion(
        localName: 'apprunner_default_auto_scaling_configuration_ver',
        autoScalingConfigurationArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsApprunnerDeployment(
        localName: 'apprunner_deployment',
        serviceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsApprunnerObservabilityConfiguration(
        localName: 'apprunner_observability_configuration',
        observabilityConfigurationName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApprunnerService(
        localName: 'apprunner_service',
        serviceName: TfArg.literal(leftover),
        sourceConfiguration: ApprunnerServiceSourceConfiguration(
          codeRepository: ApprunnerServiceSourceConfigurationCodeRepository(
            repositoryUrl: TfArg.literal('https://example.com'),
            sourceCodeVersion:
                ApprunnerServiceSourceConfigurationCodeRepositorySourceCodeVersion(
              type: TfArg.literal('BRANCH'),
              value: TfArg.literal('BRANCH'),
            ),
          ),
        ),
      ),
    );

    add(
      AwsApprunnerVpcConnector(
        localName: 'apprunner_vpc_connector',
        securityGroups: TfArg.literal([leftover]),
        subnets: TfArg.literal([leftover]),
        vpcConnectorName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsApprunnerVpcIngressConnection(
        localName: 'apprunner_vpc_ingress_connection',
        name: TfArg.literal(leftover),
        serviceArn: TfArg.literal(arn),
        ingressVpcConfiguration:
            ApprunnerVpcIngressConnectionIngressVpcConfiguration(
          vpcEndpointId: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsAppstreamDirectoryConfig(
        localName: 'appstream_directory_config',
        directoryName: TfArg.literal(leftover),
        organizationalUnitDistinguishedNames: TfArg.literal([leftover]),
        serviceAccountCredentials:
            AppstreamDirectoryConfigServiceAccountCredentials(
          accountName: TfArg.literal(leftover),
          accountPassword: TfArg.variable('leftover_secret'),
        ),
      ),
    );

    add(
      AwsAppstreamFleet(
        localName: 'appstream_fleet',
        instanceType: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        computeCapacity: AppstreamFleetComputeCapacity(
          desiredInstances: TfArg.literal(200),
        ),
      ),
    );

    add(
      AwsAppstreamFleetStackAssociation(
        localName: 'appstream_fleet_stack_association',
        fleetName: TfArg.literal(leftover),
        stackName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppstreamImageBuilder(
        localName: 'appstream_image_builder',
        instanceType: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        imageArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsAppstreamStack(
        localName: 'appstream_stack',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppstreamUser(
        localName: 'appstream_user',
        authenticationType: TfArg.literal('API'),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppstreamUserStackAssociation(
        localName: 'appstream_user_stack_association',
        authenticationType: TfArg.literal('API'),
        stackName: TfArg.literal(leftover),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppsyncApi(
        localName: 'appsync_api',
        name: TfArg.literal(leftover),
        eventConfig: [
          AppsyncApiEventConfig(
            defaultSubscribeAuthMode: [
              AppsyncApiEventConfigDefaultSubscribeAuthMode(
                authType: TfArg.literal('API_KEY'),
              ),
            ],
            connectionAuthMode: [
              AppsyncApiEventConfigConnectionAuthMode(
                authType: TfArg.literal('API_KEY'),
              ),
            ],
            defaultPublishAuthMode: [
              AppsyncApiEventConfigDefaultPublishAuthMode(
                authType: TfArg.literal('API_KEY'),
              ),
            ],
            authProvider: [
              AppsyncApiEventConfigAuthProvider(
                authType: TfArg.literal('API_KEY'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsAppsyncApiCache(
        localName: 'appsync_api_cache',
        apiCachingBehavior: TfArg.literal('FULL_REQUEST_CACHING'),
        apiId: TfArg.literal(leftover),
        ttl: TfArg.literal(200),
        type: TfArg.literal('T2_SMALL'),
      ),
    );

    add(
      AwsAppsyncApiKey(
        localName: 'appsync_api_key',
        apiId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppsyncChannelNamespace(
        localName: 'appsync_channel_namespace',
        apiId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppsyncDatasource(
        localName: 'appsync_datasource',
        apiId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        type: TfArg.literal('AWS_LAMBDA'),
      ),
    );

    add(
      AwsAppsyncDomainName(
        localName: 'appsync_domain_name',
        certificateArn: TfArg.literal(arn),
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppsyncDomainNameApiAssociation(
        localName: 'appsync_domain_name_api_association',
        apiId: TfArg.literal(leftover),
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppsyncFunction(
        localName: 'appsync_function',
        apiId: TfArg.literal(leftover),
        dataSource: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppsyncGraphqlApi(
        localName: 'appsync_graphql_api',
        authenticationType: TfArg.literal('API_KEY'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppsyncResolver(
        localName: 'appsync_resolver',
        apiId: TfArg.literal(leftover),
        field: TfArg.literal(leftover),
        type: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAppsyncSourceApiAssociation(
        localName: 'appsync_source_api_association',
        sourceApiArn: TfArg.literal(arn),
        mergedApiArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsAppsyncType(
        localName: 'appsync_type',
        apiId: TfArg.literal(leftover),
        definition: TfArg.literal(leftover),
        format: TfArg.literal('SDL'),
      ),
    );

    add(
      AwsArcregionswitchPlan(
        localName: 'arcregionswitch_plan',
        executionRole: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        recoveryApproach: TfArg.literal('activeActive'),
        regions: TfArg.literal([
          leftover,
          'leftover1',
        ]),
      ),
    );

    add(
      AwsArczonalshiftAutoshiftObserverNotificationStatus(
        localName: 'arczonalshift_autoshift_observer_notification_st',
        status: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsArczonalshiftZonalAutoshiftConfiguration(
        localName: 'arczonalshift_zonal_autoshift_configuration',
        resourceArn: TfArg.literal(arn),
        zonalAutoshiftStatus: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsAthenaCapacityReservation(
        localName: 'athena_capacity_reservation',
        name: TfArg.literal(leftover),
        targetDpus: TfArg.literal(200),
      ),
    );

    add(
      AwsAthenaDataCatalog(
        localName: 'athena_data_catalog',
        description: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        parameters: TfArg.literal({'k': leftover}),
        type: TfArg.literal('LAMBDA'),
      ),
    );

    add(
      AwsAthenaDatabase(
        localName: 'athena_database',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAthenaNamedQuery(
        localName: 'athena_named_query',
        database: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        query: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAthenaPreparedStatement(
        localName: 'athena_prepared_statement',
        name: TfArg.literal(leftover),
        queryStatement: TfArg.literal(leftover),
        workgroup: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAthenaWorkgroup(
        localName: 'athena_workgroup',
        name: TfArg.literal(leftover),
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
        frameworkId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        roles: [
          AuditmanagerAssessmentRoles(
            roleArn: TfArg.literal(arn),
            roleType: TfArg.literal('PROCESS_OWNER'),
          ),
        ],
      ),
    );

    add(
      AwsAuditmanagerAssessmentDelegation(
        localName: 'auditmanager_assessment_delegation',
        assessmentId: TfArg.literal(leftover),
        controlSetId: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        roleType: TfArg.literal('PROCESS_OWNER'),
      ),
    );

    add(
      AwsAuditmanagerAssessmentReport(
        localName: 'auditmanager_assessment_report',
        assessmentId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerControl(
        localName: 'auditmanager_control',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerFramework(
        localName: 'auditmanager_framework',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerFrameworkShare(
        localName: 'auditmanager_framework_share',
        destinationAccount: TfArg.literal('123456789012'),
        destinationRegion: TfArg.literal('us-east-1'),
        frameworkId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAuditmanagerOrganizationAdminAccountRegistration(
        localName: 'auditmanager_organization_admin_account_registra',
        adminAccountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsAutoscalingAttachment(
        localName: 'autoscaling_attachment',
        autoscalingGroupName: TfArg.literal(leftover),
        elb: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAutoscalingGroup(
        localName: 'autoscaling_group',
        maxSize: TfArg.literal(200),
        minSize: TfArg.literal(200),
        launchConfiguration: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAutoscalingGroupTag(
        localName: 'autoscaling_group_tag',
        autoscalingGroupName: TfArg.literal(leftover),
        tag: AutoscalingGroupTagTag(
          key: TfArg.literal(leftover),
          propagateAtLaunch: TfArg.literal(true),
          value: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsAutoscalingLifecycleHook(
        localName: 'autoscaling_lifecycle_hook',
        autoscalingGroupName: TfArg.literal(leftover),
        lifecycleTransition:
            TfArg.literal('autoscaling:EC2_INSTANCE_LAUNCHING'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAutoscalingNotification(
        localName: 'autoscaling_notification',
        groupNames: TfArg.literal([leftover]),
        notifications: TfArg.literal([leftover]),
        topicArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsAutoscalingPolicy(
        localName: 'autoscaling_policy',
        autoscalingGroupName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAutoscalingSchedule(
        localName: 'autoscaling_schedule',
        autoscalingGroupName: TfArg.literal(leftover),
        scheduledActionName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAutoscalingTrafficSourceAttachment(
        localName: 'autoscaling_traffic_source_attachment',
        autoscalingGroupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsAutoscalingplansScalingPlan(
        localName: 'autoscalingplans_scaling_plan',
        name: TfArg.literal(leftover),
        applicationSource: AutoscalingplansScalingPlanApplicationSource(
          cloudformationStackArn: TfArg.literal(arn),
        ),
        scalingInstruction: [
          AutoscalingplansScalingPlanScalingInstruction(
            maxCapacity: TfArg.literal(200),
            minCapacity: TfArg.literal(200),
            resourceId: TfArg.literal(leftover),
            scalableDimension:
                TfArg.literal('autoscaling:autoScalingGroup:DesiredCapacity'),
            serviceNamespace: TfArg.literal('autoscaling'),
            targetTrackingConfiguration: [
              AutoscalingplansScalingPlanScalingInstructionTargetTrackingConfiguration(
                targetValue: TfArg.literal(200),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBackupFramework(
        localName: 'backup_framework',
        name: TfArg.literal(leftover),
        control: [
          BackupFrameworkControl(
            name: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsBackupGlobalSettings(
        localName: 'backup_global_settings',
        globalSettings: TfArg.literal({'k': leftover}),
      ),
    );

    add(
      AwsBackupLogicallyAirGappedVault(
        localName: 'backup_logically_air_gapped_vault',
        maxRetentionDays: TfArg.literal(200),
        minRetentionDays: TfArg.literal(200),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBackupPlan(
        localName: 'backup_plan',
        name: TfArg.literal(leftover),
        rule: [
          BackupPlanRule(
            ruleName: TfArg.literal(leftover),
            targetVaultName: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsBackupRegionSettings(
        localName: 'backup_region_settings',
        resourceTypeOptInPreference: TfArg.literal({'k': true}),
      ),
    );

    add(
      AwsBackupReportPlan(
        localName: 'backup_report_plan',
        name: TfArg.literal(leftover),
        reportDeliveryChannel: BackupReportPlanReportDeliveryChannel(
          s3BucketName: TfArg.literal(leftover),
        ),
        reportSetting: BackupReportPlanReportSetting(
          reportTemplate: TfArg.literal('BACKUP_JOB_REPORT'),
        ),
      ),
    );

    add(
      AwsBackupRestoreTestingPlan(
        localName: 'backup_restore_testing_plan',
        name: TfArg.literal(leftover),
        scheduleExpression: TfArg.literal(leftover),
        recoveryPointSelection: [
          BackupRestoreTestingPlanRecoveryPointSelection(
            algorithm: TfArg.literal('LATEST_WITHIN_WINDOW'),
            includeVaults: TfArg.literal(['*']),
            recoveryPointTypes: TfArg.literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsBackupRestoreTestingSelection(
        localName: 'backup_restore_testing_selection',
        iamRoleArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        protectedResourceType: TfArg.literal(leftover),
        restoreTestingPlanName: TfArg.literal(leftover),
        protectedResourceArns: TfArg.literal([arn]),
      ),
    );

    add(
      AwsBackupSelection(
        localName: 'backup_selection',
        iamRoleArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        planId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBackupVault(
        localName: 'backup_vault',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBackupVaultLockConfiguration(
        localName: 'backup_vault_lock_configuration',
        backupVaultName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBackupVaultNotifications(
        localName: 'backup_vault_notifications',
        backupVaultEvents: TfArg.literal(['BACKUP_JOB_STARTED']),
        backupVaultName: TfArg.literal(leftover),
        snsTopicArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsBackupVaultPolicy(
        localName: 'backup_vault_policy',
        backupVaultName: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsBatchComputeEnvironment(
        localName: 'batch_compute_environment',
        type: TfArg.literal('MANAGED'),
      ),
    );

    add(
      AwsBatchJobDefinition(
        localName: 'batch_job_definition',
        name: TfArg.literal(leftover),
        type: TfArg.literal('container'),
      ),
    );

    add(
      AwsBatchJobQueue(
        localName: 'batch_job_queue',
        name: TfArg.literal(leftover),
        priority: TfArg.literal(200),
        state: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsBatchSchedulingPolicy(
        localName: 'batch_scheduling_policy',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBcmdataexportsExport(
        localName: 'bcmdataexports_export',
      ),
    );

    add(
      AwsBedrockCustomModel(
        localName: 'bedrock_custom_model',
        baseModelIdentifier: TfArg.literal(arn),
        customModelName: TfArg.literal(leftover),
        hyperparameters: TfArg.literal({'k': leftover}),
        jobName: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        outputDataConfig: [
          BedrockCustomModelOutputDataConfig(
            s3Uri: TfArg.literal('s3://leftover-bucket/leftover'),
          ),
        ],
        trainingDataConfig: [
          BedrockCustomModelTrainingDataConfig(
            s3Uri: TfArg.literal('s3://leftover-bucket/leftover'),
          ),
        ],
      ),
    );

    add(
      AwsBedrockEvaluationJob(
        localName: 'bedrock_evaluation_job',
        jobName: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        evaluationConfig: [
          BedrockEvaluationJobEvaluationConfig(
            automated: [
              BedrockEvaluationJobEvaluationConfigAutomated(
                datasetMetricConfig: [
                  BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfig(
                    metricNames: TfArg.literal([leftover]),
                    taskType: TfArg.literal('Summarization'),
                    dataset: [
                      BedrockEvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDataset(
                        name: TfArg.literal(leftover),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
        inferenceConfig: [
          BedrockEvaluationJobInferenceConfig(
            model: [
              BedrockEvaluationJobInferenceConfigModel(
                bedrockModel: [
                  BedrockEvaluationJobInferenceConfigModelBedrockModel(
                    modelIdentifier: TfArg.literal(leftover),
                  ),
                ],
              ),
            ],
          ),
        ],
        outputDataConfig: [
          BedrockEvaluationJobOutputDataConfig(
            s3Uri: TfArg.literal('s3://leftover-bucket/leftover'),
          ),
        ],
      ),
    );

    add(
      AwsBedrockFoundationModelAgreement(
        localName: 'bedrock_foundation_model_agreement',
        modelId: TfArg.literal(leftover),
        offerToken: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockGuardrail(
        localName: 'bedrock_guardrail',
        blockedInputMessaging: TfArg.literal(leftover),
        blockedOutputsMessaging: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockGuardrailVersion(
        localName: 'bedrock_guardrail_version',
        guardrailArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsBedrockInferenceProfile(
        localName: 'bedrock_inference_profile',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockModelInvocationJob(
        localName: 'bedrock_model_invocation_job',
        jobName: TfArg.literal(leftover),
        modelId: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        inputDataConfig: [
          BedrockModelInvocationJobInputDataConfig(
            s3InputDataConfig: [
              BedrockModelInvocationJobInputDataConfigS3InputDataConfig(
                s3Uri: TfArg.literal('s3://leftover-bucket/leftover'),
              ),
            ],
          ),
        ],
        outputDataConfig: [
          BedrockModelInvocationJobOutputDataConfig(
            s3OutputDataConfig: [
              BedrockModelInvocationJobOutputDataConfigS3OutputDataConfig(
                s3Uri: TfArg.literal('s3://leftover-bucket/leftover'),
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
            embeddingDataDeliveryEnabled: TfArg.literal(true),
          ),
        ],
      ),
    );

    add(
      AwsBedrockProvisionedModelThroughput(
        localName: 'bedrock_provisioned_model_throughput',
        modelArn: TfArg.literal(arn),
        modelUnits: TfArg.literal(200),
        provisionedModelName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockUseCaseForModelAccess(
        localName: 'bedrock_use_case_for_model_access',
        formData: TfArg.literal(policy),
      ),
    );

    add(
      AwsBedrockagentAgent(
        localName: 'bedrockagent_agent',
        agentName: TfArg.literal(leftover),
        agentResourceRoleArn: TfArg.literal(arn),
        foundationModel: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockagentAgentActionGroup(
        localName: 'bedrockagent_agent_action_group',
        actionGroupName: TfArg.literal(leftover),
        agentId: TfArg.literal(leftover),
        agentVersion: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockagentAgentAlias(
        localName: 'bedrockagent_agent_alias',
        agentAliasName: TfArg.literal(leftover),
        agentId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockagentAgentCollaborator(
        localName: 'bedrockagent_agent_collaborator',
        agentId: TfArg.literal(leftover),
        collaborationInstruction: TfArg.literal(leftover),
        collaboratorName: TfArg.literal(leftover),
        agentDescriptor: [
          BedrockagentAgentCollaboratorAgentDescriptor(
            aliasArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentAgentKnowledgeBaseAssociation(
        localName: 'bedrockagent_agent_knowledge_base_association',
        agentId: TfArg.literal(leftover),
        description: TfArg.literal(leftover),
        knowledgeBaseId: TfArg.literal(leftover),
        knowledgeBaseState: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsBedrockagentDataSource(
        localName: 'bedrockagent_data_source',
        knowledgeBaseId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        dataSourceConfiguration: [
          BedrockagentDataSourceDataSourceConfiguration(
            type: TfArg.literal('S3'),
            s3Configuration: [
              BedrockagentDataSourceDataSourceConfigurationS3Configuration(
                bucketArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentFlow(
        localName: 'bedrockagent_flow',
        executionRoleArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockagentKnowledgeBase(
        localName: 'bedrockagent_knowledge_base',
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        knowledgeBaseConfiguration: [
          BedrockagentKnowledgeBaseKnowledgeBaseConfiguration(
            type: TfArg.literal('VECTOR'),
            vectorKnowledgeBaseConfiguration: [
              BedrockagentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfiguration(
                embeddingModelArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentPrompt(
        localName: 'bedrockagent_prompt',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreAgentRuntime(
        localName: 'bedrockagentcore_agent_runtime',
        agentRuntimeName: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        agentRuntimeArtifact: [
          BedrockagentcoreAgentRuntimeAgentRuntimeArtifact(
            codeConfiguration: [
              BedrockagentcoreAgentRuntimeAgentRuntimeArtifactCodeConfiguration(
                entryPoint: TfArg.literal([leftover]),
                runtime: TfArg.literal('PYTHON_3_10'),
              ),
            ],
          ),
        ],
        networkConfiguration: [
          BedrockagentcoreAgentRuntimeNetworkConfiguration(
            networkMode: TfArg.literal('PUBLIC'),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreAgentRuntimeEndpoint(
        localName: 'bedrockagentcore_agent_runtime_endpoint',
        agentRuntimeId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreApiKeyCredentialProvider(
        localName: 'bedrockagentcore_api_key_credential_provider',
        name: TfArg.literal(leftover),
        apiKey: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsBedrockagentcoreBrowser(
        localName: 'bedrockagentcore_browser',
        name: TfArg.literal(leftover),
        networkConfiguration: [
          BedrockagentcoreBrowserNetworkConfiguration(
            networkMode: TfArg.literal('PUBLIC'),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreBrowserProfile(
        localName: 'bedrockagentcore_browser_profile',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreCodeInterpreter(
        localName: 'bedrockagentcore_code_interpreter',
        name: TfArg.literal(leftover),
        networkConfiguration: [
          BedrockagentcoreCodeInterpreterNetworkConfiguration(
            networkMode: TfArg.literal('PUBLIC'),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreEvaluator(
        localName: 'bedrockagentcore_evaluator',
        evaluatorName: TfArg.literal(leftover),
        level: TfArg.literal('TOOL_CALL'),
        evaluatorConfig: [
          BedrockagentcoreEvaluatorEvaluatorConfig(
            codeBased: [
              BedrockagentcoreEvaluatorEvaluatorConfigCodeBased(
                lambdaConfig: [
                  BedrockagentcoreEvaluatorEvaluatorConfigCodeBasedLambdaConfig(
                    lambdaArn: TfArg.literal(arn),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreGateway(
        localName: 'bedrockagentcore_gateway',
        authorizerType: TfArg.literal('AWS_IAM'),
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsBedrockagentcoreGatewayRule(
        localName: 'bedrockagentcore_gateway_rule',
        gatewayIdentifier: TfArg.literal(leftover),
        priority: TfArg.literal(200),
      ),
    );

    add(
      AwsBedrockagentcoreGatewayTarget(
        localName: 'bedrockagentcore_gateway_target',
        gatewayIdentifier: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        targetConfiguration: [
          BedrockagentcoreGatewayTargetTargetConfiguration(
            http: [
              BedrockagentcoreGatewayTargetTargetConfigurationHttp(
                agentcoreRuntime: [
                  BedrockagentcoreGatewayTargetTargetConfigurationHttpAgentcoreRuntime(
                    arn: TfArg.literal(arn),
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
        executionRoleArn: TfArg.literal(arn),
        harnessName: TfArg.literal(leftover),
        model: [
          BedrockagentcoreHarnessModel(
            bedrockModelConfig: [
              BedrockagentcoreHarnessModelBedrockModelConfig(
                modelId: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
        systemPrompt: [
          BedrockagentcoreHarnessSystemPrompt(
            text: TfArg.variable('leftover_secret'),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreMemory(
        localName: 'bedrockagentcore_memory',
        eventExpiryDuration: TfArg.literal(200),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreMemoryStrategy(
        localName: 'bedrockagentcore_memory_strategy',
        memoryId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        type: TfArg.literal('SEMANTIC'),
        namespaces: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsBedrockagentcoreOauth2CredentialProvider(
        localName: 'bedrockagentcore_oauth2_credential_provider',
        credentialProviderVendor: TfArg.literal('GoogleOauth2'),
        name: TfArg.literal(leftover),
        oauth2ProviderConfig: [
          BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfig(
            googleOauth2ProviderConfig: [
              BedrockagentcoreOauth2CredentialProviderOauth2ProviderConfigGoogleOauth2ProviderConfig(
                clientId: TfArg.variable('leftover_secret'),
                clientSecret: TfArg.variable('leftover_secret'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreOnlineEvaluationConfig(
        localName: 'bedrockagentcore_online_evaluation_config',
        enableOnCreate: TfArg.literal(true),
        evaluationExecutionRoleArn: TfArg.literal(arn),
        onlineEvaluationConfigName: TfArg.literal(leftover),
        dataSourceConfig: [
          BedrockagentcoreOnlineEvaluationConfigDataSourceConfig(
            cloudwatchLogs: [
              BedrockagentcoreOnlineEvaluationConfigDataSourceConfigCloudwatchLogs(
                logGroupNames: TfArg.literal([leftover]),
                serviceNames: TfArg.literal([leftover]),
              ),
            ],
          ),
        ],
        evaluator: [
          BedrockagentcoreOnlineEvaluationConfigEvaluator(
            evaluatorId: TfArg.literal('Builtin.Helpfulness'),
          ),
        ],
        rule: [
          BedrockagentcoreOnlineEvaluationConfigRule(
            samplingConfig: [
              BedrockagentcoreOnlineEvaluationConfigRuleSamplingConfig(
                samplingPercentage: TfArg.literal(50),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcorePolicy(
        localName: 'bedrockagentcore_policy',
        name: TfArg.literal(leftover),
        policyEngineId: TfArg.literal('T0OLrnw-qkcm9dd3b0'),
        definition: [
          BedrockagentcorePolicyDefinition(
            cedar: [
              BedrockagentcorePolicyDefinitionCedar(
                statement: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcorePolicyEngine(
        localName: 'bedrockagentcore_policy_engine',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreRegistry(
        localName: 'bedrockagentcore_registry',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBedrockagentcoreResourcePolicy(
        localName: 'bedrockagentcore_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsBedrockagentcoreTokenVaultCmk(
        localName: 'bedrockagentcore_token_vault_cmk',
        kmsConfiguration: [
          BedrockagentcoreTokenVaultCmkKmsConfiguration(
            keyType: TfArg.literal('CustomerManagedKey'),
          ),
        ],
      ),
    );

    add(
      AwsBedrockagentcoreWorkloadIdentity(
        localName: 'bedrockagentcore_workload_identity',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBillingView(
        localName: 'billing_view',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsBudgetsBudget(
        localName: 'budgets_budget',
        budgetType: TfArg.literal('USAGE'),
        timeUnit: TfArg.literal('DAILY'),
      ),
    );

    add(
      AwsBudgetsBudgetAction(
        localName: 'budgets_budget_action',
        actionType: TfArg.literal('APPLY_IAM_POLICY'),
        approvalModel: TfArg.literal('AUTOMATIC'),
        budgetName: TfArg.literal(leftover),
        executionRoleArn: TfArg.literal(arn),
        notificationType: TfArg.literal('ACTUAL'),
        actionThreshold: BudgetsBudgetActionActionThreshold(
          actionThresholdType: TfArg.literal('PERCENTAGE'),
          actionThresholdValue: TfArg.literal(200),
        ),
        definition: BudgetsBudgetActionDefinition(
          iamActionDefinition: BudgetsBudgetActionDefinitionIamActionDefinition(
            policyArn: TfArg.literal(arn),
          ),
        ),
        subscriber: [
          BudgetsBudgetActionSubscriber(
            address: TfArg.literal(leftover),
            subscriptionType: TfArg.literal('SNS'),
          ),
        ],
      ),
    );

    add(
      AwsCeAnomalyMonitor(
        localName: 'ce_anomaly_monitor',
        monitorType: TfArg.literal('DIMENSIONAL'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCeAnomalySubscription(
        localName: 'ce_anomaly_subscription',
        frequency: TfArg.literal('DAILY'),
        monitorArnList: TfArg.literal([arn]),
        name: TfArg.literal(leftover),
        subscriber: [
          CeAnomalySubscriptionSubscriber(
            address: TfArg.literal(leftover),
            type: TfArg.literal('EMAIL'),
          ),
        ],
      ),
    );

    add(
      AwsCeCostAllocationTag(
        localName: 'ce_cost_allocation_tag',
        status: TfArg.literal('Active'),
        tagKey: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCeCostCategory(
        localName: 'ce_cost_category',
        name: TfArg.literal(leftover),
        ruleVersion: TfArg.literal(leftover),
        rule: [
          CeCostCategoryRule(
            type: TfArg.literal('REGULAR'),
          ),
        ],
      ),
    );

    add(
      AwsChatbotSlackChannelConfiguration(
        localName: 'chatbot_slack_channel_configuration',
        configurationName: TfArg.literal(leftover),
        iamRoleArn: TfArg.literal(arn),
        slackChannelId: TfArg.literal(leftover),
        slackTeamId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsChatbotTeamsChannelConfiguration(
        localName: 'chatbot_teams_channel_configuration',
        channelId: TfArg.literal(leftover),
        configurationName: TfArg.literal(leftover),
        iamRoleArn: TfArg.literal(arn),
        teamId: TfArg.literal(leftover),
        tenantId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnector(
        localName: 'chime_voice_connector',
        name: TfArg.literal(leftover),
        requireEncryption: TfArg.literal(true),
      ),
    );

    add(
      AwsChimeVoiceConnectorGroup(
        localName: 'chime_voice_connector_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorLogging(
        localName: 'chime_voice_connector_logging',
        voiceConnectorId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorOrigination(
        localName: 'chime_voice_connector_origination',
        voiceConnectorId: TfArg.literal(leftover),
        route: [
          ChimeVoiceConnectorOriginationRoute(
            host: TfArg.literal('10.0.0.1'),
            priority: TfArg.literal(1),
            protocol: TfArg.literal('TCP'),
            weight: TfArg.literal(1),
          ),
        ],
      ),
    );

    add(
      AwsChimeVoiceConnectorStreaming(
        localName: 'chime_voice_connector_streaming',
        dataRetention: TfArg.literal(200),
        voiceConnectorId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorTermination(
        localName: 'chime_voice_connector_termination',
        callingRegions: TfArg.literal(['US']),
        cidrAllowList: TfArg.literal(['10.0.0.0/28']),
        voiceConnectorId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsChimeVoiceConnectorTerminationCredentials(
        localName: 'chime_voice_connector_termination_credentials',
        voiceConnectorId: TfArg.literal(leftover),
        credentials: [
          ChimeVoiceConnectorTerminationCredentialsCredentials(
            password: TfArg.variable('leftover_secret'),
            username: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsChimesdkmediapipelinesMediaInsightsPipelineConfiguration(
        localName: 'chimesdkmediapipelines_media_insights_pipeline_c',
        name: TfArg.literal(leftover),
        resourceAccessRoleArn: TfArg.literal(arn),
        elements: [
          ChimesdkmediapipelinesMediaInsightsPipelineConfigurationElements(
            type: TfArg.literal('AmazonTranscribeCallAnalyticsProcessor'),
          ),
        ],
      ),
    );

    add(
      AwsChimesdkvoiceGlobalSettings(
        localName: 'chimesdkvoice_global_settings',
        voiceConnector: ChimesdkvoiceGlobalSettingsVoiceConnector(
          cdrBucket: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsChimesdkvoiceSipMediaApplication(
        localName: 'chimesdkvoice_sip_media_application',
        awsRegion: TfArg.literal('us-east-1'),
        name: TfArg.literal(leftover),
        endpoints: ChimesdkvoiceSipMediaApplicationEndpoints(
          lambdaArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsChimesdkvoiceSipRule(
        localName: 'chimesdkvoice_sip_rule',
        name: TfArg.literal(leftover),
        triggerType: TfArg.literal('ToPhoneNumber'),
        triggerValue: TfArg.literal(leftover),
        targetApplications: [
          ChimesdkvoiceSipRuleTargetApplications(
            awsRegion: TfArg.literal('us-east-1'),
            priority: TfArg.literal(200),
            sipMediaApplicationId: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsChimesdkvoiceVoiceProfileDomain(
        localName: 'chimesdkvoice_voice_profile_domain',
        name: TfArg.literal(leftover),
        serverSideEncryptionConfiguration:
            ChimesdkvoiceVoiceProfileDomainServerSideEncryptionConfiguration(
          kmsKeyArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsCleanroomsCollaboration(
        localName: 'cleanrooms_collaboration',
        creatorDisplayName: TfArg.literal(leftover),
        creatorMemberAbilities: TfArg.literal([leftover]),
        description: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        queryLogStatus: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCleanroomsConfiguredTable(
        localName: 'cleanrooms_configured_table',
        allowedColumns: TfArg.literal([leftover]),
        analysisMethod: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        tableReference: CleanroomsConfiguredTableTableReference(
          databaseName: TfArg.literal(leftover),
          tableName: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsCleanroomsMembership(
        localName: 'cleanrooms_membership',
        collaborationId: TfArg.literal(leftover),
        queryLogStatus: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsCloud9EnvironmentEc2(
        localName: 'cloud9_environment_ec2',
        imageId: TfArg.literal('amazonlinux-1-x86_64'),
        instanceType: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloud9EnvironmentMembership(
        localName: 'cloud9_environment_membership',
        environmentId: TfArg.literal(leftover),
        permissions: TfArg.literal('owner'),
        userArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsCloudcontrolapiResource(
        localName: 'cloudcontrolapi_resource',
        desiredState: TfArg.literal(leftover),
        typeName: TfArg.literal('AWS::S3::Bucket'),
      ),
    );

    add(
      AwsCloudformationStack(
        localName: 'cloudformation_stack',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudformationStackInstances(
        localName: 'cloudformation_stack_instances',
        stackSetName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudformationStackSet(
        localName: 'cloudformation_stack_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudformationStackSetInstance(
        localName: 'cloudformation_stack_set_instance',
        stackSetName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudformationType(
        localName: 'cloudformation_type',
        schemaHandlerPackage: TfArg.literal('s3://leftover-bucket/leftover'),
        typeName: TfArg.literal('Leftover::Example::Thing'),
      ),
    );

    add(
      AwsCloudfrontAnycastIpList(
        localName: 'cloudfront_anycast_ip_list',
        ipCount: TfArg.literal(3),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudfrontCachePolicy(
        localName: 'cloudfront_cache_policy',
        name: TfArg.literal(leftover),
        parametersInCacheKeyAndForwardedToOrigin:
            CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOrigin(
          cookiesConfig:
              CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig(
            cookieBehavior: TfArg.literal('none'),
          ),
          headersConfig:
              CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig(
            headerBehavior: TfArg.literal('none'),
          ),
          queryStringsConfig:
              CloudfrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig(
            queryStringBehavior: TfArg.literal('none'),
          ),
        ),
      ),
    );

    add(
      AwsCloudfrontConnectionFunction(
        localName: 'cloudfront_connection_function',
        connectionFunctionCode: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        connectionFunctionConfig: [
          CloudfrontConnectionFunctionConnectionFunctionConfig(
            comment: TfArg.literal(leftover),
            runtime: TfArg.literal('cloudfront-js-1.0'),
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontConnectionGroup(
        localName: 'cloudfront_connection_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudfrontContinuousDeploymentPolicy(
        localName: 'cloudfront_continuous_deployment_policy',
        enabled: TfArg.literal(true),
        stagingDistributionDnsNames: [
          CloudfrontContinuousDeploymentPolicyStagingDistributionDnsNames(
            quantity: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontDistribution(
        localName: 'cloudfront_distribution',
        enabled: TfArg.literal(true),
        defaultCacheBehavior: CloudfrontDistributionDefaultCacheBehavior(
          allowedMethods: TfArg.literal([leftover]),
          cachedMethods: TfArg.literal([leftover]),
          targetOriginId: TfArg.literal(leftover),
          viewerProtocolPolicy: TfArg.literal('allow-all'),
        ),
        origin: [
          CloudfrontDistributionOrigin(
            domainName: TfArg.literal(leftover),
            originId: TfArg.literal(leftover),
          ),
        ],
        restrictions: CloudfrontDistributionRestrictions(
          geoRestriction: CloudfrontDistributionRestrictionsGeoRestriction(
            restrictionType: TfArg.literal('blacklist'),
          ),
        ),
        viewerCertificate: CloudfrontDistributionViewerCertificate(
          acmCertificateArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsCloudfrontDistributionTenant(
        localName: 'cloudfront_distribution_tenant',
        distributionId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudfrontFieldLevelEncryptionConfig(
        localName: 'cloudfront_field_level_encryption_config',
        contentTypeProfileConfig:
            CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfig(
          forwardWhenContentTypeIsUnknown: TfArg.literal(true),
          contentTypeProfiles:
              CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfiles(
            items: [
              CloudfrontFieldLevelEncryptionConfigContentTypeProfileConfigContentTypeProfilesItems(
                contentType: TfArg.literal(leftover),
                format: TfArg.literal('URLEncoded'),
              ),
            ],
          ),
        ),
        queryArgProfileConfig:
            CloudfrontFieldLevelEncryptionConfigQueryArgProfileConfig(
          forwardWhenQueryArgProfileIsUnknown: TfArg.literal(true),
        ),
      ),
    );

    add(
      AwsCloudfrontFieldLevelEncryptionProfile(
        localName: 'cloudfront_field_level_encryption_profile',
        name: TfArg.literal(leftover),
        encryptionEntities:
            CloudfrontFieldLevelEncryptionProfileEncryptionEntities(
          items: [
            CloudfrontFieldLevelEncryptionProfileEncryptionEntitiesItems(
              providerId: TfArg.literal(leftover),
              publicKeyId: TfArg.literal(leftover),
              fieldPatterns:
                  CloudfrontFieldLevelEncryptionProfileEncryptionEntitiesItemsFieldPatterns(
                items: TfArg.literal([leftover]),
              ),
            ),
          ],
        ),
      ),
    );

    add(
      AwsCloudfrontFunction(
        localName: 'cloudfront_function',
        code: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        runtime: TfArg.literal('cloudfront-js-1.0'),
      ),
    );

    add(
      AwsCloudfrontKeyGroup(
        localName: 'cloudfront_key_group',
        items: TfArg.literal([leftover]),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudfrontKeyValueStore(
        localName: 'cloudfront_key_value_store',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudfrontMonitoringSubscription(
        localName: 'cloudfront_monitoring_subscription',
        distributionId: TfArg.literal(leftover),
        monitoringSubscription:
            CloudfrontMonitoringSubscriptionMonitoringSubscription(
          realtimeMetricsSubscriptionConfig:
              CloudfrontMonitoringSubscriptionMonitoringSubscriptionRealtimeMetricsSubscriptionConfig(
            realtimeMetricsSubscriptionStatus: TfArg.literal('Enabled'),
          ),
        ),
      ),
    );

    add(
      AwsCloudfrontMultitenantDistribution(
        localName: 'cloudfront_multitenant_distribution',
        comment: TfArg.literal(leftover),
        enabled: TfArg.literal(true),
        viewerCertificate: [
          CloudfrontMultitenantDistributionViewerCertificate(
            acmCertificateArn: TfArg.literal(arn),
          ),
        ],
        defaultCacheBehavior: [
          CloudfrontMultitenantDistributionDefaultCacheBehavior(
            targetOriginId: TfArg.literal(leftover),
            viewerProtocolPolicy: TfArg.literal('allow-all'),
            allowedMethods: [
              CloudfrontMultitenantDistributionDefaultCacheBehaviorAllowedMethods(
                cachedMethods: TfArg.literal(['GET']),
                items: TfArg.literal(['GET']),
              ),
            ],
          ),
        ],
        tenantConfig: [
          CloudfrontMultitenantDistributionTenantConfig(
            parameterDefinition: [
              CloudfrontMultitenantDistributionTenantConfigParameterDefinition(
                name: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontOriginAccessControl(
        localName: 'cloudfront_origin_access_control',
        name: TfArg.literal(leftover),
        originAccessControlOriginType: TfArg.literal('s3'),
        signingBehavior: TfArg.literal('never'),
        signingProtocol: TfArg.literal('sigv4'),
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
        name: TfArg.literal(leftover),
        cookiesConfig: CloudfrontOriginRequestPolicyCookiesConfig(
          cookieBehavior: TfArg.literal('none'),
        ),
        headersConfig: CloudfrontOriginRequestPolicyHeadersConfig(
          headerBehavior: TfArg.literal('none'),
        ),
        queryStringsConfig: CloudfrontOriginRequestPolicyQueryStringsConfig(
          queryStringBehavior: TfArg.literal('none'),
        ),
      ),
    );

    add(
      AwsCloudfrontPublicKey(
        localName: 'cloudfront_public_key',
        encodedKey: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudfrontRealtimeLogConfig(
        localName: 'cloudfront_realtime_log_config',
        fields: TfArg.literal([leftover]),
        name: TfArg.literal(leftover),
        samplingRate: TfArg.literal(1),
        endpoint: CloudfrontRealtimeLogConfigEndpoint(
          streamType: TfArg.literal('Kinesis'),
          kinesisStreamConfig:
              CloudfrontRealtimeLogConfigEndpointKinesisStreamConfig(
            roleArn: TfArg.literal(arn),
            streamArn: TfArg.literal(arn),
          ),
        ),
      ),
    );

    add(
      AwsCloudfrontResponseHeadersPolicy(
        localName: 'cloudfront_response_headers_policy',
        name: TfArg.literal(leftover),
        corsConfig: CloudfrontResponseHeadersPolicyCorsConfig(
          accessControlAllowCredentials: TfArg.literal(true),
          originOverride: TfArg.literal(true),
          accessControlAllowHeaders:
              CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowHeaders(
            items: TfArg.literal([leftover]),
          ),
          accessControlAllowMethods:
              CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowMethods(
            items: TfArg.literal([leftover]),
          ),
          accessControlAllowOrigins:
              CloudfrontResponseHeadersPolicyCorsConfigAccessControlAllowOrigins(
            items: TfArg.literal([leftover]),
          ),
        ),
        customHeadersConfig: CloudfrontResponseHeadersPolicyCustomHeadersConfig(
          items: [
            CloudfrontResponseHeadersPolicyCustomHeadersConfigItems(
              header: TfArg.literal(leftover),
              override: TfArg.literal(true),
              value: TfArg.literal(leftover),
            ),
          ],
        ),
        removeHeadersConfig: CloudfrontResponseHeadersPolicyRemoveHeadersConfig(
          items: [
            CloudfrontResponseHeadersPolicyRemoveHeadersConfigItems(
              header: TfArg.literal(leftover),
            ),
          ],
        ),
        securityHeadersConfig:
            CloudfrontResponseHeadersPolicySecurityHeadersConfig(
          contentSecurityPolicy:
              CloudfrontResponseHeadersPolicySecurityHeadersConfigContentSecurityPolicy(
            contentSecurityPolicy: TfArg.literal(policy),
            override: TfArg.literal(true),
          ),
        ),
        serverTimingHeadersConfig:
            CloudfrontResponseHeadersPolicyServerTimingHeadersConfig(
          enabled: TfArg.literal(true),
          samplingRate: TfArg.literal(0),
        ),
      ),
    );

    add(
      AwsCloudfrontTrustStore(
        localName: 'cloudfront_trust_store',
        name: TfArg.literal(leftover),
        caCertificatesBundleSource: [
          CloudfrontTrustStoreCaCertificatesBundleSource(
            caCertificatesBundleS3Location: [
              CloudfrontTrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location(
                bucket: TfArg.literal(leftover),
                key: TfArg.literal(leftover),
                region: TfArg.literal('us-east-1'),
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
          CloudfrontVpcOriginVpcOriginEndpointConfig(
            arn: TfArg.literal(arn),
            httpPort: TfArg.literal(200),
            httpsPort: TfArg.literal(200),
            name: TfArg.literal(leftover),
            originProtocolPolicy: TfArg.literal('http-only'),
            originSslProtocols: [
              CloudfrontVpcOriginVpcOriginEndpointConfigOriginSslProtocols(
                items: TfArg.literal(['SSLv3']),
                quantity: TfArg.literal(200),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsCloudfrontkeyvaluestoreKey(
        localName: 'cloudfrontkeyvaluestore_key',
        key: TfArg.literal(leftover),
        keyValueStoreArn: TfArg.literal(arn),
        value: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudfrontkeyvaluestoreKeysExclusive(
        localName: 'cloudfrontkeyvaluestore_keys_exclusive',
        keyValueStoreArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsCloudhsmV2Cluster(
        localName: 'cloudhsm_v2_cluster',
        hsmType: TfArg.literal('hsm1.medium'),
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsCloudhsmV2Hsm(
        localName: 'cloudhsm_v2_hsm',
        clusterId: TfArg.literal(leftover),
        availabilityZone: TfArg.literal('us-east-1a'),
      ),
    );

    add(
      AwsCloudsearchDomain(
        localName: 'cloudsearch_domain',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudsearchDomainServiceAccessPolicy(
        localName: 'cloudsearch_domain_service_access_policy',
        accessPolicy: TfArg.literal(policy),
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudtrail(
        localName: 'cloudtrail',
        name: TfArg.literal(leftover),
        s3BucketName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudtrailEventDataStore(
        localName: 'cloudtrail_event_data_store',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudtrailOrganizationDelegatedAdminAccount(
        localName: 'cloudtrail_organization_delegated_admin_account',
        accountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsCloudwatchAlarmMuteRule(
        localName: 'cloudwatch_alarm_mute_rule',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchCompositeAlarm(
        localName: 'cloudwatch_composite_alarm',
        alarmName: TfArg.literal(leftover),
        alarmRule: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchContributorInsightRule(
        localName: 'cloudwatch_contributor_insight_rule',
        ruleDefinition: TfArg.literal(policy),
        ruleName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchContributorManagedInsightRule(
        localName: 'cloudwatch_contributor_managed_insight_rule',
        resourceArn: TfArg.literal(arn),
        templateName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchDashboard(
        localName: 'cloudwatch_dashboard',
        dashboardBody: TfArg.literal(policy),
        dashboardName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventApiDestination(
        localName: 'cloudwatch_event_api_destination',
        connectionArn: TfArg.literal(arn),
        httpMethod: TfArg.literal('POST'),
        invocationEndpoint: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventArchive(
        localName: 'cloudwatch_event_archive',
        eventSourceArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventBus(
        localName: 'cloudwatch_event_bus',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventBusPolicy(
        localName: 'cloudwatch_event_bus_policy',
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsCloudwatchEventConnection(
        localName: 'cloudwatch_event_connection',
        authorizationType: TfArg.literal('BASIC'),
        name: TfArg.literal(leftover),
        authParameters: CloudwatchEventConnectionAuthParameters(
          apiKey: CloudwatchEventConnectionAuthParametersApiKey(
            key: TfArg.literal(leftover),
            value: TfArg.variable('leftover_secret'),
          ),
        ),
      ),
    );

    add(
      AwsCloudwatchEventEndpoint(
        localName: 'cloudwatch_event_endpoint',
        name: TfArg.literal(leftover),
        eventBus: [
          CloudwatchEventEndpointEventBus(
            eventBusArn: TfArg.literal(arn),
          ),
          CloudwatchEventEndpointEventBus(
            eventBusArn: TfArg.literal(arn),
          ),
        ],
        routingConfig: CloudwatchEventEndpointRoutingConfig(
          failoverConfig: CloudwatchEventEndpointRoutingConfigFailoverConfig(
            primary: CloudwatchEventEndpointRoutingConfigFailoverConfigPrimary(
              healthCheck: TfArg.literal(arn),
            ),
            secondary:
                CloudwatchEventEndpointRoutingConfigFailoverConfigSecondary(
              route: TfArg.literal('us-east-1'),
            ),
          ),
        ),
      ),
    );

    add(
      AwsCloudwatchEventPermission(
        localName: 'cloudwatch_event_permission',
        principal: TfArg.literal('123456789012'),
        statementId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventRule(
        localName: 'cloudwatch_event_rule',
        eventPattern: TfArg.literal(policy),
        scheduleExpression: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchEventTarget(
        localName: 'cloudwatch_event_target',
        arn: TfArg.literal(arn),
        rule: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogAccountPolicy(
        localName: 'cloudwatch_log_account_policy',
        policyDocument: TfArg.literal(policy),
        policyName: TfArg.literal(leftover),
        policyType: TfArg.literal('DATA_PROTECTION_POLICY'),
      ),
    );

    add(
      AwsCloudwatchLogAnomalyDetector(
        localName: 'cloudwatch_log_anomaly_detector',
        enabled: TfArg.literal(true),
        logGroupArnList: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsCloudwatchLogDataProtectionPolicy(
        localName: 'cloudwatch_log_data_protection_policy',
        logGroupName: TfArg.literal(leftover),
        policyDocument: TfArg.literal(policy),
      ),
    );

    add(
      AwsCloudwatchLogDelivery(
        localName: 'cloudwatch_log_delivery',
        deliveryDestinationArn: TfArg.literal(arn),
        deliverySourceName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogDeliveryDestination(
        localName: 'cloudwatch_log_delivery_destination',
        name: TfArg.literal(leftover),
        deliveryDestinationConfiguration: [
          CloudwatchLogDeliveryDestinationDeliveryDestinationConfiguration(
            destinationResourceArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsCloudwatchLogDeliveryDestinationPolicy(
        localName: 'cloudwatch_log_delivery_destination_policy',
        deliveryDestinationName: TfArg.literal(leftover),
        deliveryDestinationPolicy: TfArg.literal(policy),
      ),
    );

    add(
      AwsCloudwatchLogDeliverySource(
        localName: 'cloudwatch_log_delivery_source',
        logType: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsCloudwatchLogDestination(
        localName: 'cloudwatch_log_destination',
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        targetArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsCloudwatchLogDestinationPolicy(
        localName: 'cloudwatch_log_destination_policy',
        accessPolicy: TfArg.literal(policy),
        destinationName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogIndexPolicy(
        localName: 'cloudwatch_log_index_policy',
        logGroupName: TfArg.literal(leftover),
        policyDocument: TfArg.literal(policy),
      ),
    );

    add(
      AwsCloudwatchLogMetricFilter(
        localName: 'cloudwatch_log_metric_filter',
        logGroupName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        pattern: TfArg.literal(leftover),
        metricTransformation: CloudwatchLogMetricFilterMetricTransformation(
          name: TfArg.literal(leftover),
          namespace: TfArg.literal(leftover),
          value: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsCloudwatchLogResourcePolicy(
        localName: 'cloudwatch_log_resource_policy',
        policyDocument: TfArg.literal(policy),
        policyName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogS3TableIntegrationSource(
        localName: 'cloudwatch_log_s3_table_integration_source',
        integrationArn: TfArg.literal(arn),
        dataSource: [
          CloudwatchLogS3TableIntegrationSourceDataSource(
            name: TfArg.literal(leftover),
            type: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsCloudwatchLogStorageTierPolicy(
        localName: 'cloudwatch_log_storage_tier_policy',
        storageTier: TfArg.literal('STANDARD'),
      ),
    );

    add(
      AwsCloudwatchLogStream(
        localName: 'cloudwatch_log_stream',
        logGroupName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogSubscriptionFilter(
        localName: 'cloudwatch_log_subscription_filter',
        destinationArn: TfArg.literal(arn),
        filterPattern: TfArg.literal(leftover),
        logGroupName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchLogTransformer(
        localName: 'cloudwatch_log_transformer',
        logGroupArn: TfArg.literal(arn),
        transformerConfig: [
          CloudwatchLogTransformerTransformerConfig(
            addKeys: [
              CloudwatchLogTransformerTransformerConfigAddKeys(
                entry: [
                  CloudwatchLogTransformerTransformerConfigAddKeysEntry(
                    key: TfArg.literal(leftover),
                    value: TfArg.literal(leftover),
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
        alarmName: TfArg.literal(leftover),
        metricName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCloudwatchMetricStream(
        localName: 'cloudwatch_metric_stream',
        firehoseArn: TfArg.literal(arn),
        outputFormat: TfArg.literal('json'),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsCloudwatchOtelEnrichment(
        localName: 'cloudwatch_otel_enrichment',
      ),
    );

    add(
      AwsCloudwatchQueryDefinition(
        localName: 'cloudwatch_query_definition',
        name: TfArg.literal(leftover),
        queryString: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodeartifactDomain(
        localName: 'codeartifact_domain',
        domain: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodeartifactDomainPermissionsPolicy(
        localName: 'codeartifact_domain_permissions_policy',
        domain: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodeartifactRepository(
        localName: 'codeartifact_repository',
        domain: TfArg.literal(leftover),
        repository: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodeartifactRepositoryPermissionsPolicy(
        localName: 'codeartifact_repository_permissions_policy',
        domain: TfArg.literal(leftover),
        policyDocument: TfArg.literal(policy),
        repository: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodebuildFleet(
        localName: 'codebuild_fleet',
        baseCapacity: TfArg.literal(200),
        computeType: TfArg.literal('BUILD_GENERAL1_SMALL'),
        environmentType: TfArg.literal('WINDOWS_CONTAINER'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodebuildProject(
        localName: 'codebuild_project',
        name: TfArg.literal(leftover),
        serviceRole: TfArg.literal(arn),
        artifacts: CodebuildProjectArtifacts(
          type: TfArg.literal('CODEPIPELINE'),
        ),
        environment: CodebuildProjectEnvironment(
          computeType: TfArg.literal('BUILD_GENERAL1_SMALL'),
          image: TfArg.literal(leftover),
          type: TfArg.literal('WINDOWS_CONTAINER'),
        ),
        source: CodebuildProjectSource(
          type: TfArg.literal('CODECOMMIT'),
        ),
      ),
    );

    add(
      AwsCodebuildReportGroup(
        localName: 'codebuild_report_group',
        name: TfArg.literal(leftover),
        type: TfArg.literal('TEST'),
        exportConfig: CodebuildReportGroupExportConfig(
          type: TfArg.literal('S3'),
        ),
      ),
    );

    add(
      AwsCodebuildResourcePolicy(
        localName: 'codebuild_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsCodebuildSourceCredential(
        localName: 'codebuild_source_credential',
        authType: TfArg.literal('OAUTH'),
        serverType: TfArg.literal('GITHUB'),
        token: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsCodebuildWebhook(
        localName: 'codebuild_webhook',
        projectName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodecatalystDevEnvironment(
        localName: 'codecatalyst_dev_environment',
        instanceType: TfArg.literal('dev.standard1.small'),
        projectName: TfArg.literal(leftover),
        spaceName: TfArg.literal(leftover),
        ides: CodecatalystDevEnvironmentIdes(
          name: TfArg.literal(leftover),
        ),
        persistentStorage: CodecatalystDevEnvironmentPersistentStorage(
          size: TfArg.literal(200),
        ),
      ),
    );

    add(
      AwsCodecatalystProject(
        localName: 'codecatalyst_project',
        displayName: TfArg.literal(leftover),
        spaceName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodecatalystSourceRepository(
        localName: 'codecatalyst_source_repository',
        name: TfArg.literal(leftover),
        projectName: TfArg.literal(leftover),
        spaceName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodecommitApprovalRuleTemplate(
        localName: 'codecommit_approval_rule_template',
        content: TfArg.literal(policy),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodecommitApprovalRuleTemplateAssociation(
        localName: 'codecommit_approval_rule_template_association',
        approvalRuleTemplateName: TfArg.literal(leftover),
        repositoryName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodecommitRepository(
        localName: 'codecommit_repository',
        repositoryName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodecommitTrigger(
        localName: 'codecommit_trigger',
        repositoryName: TfArg.literal(leftover),
        trigger: [
          CodecommitTriggerTrigger(
            destinationArn: TfArg.literal(arn),
            events: TfArg.literal(['all']),
            name: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsCodeconnectionsConnection(
        localName: 'codeconnections_connection',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodeconnectionsHost(
        localName: 'codeconnections_host',
        name: TfArg.literal(leftover),
        providerEndpoint: TfArg.literal(leftover),
        providerType: TfArg.literal('Bitbucket'),
      ),
    );

    add(
      AwsCodedeployApp(
        localName: 'codedeploy_app',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodedeployDeploymentConfig(
        localName: 'codedeploy_deployment_config',
        deploymentConfigName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodedeployDeploymentGroup(
        localName: 'codedeploy_deployment_group',
        appName: TfArg.literal(leftover),
        deploymentGroupName: TfArg.literal(leftover),
        serviceRoleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsCodeguruprofilerProfilingGroup(
        localName: 'codeguruprofiler_profiling_group',
        name: TfArg.literal(leftover),
        agentOrchestrationConfig: [
          CodeguruprofilerProfilingGroupAgentOrchestrationConfig(
            profilingEnabled: TfArg.literal(true),
          ),
        ],
      ),
    );

    add(
      AwsCodegurureviewerRepositoryAssociation(
        localName: 'codegurureviewer_repository_association',
        repository: CodegurureviewerRepositoryAssociationRepository(
          bitbucket: CodegurureviewerRepositoryAssociationRepositoryBitbucket(
            connectionArn: TfArg.literal(arn),
            name: TfArg.literal(leftover),
            owner: TfArg.literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsCodepipeline(
        localName: 'codepipeline',
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        artifactStore: [
          CodepipelineArtifactStore(
            location: TfArg.literal(leftover),
            type: TfArg.literal('S3'),
          ),
        ],
        stage: [
          CodepipelineStage(
            name: TfArg.literal(leftover),
            action: [
              CodepipelineStageAction(
                category: TfArg.literal('Source'),
                name: TfArg.literal(leftover),
                owner: TfArg.literal('AWS'),
                provider: TfArg.literal(leftover),
                version: TfArg.literal(leftover),
              ),
            ],
          ),
          CodepipelineStage(
            name: TfArg.literal('leftover1'),
            action: [
              CodepipelineStageAction(
                category: TfArg.literal('Source'),
                name: TfArg.literal(leftover),
                owner: TfArg.literal('AWS'),
                provider: TfArg.literal(leftover),
                version: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsCodepipelineCustomActionType(
        localName: 'codepipeline_custom_action_type',
        category: TfArg.literal('Source'),
        providerName: TfArg.literal(leftover),
        version: TfArg.literal(leftover),
        inputArtifactDetails: CodepipelineCustomActionTypeInputArtifactDetails(
          maximumCount: TfArg.literal(0),
          minimumCount: TfArg.literal(0),
        ),
        outputArtifactDetails:
            CodepipelineCustomActionTypeOutputArtifactDetails(
          maximumCount: TfArg.literal(0),
          minimumCount: TfArg.literal(0),
        ),
      ),
    );

    add(
      AwsCodepipelineWebhook(
        localName: 'codepipeline_webhook',
        authentication: TfArg.literal('GITHUB_HMAC'),
        name: TfArg.literal(leftover),
        targetAction: TfArg.literal(leftover),
        targetPipeline: TfArg.literal(leftover),
        filter: [
          CodepipelineWebhookFilter(
            jsonPath: TfArg.literal(leftover),
            matchEquals: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsCodestarconnectionsConnection(
        localName: 'codestarconnections_connection',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCodestarconnectionsHost(
        localName: 'codestarconnections_host',
        name: TfArg.literal(leftover),
        providerEndpoint: TfArg.literal(leftover),
        providerType: TfArg.literal('Bitbucket'),
      ),
    );

    add(
      AwsCodestarnotificationsNotificationRule(
        localName: 'codestarnotifications_notification_rule',
        detailType: TfArg.literal('BASIC'),
        eventTypeIds: TfArg.literal([leftover]),
        name: TfArg.literal(leftover),
        resource: TfArg.literal(arn),
      ),
    );

    add(
      AwsCognitoIdentityPool(
        localName: 'cognito_identity_pool',
        identityPoolName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCognitoIdentityPoolProviderPrincipalTag(
        localName: 'cognito_identity_pool_provider_principal_tag',
        identityPoolId:
            TfArg.literal('us-east-1:12345678-1234-1234-1234-123456789012'),
        identityProviderName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCognitoIdentityPoolRolesAttachment(
        localName: 'cognito_identity_pool_roles_attachment',
        identityPoolId: TfArg.literal(leftover),
        roles: TfArg.literal({'k': leftover}),
      ),
    );

    add(
      AwsCognitoIdentityProvider(
        localName: 'cognito_identity_provider',
        providerDetails: TfArg.literal({'k': leftover}),
        providerName: TfArg.literal(leftover),
        providerType: TfArg.literal('SAML'),
        userPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCognitoLogDeliveryConfiguration(
        localName: 'cognito_log_delivery_configuration',
        userPoolId: TfArg.literal(leftover),
        logConfigurations: [
          CognitoLogDeliveryConfigurationLogConfigurations(
            eventSource: TfArg.literal('userNotification'),
            logLevel: TfArg.literal('ERROR'),
          ),
        ],
      ),
    );

    add(
      AwsCognitoManagedLoginBranding(
        localName: 'cognito_managed_login_branding',
        clientId: TfArg.literal(leftover),
        userPoolId: TfArg.literal(leftover),
        settings: TfArg.literal(policy),
      ),
    );

    add(
      AwsCognitoManagedUserPoolClient(
        localName: 'cognito_managed_user_pool_client',
        userPoolId: TfArg.literal(leftover),
        namePrefix: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCognitoResourceServer(
        localName: 'cognito_resource_server',
        identifier: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        userPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCognitoRiskConfiguration(
        localName: 'cognito_risk_configuration',
        userPoolId: TfArg.literal('us-east-1_leftover'),
        accountTakeoverRiskConfiguration:
            CognitoRiskConfigurationAccountTakeoverRiskConfiguration(
          actions:
              CognitoRiskConfigurationAccountTakeoverRiskConfigurationActions(
            highAction:
                CognitoRiskConfigurationAccountTakeoverRiskConfigurationActionsHighAction(
              eventAction: TfArg.literal('BLOCK'),
              notify: TfArg.literal(true),
            ),
          ),
        ),
        compromisedCredentialsRiskConfiguration:
            CognitoRiskConfigurationCompromisedCredentialsRiskConfiguration(
          actions:
              CognitoRiskConfigurationCompromisedCredentialsRiskConfigurationActions(
            eventAction: TfArg.literal('BLOCK'),
          ),
        ),
      ),
    );

    add(
      AwsCognitoUser(
        localName: 'cognito_user',
        userPoolId: TfArg.literal(leftover),
        username: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCognitoUserGroup(
        localName: 'cognito_user_group',
        name: TfArg.literal(leftover),
        userPoolId: TfArg.literal('us-east-1_leftover'),
      ),
    );

    add(
      AwsCognitoUserInGroup(
        localName: 'cognito_user_in_group',
        groupName: TfArg.literal(leftover),
        userPoolId: TfArg.literal('us-east-1_leftover'),
        username: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCognitoUserPool(
        localName: 'cognito_user_pool',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCognitoUserPoolClient(
        localName: 'cognito_user_pool_client',
        name: TfArg.literal(leftover),
        userPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCognitoUserPoolDomain(
        localName: 'cognito_user_pool_domain',
        domain: TfArg.literal(leftover),
        userPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCognitoUserPoolUiCustomization(
        localName: 'cognito_user_pool_ui_customization',
        userPoolId: TfArg.literal(leftover),
        css: TfArg.literal(leftover),
        imageFile: TfArg.literal(leftover),
      ),
    );

    add(
      AwsComprehendDocumentClassifier(
        localName: 'comprehend_document_classifier',
        dataAccessRoleArn: TfArg.literal(arn),
        languageCode: TfArg.literal('en'),
        name: TfArg.literal(leftover),
        inputDataConfig: ComprehendDocumentClassifierInputDataConfig(
          augmentedManifests: [
            ComprehendDocumentClassifierInputDataConfigAugmentedManifests(
              attributeNames: TfArg.literal([leftover]),
              s3Uri: TfArg.literal('https://example.com'),
            ),
          ],
        ),
      ),
    );

    add(
      AwsComprehendEntityRecognizer(
        localName: 'comprehend_entity_recognizer',
        dataAccessRoleArn: TfArg.literal(arn),
        languageCode: TfArg.literal('en'),
        name: TfArg.literal(leftover),
        inputDataConfig: ComprehendEntityRecognizerInputDataConfig(
          entityTypes: [
            ComprehendEntityRecognizerInputDataConfigEntityTypes(
              type: TfArg.literal(leftover),
            ),
          ],
          annotations: ComprehendEntityRecognizerInputDataConfigAnnotations(
            s3Uri: TfArg.literal('https://example.com'),
          ),
          augmentedManifests: [
            ComprehendEntityRecognizerInputDataConfigAugmentedManifests(
              attributeNames: TfArg.literal([leftover]),
              s3Uri: TfArg.literal('https://example.com'),
            ),
          ],
        ),
      ),
    );

    add(
      AwsComputeoptimizerEnrollmentStatus(
        localName: 'computeoptimizer_enrollment_status',
        status: TfArg.literal('Active'),
      ),
    );

    add(
      AwsComputeoptimizerRecommendationPreferences(
        localName: 'computeoptimizer_recommendation_preferences',
        resourceType: TfArg.literal('AutoScalingGroup'),
        enhancedInfrastructureMetrics: TfArg.literal('Active'),
        scope: [
          ComputeoptimizerRecommendationPreferencesScope(
            name: TfArg.literal('Organization'),
            value: TfArg.literal(leftover),
          ),
        ],
        externalMetricsPreference: [
          ComputeoptimizerRecommendationPreferencesExternalMetricsPreference(
            source: TfArg.literal('Datadog'),
          ),
        ],
      ),
    );

    add(
      AwsConfigAggregateAuthorization(
        localName: 'config_aggregate_authorization',
        accountId: TfArg.literal('123456789012'),
        authorizedAwsRegion: TfArg.literal('us-east-1'),
      ),
    );

    add(
      AwsConfigConfigRule(
        localName: 'config_config_rule',
        name: TfArg.literal(leftover),
        source: ConfigConfigRuleSource(
          owner: TfArg.literal('CUSTOM_LAMBDA'),
        ),
      ),
    );

    add(
      AwsConfigConfigurationAggregator(
        localName: 'config_configuration_aggregator',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConfigConfigurationRecorder(
        localName: 'config_configuration_recorder',
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsConfigConfigurationRecorderStatus(
        localName: 'config_configuration_recorder_status',
        isEnabled: TfArg.literal(true),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConfigConformancePack(
        localName: 'config_conformance_pack',
        name: TfArg.literal(leftover),
        templateBody: TfArg.literal(leftover),
        templateS3Uri: TfArg.literal('s3://leftover-bucket/leftover'),
      ),
    );

    add(
      AwsConfigDeliveryChannel(
        localName: 'config_delivery_channel',
        s3BucketName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConfigOrganizationConformancePack(
        localName: 'config_organization_conformance_pack',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConfigOrganizationCustomPolicyRule(
        localName: 'config_organization_custom_policy_rule',
        name: TfArg.literal(leftover),
        policyRuntime: TfArg.literal(leftover),
        policyText: TfArg.literal(leftover),
        triggerTypes: TfArg.literal(['ConfigurationItemChangeNotification']),
      ),
    );

    add(
      AwsConfigOrganizationCustomRule(
        localName: 'config_organization_custom_rule',
        lambdaFunctionArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        triggerTypes: TfArg.literal(['ConfigurationItemChangeNotification']),
      ),
    );

    add(
      AwsConfigOrganizationManagedRule(
        localName: 'config_organization_managed_rule',
        name: TfArg.literal(leftover),
        ruleIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConfigRemediationConfiguration(
        localName: 'config_remediation_configuration',
        configRuleName: TfArg.literal(leftover),
        targetId: TfArg.literal(leftover),
        targetType: TfArg.literal('SSM_DOCUMENT'),
      ),
    );

    add(
      AwsConfigRetentionConfiguration(
        localName: 'config_retention_configuration',
        retentionPeriodInDays: TfArg.literal(200),
      ),
    );

    add(
      AwsConnectBotAssociation(
        localName: 'connect_bot_association',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        lexBot: ConnectBotAssociationLexBot(
          name: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsConnectContactFlow(
        localName: 'connect_contact_flow',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConnectContactFlowModule(
        localName: 'connect_contact_flow_module',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConnectHoursOfOperation(
        localName: 'connect_hours_of_operation',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
        timeZone: TfArg.literal(leftover),
        config: [
          ConnectHoursOfOperationConfig(
            day: TfArg.literal('SUNDAY'),
            endTime: ConnectHoursOfOperationConfigEndTime(
              hours: TfArg.literal(200),
              minutes: TfArg.literal(200),
            ),
            startTime: ConnectHoursOfOperationConfigStartTime(
              hours: TfArg.literal(200),
              minutes: TfArg.literal(200),
            ),
          ),
        ],
      ),
    );

    add(
      AwsConnectInstance(
        localName: 'connect_instance',
        identityManagementType: TfArg.literal('SAML'),
        inboundCallsEnabled: TfArg.literal(true),
        outboundCallsEnabled: TfArg.literal(true),
        directoryId: TfArg.literal('d-1234567890'),
        instanceAlias: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConnectInstanceStorageConfig(
        localName: 'connect_instance_storage_config',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        resourceType: TfArg.literal('CHAT_TRANSCRIPTS'),
        storageConfig: ConnectInstanceStorageConfigStorageConfig(
          storageType: TfArg.literal('S3'),
        ),
      ),
    );

    add(
      AwsConnectLambdaFunctionAssociation(
        localName: 'connect_lambda_function_association',
        functionArn: TfArg.literal(arn),
        instanceId: TfArg.literal('i-0123456789abcdef0'),
      ),
    );

    add(
      AwsConnectPhoneNumber(
        localName: 'connect_phone_number',
        countryCode: TfArg.literal('AF'),
        targetArn: TfArg.literal(arn),
        type: TfArg.literal('TOLL_FREE'),
      ),
    );

    add(
      AwsConnectPhoneNumberContactFlowAssociation(
        localName: 'connect_phone_number_contact_flow_association',
        contactFlowId: TfArg.literal(leftover),
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        phoneNumberId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConnectQueue(
        localName: 'connect_queue',
        hoursOfOperationId: TfArg.literal(leftover),
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConnectQuickConnect(
        localName: 'connect_quick_connect',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
        quickConnectConfig: ConnectQuickConnectQuickConnectConfig(
          quickConnectType: TfArg.literal('USER'),
        ),
      ),
    );

    add(
      AwsConnectRoutingProfile(
        localName: 'connect_routing_profile',
        defaultOutboundQueueId: TfArg.literal(leftover),
        description: TfArg.literal(leftover),
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
        mediaConcurrencies: [
          ConnectRoutingProfileMediaConcurrencies(
            channel: TfArg.literal('VOICE'),
            concurrency: TfArg.literal(1),
          ),
        ],
      ),
    );

    add(
      AwsConnectSecurityProfile(
        localName: 'connect_security_profile',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConnectUser(
        localName: 'connect_user',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
        routingProfileId: TfArg.literal(leftover),
        securityProfileIds: TfArg.literal([leftover]),
        phoneConfig: ConnectUserPhoneConfig(
          phoneType: TfArg.literal('SOFT_PHONE'),
        ),
      ),
    );

    add(
      AwsConnectUserHierarchyGroup(
        localName: 'connect_user_hierarchy_group',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsConnectUserHierarchyStructure(
        localName: 'connect_user_hierarchy_structure',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        hierarchyStructure: ConnectUserHierarchyStructureHierarchyStructure(
          levelFive: ConnectUserHierarchyStructureHierarchyStructureLevelFive(
            name: TfArg.literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsConnectVocabulary(
        localName: 'connect_vocabulary',
        content: TfArg.literal(leftover),
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        languageCode: TfArg.literal('ar-AE'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsControltowerBaseline(
        localName: 'controltower_baseline',
        baselineIdentifier: TfArg.literal(leftover),
        baselineVersion: TfArg.literal(leftover),
        targetIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsControltowerControl(
        localName: 'controltower_control',
        controlIdentifier: TfArg.literal(arn),
        targetIdentifier: TfArg.literal(arn),
      ),
    );

    add(
      AwsControltowerLandingZone(
        localName: 'controltower_landing_zone',
        manifestJson: TfArg.literal(policy),
        version: TfArg.literal(leftover),
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
        additionalSchemaElements: TfArg.literal(['RESOURCES']),
        compression: TfArg.literal('ZIP'),
        format: TfArg.literal('textORcsv'),
        reportName: TfArg.literal(leftover),
        s3Bucket: TfArg.literal(leftover),
        s3Prefix: TfArg.literal(leftover),
        s3Region: TfArg.literal('us-east-1'),
        timeUnit: TfArg.literal('HOURLY'),
      ),
    );

    add(
      AwsCustomerGateway(
        localName: 'customer_gateway',
        type: TfArg.literal('ipsec.1'),
      ),
    );

    add(
      AwsCustomerprofilesDomain(
        localName: 'customerprofiles_domain',
        defaultExpirationDays: TfArg.literal(200),
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsCustomerprofilesProfile(
        localName: 'customerprofiles_profile',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDataexchangeDataSet(
        localName: 'dataexchange_data_set',
        assetType: TfArg.literal('S3_SNAPSHOT'),
        description: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDataexchangeEventAction(
        localName: 'dataexchange_event_action',
        action: [
          DataexchangeEventActionAction(
            exportRevisionToS3: [
              DataexchangeEventActionActionExportRevisionToS3(
                revisionDestination: [
                  DataexchangeEventActionActionExportRevisionToS3RevisionDestination(
                    bucket: TfArg.literal(leftover),
                  ),
                ],
              ),
            ],
          ),
        ],
        event: [
          DataexchangeEventActionEvent(
            revisionPublished: [
              DataexchangeEventActionEventRevisionPublished(
                dataSetId: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsDataexchangeRevision(
        localName: 'dataexchange_revision',
        dataSetId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDataexchangeRevisionAssets(
        localName: 'dataexchange_revision_assets',
        dataSetId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatapipelinePipeline(
        localName: 'datapipeline_pipeline',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatapipelinePipelineDefinition(
        localName: 'datapipeline_pipeline_definition',
        pipelineId: TfArg.literal(leftover),
        pipelineObject: [
          DatapipelinePipelineDefinitionPipelineObject(
            id: TfArg.literal(leftover),
            name: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsDatasyncAgent(
        localName: 'datasync_agent',
      ),
    );

    add(
      AwsDatasyncLocationAzureBlob(
        localName: 'datasync_location_azure_blob',
        agentArns: TfArg.literal([arn]),
        authenticationType: TfArg.literal('SAS'),
        containerUrl: TfArg.literal('https://example.com'),
      ),
    );

    add(
      AwsDatasyncLocationEfs(
        localName: 'datasync_location_efs',
        efsFileSystemArn: TfArg.literal(arn),
        ec2Config: DatasyncLocationEfsEc2Config(
          securityGroupArns: TfArg.literal([arn]),
          subnetArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsDatasyncLocationFsxLustreFileSystem(
        localName: 'datasync_location_fsx_lustre_file_system',
        fsxFilesystemArn: TfArg.literal(arn),
        securityGroupArns: TfArg.literal([arn]),
      ),
    );

    add(
      AwsDatasyncLocationFsxOntapFileSystem(
        localName: 'datasync_location_fsx_ontap_file_system',
        securityGroupArns: TfArg.literal([arn]),
        storageVirtualMachineArn: TfArg.literal(arn),
        protocol: DatasyncLocationFsxOntapFileSystemProtocol(
          nfs: DatasyncLocationFsxOntapFileSystemProtocolNfs(
            mountOptions:
                DatasyncLocationFsxOntapFileSystemProtocolNfsMountOptions(
              version: TfArg.literal('NFS3'),
            ),
          ),
        ),
      ),
    );

    add(
      AwsDatasyncLocationFsxOpenzfsFileSystem(
        localName: 'datasync_location_fsx_openzfs_file_system',
        fsxFilesystemArn: TfArg.literal(arn),
        securityGroupArns: TfArg.literal([arn]),
        protocol: DatasyncLocationFsxOpenzfsFileSystemProtocol(
          nfs: DatasyncLocationFsxOpenzfsFileSystemProtocolNfs(
            mountOptions:
                DatasyncLocationFsxOpenzfsFileSystemProtocolNfsMountOptions(
              version: TfArg.literal('AUTOMATIC'),
            ),
          ),
        ),
      ),
    );

    add(
      AwsDatasyncLocationFsxWindowsFileSystem(
        localName: 'datasync_location_fsx_windows_file_system',
        fsxFilesystemArn: TfArg.literal(arn),
        password: TfArg.variable('leftover_secret'),
        securityGroupArns: TfArg.literal([arn]),
        user: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatasyncLocationHdfs(
        localName: 'datasync_location_hdfs',
        agentArns: TfArg.literal([arn]),
        nameNode: [
          DatasyncLocationHdfsNameNode(
            hostname: TfArg.literal(leftover),
            port: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsDatasyncLocationNfs(
        localName: 'datasync_location_nfs',
        serverHostname: TfArg.literal(leftover),
        subdirectory: TfArg.literal(leftover),
        onPremConfig: DatasyncLocationNfsOnPremConfig(
          agentArns: TfArg.literal([arn]),
        ),
      ),
    );

    add(
      AwsDatasyncLocationObjectStorage(
        localName: 'datasync_location_object_storage',
        bucketName: TfArg.literal(leftover),
        serverHostname: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatasyncLocationS3(
        localName: 'datasync_location_s3',
        s3BucketArn: TfArg.literal(arn),
        subdirectory: TfArg.literal(leftover),
        s3Config: DatasyncLocationS3S3Config(
          bucketAccessRoleArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsDatasyncLocationSmb(
        localName: 'datasync_location_smb',
        agentArns: TfArg.literal([arn]),
        password: TfArg.variable('leftover_secret'),
        serverHostname: TfArg.literal(leftover),
        subdirectory: TfArg.literal(leftover),
        user: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatasyncTask(
        localName: 'datasync_task',
        destinationLocationArn: TfArg.literal(arn),
        sourceLocationArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDatazoneAssetType(
        localName: 'datazone_asset_type',
        domainIdentifier: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        owningProjectIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatazoneDomain(
        localName: 'datazone_domain',
        domainExecutionRole: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatazoneEnvironment(
        localName: 'datazone_environment',
        domainIdentifier: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        profileIdentifier: TfArg.literal(leftover),
        projectIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatazoneEnvironmentBlueprintConfiguration(
        localName: 'datazone_environment_blueprint_configuration',
        domainId: TfArg.literal(leftover),
        enabledRegions: TfArg.literal([leftover]),
        environmentBlueprintId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatazoneEnvironmentProfile(
        localName: 'datazone_environment_profile',
        awsAccountRegion: TfArg.literal('us-east-1'),
        domainIdentifier: TfArg.literal(leftover),
        environmentBlueprintIdentifier: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        projectIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatazoneFormType(
        localName: 'datazone_form_type',
        domainIdentifier: TfArg.literal('dzd-xRc'),
        name: TfArg.literal(leftover),
        owningProjectIdentifier: TfArg.literal(leftover),
        model: [
          DatazoneFormTypeModel(
            smithy: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsDatazoneGlossary(
        localName: 'datazone_glossary',
        domainIdentifier: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        owningProjectIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatazoneGlossaryTerm(
        localName: 'datazone_glossary_term',
        glossaryIdentifier: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatazonePolicyGrant(
        localName: 'datazone_policy_grant',
        domainIdentifier: TfArg.literal(leftover),
        entityIdentifier: TfArg.literal(leftover),
        entityType: TfArg.literal('DOMAIN_UNIT'),
        policyType: TfArg.literal('CREATE_DOMAIN_UNIT'),
        detail: [
          DatazonePolicyGrantDetail(
            addToProjectMemberPool: [
              DatazonePolicyGrantDetailAddToProjectMemberPool(
                includeChildDomainUnits: TfArg.literal(true),
              ),
            ],
          ),
        ],
        principal: [
          DatazonePolicyGrantPrincipal(
            domainUnit: [
              DatazonePolicyGrantPrincipalDomainUnit(
                domainUnitDesignation: TfArg.literal('OWNER'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsDatazoneProject(
        localName: 'datazone_project',
        domainIdentifier: TfArg.literal('dzd-xRc'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDatazoneUserProfile(
        localName: 'datazone_user_profile',
        domainIdentifier: TfArg.literal(leftover),
        userIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDaxCluster(
        localName: 'dax_cluster',
        clusterName: TfArg.literal(leftover),
        iamRoleArn: TfArg.literal(arn),
        nodeType: TfArg.literal(leftover),
        replicationFactor: TfArg.literal(200),
      ),
    );

    add(
      AwsDaxParameterGroup(
        localName: 'dax_parameter_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDaxSubnetGroup(
        localName: 'dax_subnet_group',
        name: TfArg.literal(leftover),
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsDbClusterSnapshot(
        localName: 'db_cluster_snapshot',
        dbClusterIdentifier: TfArg.literal(leftover),
        dbClusterSnapshotIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDbEventSubscription(
        localName: 'db_event_subscription',
        snsTopic: TfArg.literal(arn),
      ),
    );

    add(
      AwsDbInstance(
        localName: 'db_instance',
        instanceClass: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDbInstanceAutomatedBackupsReplication(
        localName: 'db_instance_automated_backups_replication',
        sourceDbInstanceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDbInstanceRoleAssociation(
        localName: 'db_instance_role_association',
        dbInstanceIdentifier: TfArg.literal(leftover),
        featureName: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDbOptionGroup(
        localName: 'db_option_group',
        engineName: TfArg.literal(leftover),
        majorEngineVersion: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDbParameterGroup(
        localName: 'db_parameter_group',
        family: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDbProxy(
        localName: 'db_proxy',
        engineFamily: TfArg.literal('MYSQL'),
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        vpcSubnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsDbProxyDefaultTargetGroup(
        localName: 'db_proxy_default_target_group',
        dbProxyName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDbProxyEndpoint(
        localName: 'db_proxy_endpoint',
        dbProxyEndpointName: TfArg.literal(leftover),
        dbProxyName: TfArg.literal(leftover),
        vpcSubnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsDbProxyTarget(
        localName: 'db_proxy_target',
        dbProxyName: TfArg.literal(leftover),
        targetGroupName: TfArg.literal(leftover),
        dbClusterIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDbSnapshot(
        localName: 'db_snapshot',
        dbInstanceIdentifier: TfArg.literal(leftover),
        dbSnapshotIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDbSnapshotCopy(
        localName: 'db_snapshot_copy',
        sourceDbSnapshotIdentifier: TfArg.literal(leftover),
        targetDbSnapshotIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDbSubnetGroup(
        localName: 'db_subnet_group',
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsDefaultNetworkAcl(
        localName: 'default_network_acl',
        defaultNetworkAclId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDefaultRouteTable(
        localName: 'default_route_table',
        defaultRouteTableId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDefaultSecurityGroup(
        localName: 'default_security_group',
      ),
    );

    add(
      AwsDefaultSubnet(
        localName: 'default_subnet',
        availabilityZone: TfArg.literal('us-east-1a'),
      ),
    );

    add(
      AwsDefaultVpc(
        localName: 'default_vpc',
      ),
    );

    add(
      AwsDefaultVpcDhcpOptions(
        localName: 'default_vpc_dhcp_options',
      ),
    );

    add(
      AwsDetectiveGraph(
        localName: 'detective_graph',
      ),
    );

    add(
      AwsDetectiveInvitationAccepter(
        localName: 'detective_invitation_accepter',
        graphArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDetectiveMember(
        localName: 'detective_member',
        accountId: TfArg.literal('123456789012'),
        emailAddress: TfArg.literal('leftover@example.com'),
        graphArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDetectiveOrganizationAdminAccount(
        localName: 'detective_organization_admin_account',
        accountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsDetectiveOrganizationConfiguration(
        localName: 'detective_organization_configuration',
        autoEnable: TfArg.literal(true),
        graphArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDevicefarmDevicePool(
        localName: 'devicefarm_device_pool',
        name: TfArg.literal(leftover),
        projectArn: TfArg.literal(arn),
        rule: [
          DevicefarmDevicePoolRule(
            attribute: TfArg.literal('ARN'),
          ),
        ],
      ),
    );

    add(
      AwsDevicefarmInstanceProfile(
        localName: 'devicefarm_instance_profile',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDevicefarmNetworkProfile(
        localName: 'devicefarm_network_profile',
        name: TfArg.literal(leftover),
        projectArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDevicefarmProject(
        localName: 'devicefarm_project',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDevicefarmTestGridProject(
        localName: 'devicefarm_test_grid_project',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDevicefarmUpload(
        localName: 'devicefarm_upload',
        name: TfArg.literal(leftover),
        projectArn: TfArg.literal(arn),
        type: TfArg.literal('ANDROID_APP'),
      ),
    );

    add(
      AwsDevopsguruEventSourcesConfig(
        localName: 'devopsguru_event_sources_config',
        eventSources: [
          DevopsguruEventSourcesConfigEventSources(
            amazonCodeGuruProfiler: [
              DevopsguruEventSourcesConfigEventSourcesAmazonCodeGuruProfiler(
                status: TfArg.literal('ENABLED'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsDevopsguruNotificationChannel(
        localName: 'devopsguru_notification_channel',
        sns: [
          DevopsguruNotificationChannelSns(
            topicArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsDevopsguruResourceCollection(
        localName: 'devopsguru_resource_collection',
        type: TfArg.literal('AWS_CLOUD_FORMATION'),
      ),
    );

    add(
      AwsDevopsguruServiceIntegration(
        localName: 'devopsguru_service_integration',
        kmsServerSideEncryption: [
          DevopsguruServiceIntegrationKmsServerSideEncryption(
            kmsKeyId: TfArg.literal(leftover),
          ),
        ],
        logsAnomalyDetection: [
          DevopsguruServiceIntegrationLogsAnomalyDetection(
            optInStatus: TfArg.literal('ENABLED'),
          ),
        ],
        opsCenter: [
          DevopsguruServiceIntegrationOpsCenter(
            optInStatus: TfArg.literal('ENABLED'),
          ),
        ],
      ),
    );

    add(
      AwsDirectoryServiceConditionalForwarder(
        localName: 'directory_service_conditional_forwarder',
        directoryId: TfArg.literal(leftover),
        dnsIps: TfArg.literal([leftover]),
        remoteDomainName: TfArg.literal('example.com'),
      ),
    );

    add(
      AwsDirectoryServiceDirectory(
        localName: 'directory_service_directory',
        name: TfArg.literal('example.com'),
        password: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsDirectoryServiceLogSubscription(
        localName: 'directory_service_log_subscription',
        directoryId: TfArg.literal(leftover),
        logGroupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDirectoryServiceRadiusSettings(
        localName: 'directory_service_radius_settings',
        authenticationProtocol: TfArg.literal('PAP'),
        directoryId: TfArg.literal(leftover),
        displayLabel: TfArg.literal(leftover),
        radiusPort: TfArg.literal(200),
        radiusRetries: TfArg.literal(0),
        radiusServers: TfArg.literal([leftover]),
        radiusTimeout: TfArg.literal(1),
        sharedSecret: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsDirectoryServiceRegion(
        localName: 'directory_service_region',
        directoryId: TfArg.literal(leftover),
        regionName: TfArg.literal('us-east-1'),
        vpcSettings: DirectoryServiceRegionVpcSettings(
          subnetIds: TfArg.literal([leftover]),
          vpcId: TfArg.literal('vpc-0123456789abcdef0'),
        ),
      ),
    );

    add(
      AwsDirectoryServiceSharedDirectory(
        localName: 'directory_service_shared_directory',
        directoryId: TfArg.literal(leftover),
        target: DirectoryServiceSharedDirectoryTarget(
          id: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsDirectoryServiceSharedDirectoryAccepter(
        localName: 'directory_service_shared_directory_accepter',
        sharedDirectoryId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDirectoryServiceTrust(
        localName: 'directory_service_trust',
        directoryId: TfArg.literal('d-1234567890'),
        remoteDomainName: TfArg.literal('example.com'),
        trustDirection: TfArg.literal('Two-Way'),
        trustPassword: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDlmLifecyclePolicy(
        localName: 'dlm_lifecycle_policy',
        description: TfArg.literal(leftover),
        executionRoleArn: TfArg.literal(arn),
        policyDetails: DlmLifecyclePolicyPolicyDetails(
          copyTags: TfArg.literal(true),
        ),
        defaultPolicy: TfArg.literal('VOLUME'),
      ),
    );

    add(
      AwsDmsCertificate(
        localName: 'dms_certificate',
        certificateId: TfArg.literal(leftover),
        certificatePem: TfArg.variable('leftover_secret'),
        certificateWallet: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsDmsDataProvider(
        localName: 'dms_data_provider',
        engine: TfArg.literal('aurora'),
        settings: [
          DmsDataProviderSettings(
            docDbSettings: [
              DmsDataProviderSettingsDocDbSettings(
                certificateArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsDmsEndpoint(
        localName: 'dms_endpoint',
        endpointId: TfArg.literal(leftover),
        endpointType: TfArg.literal('source'),
        engineName: TfArg.literal('aurora'),
      ),
    );

    add(
      AwsDmsEventSubscription(
        localName: 'dms_event_subscription',
        eventCategories: TfArg.literal([leftover]),
        name: TfArg.literal(leftover),
        snsTopicArn: TfArg.literal(arn),
        sourceType: TfArg.literal('replication-instance'),
      ),
    );

    add(
      AwsDmsInstanceProfile(
        localName: 'dms_instance_profile',
      ),
    );

    add(
      AwsDmsMigrationProject(
        localName: 'dms_migration_project',
        instanceProfileArn: TfArg.literal(arn),
        sourceDataProviderDescriptor: [
          DmsMigrationProjectSourceDataProviderDescriptor(
            dataProviderArn: TfArg.literal(arn),
          ),
        ],
        targetDataProviderDescriptor: [
          DmsMigrationProjectTargetDataProviderDescriptor(
            dataProviderArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsDmsReplicationConfig(
        localName: 'dms_replication_config',
        replicationConfigIdentifier: TfArg.literal(leftover),
        replicationType: TfArg.literal('full-load'),
        sourceEndpointArn: TfArg.literal(arn),
        tableMappings: TfArg.literal(policy),
        targetEndpointArn: TfArg.literal(arn),
        computeConfig: DmsReplicationConfigComputeConfig(
          replicationSubnetGroupId: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsDmsReplicationInstance(
        localName: 'dms_replication_instance',
        replicationInstanceClass: TfArg.literal(leftover),
        replicationInstanceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDmsReplicationSubnetGroup(
        localName: 'dms_replication_subnet_group',
        replicationSubnetGroupDescription: TfArg.literal(leftover),
        replicationSubnetGroupId: TfArg.literal(leftover),
        subnetIds: TfArg.literal([
          leftover,
          'leftover1',
        ]),
      ),
    );

    add(
      AwsDmsReplicationTask(
        localName: 'dms_replication_task',
        migrationType: TfArg.literal('full-load'),
        replicationInstanceArn: TfArg.literal(arn),
        replicationTaskId: TfArg.literal(leftover),
        sourceEndpointArn: TfArg.literal(arn),
        tableMappings: TfArg.literal(policy),
        targetEndpointArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDmsS3Endpoint(
        localName: 'dms_s3_endpoint',
        bucketName: TfArg.literal(leftover),
        endpointId: TfArg.literal(leftover),
        endpointType: TfArg.literal('source'),
        serviceAccessRoleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDocdbCluster(
        localName: 'docdb_cluster',
      ),
    );

    add(
      AwsDocdbClusterInstance(
        localName: 'docdb_cluster_instance',
        clusterIdentifier: TfArg.literal(leftover),
        instanceClass: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDocdbClusterParameterGroup(
        localName: 'docdb_cluster_parameter_group',
        family: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDocdbClusterSnapshot(
        localName: 'docdb_cluster_snapshot',
        dbClusterIdentifier: TfArg.literal(leftover),
        dbClusterSnapshotIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDocdbEventSubscription(
        localName: 'docdb_event_subscription',
        snsTopicArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDocdbGlobalCluster(
        localName: 'docdb_global_cluster',
        globalClusterIdentifier: TfArg.literal(leftover),
        engine: TfArg.literal('docdb'),
      ),
    );

    add(
      AwsDocdbSubnetGroup(
        localName: 'docdb_subnet_group',
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsDocdbelasticCluster(
        localName: 'docdbelastic_cluster',
        adminUserName: TfArg.literal(leftover),
        adminUserPassword: TfArg.variable('leftover_secret'),
        authType: TfArg.literal('PLAIN_TEXT'),
        name: TfArg.literal(leftover),
        shardCapacity: TfArg.literal(200),
        shardCount: TfArg.literal(1),
      ),
    );

    add(
      AwsDrsReplicationConfigurationTemplate(
        localName: 'drs_replication_configuration_template',
        associateDefaultSecurityGroup: TfArg.literal(true),
        bandwidthThrottling: TfArg.literal(200),
        createPublicIp: TfArg.literal(true),
        dataPlaneRouting: TfArg.literal('PRIVATE_IP'),
        defaultLargeStagingDiskType: TfArg.literal('GP2'),
        ebsEncryption: TfArg.literal('DEFAULT'),
        replicationServerInstanceType: TfArg.literal(leftover),
        replicationServersSecurityGroupsIds: TfArg.literal([leftover]),
        stagingAreaSubnetId: TfArg.literal(leftover),
        stagingAreaTags: TfArg.literal({'k': leftover}),
        useDedicatedReplicationServer: TfArg.literal(true),
      ),
    );

    add(
      AwsDsqlCluster(
        localName: 'dsql_cluster',
      ),
    );

    add(
      AwsDsqlClusterPeering(
        localName: 'dsql_cluster_peering',
        clusters: TfArg.literal([leftover]),
        identifier: TfArg.literal(leftover),
        witnessRegion: TfArg.literal('us-east-1'),
      ),
    );

    add(
      AwsDsqlClusterPolicy(
        localName: 'dsql_cluster_policy',
        identifier: TfArg.literal('abcdefghijklmnopqrstuvwxyz'),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsDxBgpPeer(
        localName: 'dx_bgp_peer',
        addressFamily: TfArg.literal('ipv4'),
        virtualInterfaceId: TfArg.literal(leftover),
        bgpAsn: TfArg.literal(200),
      ),
    );

    add(
      AwsDxConnection(
        localName: 'dx_connection',
        bandwidth: TfArg.literal('1Gbps'),
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDxConnectionAssociation(
        localName: 'dx_connection_association',
        connectionId: TfArg.literal(leftover),
        lagId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDxConnectionConfirmation(
        localName: 'dx_connection_confirmation',
        connectionId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDxGateway(
        localName: 'dx_gateway',
        amazonSideAsn: TfArg.literal('64512'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDxGatewayAssociation(
        localName: 'dx_gateway_association',
        dxGatewayId: TfArg.literal(leftover),
        associatedGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDxGatewayAssociationProposal(
        localName: 'dx_gateway_association_proposal',
        associatedGatewayId: TfArg.literal(leftover),
        dxGatewayId: TfArg.literal(leftover),
        dxGatewayOwnerAccountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsDxHostedConnection(
        localName: 'dx_hosted_connection',
        bandwidth: TfArg.literal('1Gbps'),
        connectionId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        ownerAccountId: TfArg.literal('123456789012'),
        vlan: TfArg.literal(200),
      ),
    );

    add(
      AwsDxHostedPrivateVirtualInterface(
        localName: 'dx_hosted_private_virtual_interface',
        addressFamily: TfArg.literal('ipv4'),
        connectionId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        ownerAccountId: TfArg.literal('123456789012'),
        vlan: TfArg.literal(200),
        bgpAsn: TfArg.literal(200),
      ),
    );

    add(
      AwsDxHostedPrivateVirtualInterfaceAccepter(
        localName: 'dx_hosted_private_virtual_interface_accepter',
        virtualInterfaceId: TfArg.literal(leftover),
        dxGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDxHostedPublicVirtualInterface(
        localName: 'dx_hosted_public_virtual_interface',
        addressFamily: TfArg.literal('ipv4'),
        connectionId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        ownerAccountId: TfArg.literal('123456789012'),
        routeFilterPrefixes: TfArg.literal([leftover]),
        vlan: TfArg.literal(200),
        bgpAsn: TfArg.literal(200),
      ),
    );

    add(
      AwsDxHostedPublicVirtualInterfaceAccepter(
        localName: 'dx_hosted_public_virtual_interface_accepter',
        virtualInterfaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDxHostedTransitVirtualInterface(
        localName: 'dx_hosted_transit_virtual_interface',
        addressFamily: TfArg.literal('ipv4'),
        connectionId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        ownerAccountId: TfArg.literal('123456789012'),
        vlan: TfArg.literal(200),
        bgpAsn: TfArg.literal(200),
      ),
    );

    add(
      AwsDxHostedTransitVirtualInterfaceAccepter(
        localName: 'dx_hosted_transit_virtual_interface_accepter',
        dxGatewayId: TfArg.literal(leftover),
        virtualInterfaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDxLag(
        localName: 'dx_lag',
        connectionsBandwidth: TfArg.literal('1Gbps'),
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDxMacsecKeyAssociation(
        localName: 'dx_macsec_key_association',
        connectionId: TfArg.literal(leftover),
        ckn: TfArg.literal(
          '0000000000000000000000000000000000000000000000000000000000000000',
        ),
        secretArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDxPrivateVirtualInterface(
        localName: 'dx_private_virtual_interface',
        addressFamily: TfArg.literal('ipv4'),
        connectionId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        vlan: TfArg.literal(200),
        bgpAsn: TfArg.literal(200),
        dxGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDxPublicVirtualInterface(
        localName: 'dx_public_virtual_interface',
        addressFamily: TfArg.literal('ipv4'),
        bgpAsn: TfArg.literal(200),
        connectionId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        routeFilterPrefixes: TfArg.literal([leftover]),
        vlan: TfArg.literal(200),
      ),
    );

    add(
      AwsDxTransitVirtualInterface(
        localName: 'dx_transit_virtual_interface',
        addressFamily: TfArg.literal('ipv4'),
        connectionId: TfArg.literal(leftover),
        dxGatewayId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        vlan: TfArg.literal(200),
        bgpAsn: TfArg.literal(200),
      ),
    );

    add(
      AwsDynamodbContributorInsights(
        localName: 'dynamodb_contributor_insights',
        tableName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDynamodbGlobalSecondaryIndex(
        localName: 'dynamodb_global_secondary_index',
        indexName: TfArg.literal(leftover),
        tableName: TfArg.literal(leftover),
        keySchema: [
          DynamodbGlobalSecondaryIndexKeySchema(
            attributeName: TfArg.literal(leftover),
            attributeType: TfArg.literal('S'),
            keyType: TfArg.literal('HASH'),
          ),
        ],
      ),
    );

    add(
      AwsDynamodbGlobalTable(
        localName: 'dynamodb_global_table',
        name: TfArg.literal(leftover),
        replica: [
          DynamodbGlobalTableReplica(
            regionName: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsDynamodbKinesisStreamingDestination(
        localName: 'dynamodb_kinesis_streaming_destination',
        streamArn: TfArg.literal(arn),
        tableName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDynamodbResourcePolicy(
        localName: 'dynamodb_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDynamodbTable(
        localName: 'dynamodb_table',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDynamodbTableExport(
        localName: 'dynamodb_table_export',
        s3Bucket: TfArg.literal(leftover),
        tableArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDynamodbTableItem(
        localName: 'dynamodb_table_item',
        hashKey: TfArg.literal(leftover),
        item: TfArg.literal('{"pk": {"S": "leftover"}}'),
        tableName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsDynamodbTableReplica(
        localName: 'dynamodb_table_replica',
        globalTableArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsDynamodbTag(
        localName: 'dynamodb_tag',
        key: TfArg.literal(leftover),
        resourceArn: TfArg.literal(arn),
        value: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEbsDefaultKmsKey(
        localName: 'ebs_default_kms_key',
        keyArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsEbsEncryptionByDefault(
        localName: 'ebs_encryption_by_default',
      ),
    );

    add(
      AwsEbsFastSnapshotRestore(
        localName: 'ebs_fast_snapshot_restore',
        availabilityZone: TfArg.literal('us-east-1a'),
        snapshotId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEbsSnapshot(
        localName: 'ebs_snapshot',
        volumeId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEbsSnapshotBlockPublicAccess(
        localName: 'ebs_snapshot_block_public_access',
        state: TfArg.literal('block-all-sharing'),
      ),
    );

    add(
      AwsEbsSnapshotCopy(
        localName: 'ebs_snapshot_copy',
        sourceRegion: TfArg.literal('us-east-1'),
        sourceSnapshotId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEbsSnapshotImport(
        localName: 'ebs_snapshot_import',
        diskContainer: EbsSnapshotImportDiskContainer(
          format: TfArg.literal('VMDK'),
          url: TfArg.literal('https://example.com'),
        ),
      ),
    );

    add(
      AwsEbsVolume(
        localName: 'ebs_volume',
        availabilityZone: TfArg.literal('us-east-1a'),
        size: TfArg.literal(200),
        snapshotId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEbsVolumeCopy(
        localName: 'ebs_volume_copy',
        sourceVolumeId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2AllowedImagesSettings(
        localName: 'ec2_allowed_images_settings',
        state: TfArg.literal('enabled'),
      ),
    );

    add(
      AwsEc2AvailabilityZoneGroup(
        localName: 'ec2_availability_zone_group',
        groupName: TfArg.literal(leftover),
        optInStatus: TfArg.literal('opted-in'),
      ),
    );

    add(
      AwsEc2CapacityBlockReservation(
        localName: 'ec2_capacity_block_reservation',
        capacityBlockOfferingId: TfArg.literal(leftover),
        instancePlatform: TfArg.literal('Linux/UNIX'),
      ),
    );

    add(
      AwsEc2CapacityReservation(
        localName: 'ec2_capacity_reservation',
        availabilityZone: TfArg.literal('us-east-1a'),
        instanceCount: TfArg.literal(200),
        instancePlatform: TfArg.literal('Linux/UNIX'),
        instanceType: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2CarrierGateway(
        localName: 'ec2_carrier_gateway',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2ClientVpnAuthorizationRule(
        localName: 'ec2_client_vpn_authorization_rule',
        clientVpnEndpointId: TfArg.literal(leftover),
        targetNetworkCidr: TfArg.literal('10.0.0.0/16'),
        accessGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2ClientVpnEndpoint(
        localName: 'ec2_client_vpn_endpoint',
        serverCertificateArn: TfArg.literal(arn),
        authenticationOptions: [
          Ec2ClientVpnEndpointAuthenticationOptions(
            type: TfArg.literal('certificate-authentication'),
          ),
        ],
        connectionLogOptions: Ec2ClientVpnEndpointConnectionLogOptions(
          enabled: TfArg.literal(true),
        ),
      ),
    );

    add(
      AwsEc2ClientVpnNetworkAssociation(
        localName: 'ec2_client_vpn_network_association',
        clientVpnEndpointId: TfArg.literal(leftover),
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2ClientVpnRoute(
        localName: 'ec2_client_vpn_route',
        clientVpnEndpointId: TfArg.literal(leftover),
        destinationCidrBlock: TfArg.literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsEc2DefaultCreditSpecification(
        localName: 'ec2_default_credit_specification',
        cpuCredits: TfArg.literal('standard'),
        instanceFamily: TfArg.literal('t2'),
      ),
    );

    add(
      AwsEc2Fleet(
        localName: 'ec2_fleet',
        launchTemplateConfig: [
          Ec2FleetLaunchTemplateConfig(
            launchTemplateSpecification:
                Ec2FleetLaunchTemplateConfigLaunchTemplateSpecification(
              version: TfArg.literal(leftover),
            ),
          ),
        ],
        targetCapacitySpecification: Ec2FleetTargetCapacitySpecification(
          defaultTargetCapacityType: TfArg.literal('spot'),
          totalTargetCapacity: TfArg.literal(200),
        ),
      ),
    );

    add(
      AwsEc2Host(
        localName: 'ec2_host',
        availabilityZone: TfArg.literal('us-east-1a'),
        instanceFamily: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2ImageBlockPublicAccess(
        localName: 'ec2_image_block_public_access',
        state: TfArg.literal('block-new-sharing'),
      ),
    );

    add(
      AwsEc2InstanceConnectEndpoint(
        localName: 'ec2_instance_connect_endpoint',
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2InstanceMetadataDefaults(
        localName: 'ec2_instance_metadata_defaults',
        httpEndpoint: TfArg.literal('disabled'),
        httpPutResponseHopLimit: TfArg.literal(1),
      ),
    );

    add(
      AwsEc2InstanceState(
        localName: 'ec2_instance_state',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        state: TfArg.literal('running'),
      ),
    );

    add(
      AwsEc2LocalGatewayRoute(
        localName: 'ec2_local_gateway_route',
        destinationCidrBlock: TfArg.literal('10.0.0.0/16'),
        localGatewayRouteTableId: TfArg.literal(leftover),
        localGatewayVirtualInterfaceGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2LocalGatewayRouteTable(
        localName: 'ec2_local_gateway_route_table',
        localGatewayId: TfArg.literal(leftover),
        mode: TfArg.literal('direct-vpc-routing'),
      ),
    );

    add(
      AwsEc2LocalGatewayRouteTableVirtualInterfaceGroupAssociation(
        localName: 'ec2_local_gateway_route_table_virtual_interface_',
        localGatewayRouteTableId: TfArg.literal(leftover),
        localGatewayVirtualInterfaceGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2LocalGatewayRouteTableVpcAssociation(
        localName: 'ec2_local_gateway_route_table_vpc_association',
        localGatewayRouteTableId: TfArg.literal(leftover),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2ManagedPrefixList(
        localName: 'ec2_managed_prefix_list',
        addressFamily: TfArg.literal('IPv4'),
        maxEntries: TfArg.literal(200),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2ManagedPrefixListEntry(
        localName: 'ec2_managed_prefix_list_entry',
        cidr: TfArg.literal('10.0.0.0/16'),
        prefixListId: TfArg.literal(leftover),
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
        networkInsightsPathId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2NetworkInsightsPath(
        localName: 'ec2_network_insights_path',
        protocol: TfArg.literal('tcp'),
        source: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2SecondaryNetwork(
        localName: 'ec2_secondary_network',
        ipv4CidrBlock: TfArg.literal('10.0.0.0/16'),
        networkType: TfArg.literal('rdma'),
      ),
    );

    add(
      AwsEc2SecondarySubnet(
        localName: 'ec2_secondary_subnet',
        ipv4CidrBlock: TfArg.literal('10.0.0.0/16'),
        secondaryNetworkId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2SerialConsoleAccess(
        localName: 'ec2_serial_console_access',
      ),
    );

    add(
      AwsEc2SubnetCidrReservation(
        localName: 'ec2_subnet_cidr_reservation',
        cidrBlock: TfArg.literal('10.0.0.0/16'),
        reservationType: TfArg.literal('prefix'),
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2Tag(
        localName: 'ec2_tag',
        key: TfArg.literal(leftover),
        resourceId: TfArg.literal(leftover),
        value: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TrafficMirrorFilter(
        localName: 'ec2_traffic_mirror_filter',
      ),
    );

    add(
      AwsEc2TrafficMirrorFilterRule(
        localName: 'ec2_traffic_mirror_filter_rule',
        destinationCidrBlock: TfArg.literal('10.0.0.0/16'),
        ruleAction: TfArg.literal('accept'),
        ruleNumber: TfArg.literal(200),
        sourceCidrBlock: TfArg.literal('10.0.0.0/16'),
        trafficDirection: TfArg.literal('ingress'),
        trafficMirrorFilterId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TrafficMirrorSession(
        localName: 'ec2_traffic_mirror_session',
        networkInterfaceId: TfArg.literal(leftover),
        sessionNumber: TfArg.literal(200),
        trafficMirrorFilterId: TfArg.literal(leftover),
        trafficMirrorTargetId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TrafficMirrorTarget(
        localName: 'ec2_traffic_mirror_target',
        gatewayLoadBalancerEndpointId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGateway(
        localName: 'ec2_transit_gateway',
      ),
    );

    add(
      AwsEc2TransitGatewayConnect(
        localName: 'ec2_transit_gateway_connect',
        transitGatewayId: TfArg.literal(leftover),
        transportAttachmentId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayConnectPeer(
        localName: 'ec2_transit_gateway_connect_peer',
        insideCidrBlocks: TfArg.literal(['169.254.100.0/29']),
        peerAddress: TfArg.literal('10.0.0.1'),
        transitGatewayAttachmentId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayDefaultRouteTableAssociation(
        localName: 'ec2_transit_gateway_default_route_table_associat',
        transitGatewayId: TfArg.literal(leftover),
        transitGatewayRouteTableId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayDefaultRouteTablePropagation(
        localName: 'ec2_transit_gateway_default_route_table_propagat',
        transitGatewayId: TfArg.literal(leftover),
        transitGatewayRouteTableId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMeteringPolicy(
        localName: 'ec2_transit_gateway_metering_policy',
        transitGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMeteringPolicyEntry(
        localName: 'ec2_transit_gateway_metering_policy_entry',
        meteredAccount: TfArg.literal('source-attachment-owner'),
        policyRuleNumber: TfArg.literal(200),
        transitGatewayMeteringPolicyId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastDomain(
        localName: 'ec2_transit_gateway_multicast_domain',
        transitGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastDomainAssociation(
        localName: 'ec2_transit_gateway_multicast_domain_association',
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
        transitGatewayAttachmentId: TfArg.literal(leftover),
        transitGatewayMulticastDomainId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastGroupMember(
        localName: 'ec2_transit_gateway_multicast_group_member',
        groupIpAddress: TfArg.literal('224.0.0.1'),
        networkInterfaceId: TfArg.literal(leftover),
        transitGatewayMulticastDomainId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayMulticastGroupSource(
        localName: 'ec2_transit_gateway_multicast_group_source',
        groupIpAddress: TfArg.literal('224.0.0.1'),
        networkInterfaceId: TfArg.literal(leftover),
        transitGatewayMulticastDomainId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPeeringAttachment(
        localName: 'ec2_transit_gateway_peering_attachment',
        peerRegion: TfArg.literal('us-east-1'),
        peerTransitGatewayId: TfArg.literal(leftover),
        transitGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPeeringAttachmentAccepter(
        localName: 'ec2_transit_gateway_peering_attachment_accepter',
        transitGatewayAttachmentId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPolicyTable(
        localName: 'ec2_transit_gateway_policy_table',
        transitGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPolicyTableAssociation(
        localName: 'ec2_transit_gateway_policy_table_association',
        transitGatewayAttachmentId: TfArg.literal(leftover),
        transitGatewayPolicyTableId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPolicyTableEntry(
        localName: 'ec2_transit_gateway_policy_table_entry',
        policyRuleNumber: TfArg.literal(leftover),
        targetRouteTableId: TfArg.literal(leftover),
        transitGatewayPolicyTableId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayPrefixListReference(
        localName: 'ec2_transit_gateway_prefix_list_reference',
        prefixListId: TfArg.literal(leftover),
        transitGatewayRouteTableId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRoute(
        localName: 'ec2_transit_gateway_route',
        destinationCidrBlock: TfArg.literal('10.0.0.0/16'),
        transitGatewayRouteTableId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRouteTable(
        localName: 'ec2_transit_gateway_route_table',
        transitGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRouteTableAssociation(
        localName: 'ec2_transit_gateway_route_table_association',
        transitGatewayAttachmentId: TfArg.literal(leftover),
        transitGatewayRouteTableId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayRouteTablePropagation(
        localName: 'ec2_transit_gateway_route_table_propagation',
        transitGatewayAttachmentId: TfArg.literal(leftover),
        transitGatewayRouteTableId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEc2TransitGatewayVpcAttachment(
        localName: 'ec2_transit_gateway_vpc_attachment',
        subnetIds: TfArg.literal([leftover]),
        transitGatewayId: TfArg.literal(leftover),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsEc2TransitGatewayVpcAttachmentAccepter(
        localName: 'ec2_transit_gateway_vpc_attachment_accepter',
        transitGatewayAttachmentId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcrAccountSetting(
        localName: 'ecr_account_setting',
        name: TfArg.literal('BASIC_SCAN_TYPE_VERSION'),
        value: TfArg.literal('AWS_NATIVE'),
      ),
    );

    add(
      AwsEcrLifecyclePolicy(
        localName: 'ecr_lifecycle_policy',
        policy: TfArg.literal(policy),
        repository: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcrPullThroughCacheRule(
        localName: 'ecr_pull_through_cache_rule',
        ecrRepositoryPrefix: TfArg.literal(leftover),
        upstreamRegistryUrl: TfArg.literal('https://example.com'),
      ),
    );

    add(
      AwsEcrPullTimeUpdateExclusion(
        localName: 'ecr_pull_time_update_exclusion',
        principalArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsEcrRegistryPolicy(
        localName: 'ecr_registry_policy',
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsEcrRegistryScanningConfiguration(
        localName: 'ecr_registry_scanning_configuration',
        scanType: TfArg.literal('BASIC'),
      ),
    );

    add(
      AwsEcrReplicationConfiguration(
        localName: 'ecr_replication_configuration',
      ),
    );

    add(
      AwsEcrRepository(
        localName: 'ecr_repository',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcrRepositoryCreationTemplate(
        localName: 'ecr_repository_creation_template',
        appliedFor: TfArg.literal(['REPLICATION']),
        prefix: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcrRepositoryPolicy(
        localName: 'ecr_repository_policy',
        policy: TfArg.literal(policy),
        repository: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcrpublicRepository(
        localName: 'ecrpublic_repository',
        repositoryName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcrpublicRepositoryPolicy(
        localName: 'ecrpublic_repository_policy',
        policy: TfArg.literal(policy),
        repositoryName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcsAccountSettingDefault(
        localName: 'ecs_account_setting_default',
        name: TfArg.literal('serviceLongArnFormat'),
        value: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcsCapacityProvider(
        localName: 'ecs_capacity_provider',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcsCluster(
        localName: 'ecs_cluster',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcsClusterCapacityProviders(
        localName: 'ecs_cluster_capacity_providers',
        clusterName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcsDaemon(
        localName: 'ecs_daemon',
        capacityProviderArns: TfArg.literal([arn]),
        daemonTaskDefinitionArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcsDaemonTaskDefinition(
        localName: 'ecs_daemon_task_definition',
        family: TfArg.literal(leftover),
        containerDefinition: [
          EcsDaemonTaskDefinitionContainerDefinition(
            image: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsEcsExpressGatewayService(
        localName: 'ecs_express_gateway_service',
        executionRoleArn: TfArg.literal(arn),
        infrastructureRoleArn: TfArg.literal(arn),
        primaryContainer: [
          EcsExpressGatewayServicePrimaryContainer(
            image: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsEcsService(
        localName: 'ecs_service',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcsTag(
        localName: 'ecs_tag',
        key: TfArg.literal(leftover),
        resourceArn: TfArg.literal(arn),
        value: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcsTaskDefinition(
        localName: 'ecs_task_definition',
        containerDefinitions: TfArg.literal(
          '[{"name": "leftover", "image": "public.ecr.aws/nginx/nginx:latest", "essential": true}]',
        ),
        family: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEcsTaskSet(
        localName: 'ecs_task_set',
        cluster: TfArg.literal(leftover),
        service: TfArg.literal(leftover),
        taskDefinition: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEfsAccessPoint(
        localName: 'efs_access_point',
        fileSystemId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEfsBackupPolicy(
        localName: 'efs_backup_policy',
        fileSystemId: TfArg.literal(leftover),
        backupPolicy: EfsBackupPolicyBackupPolicy(
          status: TfArg.literal('DISABLED'),
        ),
      ),
    );

    add(
      AwsEfsFileSystem(
        localName: 'efs_file_system',
      ),
    );

    add(
      AwsEfsFileSystemPolicy(
        localName: 'efs_file_system_policy',
        fileSystemId: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsEfsMountTarget(
        localName: 'efs_mount_target',
        fileSystemId: TfArg.literal(leftover),
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsEfsReplicationConfiguration(
        localName: 'efs_replication_configuration',
        sourceFileSystemId: TfArg.literal(leftover),
        destination: EfsReplicationConfigurationDestination(
          availabilityZoneName: TfArg.literal('us-east-1a'),
        ),
      ),
    );

    add(
      AwsEgressOnlyInternetGateway(
        localName: 'egress_only_internet_gateway',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsEip(
        localName: 'eip',
      ),
    );

    add(
      AwsEipAssociation(
        localName: 'eip_association',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
      ),
    );

    add(
      AwsEipDomainName(
        localName: 'eip_domain_name',
        allocationId: TfArg.literal(leftover),
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEksAccessEntry(
        localName: 'eks_access_entry',
        clusterName: TfArg.literal(leftover),
        principalArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsEksAccessPolicyAssociation(
        localName: 'eks_access_policy_association',
        clusterName: TfArg.literal(leftover),
        policyArn: TfArg.literal(arn),
        principalArn: TfArg.literal(arn),
        accessScope: EksAccessPolicyAssociationAccessScope(
          type: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsEksAddon(
        localName: 'eks_addon',
        addonName: TfArg.literal(leftover),
        clusterName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEksCapability(
        localName: 'eks_capability',
        capabilityName: TfArg.literal(leftover),
        clusterName: TfArg.literal(leftover),
        deletePropagationPolicy: TfArg.literal('RETAIN'),
        roleArn: TfArg.literal(arn),
        type: TfArg.literal('ACK'),
      ),
    );

    add(
      AwsEksCluster(
        localName: 'eks_cluster',
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        vpcConfig: EksClusterVpcConfig(
          subnetIds: TfArg.literal([leftover]),
        ),
      ),
    );

    add(
      AwsEksFargateProfile(
        localName: 'eks_fargate_profile',
        clusterName: TfArg.literal(leftover),
        fargateProfileName: TfArg.literal(leftover),
        podExecutionRoleArn: TfArg.literal(arn),
        selector: [
          EksFargateProfileSelector(
            namespace: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsEksIdentityProviderConfig(
        localName: 'eks_identity_provider_config',
        clusterName: TfArg.literal(leftover),
        oidc: EksIdentityProviderConfigOidc(
          clientId: TfArg.literal(leftover),
          identityProviderConfigName: TfArg.literal(leftover),
          issuerUrl: TfArg.literal('https://example.com'),
        ),
      ),
    );

    add(
      AwsEksNodeGroup(
        localName: 'eks_node_group',
        clusterName: TfArg.literal(leftover),
        nodeRoleArn: TfArg.literal(arn),
        subnetIds: TfArg.literal([leftover]),
        scalingConfig: EksNodeGroupScalingConfig(
          desiredSize: TfArg.literal(200),
          maxSize: TfArg.literal(200),
          minSize: TfArg.literal(200),
        ),
      ),
    );

    add(
      AwsEksPodIdentityAssociation(
        localName: 'eks_pod_identity_association',
        clusterName: TfArg.literal(leftover),
        namespace: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        serviceAccount: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkApplication(
        localName: 'elastic_beanstalk_application',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkApplicationVersion(
        localName: 'elastic_beanstalk_application_version',
        application: TfArg.literal(leftover),
        bucket: TfArg.literal(leftover),
        key: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkConfigurationTemplate(
        localName: 'elastic_beanstalk_configuration_template',
        application: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticBeanstalkEnvironment(
        localName: 'elastic_beanstalk_environment',
        application: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticacheCluster(
        localName: 'elasticache_cluster',
        clusterId: TfArg.literal(leftover),
        engine: TfArg.literal('memcached'),
      ),
    );

    add(
      AwsElasticacheGlobalReplicationGroup(
        localName: 'elasticache_global_replication_group',
        globalReplicationGroupIdSuffix: TfArg.literal(leftover),
        primaryReplicationGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticacheParameterGroup(
        localName: 'elasticache_parameter_group',
        family: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticacheReplicationGroup(
        localName: 'elasticache_replication_group',
        description: TfArg.literal(leftover),
        replicationGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticacheReservedCacheNode(
        localName: 'elasticache_reserved_cache_node',
        reservedCacheNodesOfferingId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticacheServerlessCache(
        localName: 'elasticache_serverless_cache',
        engine: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticacheSubnetGroup(
        localName: 'elasticache_subnet_group',
        name: TfArg.literal(leftover),
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsElasticacheUser(
        localName: 'elasticache_user',
        accessString: TfArg.literal(leftover),
        engine: TfArg.literal('redis'),
        userId: TfArg.literal(leftover),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticacheUserGroup(
        localName: 'elasticache_user_group',
        engine: TfArg.literal('redis'),
        userGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticacheUserGroupAssociation(
        localName: 'elasticache_user_group_association',
        userGroupId: TfArg.literal(leftover),
        userId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticsearchDomain(
        localName: 'elasticsearch_domain',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticsearchDomainPolicy(
        localName: 'elasticsearch_domain_policy',
        accessPolicies: TfArg.literal(policy),
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticsearchDomainSamlOptions(
        localName: 'elasticsearch_domain_saml_options',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsElasticsearchVpcEndpoint(
        localName: 'elasticsearch_vpc_endpoint',
        domainArn: TfArg.literal(arn),
        vpcOptions: ElasticsearchVpcEndpointVpcOptions(
          subnetIds: TfArg.literal([leftover]),
        ),
      ),
    );

    add(
      AwsElastictranscoderPipeline(
        localName: 'elastictranscoder_pipeline',
        inputBucket: TfArg.literal(leftover),
        role: TfArg.literal(arn),
      ),
    );

    add(
      AwsElastictranscoderPreset(
        localName: 'elastictranscoder_preset',
        container: TfArg.literal('flac'),
      ),
    );

    add(
      AwsElb(
        localName: 'elb',
        listener: [
          ElbListener(
            instancePort: TfArg.literal(200),
            instanceProtocol: TfArg.literal('HTTP'),
            lbPort: TfArg.literal(200),
            lbProtocol: TfArg.literal('HTTP'),
          ),
        ],
      ),
    );

    add(
      AwsElbAttachment(
        localName: 'elb_attachment',
        elb: TfArg.literal(leftover),
        instance: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEmrBlockPublicAccessConfiguration(
        localName: 'emr_block_public_access_configuration',
        blockPublicSecurityGroupRules: TfArg.literal(true),
      ),
    );

    add(
      AwsEmrCluster(
        localName: 'emr_cluster',
        name: TfArg.literal(leftover),
        releaseLabel: TfArg.literal(leftover),
        serviceRole: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEmrInstanceFleet(
        localName: 'emr_instance_fleet',
        clusterId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEmrInstanceGroup(
        localName: 'emr_instance_group',
        clusterId: TfArg.literal(leftover),
        instanceType: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEmrManagedScalingPolicy(
        localName: 'emr_managed_scaling_policy',
        clusterId: TfArg.literal(leftover),
        computeLimits: [
          EmrManagedScalingPolicyComputeLimits(
            maximumCapacityUnits: TfArg.literal(200),
            minimumCapacityUnits: TfArg.literal(200),
            unitType: TfArg.literal('InstanceFleetUnits'),
          ),
        ],
      ),
    );

    add(
      AwsEmrSecurityConfiguration(
        localName: 'emr_security_configuration',
        configuration: TfArg.literal(policy),
      ),
    );

    add(
      AwsEmrStudio(
        localName: 'emr_studio',
        authMode: TfArg.literal('SSO'),
        defaultS3Location: TfArg.literal(leftover),
        engineSecurityGroupId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        serviceRole: TfArg.literal(arn),
        subnetIds: TfArg.literal([leftover]),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
        workspaceSecurityGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEmrStudioSessionMapping(
        localName: 'emr_studio_session_mapping',
        identityType: TfArg.literal('USER'),
        sessionPolicyArn: TfArg.literal(arn),
        studioId: TfArg.literal(leftover),
        identityId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEmrcontainersJobTemplate(
        localName: 'emrcontainers_job_template',
        name: TfArg.literal(leftover),
        jobTemplateData: EmrcontainersJobTemplateJobTemplateData(
          executionRoleArn: TfArg.literal(arn),
          releaseLabel: TfArg.literal(leftover),
          jobDriver: EmrcontainersJobTemplateJobTemplateDataJobDriver(
            sparkSqlJobDriver:
                EmrcontainersJobTemplateJobTemplateDataJobDriverSparkSqlJobDriver(
              entryPoint: TfArg.literal(leftover),
            ),
          ),
        ),
      ),
    );

    add(
      AwsEmrcontainersVirtualCluster(
        localName: 'emrcontainers_virtual_cluster',
        name: TfArg.literal(leftover),
        containerProvider: EmrcontainersVirtualClusterContainerProvider(
          id: TfArg.literal(leftover),
          type: TfArg.literal('EKS'),
          info: EmrcontainersVirtualClusterContainerProviderInfo(
            eksInfo: EmrcontainersVirtualClusterContainerProviderInfoEksInfo(
              namespace: TfArg.literal(leftover),
            ),
          ),
        ),
      ),
    );

    add(
      AwsEmrserverlessApplication(
        localName: 'emrserverless_application',
        name: TfArg.literal(leftover),
        releaseLabel: TfArg.literal(leftover),
        type: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEvidentlyFeature(
        localName: 'evidently_feature',
        name: TfArg.literal(leftover),
        project: TfArg.literal(leftover),
        variations: [
          EvidentlyFeatureVariations(
            name: TfArg.literal(leftover),
            value: EvidentlyFeatureVariationsValue(
              boolValue: TfArg.literal('true'),
            ),
          ),
        ],
      ),
    );

    add(
      AwsEvidentlyLaunch(
        localName: 'evidently_launch',
        name: TfArg.literal(leftover),
        project: TfArg.literal(leftover),
        groups: [
          EvidentlyLaunchGroups(
            feature: TfArg.literal(leftover),
            name: TfArg.literal(leftover),
            variation: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsEvidentlyProject(
        localName: 'evidently_project',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsEvidentlySegment(
        localName: 'evidently_segment',
        name: TfArg.literal(leftover),
        pattern: TfArg.literal(policy),
      ),
    );

    add(
      AwsFinspaceKxCluster(
        localName: 'finspace_kx_cluster',
        azMode: TfArg.literal('SINGLE'),
        environmentId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        releaseLabel: TfArg.literal(leftover),
        type: TfArg.literal('HDB'),
        vpcConfiguration: FinspaceKxClusterVpcConfiguration(
          ipAddressType: TfArg.literal('IP_V4'),
          securityGroupIds: TfArg.literal([leftover]),
          subnetIds: TfArg.literal([leftover]),
          vpcId: TfArg.literal('vpc-0123456789abcdef0'),
        ),
      ),
    );

    add(
      AwsFinspaceKxDatabase(
        localName: 'finspace_kx_database',
        environmentId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxDataview(
        localName: 'finspace_kx_dataview',
        autoUpdate: TfArg.literal(true),
        azMode: TfArg.literal('SINGLE'),
        databaseName: TfArg.literal(leftover),
        environmentId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxEnvironment(
        localName: 'finspace_kx_environment',
        kmsKeyId: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxScalingGroup(
        localName: 'finspace_kx_scaling_group',
        availabilityZoneId: TfArg.literal('us-east-1a'),
        environmentId: TfArg.literal(leftover),
        hostType: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxUser(
        localName: 'finspace_kx_user',
        environmentId: TfArg.literal(leftover),
        iamRole: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsFinspaceKxVolume(
        localName: 'finspace_kx_volume',
        availabilityZones: TfArg.literal(['us-east-1a']),
        azMode: TfArg.literal('SINGLE'),
        environmentId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        type: TfArg.literal('NAS_1'),
      ),
    );

    add(
      AwsFisExperimentTemplate(
        localName: 'fis_experiment_template',
        description: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        action: [
          FisExperimentTemplateAction(
            actionId: TfArg.literal('aws:ec2:stop-instances'),
            name: TfArg.literal(leftover),
          ),
        ],
        stopCondition: [
          FisExperimentTemplateStopCondition(
            source: TfArg.literal('aws:cloudwatch:alarm'),
          ),
        ],
      ),
    );

    add(
      AwsFisSafetyLeverState(
        localName: 'fis_safety_lever_state',
      ),
    );

    add(
      AwsFisTargetAccountConfiguration(
        localName: 'fis_target_account_configuration',
        accountId: TfArg.literal('123456789012'),
        experimentTemplateId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsFlowLog(
        localName: 'flow_log',
        eniId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsFmsAdminAccount(
        localName: 'fms_admin_account',
      ),
    );

    add(
      AwsFmsPolicy(
        localName: 'fms_policy',
        excludeResourceTags: TfArg.literal(true),
        name: TfArg.literal(leftover),
        securityServicePolicyData: FmsPolicySecurityServicePolicyData(
          type: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsFmsResourceSet(
        localName: 'fms_resource_set',
      ),
    );

    add(
      AwsFsxBackup(
        localName: 'fsx_backup',
      ),
    );

    add(
      AwsFsxDataRepositoryAssociation(
        localName: 'fsx_data_repository_association',
        dataRepositoryPath: TfArg.literal('s3://leftover-bucket/leftover'),
        fileSystemId: TfArg.literal('fs-0123456789abcdef0'),
        fileSystemPath: TfArg.literal('/leftover'),
      ),
    );

    add(
      AwsFsxFileCache(
        localName: 'fsx_file_cache',
        fileCacheType: TfArg.literal('LUSTRE'),
        fileCacheTypeVersion: TfArg.literal('2.12'),
        storageCapacity: TfArg.literal(200),
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsFsxLustreFileSystem(
        localName: 'fsx_lustre_file_system',
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsFsxOntapFileSystem(
        localName: 'fsx_ontap_file_system',
        deploymentType: TfArg.literal('MULTI_AZ_1'),
        preferredSubnetId: TfArg.literal(leftover),
        storageCapacity: TfArg.literal(1024),
        subnetIds: TfArg.literal([leftover]),
        throughputCapacity: TfArg.literal(128),
      ),
    );

    add(
      AwsFsxOntapStorageVirtualMachine(
        localName: 'fsx_ontap_storage_virtual_machine',
        fileSystemId: TfArg.literal('fs-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsFsxOntapVolume(
        localName: 'fsx_ontap_volume',
        name: TfArg.literal(leftover),
        storageVirtualMachineId: TfArg.literal('svm-0123456789abcdef0'),
        sizeInBytes: TfArg.literal('64512'),
      ),
    );

    add(
      AwsFsxOpenzfsFileSystem(
        localName: 'fsx_openzfs_file_system',
        deploymentType: TfArg.literal('SINGLE_AZ_1'),
        subnetIds: TfArg.literal([leftover]),
        throughputCapacity: TfArg.literal(200),
      ),
    );

    add(
      AwsFsxOpenzfsSnapshot(
        localName: 'fsx_openzfs_snapshot',
        name: TfArg.literal(leftover),
        volumeId: TfArg.literal('fsvol-0123456789abcdef0'),
      ),
    );

    add(
      AwsFsxOpenzfsVolume(
        localName: 'fsx_openzfs_volume',
        name: TfArg.literal(leftover),
        parentVolumeId: TfArg.literal('fsvol-0123456789abcdef0'),
      ),
    );

    add(
      AwsFsxS3AccessPointAttachment(
        localName: 'fsx_s3_access_point_attachment',
        name: TfArg.literal(leftover),
        type: TfArg.literal('OPENZFS'),
        openzfsConfiguration: [
          FsxS3AccessPointAttachmentOpenzfsConfiguration(
            volumeId: TfArg.literal(leftover),
            fileSystemIdentity: [
              FsxS3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity(
                type: TfArg.literal('POSIX'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsFsxWindowsFileSystem(
        localName: 'fsx_windows_file_system',
        subnetIds: TfArg.literal([leftover]),
        throughputCapacity: TfArg.literal(8),
      ),
    );

    add(
      AwsGameliftAlias(
        localName: 'gamelift_alias',
        name: TfArg.literal(leftover),
        routingStrategy: GameliftAliasRoutingStrategy(
          type: TfArg.literal('SIMPLE'),
        ),
      ),
    );

    add(
      AwsGameliftBuild(
        localName: 'gamelift_build',
        name: TfArg.literal(leftover),
        operatingSystem: TfArg.literal('WINDOWS_2012'),
        storageLocation: GameliftBuildStorageLocation(
          bucket: TfArg.literal(leftover),
          key: TfArg.literal(leftover),
          roleArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsGameliftFleet(
        localName: 'gamelift_fleet',
        ec2InstanceType: TfArg.literal('t2.micro'),
        name: TfArg.literal(leftover),
        buildId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGameliftGameServerGroup(
        localName: 'gamelift_game_server_group',
        gameServerGroupName: TfArg.literal(leftover),
        maxSize: TfArg.literal(200),
        minSize: TfArg.literal(200),
        roleArn: TfArg.literal(arn),
        instanceDefinition: [
          GameliftGameServerGroupInstanceDefinition(
            instanceType: TfArg.literal('c5.large'),
          ),
          GameliftGameServerGroupInstanceDefinition(
            instanceType: TfArg.literal('c5.xlarge'),
          ),
        ],
        launchTemplate: GameliftGameServerGroupLaunchTemplate(
          id: TfArg.literal('lt-0123456789abcdef0'),
        ),
      ),
    );

    add(
      AwsGameliftGameSessionQueue(
        localName: 'gamelift_game_session_queue',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGameliftScript(
        localName: 'gamelift_script',
        name: TfArg.literal(leftover),
        storageLocation: GameliftScriptStorageLocation(
          bucket: TfArg.literal(leftover),
          key: TfArg.literal(leftover),
          roleArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsGlacierVault(
        localName: 'glacier_vault',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlacierVaultLock(
        localName: 'glacier_vault_lock',
        completeLock: TfArg.literal(true),
        policy: TfArg.literal(policy),
        vaultName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorAccelerator(
        localName: 'globalaccelerator_accelerator',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorCrossAccountAttachment(
        localName: 'globalaccelerator_cross_account_attachment',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorCustomRoutingAccelerator(
        localName: 'globalaccelerator_custom_routing_accelerator',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlobalacceleratorCustomRoutingEndpointGroup(
        localName: 'globalaccelerator_custom_routing_endpoint_group',
        listenerArn: TfArg.literal(arn),
        destinationConfiguration: [
          GlobalacceleratorCustomRoutingEndpointGroupDestinationConfiguration(
            fromPort: TfArg.literal(200),
            protocols: TfArg.literal(['TCP']),
            toPort: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsGlobalacceleratorCustomRoutingListener(
        localName: 'globalaccelerator_custom_routing_listener',
        acceleratorArn: TfArg.literal(arn),
        portRange: [
          GlobalacceleratorCustomRoutingListenerPortRange(
            fromPort: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsGlobalacceleratorEndpointGroup(
        localName: 'globalaccelerator_endpoint_group',
        listenerArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsGlobalacceleratorListener(
        localName: 'globalaccelerator_listener',
        acceleratorArn: TfArg.literal(arn),
        protocol: TfArg.literal('TCP'),
        portRange: [
          GlobalacceleratorListenerPortRange(
            fromPort: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsGlueCatalog(
        localName: 'glue_catalog',
        name: TfArg.literal(leftover),
        catalogProperties: [
          GlueCatalogCatalogProperties(
            dataLakeAccessProperties: [
              GlueCatalogCatalogPropertiesDataLakeAccessProperties(
                catalogType: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsGlueCatalogDatabase(
        localName: 'glue_catalog_database',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlueCatalogTable(
        localName: 'glue_catalog_table',
        databaseName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlueCatalogTableOptimizer(
        localName: 'glue_catalog_table_optimizer',
        catalogId: TfArg.literal(leftover),
        databaseName: TfArg.literal(leftover),
        tableName: TfArg.literal(leftover),
        type: TfArg.literal('compaction'),
        configuration: [
          GlueCatalogTableOptimizerConfiguration(
            enabled: TfArg.literal(true),
            roleArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsGlueClassifier(
        localName: 'glue_classifier',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlueConnection(
        localName: 'glue_connection',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlueCrawler(
        localName: 'glue_crawler',
        databaseName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        role: TfArg.literal(leftover),
        catalogTarget: [
          GlueCrawlerCatalogTarget(
            databaseName: TfArg.literal(leftover),
            tables: TfArg.literal([leftover]),
          ),
        ],
        deltaTarget: [
          GlueCrawlerDeltaTarget(
            deltaTables: TfArg.literal([leftover]),
            writeManifest: TfArg.literal(true),
          ),
        ],
        dynamodbTarget: [
          GlueCrawlerDynamodbTarget(
            path: TfArg.literal(leftover),
          ),
        ],
        hudiTarget: [
          GlueCrawlerHudiTarget(
            maximumTraversalDepth: TfArg.literal(1),
            paths: TfArg.literal([leftover]),
          ),
        ],
        icebergTarget: [
          GlueCrawlerIcebergTarget(
            maximumTraversalDepth: TfArg.literal(1),
            paths: TfArg.literal([leftover]),
          ),
        ],
        jdbcTarget: [
          GlueCrawlerJdbcTarget(
            connectionName: TfArg.literal(leftover),
            path: TfArg.literal(leftover),
          ),
        ],
        mongodbTarget: [
          GlueCrawlerMongodbTarget(
            connectionName: TfArg.literal(leftover),
            path: TfArg.literal(leftover),
          ),
        ],
        s3Target: [
          GlueCrawlerS3Target(
            path: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsGlueDataCatalogEncryptionSettings(
        localName: 'glue_data_catalog_encryption_settings',
        dataCatalogEncryptionSettings:
            GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettings(
          connectionPasswordEncryption:
              GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption(
            returnConnectionPasswordEncrypted: TfArg.literal(true),
          ),
          encryptionAtRest:
              GlueDataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest(
            catalogEncryptionMode: TfArg.literal('DISABLED'),
          ),
        ),
      ),
    );

    add(
      AwsGlueDataQualityRuleset(
        localName: 'glue_data_quality_ruleset',
        name: TfArg.literal(leftover),
        ruleset: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlueDevEndpoint(
        localName: 'glue_dev_endpoint',
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsGlueJob(
        localName: 'glue_job',
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        command: GlueJobCommand(
          scriptLocation: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsGlueMlTransform(
        localName: 'glue_ml_transform',
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        inputRecordTables: [
          GlueMlTransformInputRecordTables(
            databaseName: TfArg.literal(leftover),
            tableName: TfArg.literal(leftover),
          ),
        ],
        parameters: GlueMlTransformParameters(
          transformType: TfArg.literal('FIND_MATCHES'),
          findMatchesParameters: GlueMlTransformParametersFindMatchesParameters(
            accuracyCostTradeOff: TfArg.literal(1),
          ),
        ),
      ),
    );

    add(
      AwsGluePartition(
        localName: 'glue_partition',
        databaseName: TfArg.literal(leftover),
        partitionValues: TfArg.literal([leftover]),
        tableName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGluePartitionIndex(
        localName: 'glue_partition_index',
        databaseName: TfArg.literal(leftover),
        tableName: TfArg.literal(leftover),
        partitionIndex: GluePartitionIndexPartitionIndex(
          indexName: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsGlueRegistry(
        localName: 'glue_registry',
        registryName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlueResourcePolicy(
        localName: 'glue_resource_policy',
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsGlueSchema(
        localName: 'glue_schema',
        compatibility: TfArg.literal('NONE'),
        dataFormat: TfArg.literal('AVRO'),
        schemaDefinition: TfArg.literal(leftover),
        schemaName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGlueSecurityConfiguration(
        localName: 'glue_security_configuration',
        name: TfArg.literal(leftover),
        encryptionConfiguration:
            GlueSecurityConfigurationEncryptionConfiguration(
          cloudwatchEncryption:
              GlueSecurityConfigurationEncryptionConfigurationCloudwatchEncryption(
            cloudwatchEncryptionMode: TfArg.literal('DISABLED'),
          ),
          jobBookmarksEncryption:
              GlueSecurityConfigurationEncryptionConfigurationJobBookmarksEncryption(
            jobBookmarksEncryptionMode: TfArg.literal('DISABLED'),
          ),
          s3Encryption:
              GlueSecurityConfigurationEncryptionConfigurationS3Encryption(
            kmsKeyArn: TfArg.literal(arn),
          ),
        ),
      ),
    );

    add(
      AwsGlueTrigger(
        localName: 'glue_trigger',
        name: TfArg.literal(leftover),
        type: TfArg.literal('SCHEDULED'),
        actions: [
          GlueTriggerActions(
            arguments: TfArg.literal({'k': leftover}),
          ),
        ],
      ),
    );

    add(
      AwsGlueUserDefinedFunction(
        localName: 'glue_user_defined_function',
        className: TfArg.literal(leftover),
        databaseName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        ownerName: TfArg.literal(leftover),
        ownerType: TfArg.literal('USER'),
      ),
    );

    add(
      AwsGlueWorkflow(
        localName: 'glue_workflow',
      ),
    );

    add(
      AwsGrafanaLicenseAssociation(
        localName: 'grafana_license_association',
        licenseType: TfArg.literal('ENTERPRISE'),
        workspaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGrafanaRoleAssociation(
        localName: 'grafana_role_association',
        role: TfArg.literal(leftover),
        workspaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspace(
        localName: 'grafana_workspace',
        accountAccessType: TfArg.literal('CURRENT_ACCOUNT'),
        authenticationProviders: TfArg.literal(['AWS_SSO']),
        permissionType: TfArg.literal('CUSTOMER_MANAGED'),
      ),
    );

    add(
      AwsGrafanaWorkspaceApiKey(
        localName: 'grafana_workspace_api_key',
        keyName: TfArg.literal(leftover),
        keyRole: TfArg.literal('ADMIN'),
        secondsToLive: TfArg.literal(200),
        workspaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspaceSamlConfiguration(
        localName: 'grafana_workspace_saml_configuration',
        editorRoleValues: TfArg.literal([leftover]),
        workspaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspaceServiceAccount(
        localName: 'grafana_workspace_service_account',
        grafanaRole: TfArg.literal('ADMIN'),
        name: TfArg.literal(leftover),
        workspaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGrafanaWorkspaceServiceAccountToken(
        localName: 'grafana_workspace_service_account_token',
        name: TfArg.literal(leftover),
        secondsToLive: TfArg.literal(200),
        serviceAccountId: TfArg.literal('123456789012'),
        workspaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGuarddutyDetector(
        localName: 'guardduty_detector',
      ),
    );

    add(
      AwsGuarddutyDetectorFeature(
        localName: 'guardduty_detector_feature',
        detectorId: TfArg.literal(leftover),
        name: TfArg.literal('S3_DATA_EVENTS'),
        status: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsGuarddutyFilter(
        localName: 'guardduty_filter',
        action: TfArg.literal('NOOP'),
        detectorId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        rank: TfArg.literal(200),
        findingCriteria: GuarddutyFilterFindingCriteria(
          criterion: [
            GuarddutyFilterFindingCriteriaCriterion(
              field: TfArg.literal(leftover),
            ),
          ],
        ),
      ),
    );

    add(
      AwsGuarddutyInviteAccepter(
        localName: 'guardduty_invite_accepter',
        detectorId: TfArg.literal(leftover),
        masterAccountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsGuarddutyIpset(
        localName: 'guardduty_ipset',
        activate: TfArg.literal(true),
        detectorId: TfArg.literal(leftover),
        format: TfArg.literal('TXT'),
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGuarddutyMalwareProtectionPlan(
        localName: 'guardduty_malware_protection_plan',
        role: TfArg.literal(arn),
        protectedResource: [
          GuarddutyMalwareProtectionPlanProtectedResource(
            s3Bucket: [
              GuarddutyMalwareProtectionPlanProtectedResourceS3Bucket(
                bucketName: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsGuarddutyMember(
        localName: 'guardduty_member',
        accountId: TfArg.literal('123456789012'),
        detectorId: TfArg.literal(leftover),
        email: TfArg.literal('leftover@example.com'),
      ),
    );

    add(
      AwsGuarddutyMemberDetectorFeature(
        localName: 'guardduty_member_detector_feature',
        accountId: TfArg.literal('123456789012'),
        detectorId: TfArg.literal(leftover),
        name: TfArg.literal('S3_DATA_EVENTS'),
        status: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsGuarddutyOrganizationAdminAccount(
        localName: 'guardduty_organization_admin_account',
        adminAccountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsGuarddutyOrganizationConfiguration(
        localName: 'guardduty_organization_configuration',
        autoEnableOrganizationMembers: TfArg.literal('NEW'),
        detectorId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsGuarddutyOrganizationConfigurationFeature(
        localName: 'guardduty_organization_configuration_feature',
        autoEnable: TfArg.literal('NEW'),
        detectorId: TfArg.literal(leftover),
        name: TfArg.literal('S3_DATA_EVENTS'),
      ),
    );

    add(
      AwsGuarddutyPublishingDestination(
        localName: 'guardduty_publishing_destination',
        destinationArn: TfArg.literal(arn),
        detectorId: TfArg.literal(leftover),
        kmsKeyArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsGuarddutyThreatintelset(
        localName: 'guardduty_threatintelset',
        activate: TfArg.literal(true),
        detectorId: TfArg.literal(leftover),
        format: TfArg.literal('TXT'),
        location: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamAccessKey(
        localName: 'iam_access_key',
        user: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamAccountAlias(
        localName: 'iam_account_alias',
        accountAlias: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamAccountPasswordPolicy(
        localName: 'iam_account_password_policy',
      ),
    );

    add(
      AwsIamGroup(
        localName: 'iam_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamGroupMembership(
        localName: 'iam_group_membership',
        group: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        users: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsIamGroupPoliciesExclusive(
        localName: 'iam_group_policies_exclusive',
        groupName: TfArg.literal(leftover),
        policyNames: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsIamGroupPolicy(
        localName: 'iam_group_policy',
        group: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsIamGroupPolicyAttachment(
        localName: 'iam_group_policy_attachment',
        group: TfArg.literal(leftover),
        policyArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsIamGroupPolicyAttachmentsExclusive(
        localName: 'iam_group_policy_attachments_exclusive',
        groupName: TfArg.literal(leftover),
        policyArns: TfArg.literal([arn]),
      ),
    );

    add(
      AwsIamInstanceProfile(
        localName: 'iam_instance_profile',
      ),
    );

    add(
      AwsIamOpenidConnectProvider(
        localName: 'iam_openid_connect_provider',
        clientIdList: TfArg.literal([leftover]),
        url: TfArg.literal('https://example.com'),
      ),
    );

    add(
      AwsIamOrganizationsFeatures(
        localName: 'iam_organizations_features',
        enabledFeatures: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsIamOutboundWebIdentityFederation(
        localName: 'iam_outbound_web_identity_federation',
      ),
    );

    add(
      AwsIamPolicy(
        localName: 'iam_policy',
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsIamPolicyAttachment(
        localName: 'iam_policy_attachment',
        name: TfArg.literal(leftover),
        policyArn: TfArg.literal(arn),
        groups: TfArg.literal([leftover]),
        roles: TfArg.literal([leftover]),
        users: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsIamRolePoliciesExclusive(
        localName: 'iam_role_policies_exclusive',
        policyNames: TfArg.literal([leftover]),
        roleName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamRolePolicy(
        localName: 'iam_role_policy',
        policy: TfArg.literal(policy),
        role: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamRolePolicyAttachmentsExclusive(
        localName: 'iam_role_policy_attachments_exclusive',
        policyArns: TfArg.literal([arn]),
        roleName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamSamlProvider(
        localName: 'iam_saml_provider',
        name: TfArg.literal(leftover),
        samlMetadataDocument: TfArg.literal(leftover * 130),
      ),
    );

    add(
      AwsIamSecurityTokenServicePreferences(
        localName: 'iam_security_token_service_preferences',
        globalEndpointTokenVersion: TfArg.literal('v1Token'),
      ),
    );

    add(
      AwsIamServerCertificate(
        localName: 'iam_server_certificate',
        certificateBody: TfArg.literal(leftover),
        privateKey: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsIamServiceLinkedRole(
        localName: 'iam_service_linked_role',
        awsServiceName: TfArg.literal('elasticbeanstalk.amazonaws.com'),
      ),
    );

    add(
      AwsIamServiceSpecificCredential(
        localName: 'iam_service_specific_credential',
        serviceName: TfArg.literal(leftover),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamSigningCertificate(
        localName: 'iam_signing_certificate',
        certificateBody: TfArg.literal(leftover),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamUser(
        localName: 'iam_user',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamUserGroupMembership(
        localName: 'iam_user_group_membership',
        groups: TfArg.literal([leftover]),
        user: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamUserLoginProfile(
        localName: 'iam_user_login_profile',
        user: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamUserPoliciesExclusive(
        localName: 'iam_user_policies_exclusive',
        policyNames: TfArg.literal([leftover]),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamUserPolicy(
        localName: 'iam_user_policy',
        policy: TfArg.literal(policy),
        user: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamUserPolicyAttachment(
        localName: 'iam_user_policy_attachment',
        policyArn: TfArg.literal(arn),
        user: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamUserPolicyAttachmentsExclusive(
        localName: 'iam_user_policy_attachments_exclusive',
        policyArns: TfArg.literal([arn]),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamUserSshKey(
        localName: 'iam_user_ssh_key',
        encoding: TfArg.literal('SSH'),
        publicKey: TfArg.literal(leftover),
        username: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIamVirtualMfaDevice(
        localName: 'iam_virtual_mfa_device',
        virtualMfaDeviceName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIdentitystoreGroup(
        localName: 'identitystore_group',
        displayName: TfArg.literal(leftover),
        identityStoreId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIdentitystoreGroupMembership(
        localName: 'identitystore_group_membership',
        groupId: TfArg.literal(leftover),
        identityStoreId: TfArg.literal(leftover),
        memberId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIdentitystoreUser(
        localName: 'identitystore_user',
        displayName: TfArg.literal(leftover),
        identityStoreId: TfArg.literal(leftover),
        userName: TfArg.literal(leftover),
        name: IdentitystoreUserName(
          familyName: TfArg.literal(leftover),
          givenName: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsImagebuilderComponent(
        localName: 'imagebuilder_component',
        name: TfArg.literal(leftover),
        platform: TfArg.literal('Windows'),
        version: TfArg.literal(leftover),
        data: TfArg.literal(leftover),
      ),
    );

    add(
      AwsImagebuilderContainerRecipe(
        localName: 'imagebuilder_container_recipe',
        containerType: TfArg.literal('DOCKER'),
        name: TfArg.literal(leftover),
        parentImage: TfArg.literal(leftover),
        version: TfArg.literal(leftover),
        component: [
          ImagebuilderContainerRecipeComponent(
            componentArn: TfArg.literal(arn),
          ),
        ],
        targetRepository: ImagebuilderContainerRecipeTargetRepository(
          repositoryName: TfArg.literal(leftover),
          service: TfArg.literal('ECR'),
        ),
        dockerfileTemplateData: TfArg.literal(leftover),
      ),
    );

    add(
      AwsImagebuilderDistributionConfiguration(
        localName: 'imagebuilder_distribution_configuration',
        name: TfArg.literal(leftover),
        distribution: [
          ImagebuilderDistributionConfigurationDistribution(
            region: TfArg.literal('us-east-1'),
          ),
        ],
      ),
    );

    add(
      AwsImagebuilderImage(
        localName: 'imagebuilder_image',
        infrastructureConfigurationArn: TfArg.literal(arn),
        containerRecipeArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsImagebuilderImagePipeline(
        localName: 'imagebuilder_image_pipeline',
        infrastructureConfigurationArn: TfArg.literal(
          'arn:aws:imagebuilder:us-east-1:123456789012:infrastructure-configuration/leftover',
        ),
        name: TfArg.literal(leftover),
        containerRecipeArn: TfArg.literal(
          'arn:aws:imagebuilder:us-east-1:123456789012:container-recipe/leftover/1.0.0',
        ),
      ),
    );

    add(
      AwsImagebuilderImageRecipe(
        localName: 'imagebuilder_image_recipe',
        name: TfArg.literal(leftover),
        parentImage: TfArg.literal(leftover),
        version: TfArg.literal(leftover),
        component: [
          ImagebuilderImageRecipeComponent(
            componentArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsImagebuilderInfrastructureConfiguration(
        localName: 'imagebuilder_infrastructure_configuration',
        instanceProfileName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsImagebuilderLifecyclePolicy(
        localName: 'imagebuilder_lifecycle_policy',
        executionRole: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        resourceType: TfArg.literal('AMI_IMAGE'),
        policyDetail: [
          ImagebuilderLifecyclePolicyPolicyDetail(
            action: [
              ImagebuilderLifecyclePolicyPolicyDetailAction(
                type: TfArg.literal('DELETE'),
              ),
            ],
            filter: [
              ImagebuilderLifecyclePolicyPolicyDetailFilter(
                type: TfArg.literal('AGE'),
                value: TfArg.literal(1),
                unit: TfArg.literal('DAYS'),
              ),
            ],
          ),
        ],
        resourceSelection: [
          ImagebuilderLifecyclePolicyResourceSelection(
            tagMap: TfArg.literal({'k': leftover}),
          ),
        ],
      ),
    );

    add(
      AwsImagebuilderWorkflow(
        localName: 'imagebuilder_workflow',
        name: TfArg.literal(leftover),
        type: TfArg.literal('BUILD'),
        version: TfArg.literal('1.0.0'),
        data: TfArg.literal(leftover),
      ),
    );

    add(
      AwsInspector2DelegatedAdminAccount(
        localName: 'inspector2_delegated_admin_account',
        accountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsInspector2Enabler(
        localName: 'inspector2_enabler',
        accountIds: TfArg.literal(['123456789012']),
        resourceTypes: TfArg.literal(['EC2']),
      ),
    );

    add(
      AwsInspector2Filter(
        localName: 'inspector2_filter',
        action: TfArg.literal('NONE'),
        name: TfArg.literal(leftover),
        filterCriteria: [
          Inspector2FilterFilterCriteria(
            awsAccountId: [
              Inspector2FilterFilterCriteriaAwsAccountId(
                comparison: TfArg.literal('EQUALS'),
                value: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsInspector2MemberAssociation(
        localName: 'inspector2_member_association',
        accountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsInspector2OrganizationConfiguration(
        localName: 'inspector2_organization_configuration',
        autoEnable: Inspector2OrganizationConfigurationAutoEnable(
          ec2: TfArg.literal(true),
          ecr: TfArg.literal(true),
        ),
      ),
    );

    add(
      AwsInspectorAssessmentTarget(
        localName: 'inspector_assessment_target',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsInspectorAssessmentTemplate(
        localName: 'inspector_assessment_template',
        duration: TfArg.literal(200),
        name: TfArg.literal(leftover),
        rulesPackageArns: TfArg.literal([arn]),
        targetArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsInspectorResourceGroup(
        localName: 'inspector_resource_group',
        tags: TfArg.literal({'k': leftover}),
      ),
    );

    add(
      AwsInstance(
        localName: 'instance',
        instanceType: TfArg.literal(leftover),
        ami: TfArg.literal(leftover),
        launchTemplate: InstanceLaunchTemplate(
          id: TfArg.literal('lt-0123456789abcdef0'),
        ),
      ),
    );

    add(
      AwsInternetGateway(
        localName: 'internet_gateway',
      ),
    );

    add(
      AwsInternetGatewayAttachment(
        localName: 'internet_gateway_attachment',
        internetGatewayId: TfArg.literal(leftover),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsInternetmonitorMonitor(
        localName: 'internetmonitor_monitor',
        monitorName: TfArg.literal(leftover),
        maxCityNetworksToMonitor: TfArg.literal(200),
        trafficPercentageToMonitor: TfArg.literal(1),
      ),
    );

    add(
      AwsInvoicingInvoiceUnit(
        localName: 'invoicing_invoice_unit',
        invoiceReceiver: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotAuthorizer(
        localName: 'iot_authorizer',
        authorizerFunctionArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotBillingGroup(
        localName: 'iot_billing_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotCaCertificate(
        localName: 'iot_ca_certificate',
        active: TfArg.literal(true),
        allowAutoRegistration: TfArg.literal(true),
        caCertificatePem: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsIotCertificate(
        localName: 'iot_certificate',
        active: TfArg.literal(true),
      ),
    );

    add(
      AwsIotDomainConfiguration(
        localName: 'iot_domain_configuration',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotEventConfigurations(
        localName: 'iot_event_configurations',
        eventConfigurations: TfArg.literal({'THING': true}),
      ),
    );

    add(
      AwsIotIndexingConfiguration(
        localName: 'iot_indexing_configuration',
        thingGroupIndexingConfiguration:
            IotIndexingConfigurationThingGroupIndexingConfiguration(
          thingGroupIndexingMode: TfArg.literal('OFF'),
        ),
        thingIndexingConfiguration:
            IotIndexingConfigurationThingIndexingConfiguration(
          thingIndexingMode: TfArg.literal('OFF'),
        ),
      ),
    );

    add(
      AwsIotLoggingOptions(
        localName: 'iot_logging_options',
        defaultLogLevel: TfArg.literal('DEBUG'),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsIotPolicy(
        localName: 'iot_policy',
        name: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsIotPolicyAttachment(
        localName: 'iot_policy_attachment',
        policy: TfArg.literal(policy),
        target: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotProvisioningTemplate(
        localName: 'iot_provisioning_template',
        name: TfArg.literal(leftover),
        provisioningRoleArn: TfArg.literal(arn),
        templateBody: TfArg.literal(policy),
      ),
    );

    add(
      AwsIotRoleAlias(
        localName: 'iot_role_alias',
        alias: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsIotThing(
        localName: 'iot_thing',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotThingGroup(
        localName: 'iot_thing_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotThingGroupMembership(
        localName: 'iot_thing_group_membership',
        thingGroupName: TfArg.literal(leftover),
        thingName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotThingPrincipalAttachment(
        localName: 'iot_thing_principal_attachment',
        principal: TfArg.literal(leftover),
        thing: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotThingType(
        localName: 'iot_thing_type',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotTopicRule(
        localName: 'iot_topic_rule',
        enabled: TfArg.literal(true),
        name: TfArg.literal(leftover),
        sql: TfArg.literal(leftover),
        sqlVersion: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIotTopicRuleDestination(
        localName: 'iot_topic_rule_destination',
        vpcConfiguration: IotTopicRuleDestinationVpcConfiguration(
          roleArn: TfArg.literal(arn),
          subnetIds: TfArg.literal([leftover]),
          vpcId: TfArg.literal('vpc-0123456789abcdef0'),
        ),
      ),
    );

    add(
      AwsIvsChannel(
        localName: 'ivs_channel',
      ),
    );

    add(
      AwsIvsPlaybackKeyPair(
        localName: 'ivs_playback_key_pair',
        publicKey: TfArg.literal(leftover),
      ),
    );

    add(
      AwsIvsRecordingConfiguration(
        localName: 'ivs_recording_configuration',
        destinationConfiguration:
            IvsRecordingConfigurationDestinationConfiguration(
          s3: IvsRecordingConfigurationDestinationConfigurationS3(
            bucketName: TfArg.literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsIvschatLoggingConfiguration(
        localName: 'ivschat_logging_configuration',
      ),
    );

    add(
      AwsIvschatRoom(
        localName: 'ivschat_room',
      ),
    );

    add(
      AwsKendraDataSource(
        localName: 'kendra_data_source',
        indexId: TfArg.literal('12345678-1234-1234-1234-123456789012'),
        name: TfArg.literal(leftover),
        type: TfArg.literal('S3'),
      ),
    );

    add(
      AwsKendraExperience(
        localName: 'kendra_experience',
        indexId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsKendraFaq(
        localName: 'kendra_faq',
        indexId: TfArg.literal('12345678-1234-1234-1234-123456789012'),
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        s3Path: KendraFaqS3Path(
          bucket: TfArg.literal(leftover),
          key: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsKendraIndex(
        localName: 'kendra_index',
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsKendraQuerySuggestionsBlockList(
        localName: 'kendra_query_suggestions_block_list',
        indexId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        sourceS3Path: KendraQuerySuggestionsBlockListSourceS3Path(
          bucket: TfArg.literal(leftover),
          key: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsKendraThesaurus(
        localName: 'kendra_thesaurus',
        indexId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        sourceS3Path: KendraThesaurusSourceS3Path(
          bucket: TfArg.literal(leftover),
          key: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsKeyPair(
        localName: 'key_pair',
        publicKey: TfArg.literal(leftover),
      ),
    );

    add(
      AwsKeyspacesKeyspace(
        localName: 'keyspaces_keyspace',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsKeyspacesTable(
        localName: 'keyspaces_table',
        keyspaceName: TfArg.literal(leftover),
        tableName: TfArg.literal(leftover),
        schemaDefinition: KeyspacesTableSchemaDefinition(
          column: [
            KeyspacesTableSchemaDefinitionColumn(
              name: TfArg.literal(leftover),
              type: TfArg.literal(leftover),
            ),
          ],
          partitionKey: [
            KeyspacesTableSchemaDefinitionPartitionKey(
              name: TfArg.literal(leftover),
            ),
          ],
        ),
      ),
    );

    add(
      AwsKinesisAccountSettings(
        localName: 'kinesis_account_settings',
      ),
    );

    add(
      AwsKinesisAnalyticsApplication(
        localName: 'kinesis_analytics_application',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsKinesisFirehoseDeliveryStream(
        localName: 'kinesis_firehose_delivery_stream',
        destination: TfArg.literal('elasticsearch'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsKinesisResourcePolicy(
        localName: 'kinesis_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsKinesisStream(
        localName: 'kinesis_stream',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsKinesisStreamConsumer(
        localName: 'kinesis_stream_consumer',
        name: TfArg.literal(leftover),
        streamArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsKinesisVideoStream(
        localName: 'kinesis_video_stream',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsKinesisanalyticsv2Application(
        localName: 'kinesisanalyticsv2_application',
        name: TfArg.literal(leftover),
        runtimeEnvironment: TfArg.literal('SQL-1_0'),
        serviceExecutionRole: TfArg.literal(arn),
      ),
    );

    add(
      AwsKinesisanalyticsv2ApplicationSnapshot(
        localName: 'kinesisanalyticsv2_application_snapshot',
        applicationName: TfArg.literal(leftover),
        snapshotName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsKmsAlias(
        localName: 'kms_alias',
        targetKeyId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsKmsCiphertext(
        localName: 'kms_ciphertext',
        keyId: TfArg.literal(leftover),
        plaintext: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsKmsCustomKeyStore(
        localName: 'kms_custom_key_store',
        customKeyStoreName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsKmsExternalKey(
        localName: 'kms_external_key',
      ),
    );

    add(
      AwsKmsGrant(
        localName: 'kms_grant',
        granteePrincipal: TfArg.literal(arn),
        keyId: TfArg.literal(leftover),
        operations: TfArg.literal(['Decrypt']),
      ),
    );

    add(
      AwsKmsKey(
        localName: 'kms_key',
      ),
    );

    add(
      AwsKmsKeyPolicy(
        localName: 'kms_key_policy',
        keyId: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsKmsReplicaExternalKey(
        localName: 'kms_replica_external_key',
        primaryKeyArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsKmsReplicaKey(
        localName: 'kms_replica_key',
        primaryKeyArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsLakeformationDataCellsFilter(
        localName: 'lakeformation_data_cells_filter',
        tableData: [
          LakeformationDataCellsFilterTableData(
            databaseName: TfArg.literal(leftover),
            name: TfArg.literal(leftover),
            tableCatalogId: TfArg.literal(leftover),
            tableName: TfArg.literal(leftover),
            columnNames: TfArg.literal([leftover]),
            rowFilter: [
              LakeformationDataCellsFilterTableDataRowFilter(
                filterExpression: TfArg.literal(leftover),
              ),
            ],
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
        instanceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsLakeformationLfTag(
        localName: 'lakeformation_lf_tag',
        key: TfArg.literal(leftover),
        values: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsLakeformationLfTagExpression(
        localName: 'lakeformation_lf_tag_expression',
        name: TfArg.literal(leftover),
        expression: [
          LakeformationLfTagExpressionExpression(
            tagKey: TfArg.literal(leftover),
            tagValues: TfArg.literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsLakeformationOptIn(
        localName: 'lakeformation_opt_in',
        principal: [
          LakeformationOptInPrincipal(
            dataLakePrincipalIdentifier: TfArg.literal(leftover),
          ),
        ],
        resourceData: [
          LakeformationOptInResourceData(
            database: [
              LakeformationOptInResourceDataDatabase(
                name: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsLakeformationPermissions(
        localName: 'lakeformation_permissions',
        permissions: TfArg.literal(['ALL']),
        principal: TfArg.literal(arn),
        catalogResource: TfArg.literal(true),
      ),
    );

    add(
      AwsLakeformationResource(
        localName: 'lakeformation_resource',
        arn: TfArg.literal(arn),
      ),
    );

    add(
      AwsLakeformationResourceLfTag(
        localName: 'lakeformation_resource_lf_tag',
        lfTag: [
          LakeformationResourceLfTagLfTag(
            key: TfArg.literal(leftover),
            value: TfArg.literal(leftover),
          ),
        ],
        database: [
          LakeformationResourceLfTagDatabase(
            name: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsLakeformationResourceLfTags(
        localName: 'lakeformation_resource_lf_tags',
        lfTag: [
          LakeformationResourceLfTagsLfTag(
            key: TfArg.literal(leftover),
            value: TfArg.literal(leftover),
          ),
        ],
        database: LakeformationResourceLfTagsDatabase(
          name: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsLambdaAlias(
        localName: 'lambda_alias',
        functionName: TfArg.literal(leftover),
        functionVersion: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLambdaCapacityProvider(
        localName: 'lambda_capacity_provider',
        name: TfArg.literal(leftover),
        vpcConfig: [
          LambdaCapacityProviderVpcConfig(
            securityGroupIds: TfArg.literal([leftover]),
            subnetIds: TfArg.literal([leftover]),
          ),
        ],
        permissionsConfig: [
          LambdaCapacityProviderPermissionsConfig(
            capacityProviderOperatorRoleArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsLambdaCodeSigningConfig(
        localName: 'lambda_code_signing_config',
        allowedPublishers: LambdaCodeSigningConfigAllowedPublishers(
          signingProfileVersionArns: TfArg.literal([arn]),
        ),
      ),
    );

    add(
      AwsLambdaEventSourceMapping(
        localName: 'lambda_event_source_mapping',
        functionName: TfArg.literal(leftover),
        eventSourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsLambdaFunctionEventInvokeConfig(
        localName: 'lambda_function_event_invoke_config',
        functionName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLambdaFunctionRecursionConfig(
        localName: 'lambda_function_recursion_config',
        functionName: TfArg.literal(leftover),
        recursiveLoop: TfArg.literal('Allow'),
      ),
    );

    add(
      AwsLambdaFunctionScalingConfig(
        localName: 'lambda_function_scaling_config',
        functionName: TfArg.literal(leftover),
        qualifier: TfArg.literal('1'),
        functionScalingConfig: [
          LambdaFunctionScalingConfigFunctionScalingConfig(
            maxExecutionEnvironments: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsLambdaInvocation(
        localName: 'lambda_invocation',
        functionName: TfArg.literal(leftover),
        input: TfArg.literal(policy),
      ),
    );

    add(
      AwsLambdaLayerVersion(
        localName: 'lambda_layer_version',
        layerName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLambdaLayerVersionPermission(
        localName: 'lambda_layer_version_permission',
        action: TfArg.literal(leftover),
        layerName: TfArg.literal(leftover),
        principal: TfArg.literal(leftover),
        statementId: TfArg.literal(leftover),
        versionNumber: TfArg.literal(200),
      ),
    );

    add(
      AwsLambdaPermission(
        localName: 'lambda_permission',
        action: TfArg.literal('lambda:InvokeFunction'),
        functionName: TfArg.literal(leftover),
        principal: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLambdaProvisionedConcurrencyConfig(
        localName: 'lambda_provisioned_concurrency_config',
        functionName: TfArg.literal(leftover),
        provisionedConcurrentExecutions: TfArg.literal(200),
        qualifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLambdaResourcePolicy(
        localName: 'lambda_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsLambdaRuntimeManagementConfig(
        localName: 'lambda_runtime_management_config',
        functionName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLambdacoreNetworkConnector(
        localName: 'lambdacore_network_connector',
        name: TfArg.literal(leftover),
        operatorRole: TfArg.literal(arn),
        configuration: [
          LambdacoreNetworkConnectorConfiguration(
            vpcEgressConfiguration: [
              LambdacoreNetworkConnectorConfigurationVpcEgressConfiguration(
                associatedComputeResourceTypes: TfArg.literal(['MicroVm']),
                securityGroupIds: TfArg.literal([leftover]),
                subnetIds: TfArg.literal([leftover]),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsLambdamicrovmsImage(
        localName: 'lambdamicrovms_image',
        baseImageArn: TfArg.literal(arn),
        buildRoleArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        codeArtifact: [
          LambdamicrovmsImageCodeArtifact(
            uri: TfArg.literal('https://example.com'),
          ),
        ],
      ),
    );

    add(
      AwsLambdamicrovmsMicrovm(
        localName: 'lambdamicrovms_microvm',
        imageArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsLaunchConfiguration(
        localName: 'launch_configuration',
        imageId: TfArg.literal(leftover),
        instanceType: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLaunchTemplate(
        localName: 'launch_template',
      ),
    );

    add(
      AwsLb(
        localName: 'lb',
        subnetMapping: [
          LbSubnetMapping(
            subnetId: TfArg.literal('subnet-0123456789abcdef0'),
          ),
        ],
      ),
    );

    add(
      AwsLbCookieStickinessPolicy(
        localName: 'lb_cookie_stickiness_policy',
        lbPort: TfArg.literal(200),
        loadBalancer: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLbListener(
        localName: 'lb_listener',
        loadBalancerArn: TfArg.literal(arn),
        defaultAction: [
          LbListenerDefaultAction(
            type: TfArg.literal('forward'),
          ),
        ],
      ),
    );

    add(
      AwsLbListenerCertificate(
        localName: 'lb_listener_certificate',
        certificateArn: TfArg.literal(arn),
        listenerArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsLbListenerRule(
        localName: 'lb_listener_rule',
        listenerArn: TfArg.literal(arn),
        action: [
          LbListenerRuleAction(
            type: TfArg.literal('forward'),
          ),
        ],
        condition: [
          LbListenerRuleCondition(
            hostHeader: LbListenerRuleConditionHostHeader(
              regexValues: TfArg.literal([leftover]),
            ),
          ),
        ],
      ),
    );

    add(
      AwsLbSslNegotiationPolicy(
        localName: 'lb_ssl_negotiation_policy',
        lbPort: TfArg.literal(200),
        loadBalancer: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLbTargetGroup(
        localName: 'lb_target_group',
      ),
    );

    add(
      AwsLbTargetGroupAttachment(
        localName: 'lb_target_group_attachment',
        targetGroupArn: TfArg.literal(arn),
        targetId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLbTrustStore(
        localName: 'lb_trust_store',
        caCertificatesBundleS3Bucket: TfArg.literal(leftover),
        caCertificatesBundleS3Key: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLbTrustStoreRevocation(
        localName: 'lb_trust_store_revocation',
        revocationsS3Bucket: TfArg.literal(leftover),
        revocationsS3Key: TfArg.literal(leftover),
        trustStoreArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsLexBot(
        localName: 'lex_bot',
        childDirected: TfArg.literal(true),
        name: TfArg.literal(leftover),
        abortStatement: LexBotAbortStatement(
          message: [
            LexBotAbortStatementMessage(
              content: TfArg.literal(leftover),
              contentType: TfArg.literal('PlainText'),
            ),
          ],
        ),
        intent: [
          LexBotIntent(
            intentName: TfArg.literal(leftover),
            intentVersion: TfArg.literal('\$LATEST'),
          ),
        ],
      ),
    );

    add(
      AwsLexBotAlias(
        localName: 'lex_bot_alias',
        botName: TfArg.literal(leftover),
        botVersion: TfArg.literal('\$LATEST'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLexIntent(
        localName: 'lex_intent',
        name: TfArg.literal(leftover),
        fulfillmentActivity: LexIntentFulfillmentActivity(
          type: TfArg.literal('ReturnIntent'),
        ),
      ),
    );

    add(
      AwsLexSlotType(
        localName: 'lex_slot_type',
        name: TfArg.literal(leftover),
        enumerationValue: [
          LexSlotTypeEnumerationValue(
            value: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsLexv2modelsBot(
        localName: 'lexv2models_bot',
        idleSessionTtlInSeconds: TfArg.literal(200),
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        dataPrivacy: [
          Lexv2modelsBotDataPrivacy(
            childDirected: TfArg.literal(true),
          ),
        ],
      ),
    );

    add(
      AwsLexv2modelsBotLocale(
        localName: 'lexv2models_bot_locale',
        botId: TfArg.literal(leftover),
        botVersion: TfArg.literal(leftover),
        localeId: TfArg.literal(leftover),
        nLuIntentConfidenceThreshold: TfArg.literal(200),
      ),
    );

    add(
      AwsLexv2modelsBotVersion(
        localName: 'lexv2models_bot_version',
        botId: TfArg.literal(leftover),
        localeSpecification: TfArg.literal({
          'en_US': {'source_bot_version': 'DRAFT'},
        }),
      ),
    );

    add(
      AwsLexv2modelsIntent(
        localName: 'lexv2models_intent',
        botId: TfArg.literal(leftover),
        botVersion: TfArg.literal(leftover),
        localeId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLexv2modelsSlot(
        localName: 'lexv2models_slot',
        botId: TfArg.literal(leftover),
        botVersion: TfArg.literal(leftover),
        intentId: TfArg.literal(leftover),
        localeId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        valueElicitationSetting: [
          Lexv2modelsSlotValueElicitationSetting(
            slotConstraint: TfArg.literal('Required'),
          ),
        ],
      ),
    );

    add(
      AwsLexv2modelsSlotType(
        localName: 'lexv2models_slot_type',
        botId: TfArg.literal(leftover),
        botVersion: TfArg.literal(leftover),
        localeId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLicensemanagerAssociation(
        localName: 'licensemanager_association',
        licenseConfigurationArn: TfArg.literal(arn),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsLicensemanagerGrant(
        localName: 'licensemanager_grant',
        allowedOperations: TfArg.literal(['CreateGrant']),
        licenseArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        principal: TfArg.literal(arn),
      ),
    );

    add(
      AwsLicensemanagerGrantAccepter(
        localName: 'licensemanager_grant_accepter',
        grantArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsLicensemanagerLicenseConfiguration(
        localName: 'licensemanager_license_configuration',
        licenseCountingType: TfArg.literal('vCPU'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailBucket(
        localName: 'lightsail_bucket',
        bundleId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailBucketAccessKey(
        localName: 'lightsail_bucket_access_key',
        bucketName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailBucketResourceAccess(
        localName: 'lightsail_bucket_resource_access',
        bucketName: TfArg.literal(leftover),
        resourceName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailCertificate(
        localName: 'lightsail_certificate',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailContainerService(
        localName: 'lightsail_container_service',
        name: TfArg.literal(leftover),
        power: TfArg.literal('nano'),
        scale: TfArg.literal(1),
      ),
    );

    add(
      AwsLightsailContainerServiceDeploymentVersion(
        localName: 'lightsail_container_service_deployment_version',
        serviceName: TfArg.literal(leftover),
        container: [
          LightsailContainerServiceDeploymentVersionContainer(
            containerName: TfArg.literal(leftover),
            image: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsLightsailDatabase(
        localName: 'lightsail_database',
        blueprintId: TfArg.literal(leftover),
        bundleId: TfArg.literal(leftover),
        masterDatabaseName: TfArg.literal(leftover),
        masterPassword: TfArg.variable('leftover_secret'),
        masterUsername: TfArg.literal(leftover),
        relationalDatabaseName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailDisk(
        localName: 'lightsail_disk',
        availabilityZone: TfArg.literal('us-east-1a'),
        name: TfArg.literal(leftover),
        sizeInGb: TfArg.literal(200),
      ),
    );

    add(
      AwsLightsailDiskAttachment(
        localName: 'lightsail_disk_attachment',
        diskName: TfArg.literal(leftover),
        diskPath: TfArg.literal(leftover),
        instanceName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailDistribution(
        localName: 'lightsail_distribution',
        bundleId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        defaultCacheBehavior: LightsailDistributionDefaultCacheBehavior(
          behavior: TfArg.literal('dont-cache'),
        ),
        origin: LightsailDistributionOrigin(
          name: TfArg.literal(leftover),
          regionName: TfArg.literal('us-east-1'),
        ),
      ),
    );

    add(
      AwsLightsailDomain(
        localName: 'lightsail_domain',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailDomainEntry(
        localName: 'lightsail_domain_entry',
        domainName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        target: TfArg.literal(leftover),
        type: TfArg.literal('A'),
      ),
    );

    add(
      AwsLightsailInstance(
        localName: 'lightsail_instance',
        availabilityZone: TfArg.literal('us-east-1a'),
        blueprintId: TfArg.literal(leftover),
        bundleId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailInstancePublicPorts(
        localName: 'lightsail_instance_public_ports',
        instanceName: TfArg.literal(leftover),
        portInfo: [
          LightsailInstancePublicPortsPortInfo(
            fromPort: TfArg.literal(200),
            protocol: TfArg.literal('tcp'),
            toPort: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsLightsailKeyPair(
        localName: 'lightsail_key_pair',
      ),
    );

    add(
      AwsLightsailLb(
        localName: 'lightsail_lb',
        instancePort: TfArg.literal(200),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailLbAttachment(
        localName: 'lightsail_lb_attachment',
        instanceName: TfArg.literal(leftover),
        lbName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailLbCertificate(
        localName: 'lightsail_lb_certificate',
        lbName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailLbCertificateAttachment(
        localName: 'lightsail_lb_certificate_attachment',
        certificateName: TfArg.literal(leftover),
        lbName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailLbHttpsRedirectionPolicy(
        localName: 'lightsail_lb_https_redirection_policy',
        enabled: TfArg.literal(true),
        lbName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailLbStickinessPolicy(
        localName: 'lightsail_lb_stickiness_policy',
        cookieDuration: TfArg.literal(200),
        enabled: TfArg.literal(true),
        lbName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailStaticIp(
        localName: 'lightsail_static_ip',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLightsailStaticIpAttachment(
        localName: 'lightsail_static_ip_attachment',
        instanceName: TfArg.literal(leftover),
        staticIpName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLoadBalancerBackendServerPolicy(
        localName: 'load_balancer_backend_server_policy',
        instancePort: TfArg.literal(200),
        loadBalancerName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLoadBalancerListenerPolicy(
        localName: 'load_balancer_listener_policy',
        loadBalancerName: TfArg.literal(leftover),
        loadBalancerPort: TfArg.literal(200),
      ),
    );

    add(
      AwsLoadBalancerPolicy(
        localName: 'load_balancer_policy',
        loadBalancerName: TfArg.literal(leftover),
        policyName: TfArg.literal(leftover),
        policyTypeName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLocationGeofenceCollection(
        localName: 'location_geofence_collection',
        collectionName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLocationMap(
        localName: 'location_map',
        mapName: TfArg.literal(leftover),
        configuration: LocationMapConfiguration(
          style: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsLocationPlaceIndex(
        localName: 'location_place_index',
        dataSource: TfArg.literal(leftover),
        indexName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLocationRouteCalculator(
        localName: 'location_route_calculator',
        calculatorName: TfArg.literal(leftover),
        dataSource: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLocationTracker(
        localName: 'location_tracker',
        trackerName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsLocationTrackerAssociation(
        localName: 'location_tracker_association',
        consumerArn: TfArg.literal(arn),
        trackerName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsM2Application(
        localName: 'm2_application',
        engineType: TfArg.literal('microfocus'),
        name: TfArg.literal(leftover),
        definition: [
          M2ApplicationDefinition(
            content: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsM2Deployment(
        localName: 'm2_deployment',
        applicationId: TfArg.literal(leftover),
        applicationVersion: TfArg.literal(200),
        environmentId: TfArg.literal(leftover),
        start: TfArg.literal(true),
      ),
    );

    add(
      AwsM2Environment(
        localName: 'm2_environment',
        engineType: TfArg.literal('microfocus'),
        instanceType: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMacie2Account(
        localName: 'macie2_account',
      ),
    );

    add(
      AwsMacie2ClassificationExportConfiguration(
        localName: 'macie2_classification_export_configuration',
        s3Destination: Macie2ClassificationExportConfigurationS3Destination(
          bucketName: TfArg.literal(leftover),
          kmsKeyArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsMacie2ClassificationJob(
        localName: 'macie2_classification_job',
        jobType: TfArg.literal('ONE_TIME'),
        s3JobDefinition: Macie2ClassificationJobS3JobDefinition(
          bucketCriteria: Macie2ClassificationJobS3JobDefinitionBucketCriteria(
            excludes:
                Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludes(
              and: [
                Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd(
                  simpleCriterion:
                      Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion(
                    comparator: TfArg.literal('EQ'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    add(
      AwsMacie2CustomDataIdentifier(
        localName: 'macie2_custom_data_identifier',
      ),
    );

    add(
      AwsMacie2FindingsFilter(
        localName: 'macie2_findings_filter',
        action: TfArg.literal('ARCHIVE'),
        findingCriteria: Macie2FindingsFilterFindingCriteria(
          criterion: [
            Macie2FindingsFilterFindingCriteriaCriterion(
              field: TfArg.literal(leftover),
            ),
          ],
        ),
      ),
    );

    add(
      AwsMacie2InvitationAccepter(
        localName: 'macie2_invitation_accepter',
        administratorAccountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsMacie2Member(
        localName: 'macie2_member',
        accountId: TfArg.literal('123456789012'),
        email: TfArg.literal('leftover@example.com'),
      ),
    );

    add(
      AwsMacie2OrganizationAdminAccount(
        localName: 'macie2_organization_admin_account',
        adminAccountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsMacie2OrganizationConfiguration(
        localName: 'macie2_organization_configuration',
        autoEnable: TfArg.literal(true),
      ),
    );

    add(
      AwsMailmanagerArchive(
        localName: 'mailmanager_archive',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMailmanagerIngressPoint(
        localName: 'mailmanager_ingress_point',
        name: TfArg.literal(leftover),
        ruleSetId: TfArg.literal(leftover),
        trafficPolicyId: TfArg.literal(leftover),
        type: TfArg.literal('OPEN'),
      ),
    );

    add(
      AwsMailmanagerRelay(
        localName: 'mailmanager_relay',
        name: TfArg.literal(leftover),
        serverName: TfArg.literal(leftover),
        serverPort: TfArg.literal(200),
      ),
    );

    add(
      AwsMailmanagerRuleSet(
        localName: 'mailmanager_rule_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMailmanagerTrafficPolicy(
        localName: 'mailmanager_traffic_policy',
        defaultAction: TfArg.literal('ALLOW'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMainRouteTableAssociation(
        localName: 'main_route_table_association',
        routeTableId: TfArg.literal(leftover),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsMediaConvertQueue(
        localName: 'media_convert_queue',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMediaPackageChannel(
        localName: 'media_package_channel',
        channelId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMediaPackagev2ChannelGroup(
        localName: 'media_packagev2_channel_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMediaStoreContainer(
        localName: 'media_store_container',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMediaStoreContainerPolicy(
        localName: 'media_store_container_policy',
        containerName: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsMedialiveChannel(
        localName: 'medialive_channel',
        channelClass: TfArg.literal('STANDARD'),
        name: TfArg.literal(leftover),
        destinations: [
          MedialiveChannelDestinations(
            id: TfArg.literal(leftover),
          ),
        ],
        encoderSettings: MedialiveChannelEncoderSettings(
          outputGroups: [
            MedialiveChannelEncoderSettingsOutputGroups(
              outputGroupSettings:
                  MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettings(
                archiveGroupSettings: [
                  MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettings(
                    destination:
                        MedialiveChannelEncoderSettingsOutputGroupsOutputGroupSettingsArchiveGroupSettingsDestination(
                      destinationRefId: TfArg.literal(leftover),
                    ),
                  ),
                ],
              ),
              outputs: [
                MedialiveChannelEncoderSettingsOutputGroupsOutputs(
                  outputSettings:
                      MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettings(
                    archiveOutputSettings:
                        MedialiveChannelEncoderSettingsOutputGroupsOutputsOutputSettingsArchiveOutputSettings(
                      extension: TfArg.literal(leftover),
                    ),
                  ),
                ),
              ],
            ),
          ],
          timecodeConfig: MedialiveChannelEncoderSettingsTimecodeConfig(
            source: TfArg.literal('EMBEDDED'),
          ),
        ),
        inputAttachments: [
          MedialiveChannelInputAttachments(
            inputAttachmentName: TfArg.literal(leftover),
            inputId: TfArg.literal(leftover),
          ),
        ],
        inputSpecification: MedialiveChannelInputSpecification(
          codec: TfArg.literal('MPEG2'),
          inputResolution: TfArg.literal('SD'),
          maximumBitrate: TfArg.literal('MAX_10_MBPS'),
        ),
      ),
    );

    add(
      AwsMedialiveInput(
        localName: 'medialive_input',
        name: TfArg.literal(leftover),
        type: TfArg.literal('UDP_PUSH'),
      ),
    );

    add(
      AwsMedialiveInputSecurityGroup(
        localName: 'medialive_input_security_group',
        whitelistRules: [
          MedialiveInputSecurityGroupWhitelistRules(
            cidr: TfArg.literal('10.0.0.0/16'),
          ),
        ],
      ),
    );

    add(
      AwsMedialiveMultiplex(
        localName: 'medialive_multiplex',
        availabilityZones: TfArg.literal([
          'us-east-1a',
          'us-east-1a1',
        ]),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMedialiveMultiplexProgram(
        localName: 'medialive_multiplex_program',
        multiplexId: TfArg.literal(leftover),
        programName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMemorydbAcl(
        localName: 'memorydb_acl',
      ),
    );

    add(
      AwsMemorydbCluster(
        localName: 'memorydb_cluster',
        aclName: TfArg.literal(leftover),
        nodeType: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMemorydbMultiRegionCluster(
        localName: 'memorydb_multi_region_cluster',
        multiRegionClusterNameSuffix: TfArg.literal(leftover),
        nodeType: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMemorydbParameterGroup(
        localName: 'memorydb_parameter_group',
        family: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMemorydbSnapshot(
        localName: 'memorydb_snapshot',
        clusterName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMemorydbSubnetGroup(
        localName: 'memorydb_subnet_group',
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsMemorydbUser(
        localName: 'memorydb_user',
        accessString: TfArg.literal(leftover),
        userName: TfArg.literal(leftover),
        authenticationMode: MemorydbUserAuthenticationMode(
          type: TfArg.literal('password'),
        ),
      ),
    );

    add(
      AwsMqBroker(
        localName: 'mq_broker',
        brokerName: TfArg.literal(leftover),
        engineType: TfArg.literal('ACTIVEMQ'),
        engineVersion: TfArg.literal(leftover),
        hostInstanceType: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMqConfiguration(
        localName: 'mq_configuration',
        data: TfArg.literal(leftover),
        engineType: TfArg.literal('ACTIVEMQ'),
        engineVersion: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMskChannel(
        localName: 'msk_channel',
        channelName: TfArg.literal(leftover),
        clusterArn: TfArg.literal(arn),
        topicConfiguration: [
          MskChannelTopicConfiguration(
            topicArn: TfArg.literal(arn),
            recordConverter: [
              MskChannelTopicConfigurationRecordConverter(
                valueConverter: TfArg.literal('BYTE_ARRAY'),
              ),
            ],
          ),
        ],
        icebergDestination: [
          MskChannelIcebergDestination(
            appendOnly: TfArg.literal(true),
            serviceExecutionRoleArn: TfArg.literal(arn),
            deadLetterQueueS3: [
              MskChannelIcebergDestinationDeadLetterQueueS3(
                bucketArn: TfArg.literal(arn),
              ),
            ],
            destinationTable: [
              MskChannelIcebergDestinationDestinationTable(
                destinationDatabaseName: TfArg.literal(leftover),
              ),
            ],
            schemaEvolution: [
              MskChannelIcebergDestinationSchemaEvolution(
                enableSchemaEvolution: TfArg.literal(true),
              ),
            ],
            tableCreation: [
              MskChannelIcebergDestinationTableCreation(
                enableTableCreation: TfArg.literal(true),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsMskCluster(
        localName: 'msk_cluster',
        clusterName: TfArg.literal(leftover),
        kafkaVersion: TfArg.literal(leftover),
        numberOfBrokerNodes: TfArg.literal(200),
        brokerNodeGroupInfo: MskClusterBrokerNodeGroupInfo(
          clientSubnets: TfArg.literal([leftover]),
          instanceType: TfArg.literal(leftover),
          securityGroups: TfArg.literal([leftover]),
        ),
      ),
    );

    add(
      AwsMskClusterPolicy(
        localName: 'msk_cluster_policy',
        clusterArn: TfArg.literal(arn),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsMskConfiguration(
        localName: 'msk_configuration',
        name: TfArg.literal(leftover),
        serverProperties: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMskReplicator(
        localName: 'msk_replicator',
        replicatorName: TfArg.literal(leftover),
        serviceExecutionRoleArn: TfArg.literal(arn),
        kafkaCluster: [
          MskReplicatorKafkaCluster(
            amazonMskCluster: MskReplicatorKafkaClusterAmazonMskCluster(
              mskClusterArn: TfArg.literal(arn),
            ),
          ),
          MskReplicatorKafkaCluster(
            amazonMskCluster: MskReplicatorKafkaClusterAmazonMskCluster(
              mskClusterArn: TfArg.literal(arn),
            ),
          ),
        ],
        replicationInfoList: MskReplicatorReplicationInfoList(
          targetCompressionType: TfArg.literal(leftover),
          consumerGroupReplication: [
            MskReplicatorReplicationInfoListConsumerGroupReplication(
              consumerGroupsToReplicate: TfArg.literal([leftover]),
            ),
          ],
          topicReplication: [
            MskReplicatorReplicationInfoListTopicReplication(
              topicsToReplicate: TfArg.literal([leftover]),
            ),
          ],
          sourceKafkaClusterArn: TfArg.literal(arn),
          targetKafkaClusterArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsMskScramSecretAssociation(
        localName: 'msk_scram_secret_association',
        clusterArn: TfArg.literal(arn),
        secretArnList: TfArg.literal([arn]),
      ),
    );

    add(
      AwsMskServerlessCluster(
        localName: 'msk_serverless_cluster',
        clusterName: TfArg.literal(leftover),
        clientAuthentication: MskServerlessClusterClientAuthentication(
          sasl: MskServerlessClusterClientAuthenticationSasl(
            iam: MskServerlessClusterClientAuthenticationSaslIam(
              enabled: TfArg.literal(true),
            ),
          ),
        ),
        vpcConfig: [
          MskServerlessClusterVpcConfig(
            subnetIds: TfArg.literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsMskSingleScramSecretAssociation(
        localName: 'msk_single_scram_secret_association',
        clusterArn: TfArg.literal(arn),
        secretArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsMskTopic(
        localName: 'msk_topic',
        clusterArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        partitionCount: TfArg.literal(200),
        replicationFactor: TfArg.literal(200),
      ),
    );

    add(
      AwsMskVpcConnection(
        localName: 'msk_vpc_connection',
        authentication: TfArg.literal(leftover),
        clientSubnets: TfArg.literal([leftover]),
        securityGroups: TfArg.literal([leftover]),
        targetClusterArn: TfArg.literal(arn),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsMskconnectConnector(
        localName: 'mskconnect_connector',
        connectorConfiguration: TfArg.literal({'k': leftover}),
        kafkaconnectVersion: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        serviceExecutionRoleArn: TfArg.literal(arn),
        capacity: MskconnectConnectorCapacity(
          autoscaling: MskconnectConnectorCapacityAutoscaling(
            maxWorkerCount: TfArg.literal(1),
            minWorkerCount: TfArg.literal(1),
          ),
        ),
        kafkaCluster: MskconnectConnectorKafkaCluster(
          apacheKafkaCluster: MskconnectConnectorKafkaClusterApacheKafkaCluster(
            bootstrapServers: TfArg.literal(leftover),
            vpc: MskconnectConnectorKafkaClusterApacheKafkaClusterVpc(
              securityGroups: TfArg.literal([leftover]),
              subnets: TfArg.literal([leftover]),
            ),
          ),
        ),
        kafkaClusterClientAuthentication:
            MskconnectConnectorKafkaClusterClientAuthentication(
          authenticationType: TfArg.literal('NONE'),
        ),
        kafkaClusterEncryptionInTransit:
            MskconnectConnectorKafkaClusterEncryptionInTransit(
          encryptionType: TfArg.literal('PLAINTEXT'),
        ),
        plugin: [
          MskconnectConnectorPlugin(
            customPlugin: MskconnectConnectorPluginCustomPlugin(
              arn: TfArg.literal(arn),
              revision: TfArg.literal(200),
            ),
          ),
        ],
      ),
    );

    add(
      AwsMskconnectCustomPlugin(
        localName: 'mskconnect_custom_plugin',
        contentType: TfArg.literal('JAR'),
        name: TfArg.literal(leftover),
        location: MskconnectCustomPluginLocation(
          s3: MskconnectCustomPluginLocationS3(
            bucketArn: TfArg.literal(arn),
            fileKey: TfArg.literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsMskconnectWorkerConfiguration(
        localName: 'mskconnect_worker_configuration',
        name: TfArg.literal(leftover),
        propertiesFileContent: TfArg.literal(leftover),
      ),
    );

    add(
      AwsMwaaEnvironment(
        localName: 'mwaa_environment',
        dagS3Path: TfArg.literal(leftover),
        executionRoleArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        sourceBucketArn: TfArg.literal(arn),
        networkConfiguration: MwaaEnvironmentNetworkConfiguration(
          securityGroupIds: TfArg.literal([leftover]),
          subnetIds: TfArg.literal([
            leftover,
            'leftover1',
          ]),
        ),
      ),
    );

    add(
      AwsNatGateway(
        localName: 'nat_gateway',
      ),
    );

    add(
      AwsNatGatewayEipAssociation(
        localName: 'nat_gateway_eip_association',
        allocationId: TfArg.literal(leftover),
        natGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNeptuneCluster(
        localName: 'neptune_cluster',
      ),
    );

    add(
      AwsNeptuneClusterEndpoint(
        localName: 'neptune_cluster_endpoint',
        clusterEndpointIdentifier: TfArg.literal(leftover),
        clusterIdentifier: TfArg.literal(leftover),
        endpointType: TfArg.literal('ANY'),
      ),
    );

    add(
      AwsNeptuneClusterInstance(
        localName: 'neptune_cluster_instance',
        clusterIdentifier: TfArg.literal(leftover),
        instanceClass: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNeptuneClusterParameterGroup(
        localName: 'neptune_cluster_parameter_group',
        family: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNeptuneClusterSnapshot(
        localName: 'neptune_cluster_snapshot',
        dbClusterIdentifier: TfArg.literal(leftover),
        dbClusterSnapshotIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNeptuneEventSubscription(
        localName: 'neptune_event_subscription',
        snsTopicArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNeptuneGlobalCluster(
        localName: 'neptune_global_cluster',
        globalClusterIdentifier: TfArg.literal(leftover),
        engine: TfArg.literal('neptune'),
      ),
    );

    add(
      AwsNeptuneParameterGroup(
        localName: 'neptune_parameter_group',
        family: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNeptuneSubnetGroup(
        localName: 'neptune_subnet_group',
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsNeptunegraphGraph(
        localName: 'neptunegraph_graph',
        provisionedMemory: TfArg.literal(8),
      ),
    );

    add(
      AwsNeptunegraphPrivateGraphEndpoint(
        localName: 'neptunegraph_private_graph_endpoint',
        graphIdentifier: TfArg.literal(leftover),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkAcl(
        localName: 'network_acl',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkAclAssociation(
        localName: 'network_acl_association',
        networkAclId: TfArg.literal(leftover),
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkAclRule(
        localName: 'network_acl_rule',
        networkAclId: TfArg.literal(leftover),
        protocol: TfArg.literal('tcp'),
        ruleAction: TfArg.literal('allow'),
        ruleNumber: TfArg.literal(200),
        cidrBlock: TfArg.literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsNetworkInterface(
        localName: 'network_interface',
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkInterfaceAttachment(
        localName: 'network_interface_attachment',
        deviceIndex: TfArg.literal(200),
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        networkInterfaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkInterfacePermission(
        localName: 'network_interface_permission',
        awsAccountId: TfArg.literal('123456789012'),
        networkInterfaceId: TfArg.literal(leftover),
        permission: TfArg.literal('INSTANCE-ATTACH'),
      ),
    );

    add(
      AwsNetworkInterfaceSgAttachment(
        localName: 'network_interface_sg_attachment',
        networkInterfaceId: TfArg.literal(leftover),
        securityGroupId: TfArg.literal('sg-0123456789abcdef0'),
      ),
    );

    add(
      AwsNetworkfirewallContainerAssociation(
        localName: 'networkfirewall_container_association',
        containerAssociationName: TfArg.literal(leftover),
        type: TfArg.literal('ECS'),
        containerMonitoringConfiguration: [
          NetworkfirewallContainerAssociationContainerMonitoringConfiguration(
            clusterArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsNetworkfirewallFirewall(
        localName: 'networkfirewall_firewall',
        firewallPolicyArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        transitGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkfirewallFirewallPolicy(
        localName: 'networkfirewall_firewall_policy',
        name: TfArg.literal(leftover),
        firewallPolicy: NetworkfirewallFirewallPolicyFirewallPolicy(
          statelessDefaultActions: TfArg.literal([leftover]),
          statelessFragmentDefaultActions: TfArg.literal([leftover]),
        ),
      ),
    );

    add(
      AwsNetworkfirewallFirewallTransitGatewayAttachmentAccepter(
        localName: 'networkfirewall_firewall_transit_gateway_attachm',
        transitGatewayAttachmentId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkfirewallLoggingConfiguration(
        localName: 'networkfirewall_logging_configuration',
        firewallArn: TfArg.literal(arn),
        loggingConfiguration:
            NetworkfirewallLoggingConfigurationLoggingConfiguration(
          logDestinationConfig: [
            NetworkfirewallLoggingConfigurationLoggingConfigurationLogDestinationConfig(
              logDestination: TfArg.literal({'bucketName': leftover}),
              logDestinationType: TfArg.literal('S3'),
              logType: TfArg.literal('FLOW'),
            ),
          ],
        ),
      ),
    );

    add(
      AwsNetworkfirewallResourcePolicy(
        localName: 'networkfirewall_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNetworkfirewallRuleGroup(
        localName: 'networkfirewall_rule_group',
        capacity: TfArg.literal(200),
        name: TfArg.literal(leftover),
        type: TfArg.literal('STATELESS'),
      ),
    );

    add(
      AwsNetworkfirewallTlsInspectionConfiguration(
        localName: 'networkfirewall_tls_inspection_configuration',
        name: TfArg.literal(leftover),
        tlsInspectionConfiguration: [
          NetworkfirewallTlsInspectionConfigurationTlsInspectionConfiguration(
            serverCertificateConfiguration: [
              NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration(
                scope: [
                  NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope(
                    protocols: TfArg.literal([6]),
                    destination: [
                      NetworkfirewallTlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestination(
                        addressDefinition: TfArg.literal('10.0.0.0/16'),
                      ),
                    ],
                  ),
                ],
                certificateAuthorityArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsNetworkfirewallVpcEndpointAssociation(
        localName: 'networkfirewall_vpc_endpoint_association',
        firewallArn: TfArg.literal(arn),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
        subnetMapping: [
          NetworkfirewallVpcEndpointAssociationSubnetMapping(
            subnetId: TfArg.literal('subnet-0123456789abcdef0'),
          ),
        ],
      ),
    );

    add(
      AwsNetworkflowmonitorMonitor(
        localName: 'networkflowmonitor_monitor',
        monitorName: TfArg.literal(leftover),
        scopeArn: TfArg.literal(arn),
        localResource: [
          NetworkflowmonitorMonitorLocalResource(
            identifier: TfArg.literal(leftover),
            type: TfArg.literal('AWS::EC2::VPC'),
          ),
        ],
      ),
    );

    add(
      AwsNetworkflowmonitorScope(
        localName: 'networkflowmonitor_scope',
        target: [
          NetworkflowmonitorScopeTarget(
            region: TfArg.literal('us-east-1'),
            targetIdentifier: [
              NetworkflowmonitorScopeTargetTargetIdentifier(
                targetType: TfArg.literal('ACCOUNT'),
                targetId: [
                  NetworkflowmonitorScopeTargetTargetIdentifierTargetId(
                    accountId: TfArg.literal('123456789012'),
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
        attachmentId: TfArg.literal(leftover),
        attachmentType: TfArg.literal('CONNECT'),
      ),
    );

    add(
      AwsNetworkmanagerAttachmentRoutingPolicyLabel(
        localName: 'networkmanager_attachment_routing_policy_label',
        attachmentId: TfArg.literal(leftover),
        coreNetworkId: TfArg.literal(leftover),
        routingPolicyLabel: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerConnectAttachment(
        localName: 'networkmanager_connect_attachment',
        coreNetworkId: TfArg.literal('core-network-0123456789abcdef0'),
        edgeLocation: TfArg.literal(leftover),
        transportAttachmentId: TfArg.literal('attachment-0123456789abcdef0'),
        options: NetworkmanagerConnectAttachmentOptions(
          protocol: TfArg.literal('GRE'),
        ),
      ),
    );

    add(
      AwsNetworkmanagerConnectPeer(
        localName: 'networkmanager_connect_peer',
        connectAttachmentId: TfArg.literal('attachment-0123456789abcdef0'),
        peerAddress: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerConnection(
        localName: 'networkmanager_connection',
        connectedDeviceId: TfArg.literal(leftover),
        deviceId: TfArg.literal(leftover),
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerCoreNetwork(
        localName: 'networkmanager_core_network',
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerCoreNetworkPolicyAttachment(
        localName: 'networkmanager_core_network_policy_attachment',
        coreNetworkId: TfArg.literal('core-network-0123456789abcdef0'),
        policyDocument: TfArg.literal(policy),
      ),
    );

    add(
      AwsNetworkmanagerCustomerGatewayAssociation(
        localName: 'networkmanager_customer_gateway_association',
        customerGatewayArn: TfArg.literal(arn),
        deviceId: TfArg.literal(leftover),
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerDevice(
        localName: 'networkmanager_device',
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerDxGatewayAttachment(
        localName: 'networkmanager_dx_gateway_attachment',
        coreNetworkId: TfArg.literal(leftover),
        directConnectGatewayArn: TfArg.literal(arn),
        edgeLocations: TfArg.literal([leftover]),
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
        globalNetworkId: TfArg.literal(leftover),
        siteId: TfArg.literal(leftover),
        bandwidth: NetworkmanagerLinkBandwidth(
          downloadSpeed: TfArg.literal(200),
        ),
      ),
    );

    add(
      AwsNetworkmanagerLinkAssociation(
        localName: 'networkmanager_link_association',
        deviceId: TfArg.literal(leftover),
        globalNetworkId: TfArg.literal(leftover),
        linkId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerPrefixListAssociation(
        localName: 'networkmanager_prefix_list_association',
        coreNetworkId: TfArg.literal(leftover),
        prefixListAlias: TfArg.literal(leftover),
        prefixListArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerSite(
        localName: 'networkmanager_site',
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkmanagerSiteToSiteVpnAttachment(
        localName: 'networkmanager_site_to_site_vpn_attachment',
        coreNetworkId: TfArg.literal(leftover),
        vpnConnectionArn: TfArg.literal(
          'arn:aws:ec2:us-east-1:123456789012:vpn-connection/vpn-0123456789abcdef0',
        ),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayConnectPeerAssociation(
        localName: 'networkmanager_transit_gateway_connect_peer_asso',
        deviceId: TfArg.literal(leftover),
        globalNetworkId: TfArg.literal(leftover),
        transitGatewayConnectPeerArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayPeering(
        localName: 'networkmanager_transit_gateway_peering',
        coreNetworkId: TfArg.literal(leftover),
        transitGatewayArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayRegistration(
        localName: 'networkmanager_transit_gateway_registration',
        globalNetworkId: TfArg.literal(leftover),
        transitGatewayArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerTransitGatewayRouteTableAttachment(
        localName: 'networkmanager_transit_gateway_route_table_attac',
        peeringId: TfArg.literal(leftover),
        transitGatewayRouteTableArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNetworkmanagerVpcAttachment(
        localName: 'networkmanager_vpc_attachment',
        coreNetworkId: TfArg.literal(leftover),
        subnetArns: TfArg.literal([arn]),
        vpcArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNetworkmonitorMonitor(
        localName: 'networkmonitor_monitor',
        monitorName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNetworkmonitorProbe(
        localName: 'networkmonitor_probe',
        destination: TfArg.literal(leftover),
        monitorName: TfArg.literal(leftover),
        protocol: TfArg.literal('TCP'),
        sourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNotificationsChannelAssociation(
        localName: 'notifications_channel_association',
        arn: TfArg.literal(arn),
        notificationConfigurationArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNotificationsEventRule(
        localName: 'notifications_event_rule',
        eventType: TfArg.literal(leftover),
        notificationConfigurationArn: TfArg.literal(arn),
        regions: TfArg.literal([leftover]),
        source: TfArg.literal('awsO1avdq40u4icn'),
      ),
    );

    add(
      AwsNotificationsManagedNotificationAccountContactAssociation(
        localName: 'notifications_managed_notification_account_conta',
        contactIdentifier: TfArg.literal('ACCOUNT_PRIMARY'),
        managedNotificationConfigurationArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNotificationsManagedNotificationAdditionalChannelAssociation(
        localName: 'notifications_managed_notification_additional_ch',
        channelArn: TfArg.literal(arn),
        managedNotificationArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsNotificationsNotificationConfiguration(
        localName: 'notifications_notification_configuration',
        description: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNotificationsNotificationHub(
        localName: 'notifications_notification_hub',
        notificationHubRegion: TfArg.literal('us-east-1'),
      ),
    );

    add(
      AwsNotificationsOrganizationalUnitAssociation(
        localName: 'notifications_organizational_unit_association',
        notificationConfigurationArn: TfArg.literal(arn),
        organizationalUnitId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsNotificationsOrganizationsAccess(
        localName: 'notifications_organizations_access',
        enabled: TfArg.literal(true),
      ),
    );

    add(
      AwsNotificationscontactsEmailContact(
        localName: 'notificationscontacts_email_contact',
        emailAddress: TfArg.literal('leftover@example.com'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOamLink(
        localName: 'oam_link',
        labelTemplate: TfArg.literal(leftover),
        resourceTypes: TfArg.literal(['AWS::CloudWatch::Metric']),
        sinkIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOamSink(
        localName: 'oam_sink',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOamSinkPolicy(
        localName: 'oam_sink_policy',
        policy: TfArg.literal(policy),
        sinkIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsObservabilityadminCentralizationRuleForOrganization(
        localName: 'observabilityadmin_centralization_rule_for_organ',
        ruleName: TfArg.literal(leftover),
        rule: [
          ObservabilityadminCentralizationRuleForOrganizationRule(
            source: [
              ObservabilityadminCentralizationRuleForOrganizationRuleSource(
                regions: TfArg.literal(['us-east-1']),
                scope: TfArg.literal(leftover),
              ),
            ],
            destination: [
              ObservabilityadminCentralizationRuleForOrganizationRuleDestination(
                account: TfArg.literal('123456789012'),
                region: TfArg.literal('us-east-1'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsObservabilityadminS3TableIntegration(
        localName: 'observabilityadmin_s3_table_integration',
        roleArn: TfArg.literal(arn),
        encryption: [
          ObservabilityadminS3TableIntegrationEncryption(
            sseAlgorithm: TfArg.literal('aws:kms'),
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
        name: TfArg.literal(leftover),
        configuration: [
          ObservabilityadminTelemetryPipelineConfiguration(
            body: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsObservabilityadminTelemetryRule(
        localName: 'observabilityadmin_telemetry_rule',
        ruleName: TfArg.literal(leftover),
        rule: [
          ObservabilityadminTelemetryRuleRule(
            telemetryType: TfArg.literal('Logs'),
          ),
        ],
      ),
    );

    add(
      AwsObservabilityadminTelemetryRuleForOrganization(
        localName: 'observabilityadmin_telemetry_rule_for_organizati',
        ruleName: TfArg.literal(leftover),
        rule: [
          ObservabilityadminTelemetryRuleForOrganizationRule(
            telemetryType: TfArg.literal('Logs'),
          ),
        ],
      ),
    );

    add(
      AwsOdbCloudAutonomousVmCluster(
        localName: 'odb_cloud_autonomous_vm_cluster',
        autonomousDataStorageSizeInTbs: TfArg.literal(200),
        cpuCoreCountPerNode: TfArg.literal(200),
        dbServers: TfArg.literal([leftover]),
        displayName: TfArg.literal(leftover),
        memoryPerOracleComputeUnitInGbs: TfArg.literal(200),
        scanListenerPortNonTls: TfArg.literal(200),
        scanListenerPortTls: TfArg.literal(200),
        totalContainerDatabases: TfArg.literal(200),
        maintenanceWindow: [
          OdbCloudAutonomousVmClusterMaintenanceWindow(
            preference: TfArg.literal('NO_PREFERENCE'),
          ),
        ],
        odbNetworkId: TfArg.literal(leftover),
        cloudExadataInfrastructureId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOdbCloudExadataInfrastructure(
        localName: 'odb_cloud_exadata_infrastructure',
        availabilityZoneId: TfArg.literal('us-east-1a'),
        displayName: TfArg.literal(leftover),
        shape: TfArg.literal(leftover),
        maintenanceWindow: [
          OdbCloudExadataInfrastructureMaintenanceWindow(
            customActionTimeoutInMins: TfArg.literal(200),
            isCustomActionTimeoutEnabled: TfArg.literal(true),
            patchingMode: TfArg.literal('ROLLING'),
            preference: TfArg.literal('NO_PREFERENCE'),
          ),
        ],
      ),
    );

    add(
      AwsOdbCloudVmCluster(
        localName: 'odb_cloud_vm_cluster',
        cpuCoreCount: TfArg.literal(200),
        dataStorageSizeInTbs: TfArg.literal(200),
        dbServers: TfArg.literal([leftover]),
        displayName: TfArg.literal(leftover),
        giVersion: TfArg.literal('19.0.0.0'),
        hostnamePrefix: TfArg.literal(leftover),
        sshPublicKeys: TfArg.literal([leftover]),
        dataCollectionOptions: [
          OdbCloudVmClusterDataCollectionOptions(
            isDiagnosticsEventsEnabled: TfArg.literal(true),
            isHealthMonitoringEnabled: TfArg.literal(true),
            isIncidentLogsEnabled: TfArg.literal(true),
          ),
        ],
        odbNetworkId: TfArg.literal(leftover),
        cloudExadataInfrastructureId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOdbIamRoleAssociation(
        localName: 'odb_iam_role_association',
        awsIntegration: TfArg.literal(leftover),
        iamRoleArn: TfArg.literal(arn),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsOdbNetwork(
        localName: 'odb_network',
        availabilityZoneId: TfArg.literal('us-east-1a'),
        backupSubnetCidr: TfArg.literal('10.0.0.0/16'),
        clientSubnetCidr: TfArg.literal('10.0.0.0/16'),
        displayName: TfArg.literal(leftover),
        s3Access: TfArg.literal('ENABLED'),
        zeroEtlAccess: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsOdbNetworkPeeringConnection(
        localName: 'odb_network_peering_connection',
        displayName: TfArg.literal(leftover),
        peerNetworkId: TfArg.literal(leftover),
        odbNetworkId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOpensearchApplication(
        localName: 'opensearch_application',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOpensearchAuthorizeVpcEndpointAccess(
        localName: 'opensearch_authorize_vpc_endpoint_access',
        account: TfArg.literal(leftover),
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOpensearchDomain(
        localName: 'opensearch_domain',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOpensearchDomainPolicy(
        localName: 'opensearch_domain_policy',
        accessPolicies: TfArg.literal(policy),
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOpensearchDomainSamlOptions(
        localName: 'opensearch_domain_saml_options',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOpensearchInboundConnectionAccepter(
        localName: 'opensearch_inbound_connection_accepter',
        connectionId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOpensearchOutboundConnection(
        localName: 'opensearch_outbound_connection',
        connectionAlias: TfArg.literal(leftover),
        localDomainInfo: OpensearchOutboundConnectionLocalDomainInfo(
          domainName: TfArg.literal(leftover),
          ownerId: TfArg.literal(leftover),
          region: TfArg.literal('us-east-1'),
        ),
        remoteDomainInfo: OpensearchOutboundConnectionRemoteDomainInfo(
          domainName: TfArg.literal(leftover),
          ownerId: TfArg.literal(leftover),
          region: TfArg.literal('us-east-1'),
        ),
      ),
    );

    add(
      AwsOpensearchPackage(
        localName: 'opensearch_package',
        packageName: TfArg.literal(leftover),
        packageType: TfArg.literal('TXT-DICTIONARY'),
        packageSource: OpensearchPackagePackageSource(
          s3BucketName: TfArg.literal(leftover),
          s3Key: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsOpensearchPackageAssociation(
        localName: 'opensearch_package_association',
        domainName: TfArg.literal(leftover),
        packageId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOpensearchVpcEndpoint(
        localName: 'opensearch_vpc_endpoint',
        domainArn: TfArg.literal(arn),
        vpcOptions: OpensearchVpcEndpointVpcOptions(
          subnetIds: TfArg.literal([leftover]),
        ),
      ),
    );

    add(
      AwsOpensearchserverlessAccessPolicy(
        localName: 'opensearchserverless_access_policy',
        name: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
        type: TfArg.literal('data'),
      ),
    );

    add(
      AwsOpensearchserverlessCollection(
        localName: 'opensearchserverless_collection',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOpensearchserverlessCollectionGroup(
        localName: 'opensearchserverless_collection_group',
        name: TfArg.literal(leftover),
        standbyReplicas: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsOpensearchserverlessLifecyclePolicy(
        localName: 'opensearchserverless_lifecycle_policy',
        name: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
        type: TfArg.literal('retention'),
      ),
    );

    add(
      AwsOpensearchserverlessSecurityConfig(
        localName: 'opensearchserverless_security_config',
        name: TfArg.literal(leftover),
        type: TfArg.literal('saml'),
        iamFederationOptions: [
          OpensearchserverlessSecurityConfigIamFederationOptions(
            groupAttribute: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsOpensearchserverlessSecurityPolicy(
        localName: 'opensearchserverless_security_policy',
        name: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
        type: TfArg.literal('encryption'),
      ),
    );

    add(
      AwsOpensearchserverlessVpcEndpoint(
        localName: 'opensearchserverless_vpc_endpoint',
        name: TfArg.literal(leftover),
        subnetIds: TfArg.literal([leftover]),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsOrganizationsAccount(
        localName: 'organizations_account',
        email: TfArg.literal('leftover@example.com'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOrganizationsAwsServiceAccess(
        localName: 'organizations_aws_service_access',
        servicePrincipal: TfArg.literal('ec2.amazonaws.com'),
      ),
    );

    add(
      AwsOrganizationsDelegatedAdministrator(
        localName: 'organizations_delegated_administrator',
        accountId: TfArg.literal('123456789012'),
        servicePrincipal: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOrganizationsOrganization(
        localName: 'organizations_organization',
      ),
    );

    add(
      AwsOrganizationsOrganizationalUnit(
        localName: 'organizations_organizational_unit',
        name: TfArg.literal(leftover),
        parentId: TfArg.literal('r-ab12'),
      ),
    );

    add(
      AwsOrganizationsPolicy(
        localName: 'organizations_policy',
        content: TfArg.literal(policy),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOrganizationsPolicyAttachment(
        localName: 'organizations_policy_attachment',
        policyId: TfArg.literal(leftover),
        targetId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOrganizationsResourcePolicy(
        localName: 'organizations_resource_policy',
        content: TfArg.literal(policy),
      ),
    );

    add(
      AwsOrganizationsTag(
        localName: 'organizations_tag',
        key: TfArg.literal(leftover),
        resourceId: TfArg.literal(leftover),
        value: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOsisPipeline(
        localName: 'osis_pipeline',
        maxUnits: TfArg.literal(200),
        minUnits: TfArg.literal(200),
        pipelineConfigurationBody: TfArg.literal(leftover),
        pipelineName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsOsisPipelineEndpoint(
        localName: 'osis_pipeline_endpoint',
        pipelineArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsOsisResourcePolicy(
        localName: 'osis_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsOutpostsCapacityTask(
        localName: 'outposts_capacity_task',
        outpostIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPaymentcryptographyKey(
        localName: 'paymentcryptography_key',
        exportable: TfArg.literal(true),
      ),
    );

    add(
      AwsPaymentcryptographyKeyAlias(
        localName: 'paymentcryptography_key_alias',
        aliasName: TfArg.literal('alias/leftover'),
      ),
    );

    add(
      AwsPinpointAdmChannel(
        localName: 'pinpoint_adm_channel',
        applicationId: TfArg.literal(leftover),
        clientId: TfArg.variable('leftover_secret'),
        clientSecret: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsPinpointApnsChannel(
        localName: 'pinpoint_apns_channel',
        applicationId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPinpointApnsSandboxChannel(
        localName: 'pinpoint_apns_sandbox_channel',
        applicationId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPinpointApnsVoipChannel(
        localName: 'pinpoint_apns_voip_channel',
        applicationId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPinpointApnsVoipSandboxChannel(
        localName: 'pinpoint_apns_voip_sandbox_channel',
        applicationId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPinpointApp(
        localName: 'pinpoint_app',
      ),
    );

    add(
      AwsPinpointBaiduChannel(
        localName: 'pinpoint_baidu_channel',
        apiKey: TfArg.variable('leftover_secret'),
        applicationId: TfArg.literal(leftover),
        secretKey: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsPinpointEmailChannel(
        localName: 'pinpoint_email_channel',
        applicationId: TfArg.literal(leftover),
        fromAddress: TfArg.literal(leftover),
        identity: TfArg.literal(arn),
      ),
    );

    add(
      AwsPinpointEmailTemplate(
        localName: 'pinpoint_email_template',
        templateName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPinpointEventStream(
        localName: 'pinpoint_event_stream',
        applicationId: TfArg.literal(leftover),
        destinationStreamArn: TfArg.literal(arn),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsPinpointGcmChannel(
        localName: 'pinpoint_gcm_channel',
        applicationId: TfArg.literal(leftover),
        apiKey: TfArg.variable('leftover_secret'),
        serviceJson: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsPinpointSmsChannel(
        localName: 'pinpoint_sms_channel',
        applicationId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPinpointsmsvoicev2ConfigurationSet(
        localName: 'pinpointsmsvoicev2_configuration_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPinpointsmsvoicev2EventDestination(
        localName: 'pinpointsmsvoicev2_event_destination',
        configurationSetName: TfArg.literal(leftover),
        eventDestinationName: TfArg.literal(leftover),
        matchingEventTypes: TfArg.literal([leftover]),
        cloudwatchLogsDestination: [
          Pinpointsmsvoicev2EventDestinationCloudwatchLogsDestination(
            iamRoleArn: TfArg.literal(arn),
            logGroupArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsPinpointsmsvoicev2Keyword(
        localName: 'pinpointsmsvoicev2_keyword',
        keyword: TfArg.literal('LEFTOVER'),
        keywordMessage: TfArg.literal(leftover),
        originationIdentityArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsPinpointsmsvoicev2OptOutList(
        localName: 'pinpointsmsvoicev2_opt_out_list',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPinpointsmsvoicev2PhoneNumber(
        localName: 'pinpointsmsvoicev2_phone_number',
        isoCountryCode: TfArg.literal('US'),
        messageType: TfArg.literal('TRANSACTIONAL'),
        numberCapabilities: TfArg.literal([leftover]),
        numberType: TfArg.literal('LONG_CODE'),
      ),
    );

    add(
      AwsPinpointsmsvoicev2Pool(
        localName: 'pinpointsmsvoicev2_pool',
        messageType: TfArg.literal('TRANSACTIONAL'),
        originationIdentities: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsPinpointsmsvoicev2ResourcePolicy(
        localName: 'pinpointsmsvoicev2_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsPinpointsmsvoicev2SenderId(
        localName: 'pinpointsmsvoicev2_sender_id',
        isoCountryCode: TfArg.literal('US'),
        senderId: TfArg.literal('LEFTOVER'),
      ),
    );

    add(
      AwsPipesPipe(
        localName: 'pipes_pipe',
        roleArn: TfArg.literal(arn),
        source: TfArg.literal(arn),
        target: TfArg.literal(arn),
      ),
    );

    add(
      AwsPlacementGroup(
        localName: 'placement_group',
        name: TfArg.literal(leftover),
        strategy: TfArg.literal('cluster'),
      ),
    );

    add(
      AwsPrometheusAlertManagerDefinition(
        localName: 'prometheus_alert_manager_definition',
        definition: TfArg.literal(leftover),
        workspaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPrometheusAnomalyDetector(
        localName: 'prometheus_anomaly_detector',
        alias: TfArg.literal(leftover),
        workspaceId: TfArg.literal(leftover),
        configuration: [
          PrometheusAnomalyDetectorConfiguration(
            randomCutForest: [
              PrometheusAnomalyDetectorConfigurationRandomCutForest(
                query: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
        missingDataAction: [
          PrometheusAnomalyDetectorMissingDataAction(
            markAsAnomaly: TfArg.literal(true),
          ),
        ],
      ),
    );

    add(
      AwsPrometheusQueryLoggingConfiguration(
        localName: 'prometheus_query_logging_configuration',
        workspaceId: TfArg.literal(leftover),
        destination: [
          PrometheusQueryLoggingConfigurationDestination(
            filters: [
              PrometheusQueryLoggingConfigurationDestinationFilters(
                qspThreshold: TfArg.literal(200),
              ),
            ],
            cloudwatchLogs: [
              PrometheusQueryLoggingConfigurationDestinationCloudwatchLogs(
                logGroupArn: TfArg.literal(
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
        policyDocument: TfArg.literal(policy),
        workspaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPrometheusRuleGroupNamespace(
        localName: 'prometheus_rule_group_namespace',
        data: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        workspaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsPrometheusScraper(
        localName: 'prometheus_scraper',
        scrapeConfiguration: TfArg.literal(leftover),
        destination: [
          PrometheusScraperDestination(
            amp: [
              PrometheusScraperDestinationAmp(
                workspaceArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsPrometheusScraperLoggingConfiguration(
        localName: 'prometheus_scraper_logging_configuration',
        scraperId: TfArg.literal(leftover),
        loggingDestination: [
          PrometheusScraperLoggingConfigurationLoggingDestination(
            cloudwatchLogs: [
              PrometheusScraperLoggingConfigurationLoggingDestinationCloudwatchLogs(
                logGroupArn: TfArg.literal(
                  'arn:aws:logs:us-east-1:123456789012:log-group:leftover:*',
                ),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsPrometheusWorkspace(
        localName: 'prometheus_workspace',
      ),
    );

    add(
      AwsPrometheusWorkspaceConfiguration(
        localName: 'prometheus_workspace_configuration',
        workspaceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsProxyProtocolPolicy(
        localName: 'proxy_protocol_policy',
        instancePorts: TfArg.literal(['64512']),
        loadBalancer: TfArg.literal(leftover),
      ),
    );

    add(
      AwsQbusinessApplication(
        localName: 'qbusiness_application',
        displayName: TfArg.literal(leftover),
        iamServiceRoleArn: TfArg.literal(arn),
        identityCenterInstanceArn: TfArg.literal(arn),
        attachmentsConfiguration: [
          QbusinessApplicationAttachmentsConfiguration(
            attachmentsControlMode: TfArg.literal('ENABLED'),
          ),
        ],
      ),
    );

    add(
      AwsQldbLedger(
        localName: 'qldb_ledger',
        permissionsMode: TfArg.literal('ALLOW_ALL'),
      ),
    );

    add(
      AwsQldbStream(
        localName: 'qldb_stream',
        inclusiveStartTime: TfArg.literal('2026-01-01T00:00:00Z'),
        ledgerName: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        streamName: TfArg.literal(leftover),
        kinesisConfiguration: QldbStreamKinesisConfiguration(
          streamArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsQuicksightAccountSettings(
        localName: 'quicksight_account_settings',
      ),
    );

    add(
      AwsQuicksightAccountSubscription(
        localName: 'quicksight_account_subscription',
        accountName: TfArg.literal(leftover),
        authenticationMethod: TfArg.literal('IAM_AND_QUICKSIGHT'),
        edition: TfArg.literal('STANDARD'),
        notificationEmail: TfArg.literal('leftover@example.com'),
      ),
    );

    add(
      AwsQuicksightAnalysis(
        localName: 'quicksight_analysis',
        analysisId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        sourceEntity: TfArg.literal({
          'source_template': {
            'arn': arn,
            'data_set_references': {
              'data_set_arn': arn,
              'data_set_placeholder': leftover,
            },
          },
        }),
      ),
    );

    add(
      AwsQuicksightCustomPermissions(
        localName: 'quicksight_custom_permissions',
        customPermissionsName: TfArg.literal(leftover),
        capabilities: [
          QuicksightCustomPermissionsCapabilities(
            addOrRunAnomalyDetectionForAnalyses: TfArg.literal('DENY'),
          ),
        ],
      ),
    );

    add(
      AwsQuicksightDashboard(
        localName: 'quicksight_dashboard',
        dashboardId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        versionDescription: TfArg.literal(leftover),
        sourceEntity: TfArg.literal({
          'source_template': {
            'arn': arn,
            'data_set_references': {
              'data_set_arn': arn,
              'data_set_placeholder': leftover,
            },
          },
        }),
      ),
    );

    add(
      AwsQuicksightDataSet(
        localName: 'quicksight_data_set',
        dataSetId: TfArg.literal(leftover),
        importMode: TfArg.literal('SPICE'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsQuicksightDataSource(
        localName: 'quicksight_data_source',
        dataSourceId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        type: TfArg.literal('ADOBE_ANALYTICS'),
        parameters: QuicksightDataSourceParameters(
          amazonElasticsearch:
              QuicksightDataSourceParametersAmazonElasticsearch(
            domain: TfArg.literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsQuicksightFolder(
        localName: 'quicksight_folder',
        folderId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsQuicksightFolderMembership(
        localName: 'quicksight_folder_membership',
        folderId: TfArg.literal(leftover),
        memberId: TfArg.literal(leftover),
        memberType: TfArg.literal('DASHBOARD'),
      ),
    );

    add(
      AwsQuicksightGroup(
        localName: 'quicksight_group',
        groupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsQuicksightGroupMembership(
        localName: 'quicksight_group_membership',
        groupName: TfArg.literal(leftover),
        memberName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsQuicksightIamPolicyAssignment(
        localName: 'quicksight_iam_policy_assignment',
        assignmentName: TfArg.literal(leftover),
        assignmentStatus: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsQuicksightIngestion(
        localName: 'quicksight_ingestion',
        dataSetId: TfArg.literal(leftover),
        ingestionId: TfArg.literal(leftover),
        ingestionType: TfArg.literal('INCREMENTAL_REFRESH'),
      ),
    );

    add(
      AwsQuicksightIpRestriction(
        localName: 'quicksight_ip_restriction',
        enabled: TfArg.literal(true),
      ),
    );

    add(
      AwsQuicksightKeyRegistration(
        localName: 'quicksight_key_registration',
        keyRegistration: [
          QuicksightKeyRegistrationKeyRegistration(
            keyArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsQuicksightNamespace(
        localName: 'quicksight_namespace',
        namespace: TfArg.literal(leftover),
      ),
    );

    add(
      AwsQuicksightRefreshSchedule(
        localName: 'quicksight_refresh_schedule',
        dataSetId: TfArg.literal(leftover),
        scheduleId: TfArg.literal(leftover),
        schedule: [
          QuicksightRefreshScheduleSchedule(
            refreshType: TfArg.literal('INCREMENTAL_REFRESH'),
            scheduleFrequency: [
              QuicksightRefreshScheduleScheduleScheduleFrequency(
                interval: TfArg.literal('MINUTE15'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsQuicksightRoleCustomPermission(
        localName: 'quicksight_role_custom_permission',
        customPermissionsName: TfArg.literal(leftover),
        role: TfArg.literal('ADMIN'),
      ),
    );

    add(
      AwsQuicksightRoleMembership(
        localName: 'quicksight_role_membership',
        memberName: TfArg.literal(leftover),
        role: TfArg.literal('ADMIN'),
      ),
    );

    add(
      AwsQuicksightTemplate(
        localName: 'quicksight_template',
        name: TfArg.literal(leftover),
        templateId: TfArg.literal(leftover),
        versionDescription: TfArg.literal(leftover),
        sourceEntity: TfArg.literal({
          'source_template': {'arn': arn},
        }),
      ),
    );

    add(
      AwsQuicksightTemplateAlias(
        localName: 'quicksight_template_alias',
        aliasName: TfArg.literal(leftover),
        templateId: TfArg.literal(leftover),
        templateVersionNumber: TfArg.literal(200),
      ),
    );

    add(
      AwsQuicksightTheme(
        localName: 'quicksight_theme',
        baseThemeId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        themeId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsQuicksightUser(
        localName: 'quicksight_user',
        email: TfArg.literal('leftover@example.com'),
        identityType: TfArg.literal('IAM'),
        userRole: TfArg.literal('ADMIN'),
      ),
    );

    add(
      AwsQuicksightUserCustomPermission(
        localName: 'quicksight_user_custom_permission',
        customPermissionsName: TfArg.literal(leftover),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsQuicksightVpcConnection(
        localName: 'quicksight_vpc_connection',
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        securityGroupIds: TfArg.literal(['sg-tq']),
        subnetIds: TfArg.literal([
          'subnet-0123456789abcdef0',
          'subnet-0123456789abcdef1',
        ]),
        vpcConnectionId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRamPermission(
        localName: 'ram_permission',
        name: TfArg.literal(leftover),
        policyTemplate: TfArg.literal(leftover),
        resourceType: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRamPrincipalAssociation(
        localName: 'ram_principal_association',
        principal: TfArg.literal(arn),
        resourceShareArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRamResourceAssociation(
        localName: 'ram_resource_association',
        resourceArn: TfArg.literal(arn),
        resourceShareArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRamResourceShare(
        localName: 'ram_resource_share',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRamResourceShareAccepter(
        localName: 'ram_resource_share_accepter',
        shareArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRamResourceShareAssociationsExclusive(
        localName: 'ram_resource_share_associations_exclusive',
        resourceShareArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRamSharingWithOrganization(
        localName: 'ram_sharing_with_organization',
      ),
    );

    add(
      AwsRbinRule(
        localName: 'rbin_rule',
        resourceType: TfArg.literal('EBS_SNAPSHOT'),
        retentionPeriod: RbinRuleRetentionPeriod(
          retentionPeriodUnit: TfArg.literal('DAYS'),
          retentionPeriodValue: TfArg.literal(200),
        ),
      ),
    );

    add(
      AwsRdsCertificate(
        localName: 'rds_certificate',
        certificateIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRdsCluster(
        localName: 'rds_cluster',
        engine: TfArg.literal('aurora-mysql'),
      ),
    );

    add(
      AwsRdsClusterActivityStream(
        localName: 'rds_cluster_activity_stream',
        kmsKeyId: TfArg.literal(leftover),
        mode: TfArg.literal('sync'),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRdsClusterEndpoint(
        localName: 'rds_cluster_endpoint',
        clusterEndpointIdentifier: TfArg.literal(leftover),
        clusterIdentifier: TfArg.literal(leftover),
        customEndpointType: TfArg.literal('READER'),
      ),
    );

    add(
      AwsRdsClusterInstance(
        localName: 'rds_cluster_instance',
        clusterIdentifier: TfArg.literal(leftover),
        engine: TfArg.literal('aurora-mysql'),
        instanceClass: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRdsClusterParameterGroup(
        localName: 'rds_cluster_parameter_group',
        family: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRdsClusterRoleAssociation(
        localName: 'rds_cluster_role_association',
        dbClusterIdentifier: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRdsClusterSnapshotCopy(
        localName: 'rds_cluster_snapshot_copy',
        sourceDbClusterSnapshotIdentifier: TfArg.literal(leftover),
        targetDbClusterSnapshotIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRdsCustomDbEngineVersion(
        localName: 'rds_custom_db_engine_version',
        engine: TfArg.literal('custom-oracle-ee'),
        engineVersion: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRdsExportTask(
        localName: 'rds_export_task',
        exportTaskIdentifier: TfArg.literal(leftover),
        iamRoleArn: TfArg.literal(arn),
        kmsKeyId: TfArg.literal(leftover),
        s3BucketName: TfArg.literal(leftover),
        sourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRdsGlobalCluster(
        localName: 'rds_global_cluster',
        globalClusterIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRdsInstanceState(
        localName: 'rds_instance_state',
        identifier: TfArg.literal(leftover),
        state: TfArg.literal('available'),
      ),
    );

    add(
      AwsRdsIntegration(
        localName: 'rds_integration',
        integrationName: TfArg.literal(leftover),
        sourceArn: TfArg.literal(arn),
        targetArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRdsReservedInstance(
        localName: 'rds_reserved_instance',
        offeringId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRdsShardGroup(
        localName: 'rds_shard_group',
        dbClusterIdentifier: TfArg.literal(leftover),
        dbShardGroupIdentifier: TfArg.literal(leftover),
        maxAcu: TfArg.literal(200),
      ),
    );

    add(
      AwsRedshiftAuthenticationProfile(
        localName: 'redshift_authentication_profile',
        authenticationProfileContent: TfArg.literal(policy),
        authenticationProfileName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftCluster(
        localName: 'redshift_cluster',
        clusterIdentifier: TfArg.literal(leftover),
        nodeType: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftClusterIamRoles(
        localName: 'redshift_cluster_iam_roles',
        clusterIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftClusterSnapshot(
        localName: 'redshift_cluster_snapshot',
        clusterIdentifier: TfArg.literal(leftover),
        snapshotIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftDataShareAuthorization(
        localName: 'redshift_data_share_authorization',
        consumerIdentifier: TfArg.literal(leftover),
        dataShareArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRedshiftDataShareConsumerAssociation(
        localName: 'redshift_data_share_consumer_association',
        dataShareArn: TfArg.literal(arn),
        associateEntireAccount: TfArg.literal(true),
      ),
    );

    add(
      AwsRedshiftEndpointAccess(
        localName: 'redshift_endpoint_access',
        clusterIdentifier: TfArg.literal(leftover),
        endpointName: TfArg.literal(leftover),
        subnetGroupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftEndpointAuthorization(
        localName: 'redshift_endpoint_authorization',
        account: TfArg.literal('123456789012'),
        clusterIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftEventSubscription(
        localName: 'redshift_event_subscription',
        name: TfArg.literal(leftover),
        snsTopicArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRedshiftHsmClientCertificate(
        localName: 'redshift_hsm_client_certificate',
        hsmClientCertificateIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftHsmConfiguration(
        localName: 'redshift_hsm_configuration',
        description: TfArg.literal(leftover),
        hsmConfigurationIdentifier: TfArg.literal(leftover),
        hsmIpAddress: TfArg.literal('10.0.0.1'),
        hsmPartitionName: TfArg.literal(leftover),
        hsmPartitionPassword: TfArg.variable('leftover_secret'),
        hsmServerPublicCertificate: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftIdcApplication(
        localName: 'redshift_idc_application',
        iamRoleArn: TfArg.literal(arn),
        idcDisplayName: TfArg.literal(leftover),
        idcInstanceArn: TfArg.literal(arn),
        redshiftIdcApplicationName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftIntegration(
        localName: 'redshift_integration',
        integrationName: TfArg.literal(leftover),
        sourceArn: TfArg.literal(arn),
        targetArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRedshiftLogging(
        localName: 'redshift_logging',
        clusterIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftNamespaceRegistration(
        localName: 'redshift_namespace_registration',
        consumerIdentifier: TfArg.literal(leftover),
        namespaceType: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftParameterGroup(
        localName: 'redshift_parameter_group',
        family: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftPartner(
        localName: 'redshift_partner',
        accountId: TfArg.literal('123456789012'),
        clusterIdentifier: TfArg.literal(leftover),
        databaseName: TfArg.literal(leftover),
        partnerName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftResourcePolicy(
        localName: 'redshift_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRedshiftScheduledAction(
        localName: 'redshift_scheduled_action',
        iamRole: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        schedule: TfArg.literal(leftover),
        targetAction: RedshiftScheduledActionTargetAction(
          pauseCluster: RedshiftScheduledActionTargetActionPauseCluster(
            clusterIdentifier: TfArg.literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsRedshiftSnapshotCopy(
        localName: 'redshift_snapshot_copy',
        clusterIdentifier: TfArg.literal(leftover),
        destinationRegion: TfArg.literal('us-east-1'),
      ),
    );

    add(
      AwsRedshiftSnapshotCopyGrant(
        localName: 'redshift_snapshot_copy_grant',
        snapshotCopyGrantName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftSnapshotSchedule(
        localName: 'redshift_snapshot_schedule',
        definitions: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsRedshiftSnapshotScheduleAssociation(
        localName: 'redshift_snapshot_schedule_association',
        clusterIdentifier: TfArg.literal(leftover),
        scheduleIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftSubnetGroup(
        localName: 'redshift_subnet_group',
        name: TfArg.literal(leftover),
        subnetIds: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsRedshiftUsageLimit(
        localName: 'redshift_usage_limit',
        amount: TfArg.literal(200),
        clusterIdentifier: TfArg.literal(leftover),
        featureType: TfArg.literal('spectrum'),
        limitType: TfArg.literal('time'),
      ),
    );

    add(
      AwsRedshiftdataStatement(
        localName: 'redshiftdata_statement',
        database: TfArg.literal(leftover),
        sql: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessCustomDomainAssociation(
        localName: 'redshiftserverless_custom_domain_association',
        customDomainCertificateArn: TfArg.literal(arn),
        customDomainName: TfArg.literal(leftover),
        workgroupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessEndpointAccess(
        localName: 'redshiftserverless_endpoint_access',
        endpointName: TfArg.literal(leftover),
        subnetIds: TfArg.literal([leftover]),
        workgroupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessNamespace(
        localName: 'redshiftserverless_namespace',
        namespaceName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessResourcePolicy(
        localName: 'redshiftserverless_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRedshiftserverlessSnapshot(
        localName: 'redshiftserverless_snapshot',
        namespaceName: TfArg.literal(leftover),
        snapshotName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRedshiftserverlessUsageLimit(
        localName: 'redshiftserverless_usage_limit',
        amount: TfArg.literal(200),
        resourceArn: TfArg.literal(arn),
        usageType: TfArg.literal('serverless-compute'),
      ),
    );

    add(
      AwsRedshiftserverlessWorkgroup(
        localName: 'redshiftserverless_workgroup',
        namespaceName: TfArg.literal(leftover),
        workgroupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRekognitionCollection(
        localName: 'rekognition_collection',
        collectionId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRekognitionProject(
        localName: 'rekognition_project',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRekognitionStreamProcessor(
        localName: 'rekognition_stream_processor',
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        input: [
          RekognitionStreamProcessorInput(
            kinesisVideoStream: [
              RekognitionStreamProcessorInputKinesisVideoStream(
                arn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
        output: [
          RekognitionStreamProcessorOutput(
            kinesisDataStream: [
              RekognitionStreamProcessorOutputKinesisDataStream(
                arn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
        settings: [
          RekognitionStreamProcessorSettings(
            connectedHome: [
              RekognitionStreamProcessorSettingsConnectedHome(
                labels: TfArg.literal(['PERSON']),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsResiliencehubResiliencyPolicy(
        localName: 'resiliencehub_resiliency_policy',
        name: TfArg.literal(leftover),
        tier: TfArg.literal('MissionCritical'),
      ),
    );

    add(
      AwsResiliencehubv2Assertion(
        localName: 'resiliencehubv2_assertion',
        serviceArn: TfArg.literal(arn),
        text: TfArg.literal(leftover),
      ),
    );

    add(
      AwsResiliencehubv2InputSource(
        localName: 'resiliencehubv2_input_source',
        serviceArn: TfArg.literal(arn),
        resourceConfiguration: [
          Resiliencehubv2InputSourceResourceConfiguration(
            cfnStackArn: TfArg.literal(arn),
          ),
        ],
      ),
    );

    add(
      AwsResiliencehubv2Policy(
        localName: 'resiliencehubv2_policy',
        name: TfArg.literal(leftover),
        multiAz: [
          Resiliencehubv2PolicyMultiAz(
            disasterRecoveryApproach: TfArg.literal('ACTIVE_ACTIVE'),
          ),
        ],
      ),
    );

    add(
      AwsResiliencehubv2Service(
        localName: 'resiliencehubv2_service',
        name: TfArg.literal(leftover),
        regions: TfArg.literal(['us-east-1']),
        permissionModel: [
          Resiliencehubv2ServicePermissionModel(
            invokerRoleName: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsResiliencehubv2ServiceFunction(
        localName: 'resiliencehubv2_service_function',
        criticality: TfArg.literal('PRIMARY'),
        name: TfArg.literal(leftover),
        serviceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsResiliencehubv2System(
        localName: 'resiliencehubv2_system',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsResiliencehubv2UserJourney(
        localName: 'resiliencehubv2_user_journey',
        name: TfArg.literal(leftover),
        systemArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsResourceexplorer2Index(
        localName: 'resourceexplorer2_index',
        type: TfArg.literal('LOCAL'),
      ),
    );

    add(
      AwsResourceexplorer2View(
        localName: 'resourceexplorer2_view',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsResourcegroupsGroup(
        localName: 'resourcegroups_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsResourcegroupsResource(
        localName: 'resourcegroups_resource',
        groupArn: TfArg.literal(arn),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRolesanywhereProfile(
        localName: 'rolesanywhere_profile',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRolesanywhereTrustAnchor(
        localName: 'rolesanywhere_trust_anchor',
        name: TfArg.literal(leftover),
        source: RolesanywhereTrustAnchorSource(
          sourceType: TfArg.literal('AWS_ACM_PCA'),
          sourceData: RolesanywhereTrustAnchorSourceSourceData(
            acmPcaArn: TfArg.literal(arn),
          ),
        ),
      ),
    );

    add(
      AwsRoute(
        localName: 'route',
        routeTableId: TfArg.literal(leftover),
        destinationCidrBlock: TfArg.literal('10.0.0.0/16'),
        carrierGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53CidrCollection(
        localName: 'route53_cidr_collection',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53CidrLocation(
        localName: 'route53_cidr_location',
        cidrBlocks: TfArg.literal(['10.0.0.0/16']),
        cidrCollectionId: TfArg.literal('10.0.0.0/16'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53DelegationSet(
        localName: 'route53_delegation_set',
      ),
    );

    add(
      AwsRoute53HealthCheck(
        localName: 'route53_health_check',
        type: TfArg.literal('HTTP'),
      ),
    );

    add(
      AwsRoute53HostedZoneDnssec(
        localName: 'route53_hosted_zone_dnssec',
        hostedZoneId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53KeySigningKey(
        localName: 'route53_key_signing_key',
        hostedZoneId: TfArg.literal(leftover),
        keyManagementServiceArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53QueryLog(
        localName: 'route53_query_log',
        cloudwatchLogGroupArn: TfArg.literal(arn),
        zoneId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53Record(
        localName: 'route53_record',
        name: TfArg.literal(leftover),
        type: TfArg.literal('SOA'),
        zoneId: TfArg.literal(leftover),
        alias: Route53RecordAlias(
          evaluateTargetHealth: TfArg.literal(true),
          name: TfArg.literal(leftover),
          zoneId: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsRoute53RecordsExclusive(
        localName: 'route53_records_exclusive',
        zoneId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverConfig(
        localName: 'route53_resolver_config',
        autodefinedReverseFlag: TfArg.literal('ENABLE'),
        resourceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverDnssecConfig(
        localName: 'route53_resolver_dnssec_config',
        resourceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverEndpoint(
        localName: 'route53_resolver_endpoint',
        direction: TfArg.literal('INBOUND'),
        securityGroupIds: TfArg.literal([leftover]),
        ipAddress: [
          Route53ResolverEndpointIpAddress(
            subnetId: TfArg.literal('subnet-0123456789abcdef0'),
          ),
          Route53ResolverEndpointIpAddress(
            subnetId: TfArg.literal('subnet-0123456789abcdef01'),
          ),
        ],
      ),
    );

    add(
      AwsRoute53ResolverFirewallConfig(
        localName: 'route53_resolver_firewall_config',
        resourceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverFirewallDomainList(
        localName: 'route53_resolver_firewall_domain_list',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverFirewallRule(
        localName: 'route53_resolver_firewall_rule',
        action: TfArg.literal('ALLOW'),
        firewallRuleGroupId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        priority: TfArg.literal(200),
      ),
    );

    add(
      AwsRoute53ResolverFirewallRuleGroup(
        localName: 'route53_resolver_firewall_rule_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverFirewallRuleGroupAssociation(
        localName: 'route53_resolver_firewall_rule_group_association',
        firewallRuleGroupId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        priority: TfArg.literal(200),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsRoute53ResolverQueryLogConfig(
        localName: 'route53_resolver_query_log_config',
        destinationArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverQueryLogConfigAssociation(
        localName: 'route53_resolver_query_log_config_association',
        resolverQueryLogConfigId: TfArg.literal(leftover),
        resourceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53ResolverRule(
        localName: 'route53_resolver_rule',
        domainName: TfArg.literal(leftover),
        ruleType: TfArg.literal('FORWARD'),
      ),
    );

    add(
      AwsRoute53ResolverRuleAssociation(
        localName: 'route53_resolver_rule_association',
        resolverRuleId: TfArg.literal(leftover),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsRoute53TrafficPolicy(
        localName: 'route53_traffic_policy',
        document: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53TrafficPolicyInstance(
        localName: 'route53_traffic_policy_instance',
        hostedZoneId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        trafficPolicyId: TfArg.literal(leftover),
        trafficPolicyVersion: TfArg.literal(200),
        ttl: TfArg.literal(200),
      ),
    );

    add(
      AwsRoute53VpcAssociationAuthorization(
        localName: 'route53_vpc_association_authorization',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
        zoneId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53Zone(
        localName: 'route53_zone',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53ZoneAssociation(
        localName: 'route53_zone_association',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
        zoneId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53domainsDelegationSignerRecord(
        localName: 'route53domains_delegation_signer_record',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53domainsDomain(
        localName: 'route53domains_domain',
        domainName: TfArg.literal(leftover),
        adminContact: [
          Route53domainsDomainAdminContact(
            addressLine1: TfArg.literal(leftover),
          ),
        ],
        registrantContact: [
          Route53domainsDomainRegistrantContact(
            addressLine1: TfArg.literal(leftover),
          ),
        ],
        techContact: [
          Route53domainsDomainTechContact(
            addressLine1: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsRoute53domainsRegisteredDomain(
        localName: 'route53domains_registered_domain',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53profilesAssociation(
        localName: 'route53profiles_association',
        name: TfArg.literal(leftover),
        profileId: TfArg.literal(leftover),
        resourceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53profilesProfile(
        localName: 'route53profiles_profile',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53profilesResourceAssociation(
        localName: 'route53profiles_resource_association',
        name: TfArg.literal(leftover),
        profileId: TfArg.literal(leftover),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigCluster(
        localName: 'route53recoverycontrolconfig_cluster',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigControlPanel(
        localName: 'route53recoverycontrolconfig_control_panel',
        clusterArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigRoutingControl(
        localName: 'route53recoverycontrolconfig_routing_control',
        clusterArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53recoverycontrolconfigSafetyRule(
        localName: 'route53recoverycontrolconfig_safety_rule',
        controlPanelArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        waitPeriodMs: TfArg.literal(200),
        ruleConfig: Route53recoverycontrolconfigSafetyRuleRuleConfig(
          inverted: TfArg.literal(true),
          threshold: TfArg.literal(200),
          type: TfArg.literal('ATLEAST'),
        ),
        assertedControls: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsRoute53recoveryreadinessCell(
        localName: 'route53recoveryreadiness_cell',
        cellName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53recoveryreadinessReadinessCheck(
        localName: 'route53recoveryreadiness_readiness_check',
        readinessCheckName: TfArg.literal(leftover),
        resourceSetName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53recoveryreadinessRecoveryGroup(
        localName: 'route53recoveryreadiness_recovery_group',
        recoveryGroupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRoute53recoveryreadinessResourceSet(
        localName: 'route53recoveryreadiness_resource_set',
        resourceSetName: TfArg.literal(leftover),
        resourceSetType: TfArg.literal(leftover),
        resources: [
          Route53recoveryreadinessResourceSetResources(
            readinessScopes: TfArg.literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsRouteTable(
        localName: 'route_table',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsRouteTableAssociation(
        localName: 'route_table_association',
        routeTableId: TfArg.literal(leftover),
        gatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRumAppMonitor(
        localName: 'rum_app_monitor',
        name: TfArg.literal(leftover),
        domain: TfArg.literal(leftover),
      ),
    );

    add(
      AwsRumMetricsDestination(
        localName: 'rum_metrics_destination',
        appMonitorName: TfArg.literal(leftover),
        destination: TfArg.literal('CloudWatch'),
      ),
    );

    add(
      AwsS3AccessPoint(
        localName: 's3_access_point',
        bucket: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3AccountPublicAccessBlock(
        localName: 's3_account_public_access_block',
      ),
    );

    add(
      AwsS3Bucket(
        localName: 's3_bucket',
      ),
    );

    add(
      AwsS3BucketAbac(
        localName: 's3_bucket_abac',
        bucket: TfArg.literal(leftover),
        abacStatus: [
          S3BucketAbacAbacStatus(
            status: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsS3BucketAccelerateConfiguration(
        localName: 's3_bucket_accelerate_configuration',
        bucket: TfArg.literal(leftover),
        status: TfArg.literal('Enabled'),
      ),
    );

    add(
      AwsS3BucketAcl(
        localName: 's3_bucket_acl',
        bucket: TfArg.literal(leftover),
        accessControlPolicy: S3BucketAclAccessControlPolicy(
          owner: S3BucketAclAccessControlPolicyOwner(
            id: TfArg.literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsS3BucketAnalyticsConfiguration(
        localName: 's3_bucket_analytics_configuration',
        bucket: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3BucketCorsConfiguration(
        localName: 's3_bucket_cors_configuration',
        bucket: TfArg.literal(leftover),
        corsRule: [
          S3BucketCorsConfigurationCorsRule(
            allowedMethods: TfArg.literal([leftover]),
            allowedOrigins: TfArg.literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsS3BucketIntelligentTieringConfiguration(
        localName: 's3_bucket_intelligent_tiering_configuration',
        bucket: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        tiering: [
          S3BucketIntelligentTieringConfigurationTiering(
            accessTier: TfArg.literal('ARCHIVE_ACCESS'),
            days: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsS3BucketInventory(
        localName: 's3_bucket_inventory',
        bucket: TfArg.literal(leftover),
        includedObjectVersions: TfArg.literal('All'),
        name: TfArg.literal(leftover),
        destination: S3BucketInventoryDestination(
          bucket: S3BucketInventoryDestinationBucket(
            bucketArn: TfArg.literal(arn),
            format: TfArg.literal('CSV'),
          ),
        ),
        schedule: S3BucketInventorySchedule(
          frequency: TfArg.literal('Daily'),
        ),
      ),
    );

    add(
      AwsS3BucketLifecycleConfiguration(
        localName: 's3_bucket_lifecycle_configuration',
        bucket: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3BucketLogging(
        localName: 's3_bucket_logging',
        bucket: TfArg.literal(leftover),
        targetBucket: TfArg.literal(leftover),
        targetPrefix: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3BucketMetadataConfiguration(
        localName: 's3_bucket_metadata_configuration',
        bucket: TfArg.literal(leftover),
        metadataConfiguration: [
          S3BucketMetadataConfigurationMetadataConfiguration(
            journalTableConfiguration: [
              S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfiguration(
                recordExpiration: [
                  S3BucketMetadataConfigurationMetadataConfigurationJournalTableConfigurationRecordExpiration(
                    expiration: TfArg.literal('ENABLED'),
                  ),
                ],
              ),
            ],
            inventoryTableConfiguration: [
              S3BucketMetadataConfigurationMetadataConfigurationInventoryTableConfiguration(
                configurationState: TfArg.literal('ENABLED'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsS3BucketMetric(
        localName: 's3_bucket_metric',
        bucket: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3BucketNotification(
        localName: 's3_bucket_notification',
        bucket: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3BucketObject(
        localName: 's3_bucket_object',
        bucket: TfArg.literal(leftover),
        key: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3BucketObjectLockConfiguration(
        localName: 's3_bucket_object_lock_configuration',
        bucket: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3BucketOwnershipControls(
        localName: 's3_bucket_ownership_controls',
        bucket: TfArg.literal(leftover),
        rule: S3BucketOwnershipControlsRule(
          objectOwnership: TfArg.literal('BucketOwnerPreferred'),
        ),
      ),
    );

    add(
      AwsS3BucketPolicy(
        localName: 's3_bucket_policy',
        bucket: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsS3BucketPublicAccessBlock(
        localName: 's3_bucket_public_access_block',
        bucket: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3BucketReplicationConfiguration(
        localName: 's3_bucket_replication_configuration',
        bucket: TfArg.literal(leftover),
        role: TfArg.literal(arn),
        rule: [
          S3BucketReplicationConfigurationRule(
            status: TfArg.literal('Enabled'),
            destination: S3BucketReplicationConfigurationRuleDestination(
              bucket: TfArg.literal(arn),
            ),
          ),
        ],
      ),
    );

    add(
      AwsS3BucketRequestPaymentConfiguration(
        localName: 's3_bucket_request_payment_configuration',
        bucket: TfArg.literal(leftover),
        payer: TfArg.literal('Requester'),
      ),
    );

    add(
      AwsS3BucketServerSideEncryptionConfiguration(
        localName: 's3_bucket_server_side_encryption_configuration',
        bucket: TfArg.literal(leftover),
        rule: [
          S3BucketServerSideEncryptionConfigurationRule(
            blockedEncryptionTypes: TfArg.literal(['NONE']),
          ),
        ],
      ),
    );

    add(
      AwsS3BucketVersioning(
        localName: 's3_bucket_versioning',
        bucket: TfArg.literal(leftover),
        versioningConfiguration: S3BucketVersioningVersioningConfiguration(
          status: TfArg.literal('Enabled'),
        ),
      ),
    );

    add(
      AwsS3BucketWebsiteConfiguration(
        localName: 's3_bucket_website_configuration',
        bucket: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3DirectoryBucket(
        localName: 's3_directory_bucket',
        bucket: TfArg.literal('leftover--use1-az4--x-s3'),
        location: [
          S3DirectoryBucketLocation(
            name: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsS3Object(
        localName: 's3_object',
        bucket: TfArg.literal(leftover),
        key: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3ObjectCopy(
        localName: 's3_object_copy',
        bucket: TfArg.literal(leftover),
        key: TfArg.literal(leftover),
        source: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3controlAccessGrant(
        localName: 's3control_access_grant',
        accessGrantsLocationId: TfArg.literal(leftover),
        permission: TfArg.literal('READ'),
        grantee: [
          S3controlAccessGrantGrantee(
            granteeIdentifier: TfArg.literal(leftover),
            granteeType: TfArg.literal('DIRECTORY_USER'),
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
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsS3controlAccessGrantsLocation(
        localName: 's3control_access_grants_location',
        iamRoleArn: TfArg.literal(arn),
        locationScope: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3controlAccessPointPolicy(
        localName: 's3control_access_point_policy',
        accessPointArn: TfArg.literal(arn),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsS3controlBucket(
        localName: 's3control_bucket',
        bucket: TfArg.literal(leftover),
        outpostId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3controlBucketLifecycleConfiguration(
        localName: 's3control_bucket_lifecycle_configuration',
        bucket: TfArg.literal(arn),
        rule: [
          S3controlBucketLifecycleConfigurationRule(
            id: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsS3controlBucketPolicy(
        localName: 's3control_bucket_policy',
        bucket: TfArg.literal(arn),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsS3controlDirectoryBucketAccessPointScope(
        localName: 's3control_directory_bucket_access_point_scope',
        accountId: TfArg.literal('123456789012'),
        name: TfArg.literal('leftover--use1-az4--xa-s3'),
        scope: [
          S3controlDirectoryBucketAccessPointScopeScope(
            permissions: TfArg.literal(['GetObject']),
          ),
        ],
      ),
    );

    add(
      AwsS3controlMultiRegionAccessPoint(
        localName: 's3control_multi_region_access_point',
        details: S3controlMultiRegionAccessPointDetails(
          name: TfArg.literal(leftover),
          region: [
            S3controlMultiRegionAccessPointDetailsRegion(
              bucket: TfArg.literal(leftover),
            ),
          ],
        ),
      ),
    );

    add(
      AwsS3controlMultiRegionAccessPointPolicy(
        localName: 's3control_multi_region_access_point_policy',
        details: S3controlMultiRegionAccessPointPolicyDetails(
          name: TfArg.literal(leftover),
          policy: TfArg.literal(policy),
        ),
      ),
    );

    add(
      AwsS3controlMultiRegionAccessPointRoutes(
        localName: 's3control_multi_region_access_point_routes',
        mrap: TfArg.literal(leftover),
        route: [
          S3controlMultiRegionAccessPointRoutesRoute(
            bucket: TfArg.literal(leftover),
            region: TfArg.literal('us-east-1'),
            trafficDialPercentage: TfArg.literal(100),
          ),
        ],
      ),
    );

    add(
      AwsS3controlObjectLambdaAccessPoint(
        localName: 's3control_object_lambda_access_point',
        name: TfArg.literal(leftover),
        configuration: S3controlObjectLambdaAccessPointConfiguration(
          supportingAccessPoint: TfArg.literal(arn),
          transformationConfiguration: [
            S3controlObjectLambdaAccessPointConfigurationTransformationConfiguration(
              actions: TfArg.literal(['GetObject']),
              contentTransformation:
                  S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation(
                awsLambda:
                    S3controlObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambda(
                  functionArn: TfArg.literal(arn),
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
        name: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsS3controlStorageLensConfiguration(
        localName: 's3control_storage_lens_configuration',
        configId: TfArg.literal(leftover),
        storageLensConfiguration:
            S3controlStorageLensConfigurationStorageLensConfiguration(
          enabled: TfArg.literal(true),
          accountLevel:
              S3controlStorageLensConfigurationStorageLensConfigurationAccountLevel(
            bucketLevel:
                S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevel(
              activityMetrics:
                  S3controlStorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics(
                enabled: TfArg.literal(true),
              ),
            ),
          ),
        ),
      ),
    );

    add(
      AwsS3filesAccessPoint(
        localName: 's3files_access_point',
        fileSystemId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3filesFileSystem(
        localName: 's3files_file_system',
        bucket: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsS3filesFileSystemPolicy(
        localName: 's3files_file_system_policy',
        fileSystemId: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsS3filesMountTarget(
        localName: 's3files_mount_target',
        fileSystemId: TfArg.literal(leftover),
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsS3filesSynchronizationConfiguration(
        localName: 's3files_synchronization_configuration',
        fileSystemId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3outpostsEndpoint(
        localName: 's3outposts_endpoint',
        outpostId: TfArg.literal(leftover),
        securityGroupId: TfArg.literal('sg-0123456789abcdef0'),
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsS3tablesNamespace(
        localName: 's3tables_namespace',
        namespace: TfArg.literal(leftover),
        tableBucketArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsS3tablesTable(
        localName: 's3tables_table',
        format: TfArg.literal('ICEBERG'),
        name: TfArg.literal(leftover),
        namespace: TfArg.literal(leftover),
        tableBucketArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsS3tablesTableBucket(
        localName: 's3tables_table_bucket',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3tablesTableBucketPolicy(
        localName: 's3tables_table_bucket_policy',
        resourcePolicy: TfArg.literal(policy),
        tableBucketArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsS3tablesTableBucketReplication(
        localName: 's3tables_table_bucket_replication',
        role: TfArg.literal(arn),
        tableBucketArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsS3tablesTablePolicy(
        localName: 's3tables_table_policy',
        name: TfArg.literal(leftover),
        namespace: TfArg.literal(leftover),
        resourcePolicy: TfArg.literal(policy),
        tableBucketArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsS3tablesTableReplication(
        localName: 's3tables_table_replication',
        role: TfArg.literal(arn),
        tableArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsS3vectorsIndex(
        localName: 's3vectors_index',
        dataType: TfArg.literal('float32'),
        dimension: TfArg.literal(200),
        distanceMetric: TfArg.literal('euclidean'),
        indexName: TfArg.literal(leftover),
        vectorBucketName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3vectorsVectorBucket(
        localName: 's3vectors_vector_bucket',
        vectorBucketName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsS3vectorsVectorBucketPolicy(
        localName: 's3vectors_vector_bucket_policy',
        policy: TfArg.literal(policy),
        vectorBucketArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSagemakerAlgorithm(
        localName: 'sagemaker_algorithm',
        algorithmName: TfArg.literal(leftover),
        trainingSpecification: [
          SagemakerAlgorithmTrainingSpecification(
            supportedTrainingInstanceTypes: TfArg.literal(['ml.m4.xlarge']),
            trainingImage: TfArg.literal(leftover),
            trainingChannels: [
              SagemakerAlgorithmTrainingSpecificationTrainingChannels(
                name: TfArg.literal(leftover),
                supportedContentTypes: TfArg.literal([leftover]),
                supportedInputModes: TfArg.literal(['Pipe']),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSagemakerApp(
        localName: 'sagemaker_app',
        appName: TfArg.literal(leftover),
        appType: TfArg.literal('JupyterServer'),
        domainId: TfArg.literal(leftover),
        spaceName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerAppImageConfig(
        localName: 'sagemaker_app_image_config',
        appImageConfigName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerCodeRepository(
        localName: 'sagemaker_code_repository',
        codeRepositoryName: TfArg.literal(leftover),
        gitConfig: SagemakerCodeRepositoryGitConfig(
          repositoryUrl: TfArg.literal('https://example.com'),
        ),
      ),
    );

    add(
      AwsSagemakerDataQualityJobDefinition(
        localName: 'sagemaker_data_quality_job_definition',
        roleArn: TfArg.literal(arn),
        dataQualityAppSpecification:
            SagemakerDataQualityJobDefinitionDataQualityAppSpecification(
          imageUri: TfArg.literal('https://example.com'),
        ),
        dataQualityJobInput:
            SagemakerDataQualityJobDefinitionDataQualityJobInput(
          batchTransformInput:
              SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInput(
            dataCapturedDestinationS3Uri: TfArg.literal('https://example.com'),
            datasetFormat:
                SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormat(
              csv:
                  SagemakerDataQualityJobDefinitionDataQualityJobInputBatchTransformInputDatasetFormatCsv(
                header: TfArg.literal(true),
              ),
            ),
          ),
        ),
        dataQualityJobOutputConfig:
            SagemakerDataQualityJobDefinitionDataQualityJobOutputConfig(
          monitoringOutputs:
              SagemakerDataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputs(
            s3Output:
                SagemakerDataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output(
              s3Uri: TfArg.literal('https://example.com'),
            ),
          ),
        ),
        jobResources: SagemakerDataQualityJobDefinitionJobResources(
          clusterConfig:
              SagemakerDataQualityJobDefinitionJobResourcesClusterConfig(
            instanceCount: TfArg.literal(200),
            instanceType: TfArg.literal('ml.t3.medium'),
            volumeSizeInGb: TfArg.literal(200),
          ),
        ),
      ),
    );

    add(
      AwsSagemakerDevice(
        localName: 'sagemaker_device',
        deviceFleetName: TfArg.literal(leftover),
        device: SagemakerDeviceDevice(
          deviceName: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsSagemakerDeviceFleet(
        localName: 'sagemaker_device_fleet',
        deviceFleetName: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        outputConfig: SagemakerDeviceFleetOutputConfig(
          s3OutputLocation: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsSagemakerDomain(
        localName: 'sagemaker_domain',
        authMode: TfArg.literal('SSO'),
        domainName: TfArg.literal(leftover),
        subnetIds: TfArg.literal([leftover]),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
        defaultUserSettings: SagemakerDomainDefaultUserSettings(
          executionRole: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsSagemakerEndpoint(
        localName: 'sagemaker_endpoint',
        endpointConfigName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerEndpointConfiguration(
        localName: 'sagemaker_endpoint_configuration',
        productionVariants: [
          SagemakerEndpointConfigurationProductionVariants(
            acceleratorType: TfArg.literal('ml.eia1.medium'),
          ),
        ],
      ),
    );

    add(
      AwsSagemakerFeatureGroup(
        localName: 'sagemaker_feature_group',
        eventTimeFeatureName: TfArg.literal(leftover),
        featureGroupName: TfArg.literal(leftover),
        recordIdentifierFeatureName: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        featureDefinition: [
          SagemakerFeatureGroupFeatureDefinition(
            collectionType: TfArg.literal('List'),
          ),
        ],
        offlineStoreConfig: SagemakerFeatureGroupOfflineStoreConfig(
          s3StorageConfig:
              SagemakerFeatureGroupOfflineStoreConfigS3StorageConfig(
            s3Uri: TfArg.literal('https://example.com'),
          ),
        ),
        onlineStoreConfig: SagemakerFeatureGroupOnlineStoreConfig(
          enableOnlineStore: TfArg.literal(true),
        ),
      ),
    );

    add(
      AwsSagemakerFlowDefinition(
        localName: 'sagemaker_flow_definition',
        flowDefinitionName: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        humanLoopConfig: SagemakerFlowDefinitionHumanLoopConfig(
          humanTaskUiArn: TfArg.literal(arn),
          taskCount: TfArg.literal(1),
          taskDescription: TfArg.literal(leftover),
          taskTitle: TfArg.literal(leftover),
          workteamArn: TfArg.literal(arn),
        ),
        outputConfig: SagemakerFlowDefinitionOutputConfig(
          s3OutputPath: TfArg.literal('s3://&/L'),
        ),
      ),
    );

    add(
      AwsSagemakerHub(
        localName: 'sagemaker_hub',
        hubDescription: TfArg.literal(leftover),
        hubName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerHubContentReference(
        localName: 'sagemaker_hub_content_reference',
        hubContentName: TfArg.literal(leftover),
        hubName: TfArg.literal(leftover),
        sagemakerPublicHubContentArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSagemakerHumanTaskUi(
        localName: 'sagemaker_human_task_ui',
        humanTaskUiName: TfArg.literal(leftover),
        uiTemplate: SagemakerHumanTaskUiUiTemplate(
          content: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsSagemakerHyperParameterTuningJob(
        localName: 'sagemaker_hyper_parameter_tuning_job',
        name: TfArg.literal(leftover),
        config: [
          SagemakerHyperParameterTuningJobConfig(
            strategy: TfArg.literal('Bayesian'),
            resourceLimits: [
              SagemakerHyperParameterTuningJobConfigResourceLimits(
                maxParallelTrainingJobs: TfArg.literal(200),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSagemakerImage(
        localName: 'sagemaker_image',
        imageName: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSagemakerImageVersion(
        localName: 'sagemaker_image_version',
        baseImage: TfArg.literal(leftover),
        imageName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerLabelingJob(
        localName: 'sagemaker_labeling_job',
        labelAttributeName: TfArg.literal(leftover),
        labelingJobName: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
        inputConfig: [
          SagemakerLabelingJobInputConfig(
            dataSource: [
              SagemakerLabelingJobInputConfigDataSource(
                s3DataSource: [
                  SagemakerLabelingJobInputConfigDataSourceS3DataSource(
                    manifestS3Uri: TfArg.literal('https://example.com'),
                  ),
                ],
              ),
            ],
          ),
        ],
        outputConfig: [
          SagemakerLabelingJobOutputConfig(
            s3OutputPath: TfArg.literal('s3://leftover-bucket/leftover'),
          ),
        ],
        humanTaskConfig: [
          SagemakerLabelingJobHumanTaskConfig(
            numberOfHumanWorkersPerDataObject: TfArg.literal(1),
            taskDescription: TfArg.literal(leftover),
            taskTimeLimitInSeconds: TfArg.literal(200),
            taskTitle: TfArg.literal(leftover),
            workteamArn: TfArg.literal(arn),
            uiConfig: [
              SagemakerLabelingJobHumanTaskConfigUiConfig(
                humanTaskUiArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSagemakerMlflowApp(
        localName: 'sagemaker_mlflow_app',
        artifactStoreUri: TfArg.literal('https://example.com'),
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSagemakerMlflowTrackingServer(
        localName: 'sagemaker_mlflow_tracking_server',
        artifactStoreUri: TfArg.literal('https://example.com'),
        roleArn: TfArg.literal(arn),
        trackingServerName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerModel(
        localName: 'sagemaker_model',
        executionRoleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSagemakerModelCard(
        localName: 'sagemaker_model_card',
        content: TfArg.literal(policy),
        modelCardName: TfArg.literal(leftover),
        modelCardStatus: TfArg.literal('Draft'),
      ),
    );

    add(
      AwsSagemakerModelCardExportJob(
        localName: 'sagemaker_model_card_export_job',
        modelCardExportJobName: TfArg.literal(leftover),
        modelCardName: TfArg.literal(leftover),
        outputConfig: [
          SagemakerModelCardExportJobOutputConfig(
            s3OutputPath: TfArg.literal('s3://leftover-bucket/leftover'),
          ),
        ],
      ),
    );

    add(
      AwsSagemakerModelPackageGroup(
        localName: 'sagemaker_model_package_group',
        modelPackageGroupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerModelPackageGroupPolicy(
        localName: 'sagemaker_model_package_group_policy',
        modelPackageGroupName: TfArg.literal(leftover),
        resourcePolicy: TfArg.literal(policy),
      ),
    );

    add(
      AwsSagemakerMonitoringSchedule(
        localName: 'sagemaker_monitoring_schedule',
        monitoringScheduleConfig:
            SagemakerMonitoringScheduleMonitoringScheduleConfig(
          monitoringType: TfArg.literal('DataQuality'),
        ),
      ),
    );

    add(
      AwsSagemakerNotebookInstance(
        localName: 'sagemaker_notebook_instance',
        instanceType: TfArg.literal('ml.t2.medium'),
        name: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
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
        pipelineDisplayName: TfArg.literal(leftover),
        pipelineName: TfArg.literal(leftover),
        pipelineDefinition: TfArg.literal(policy),
      ),
    );

    add(
      AwsSagemakerProject(
        localName: 'sagemaker_project',
        projectName: TfArg.literal(leftover),
        serviceCatalogProvisioningDetails:
            SagemakerProjectServiceCatalogProvisioningDetails(
          productId: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsSagemakerServicecatalogPortfolioStatus(
        localName: 'sagemaker_servicecatalog_portfolio_status',
        status: TfArg.literal('Enabled'),
      ),
    );

    add(
      AwsSagemakerSpace(
        localName: 'sagemaker_space',
        domainId: TfArg.literal(leftover),
        spaceName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerStudioLifecycleConfig(
        localName: 'sagemaker_studio_lifecycle_config',
        studioLifecycleConfigAppType: TfArg.literal('JupyterServer'),
        studioLifecycleConfigContent: TfArg.literal(leftover),
        studioLifecycleConfigName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerTrainingJob(
        localName: 'sagemaker_training_job',
        roleArn: TfArg.literal(arn),
        trainingJobName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerUserProfile(
        localName: 'sagemaker_user_profile',
        domainId: TfArg.literal(leftover),
        userProfileName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSagemakerWorkforce(
        localName: 'sagemaker_workforce',
        workforceName: TfArg.literal(leftover),
        cognitoConfig: SagemakerWorkforceCognitoConfig(
          clientId: TfArg.literal(leftover),
          userPool: TfArg.literal(leftover),
        ),
        oidcConfig: SagemakerWorkforceOidcConfig(
          authorizationEndpoint: TfArg.literal(leftover),
          clientId: TfArg.literal(leftover),
          clientSecret: TfArg.variable('leftover_secret'),
          issuer: TfArg.literal(leftover),
          jwksUri: TfArg.literal('https://example.com'),
          logoutEndpoint: TfArg.literal(leftover),
          tokenEndpoint: TfArg.literal(leftover),
          userInfoEndpoint: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsSagemakerWorkteam(
        localName: 'sagemaker_workteam',
        description: TfArg.literal(leftover),
        workteamName: TfArg.literal(leftover),
        memberDefinition: [
          SagemakerWorkteamMemberDefinition(
            cognitoMemberDefinition:
                SagemakerWorkteamMemberDefinitionCognitoMemberDefinition(
              clientId: TfArg.literal(leftover),
              userGroup: TfArg.literal(leftover),
              userPool: TfArg.literal(leftover),
            ),
          ),
        ],
      ),
    );

    add(
      AwsSavingsplansSavingsPlan(
        localName: 'savingsplans_savings_plan',
        commitment: TfArg.literal(leftover),
        savingsPlanOfferingId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSchedulerSchedule(
        localName: 'scheduler_schedule',
        scheduleExpression: TfArg.literal(leftover),
        flexibleTimeWindow: SchedulerScheduleFlexibleTimeWindow(
          mode: TfArg.literal('OFF'),
        ),
        target: SchedulerScheduleTarget(
          arn: TfArg.literal(arn),
          roleArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsSchedulerScheduleGroup(
        localName: 'scheduler_schedule_group',
      ),
    );

    add(
      AwsSchemasDiscoverer(
        localName: 'schemas_discoverer',
        sourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSchemasRegistry(
        localName: 'schemas_registry',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSchemasRegistryPolicy(
        localName: 'schemas_registry_policy',
        policy: TfArg.literal(policy),
        registryName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSchemasSchema(
        localName: 'schemas_schema',
        content: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        registryName: TfArg.literal(leftover),
        type: TfArg.literal('OpenApi3'),
      ),
    );

    add(
      AwsSecretsmanagerSecret(
        localName: 'secretsmanager_secret',
      ),
    );

    add(
      AwsSecretsmanagerSecretPolicy(
        localName: 'secretsmanager_secret_policy',
        policy: TfArg.literal(policy),
        secretArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSecretsmanagerSecretRotation(
        localName: 'secretsmanager_secret_rotation',
        secretId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSecretsmanagerSecretVersion(
        localName: 'secretsmanager_secret_version',
        secretId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSecretsmanagerTag(
        localName: 'secretsmanager_tag',
        key: TfArg.literal(leftover),
        secretId: TfArg.literal(leftover),
        value: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSecurityGroup(
        localName: 'security_group',
      ),
    );

    add(
      AwsSecurityGroupRule(
        localName: 'security_group_rule',
        fromPort: TfArg.literal(200),
        protocol: TfArg.literal(leftover),
        securityGroupId: TfArg.literal('sg-0123456789abcdef0'),
        toPort: TfArg.literal(200),
        type: TfArg.literal('egress'),
        cidrBlocks: TfArg.literal(['10.0.0.0/16']),
      ),
    );

    add(
      AwsSecurityhubAccount(
        localName: 'securityhub_account',
      ),
    );

    add(
      AwsSecurityhubAccountV2(
        localName: 'securityhub_account_v2',
      ),
    );

    add(
      AwsSecurityhubActionTarget(
        localName: 'securityhub_action_target',
        description: TfArg.literal(leftover),
        identifier: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSecurityhubAggregatorV2(
        localName: 'securityhub_aggregator_v2',
        regionLinkingMode: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSecurityhubAutomationRule(
        localName: 'securityhub_automation_rule',
        description: TfArg.literal(leftover),
        ruleName: TfArg.literal(leftover),
        ruleOrder: TfArg.literal(200),
        criteria: [
          SecurityhubAutomationRuleCriteria(
            awsAccountId: [
              SecurityhubAutomationRuleCriteriaAwsAccountId(
                comparison: TfArg.literal('EQUALS'),
                value: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
        actions: [
          SecurityhubAutomationRuleActions(
            type: TfArg.literal('FINDING_FIELDS_UPDATE'),
          ),
        ],
      ),
    );

    add(
      AwsSecurityhubAutomationRuleV2(
        localName: 'securityhub_automation_rule_v2',
        description: TfArg.literal(leftover),
        ruleName: TfArg.literal(leftover),
        ruleOrder: TfArg.literal(200),
        action: [
          SecurityhubAutomationRuleV2Action(
            type: TfArg.literal('FINDING_FIELDS_UPDATE'),
          ),
        ],
        criteria: [
          SecurityhubAutomationRuleV2Criteria(
            ocsfFindingCriteriaJson: TfArg.literal(policy),
          ),
        ],
      ),
    );

    add(
      AwsSecurityhubConfigurationPolicy(
        localName: 'securityhub_configuration_policy',
        name: TfArg.literal(leftover),
        configurationPolicy: SecurityhubConfigurationPolicyConfigurationPolicy(
          serviceEnabled: TfArg.literal(true),
        ),
      ),
    );

    add(
      AwsSecurityhubConfigurationPolicyAssociation(
        localName: 'securityhub_configuration_policy_association',
        policyId: TfArg.literal('SELF_MANAGED_SECURITY_HUB'),
        targetId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsSecurityhubConnectorV2(
        localName: 'securityhub_connector_v2',
        name: TfArg.literal(leftover),
        connectorProvider: [
          SecurityhubConnectorV2ConnectorProvider(
            jiraCloud: [
              SecurityhubConnectorV2ConnectorProviderJiraCloud(
                projectKey: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSecurityhubFeatureV2(
        localName: 'securityhub_feature_v2',
        featureName: TfArg.literal('NETWORK_SCANNING'),
        featureStatus: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsSecurityhubFindingAggregator(
        localName: 'securityhub_finding_aggregator',
        linkingMode: TfArg.literal('ALL_REGIONS'),
      ),
    );

    add(
      AwsSecurityhubInsight(
        localName: 'securityhub_insight',
        groupByAttribute: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        filters: SecurityhubInsightFilters(
          awsAccountId: [
            SecurityhubInsightFiltersAwsAccountId(
              comparison: TfArg.literal('EQUALS'),
              value: TfArg.literal(leftover),
            ),
          ],
        ),
      ),
    );

    add(
      AwsSecurityhubInviteAccepter(
        localName: 'securityhub_invite_accepter',
        masterId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSecurityhubMember(
        localName: 'securityhub_member',
        accountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsSecurityhubOrganizationAdminAccount(
        localName: 'securityhub_organization_admin_account',
        adminAccountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsSecurityhubOrganizationConfiguration(
        localName: 'securityhub_organization_configuration',
        autoEnable: TfArg.literal(true),
      ),
    );

    add(
      AwsSecurityhubProductSubscription(
        localName: 'securityhub_product_subscription',
        productArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSecurityhubStandardsControl(
        localName: 'securityhub_standards_control',
        controlStatus: TfArg.literal('ENABLED'),
        standardsControlArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSecurityhubStandardsControlAssociation(
        localName: 'securityhub_standards_control_association',
        associationStatus: TfArg.literal('ENABLED'),
        securityControlId: TfArg.literal(leftover),
        standardsArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSecurityhubStandardsSubscription(
        localName: 'securityhub_standards_subscription',
        standardsArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSecuritylakeAwsLogSource(
        localName: 'securitylake_aws_log_source',
        source: [
          SecuritylakeAwsLogSourceSource(
            regions: TfArg.literal([leftover]),
            sourceName: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsSecuritylakeCustomLogSource(
        localName: 'securitylake_custom_log_source',
        sourceName: TfArg.literal(leftover),
        configuration: [
          SecuritylakeCustomLogSourceConfiguration(
            providerIdentity: [
              SecuritylakeCustomLogSourceConfigurationProviderIdentity(
                externalId: TfArg.literal(leftover),
                principal: TfArg.literal(leftover),
              ),
            ],
            crawlerConfiguration: [
              SecuritylakeCustomLogSourceConfigurationCrawlerConfiguration(
                roleArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSecuritylakeDataLake(
        localName: 'securitylake_data_lake',
        metaStoreManagerRoleArn: TfArg.literal(arn),
        configuration: [
          SecuritylakeDataLakeConfiguration(
            region: TfArg.literal('us-east-1'),
          ),
        ],
      ),
    );

    add(
      AwsSecuritylakeSubscriber(
        localName: 'securitylake_subscriber',
        source: [
          SecuritylakeSubscriberSource(
            awsLogSourceResource: [
              SecuritylakeSubscriberSourceAwsLogSourceResource(
                sourceName: TfArg.literal('ROUTE53'),
              ),
            ],
          ),
        ],
        subscriberIdentity: [
          SecuritylakeSubscriberSubscriberIdentity(
            externalId: TfArg.literal(leftover),
            principal: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsSecuritylakeSubscriberNotification(
        localName: 'securitylake_subscriber_notification',
        subscriberId: TfArg.literal(leftover),
        configuration: [
          SecuritylakeSubscriberNotificationConfiguration(
            httpsNotificationConfiguration: [
              SecuritylakeSubscriberNotificationConfigurationHttpsNotificationConfiguration(
                endpoint: TfArg.literal(leftover),
                targetRoleArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsServerlessapplicationrepositoryCloudformationStack(
        localName: 'serverlessapplicationrepository_cloudformation_s',
        applicationId: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryHttpNamespace(
        localName: 'service_discovery_http_namespace',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryInstance(
        localName: 'service_discovery_instance',
        attributes: TfArg.literal({'k': leftover}),
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        serviceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryPrivateDnsNamespace(
        localName: 'service_discovery_private_dns_namespace',
        name: TfArg.literal(leftover),
        vpc: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryPublicDnsNamespace(
        localName: 'service_discovery_public_dns_namespace',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServiceDiscoveryService(
        localName: 'service_discovery_service',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicecatalogBudgetResourceAssociation(
        localName: 'servicecatalog_budget_resource_association',
        budgetName: TfArg.literal(leftover),
        resourceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicecatalogConstraint(
        localName: 'servicecatalog_constraint',
        parameters: TfArg.literal(policy),
        portfolioId: TfArg.literal(leftover),
        productId: TfArg.literal(leftover),
        type: TfArg.literal('LAUNCH'),
      ),
    );

    add(
      AwsServicecatalogOrganizationsAccess(
        localName: 'servicecatalog_organizations_access',
        enabled: TfArg.literal(true),
      ),
    );

    add(
      AwsServicecatalogPortfolio(
        localName: 'servicecatalog_portfolio',
        name: TfArg.literal(leftover),
        providerName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicecatalogPortfolioShare(
        localName: 'servicecatalog_portfolio_share',
        portfolioId: TfArg.literal(leftover),
        principalId: TfArg.literal('123456789012'),
        type: TfArg.literal('ACCOUNT'),
      ),
    );

    add(
      AwsServicecatalogPrincipalPortfolioAssociation(
        localName: 'servicecatalog_principal_portfolio_association',
        portfolioId: TfArg.literal(leftover),
        principalArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsServicecatalogProduct(
        localName: 'servicecatalog_product',
        name: TfArg.literal(leftover),
        owner: TfArg.literal(leftover),
        type: TfArg.literal('CLOUD_FORMATION_TEMPLATE'),
        provisioningArtifactParameters:
            ServicecatalogProductProvisioningArtifactParameters(
          templatePhysicalId: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsServicecatalogProductPortfolioAssociation(
        localName: 'servicecatalog_product_portfolio_association',
        portfolioId: TfArg.literal(leftover),
        productId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicecatalogProvisionedProduct(
        localName: 'servicecatalog_provisioned_product',
        name: TfArg.literal(leftover),
        productId: TfArg.literal(leftover),
        provisioningArtifactId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicecatalogProvisioningArtifact(
        localName: 'servicecatalog_provisioning_artifact',
        productId: TfArg.literal(leftover),
        templatePhysicalId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicecatalogServiceAction(
        localName: 'servicecatalog_service_action',
        name: TfArg.literal(leftover),
        definition: ServicecatalogServiceActionDefinition(
          name: TfArg.literal(leftover),
          version: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsServicecatalogTagOption(
        localName: 'servicecatalog_tag_option',
        key: TfArg.literal(leftover),
        value: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicecatalogTagOptionResourceAssociation(
        localName: 'servicecatalog_tag_option_resource_association',
        resourceId: TfArg.literal(leftover),
        tagOptionId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicecatalogappregistryApplication(
        localName: 'servicecatalogappregistry_application',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicecatalogappregistryAttributeGroup(
        localName: 'servicecatalogappregistry_attribute_group',
        attributes: TfArg.literal(policy),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicecatalogappregistryAttributeGroupAssociation(
        localName: 'servicecatalogappregistry_attribute_group_associ',
        applicationId: TfArg.literal(leftover),
        attributeGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsServicequotasAutoManagement(
        localName: 'servicequotas_auto_management',
        optInLevel: TfArg.literal('ACCOUNT'),
        optInType: TfArg.literal('NotifyOnly'),
      ),
    );

    add(
      AwsServicequotasServiceQuota(
        localName: 'servicequotas_service_quota',
        quotaCode: TfArg.literal(leftover),
        serviceCode: TfArg.literal(leftover),
        value: TfArg.literal(200),
      ),
    );

    add(
      AwsServicequotasTemplate(
        localName: 'servicequotas_template',
        quotaCode: TfArg.literal(leftover),
        serviceCode: TfArg.literal(leftover),
        value: TfArg.literal(200),
        awsRegion: TfArg.literal('us-east-1'),
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
        ruleSetName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesConfigurationSet(
        localName: 'ses_configuration_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesDomainDkim(
        localName: 'ses_domain_dkim',
        domain: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesDomainIdentity(
        localName: 'ses_domain_identity',
        domain: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesDomainIdentityVerification(
        localName: 'ses_domain_identity_verification',
        domain: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesDomainMailFrom(
        localName: 'ses_domain_mail_from',
        domain: TfArg.literal(leftover),
        mailFromDomain: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesEmailIdentity(
        localName: 'ses_email_identity',
        email: TfArg.literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesEventDestination(
        localName: 'ses_event_destination',
        configurationSetName: TfArg.literal(leftover),
        matchingTypes: TfArg.literal(['send']),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesIdentityNotificationTopic(
        localName: 'ses_identity_notification_topic',
        identity: TfArg.literal(leftover),
        notificationType: TfArg.literal('Bounce'),
      ),
    );

    add(
      AwsSesIdentityPolicy(
        localName: 'ses_identity_policy',
        identity: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsSesReceiptFilter(
        localName: 'ses_receipt_filter',
        cidr: TfArg.literal('10.0.0.0/16'),
        name: TfArg.literal(leftover),
        policy: TfArg.literal('Block'),
      ),
    );

    add(
      AwsSesReceiptRule(
        localName: 'ses_receipt_rule',
        name: TfArg.literal(leftover),
        ruleSetName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesReceiptRuleSet(
        localName: 'ses_receipt_rule_set',
        ruleSetName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesTemplate(
        localName: 'ses_template',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesv2AccountSuppressionAttributes(
        localName: 'sesv2_account_suppression_attributes',
        suppressedReasons: TfArg.literal(['BOUNCE']),
      ),
    );

    add(
      AwsSesv2AccountVdmAttributes(
        localName: 'sesv2_account_vdm_attributes',
        vdmEnabled: TfArg.literal('ENABLED'),
      ),
    );

    add(
      AwsSesv2ConfigurationSet(
        localName: 'sesv2_configuration_set',
        configurationSetName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesv2ConfigurationSetEventDestination(
        localName: 'sesv2_configuration_set_event_destination',
        configurationSetName: TfArg.literal(leftover),
        eventDestinationName: TfArg.literal(leftover),
        eventDestination: Sesv2ConfigurationSetEventDestinationEventDestination(
          matchingEventTypes: TfArg.literal(['SEND']),
          cloudWatchDestination:
              Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestination(
            dimensionConfiguration: [
              Sesv2ConfigurationSetEventDestinationEventDestinationCloudWatchDestinationDimensionConfiguration(
                defaultDimensionValue: TfArg.literal(leftover),
                dimensionName: TfArg.literal(leftover),
                dimensionValueSource: TfArg.literal('MESSAGE_TAG'),
              ),
            ],
          ),
        ),
      ),
    );

    add(
      AwsSesv2ContactList(
        localName: 'sesv2_contact_list',
        contactListName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesv2DedicatedIpAssignment(
        localName: 'sesv2_dedicated_ip_assignment',
        destinationPoolName: TfArg.literal(leftover),
        ip: TfArg.literal('10.0.0.1'),
      ),
    );

    add(
      AwsSesv2DedicatedIpPool(
        localName: 'sesv2_dedicated_ip_pool',
        poolName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesv2EmailIdentity(
        localName: 'sesv2_email_identity',
        emailIdentity: TfArg.literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesv2EmailIdentityFeedbackAttributes(
        localName: 'sesv2_email_identity_feedback_attributes',
        emailIdentity: TfArg.literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesv2EmailIdentityMailFromAttributes(
        localName: 'sesv2_email_identity_mail_from_attributes',
        emailIdentity: TfArg.literal('leftover@example.com'),
      ),
    );

    add(
      AwsSesv2EmailIdentityPolicy(
        localName: 'sesv2_email_identity_policy',
        emailIdentity: TfArg.literal('leftover@example.com'),
        policy: TfArg.literal(policy),
        policyName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesv2MultiRegionEndpoint(
        localName: 'sesv2_multi_region_endpoint',
        endpointName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesv2Tenant(
        localName: 'sesv2_tenant',
        tenantName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSesv2TenantResourceAssociation(
        localName: 'sesv2_tenant_resource_association',
        resourceArn: TfArg.literal(arn),
        tenantName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSfnActivity(
        localName: 'sfn_activity',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSfnAlias(
        localName: 'sfn_alias',
        name: TfArg.literal(leftover),
        routingConfiguration: [
          SfnAliasRoutingConfiguration(
            stateMachineVersionArn: TfArg.literal(arn),
            weight: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsSfnStateMachine(
        localName: 'sfn_state_machine',
        definition: TfArg.literal(leftover),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsShieldApplicationLayerAutomaticResponse(
        localName: 'shield_application_layer_automatic_response',
        action: TfArg.literal('BLOCK'),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsShieldDrtAccessLogBucketAssociation(
        localName: 'shield_drt_access_log_bucket_association',
        logBucket: TfArg.literal(leftover),
        roleArnAssociationId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsShieldDrtAccessRoleArnAssociation(
        localName: 'shield_drt_access_role_arn_association',
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsShieldProactiveEngagement(
        localName: 'shield_proactive_engagement',
        enabled: TfArg.literal(true),
        emergencyContact: [
          ShieldProactiveEngagementEmergencyContact(
            emailAddress: TfArg.literal('leftover@example.com'),
          ),
        ],
      ),
    );

    add(
      AwsShieldProtection(
        localName: 'shield_protection',
        name: TfArg.literal(leftover),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsShieldProtectionGroup(
        localName: 'shield_protection_group',
        aggregation: TfArg.literal('SUM'),
        pattern: TfArg.literal('ALL'),
        protectionGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsShieldProtectionHealthCheckAssociation(
        localName: 'shield_protection_health_check_association',
        healthCheckArn: TfArg.literal(arn),
        shieldProtectionId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsShieldSubscription(
        localName: 'shield_subscription',
      ),
    );

    add(
      AwsSignerSigningJob(
        localName: 'signer_signing_job',
        profileName: TfArg.literal(leftover),
        destination: SignerSigningJobDestination(
          s3: SignerSigningJobDestinationS3(
            bucket: TfArg.literal(leftover),
          ),
        ),
        source: SignerSigningJobSource(
          s3: SignerSigningJobSourceS3(
            bucket: TfArg.literal(leftover),
            key: TfArg.literal(leftover),
            version: TfArg.literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsSignerSigningProfile(
        localName: 'signer_signing_profile',
        platformId: TfArg.literal('AWSLambda-SHA384-ECDSA'),
      ),
    );

    add(
      AwsSignerSigningProfilePermission(
        localName: 'signer_signing_profile_permission',
        action: TfArg.literal('signer:StartSigningJob'),
        principal: TfArg.literal(leftover),
        profileName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSnapshotCreateVolumePermission(
        localName: 'snapshot_create_volume_permission',
        accountId: TfArg.literal('123456789012'),
        snapshotId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSnsPlatformApplication(
        localName: 'sns_platform_application',
        name: TfArg.literal(leftover),
        platform: TfArg.literal(leftover),
        platformCredential: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsSnsSmsPreferences(
        localName: 'sns_sms_preferences',
        defaultSenderId: TfArg.literal(leftover),
        defaultSmsType: TfArg.literal('Promotional'),
        deliveryStatusIamRoleArn: TfArg.literal(arn),
        deliveryStatusSuccessSamplingRate: TfArg.literal(leftover),
        monthlySpendLimit: TfArg.literal(200),
        usageReportS3Bucket: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSnsTopic(
        localName: 'sns_topic',
      ),
    );

    add(
      AwsSnsTopicDataProtectionPolicy(
        localName: 'sns_topic_data_protection_policy',
        arn: TfArg.literal(arn),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsSnsTopicPolicy(
        localName: 'sns_topic_policy',
        arn: TfArg.literal(arn),
        policy: TfArg.literal(policy),
      ),
    );

    add(
      AwsSnsTopicSubscription(
        localName: 'sns_topic_subscription',
        endpoint: TfArg.literal(leftover),
        protocol: TfArg.literal('application'),
        topicArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSpotDatafeedSubscription(
        localName: 'spot_datafeed_subscription',
        bucket: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSpotFleetRequest(
        localName: 'spot_fleet_request',
        iamFleetRole: TfArg.literal(arn),
        targetCapacity: TfArg.literal(200),
        launchSpecification: [
          SpotFleetRequestLaunchSpecification(
            ami: TfArg.literal(leftover),
            instanceType: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsSpotInstanceRequest(
        localName: 'spot_instance_request',
        ami: TfArg.literal(leftover),
        instanceType: TfArg.literal(leftover),
        launchTemplate: SpotInstanceRequestLaunchTemplate(
          id: TfArg.literal('lt-0123456789abcdef0'),
        ),
      ),
    );

    add(
      AwsSqsQueue(
        localName: 'sqs_queue',
      ),
    );

    add(
      AwsSqsQueuePolicy(
        localName: 'sqs_queue_policy',
        policy: TfArg.literal(policy),
        queueUrl: TfArg.literal('https://example.com'),
      ),
    );

    add(
      AwsSqsQueueRedriveAllowPolicy(
        localName: 'sqs_queue_redrive_allow_policy',
        queueUrl: TfArg.literal('https://example.com'),
        redriveAllowPolicy: TfArg.literal(policy),
      ),
    );

    add(
      AwsSqsQueueRedrivePolicy(
        localName: 'sqs_queue_redrive_policy',
        queueUrl: TfArg.literal('https://example.com'),
        redrivePolicy: TfArg.literal(policy),
      ),
    );

    add(
      AwsSsmActivation(
        localName: 'ssm_activation',
        iamRole: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsmAssociation(
        localName: 'ssm_association',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsmDefaultPatchBaseline(
        localName: 'ssm_default_patch_baseline',
        baselineId: TfArg.literal('pb-0123456789abcdef0'),
        operatingSystem: TfArg.literal('WINDOWS'),
      ),
    );

    add(
      AwsSsmDocument(
        localName: 'ssm_document',
        content: TfArg.literal(leftover),
        documentType: TfArg.literal('Command'),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsmMaintenanceWindow(
        localName: 'ssm_maintenance_window',
        cutoff: TfArg.literal(200),
        duration: TfArg.literal(200),
        name: TfArg.literal(leftover),
        schedule: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsmMaintenanceWindowTarget(
        localName: 'ssm_maintenance_window_target',
        resourceType: TfArg.literal('INSTANCE'),
        windowId: TfArg.literal(leftover),
        targets: [
          SsmMaintenanceWindowTargetTargets(
            key: TfArg.literal(leftover),
            values: TfArg.literal([leftover]),
          ),
        ],
      ),
    );

    add(
      AwsSsmMaintenanceWindowTask(
        localName: 'ssm_maintenance_window_task',
        taskArn: TfArg.literal(arn),
        taskType: TfArg.literal('RUN_COMMAND'),
        windowId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsmParameter(
        localName: 'ssm_parameter',
        name: TfArg.literal(leftover),
        type: TfArg.literal('String'),
        value: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsSsmPatchBaseline(
        localName: 'ssm_patch_baseline',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsmPatchGroup(
        localName: 'ssm_patch_group',
        baselineId: TfArg.literal(leftover),
        patchGroup: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsmResourceDataSync(
        localName: 'ssm_resource_data_sync',
        name: TfArg.literal(leftover),
        s3Destination: SsmResourceDataSyncS3Destination(
          bucketName: TfArg.literal(leftover),
          region: TfArg.literal('us-east-1'),
        ),
      ),
    );

    add(
      AwsSsmServiceSetting(
        localName: 'ssm_service_setting',
        settingId: TfArg.literal(arn),
        settingValue: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsmcontactsContact(
        localName: 'ssmcontacts_contact',
        alias: TfArg.literal(leftover),
        type: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsmcontactsContactChannel(
        localName: 'ssmcontacts_contact_channel',
        contactId: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        type: TfArg.literal(leftover),
        deliveryAddress: SsmcontactsContactChannelDeliveryAddress(
          simpleAddress: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsSsmcontactsPlan(
        localName: 'ssmcontacts_plan',
        contactId: TfArg.literal(leftover),
        stage: [
          SsmcontactsPlanStage(
            durationInMinutes: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsSsmcontactsRotation(
        localName: 'ssmcontacts_rotation',
        contactIds: TfArg.literal([leftover]),
        name: TfArg.literal(leftover),
        timeZoneId: TfArg.literal(leftover),
        recurrence: [
          SsmcontactsRotationRecurrence(
            numberOfOnCalls: TfArg.literal(200),
            recurrenceMultiplier: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsSsmincidentsReplicationSet(
        localName: 'ssmincidents_replication_set',
      ),
    );

    add(
      AwsSsmincidentsResponsePlan(
        localName: 'ssmincidents_response_plan',
        name: TfArg.literal(leftover),
        incidentTemplate: SsmincidentsResponsePlanIncidentTemplate(
          impact: TfArg.literal(200),
          title: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsSsmquicksetupConfigurationManager(
        localName: 'ssmquicksetup_configuration_manager',
        name: TfArg.literal(leftover),
        configurationDefinition: [
          SsmquicksetupConfigurationManagerConfigurationDefinition(
            parameters: TfArg.literal({'k': leftover}),
            type: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsSsoadminAccountAssignment(
        localName: 'ssoadmin_account_assignment',
        instanceArn: TfArg.literal(arn),
        permissionSetArn: TfArg.literal(arn),
        principalId: TfArg.literal('12345678-1234-1234-1234-123456789012'),
        principalType: TfArg.literal('USER'),
        targetId: TfArg.literal('123456789012'),
        targetType: TfArg.literal('AWS_ACCOUNT'),
      ),
    );

    add(
      AwsSsoadminApplication(
        localName: 'ssoadmin_application',
        applicationProviderArn: TfArg.literal(arn),
        instanceArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsoadminApplicationAccessScope(
        localName: 'ssoadmin_application_access_scope',
        applicationArn: TfArg.literal(arn),
        scope: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsoadminApplicationAssignment(
        localName: 'ssoadmin_application_assignment',
        applicationArn: TfArg.literal(arn),
        principalId: TfArg.literal(leftover),
        principalType: TfArg.literal('USER'),
      ),
    );

    add(
      AwsSsoadminApplicationAssignmentConfiguration(
        localName: 'ssoadmin_application_assignment_configuration',
        applicationArn: TfArg.literal(arn),
        assignmentRequired: TfArg.literal(true),
      ),
    );

    add(
      AwsSsoadminCustomerManagedPolicyAttachment(
        localName: 'ssoadmin_customer_managed_policy_attachment',
        instanceArn: TfArg.literal(arn),
        permissionSetArn: TfArg.literal(arn),
        customerManagedPolicyReference:
            SsoadminCustomerManagedPolicyAttachmentCustomerManagedPolicyReference(
          name: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsSsoadminCustomerManagedPolicyAttachmentsExclusive(
        localName: 'ssoadmin_customer_managed_policy_attachments_exc',
        instanceArn: TfArg.literal(arn),
        permissionSetArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSsoadminInstanceAccessControlAttributes(
        localName: 'ssoadmin_instance_access_control_attributes',
        instanceArn: TfArg.literal(arn),
        attribute: [
          SsoadminInstanceAccessControlAttributesAttribute(
            key: TfArg.literal(leftover),
            value: [
              SsoadminInstanceAccessControlAttributesAttributeValue(
                source: TfArg.literal([leftover]),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsSsoadminManagedPolicyAttachment(
        localName: 'ssoadmin_managed_policy_attachment',
        instanceArn: TfArg.literal(arn),
        managedPolicyArn: TfArg.literal(arn),
        permissionSetArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSsoadminManagedPolicyAttachmentsExclusive(
        localName: 'ssoadmin_managed_policy_attachments_exclusive',
        instanceArn: TfArg.literal(arn),
        managedPolicyArns: TfArg.literal([arn]),
        permissionSetArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSsoadminPermissionSet(
        localName: 'ssoadmin_permission_set',
        instanceArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSsoadminPermissionSetInlinePolicy(
        localName: 'ssoadmin_permission_set_inline_policy',
        inlinePolicy: TfArg.literal(policy),
        instanceArn: TfArg.literal(arn),
        permissionSetArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSsoadminPermissionsBoundaryAttachment(
        localName: 'ssoadmin_permissions_boundary_attachment',
        instanceArn: TfArg.literal(arn),
        permissionSetArn: TfArg.literal(arn),
        permissionsBoundary:
            SsoadminPermissionsBoundaryAttachmentPermissionsBoundary(
          managedPolicyArn: TfArg.literal(arn),
        ),
      ),
    );

    add(
      AwsSsoadminRegion(
        localName: 'ssoadmin_region',
        instanceArn: TfArg.literal(arn),
        regionName: TfArg.literal('us-east-1'),
      ),
    );

    add(
      AwsSsoadminTrustedTokenIssuer(
        localName: 'ssoadmin_trusted_token_issuer',
        instanceArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        trustedTokenIssuerType: TfArg.literal('OIDC_JWT'),
        trustedTokenIssuerConfiguration: [
          SsoadminTrustedTokenIssuerTrustedTokenIssuerConfiguration(
            oidcJwtConfiguration: [
              SsoadminTrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfiguration(
                claimAttributePath: TfArg.literal(leftover),
                identityStoreAttributePath: TfArg.literal(leftover),
                issuerUrl: TfArg.literal('https://example.com'),
                jwksRetrievalOption: TfArg.literal('OPEN_ID_DISCOVERY'),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsStoragegatewayCache(
        localName: 'storagegateway_cache',
        diskId: TfArg.literal(leftover),
        gatewayArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsStoragegatewayCachedIscsiVolume(
        localName: 'storagegateway_cached_iscsi_volume',
        gatewayArn: TfArg.literal(arn),
        networkInterfaceId: TfArg.literal(leftover),
        targetName: TfArg.literal(leftover),
        volumeSizeInBytes: TfArg.literal(200),
      ),
    );

    add(
      AwsStoragegatewayFileSystemAssociation(
        localName: 'storagegateway_file_system_association',
        gatewayArn: TfArg.literal(arn),
        locationArn: TfArg.literal(arn),
        password: TfArg.variable('leftover_secret'),
        username: TfArg.literal(leftover),
      ),
    );

    add(
      AwsStoragegatewayGateway(
        localName: 'storagegateway_gateway',
        gatewayName: TfArg.literal(leftover),
        gatewayTimezone: TfArg.literal('GMT+9:47'),
        activationKey: TfArg.literal(leftover),
      ),
    );

    add(
      AwsStoragegatewayNfsFileShare(
        localName: 'storagegateway_nfs_file_share',
        clientList: TfArg.literal(['10.0.0.0/16']),
        gatewayArn: TfArg.literal(arn),
        locationArn: TfArg.literal(arn),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsStoragegatewaySmbFileShare(
        localName: 'storagegateway_smb_file_share',
        gatewayArn: TfArg.literal(arn),
        locationArn: TfArg.literal(arn),
        roleArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsStoragegatewayStoredIscsiVolume(
        localName: 'storagegateway_stored_iscsi_volume',
        diskId: TfArg.literal(leftover),
        gatewayArn: TfArg.literal(arn),
        networkInterfaceId: TfArg.literal(leftover),
        preserveExistingData: TfArg.literal(true),
        targetName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsStoragegatewayTapePool(
        localName: 'storagegateway_tape_pool',
        poolName: TfArg.literal(leftover),
        storageClass: TfArg.literal('DEEP_ARCHIVE'),
      ),
    );

    add(
      AwsStoragegatewayUploadBuffer(
        localName: 'storagegateway_upload_buffer',
        gatewayArn: TfArg.literal(arn),
        diskId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsStoragegatewayWorkingStorage(
        localName: 'storagegateway_working_storage',
        diskId: TfArg.literal(leftover),
        gatewayArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsSubnet(
        localName: 'subnet',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsSwfDomain(
        localName: 'swf_domain',
        workflowExecutionRetentionPeriodInDays: TfArg.literal('30'),
      ),
    );

    add(
      AwsSyntheticsCanary(
        localName: 'synthetics_canary',
        artifactS3Location: TfArg.literal(leftover),
        executionRoleArn: TfArg.literal(arn),
        handler: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        runtimeVersion: TfArg.literal(leftover),
        schedule: SyntheticsCanarySchedule(
          expression: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsSyntheticsGroup(
        localName: 'synthetics_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsSyntheticsGroupAssociation(
        localName: 'synthetics_group_association',
        canaryArn: TfArg.literal(arn),
        groupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsTimestreaminfluxdbDbCluster(
        localName: 'timestreaminfluxdb_db_cluster',
        dbInstanceType: TfArg.literal('db.influx.medium'),
        name: TfArg.literal(leftover),
        vpcSecurityGroupIds: TfArg.literal(['sg-huetvnpt7rr']),
        vpcSubnetIds: TfArg.literal(['subnet-d7c56hy72wj']),
      ),
    );

    add(
      AwsTimestreaminfluxdbDbInstance(
        localName: 'timestreaminfluxdb_db_instance',
        allocatedStorage: TfArg.literal(200),
        bucket: TfArg.literal(leftover),
        dbInstanceType: TfArg.literal('db.influx.medium'),
        name: TfArg.literal(leftover),
        organization: TfArg.literal(leftover),
        password: TfArg.variable('leftover_secret'),
        username: TfArg.literal(leftover),
        vpcSecurityGroupIds: TfArg.literal(['sg-huetvnpt7rr']),
        vpcSubnetIds: TfArg.literal(['subnet-d7c56hy72wj']),
      ),
    );

    add(
      AwsTimestreamqueryScheduledQuery(
        localName: 'timestreamquery_scheduled_query',
        executionRoleArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
        queryString: TfArg.literal(leftover),
        notificationConfiguration: [
          TimestreamqueryScheduledQueryNotificationConfiguration(
            snsConfiguration: [
              TimestreamqueryScheduledQueryNotificationConfigurationSnsConfiguration(
                topicArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
        scheduleConfiguration: [
          TimestreamqueryScheduledQueryScheduleConfiguration(
            scheduleExpression: TfArg.literal(leftover),
          ),
        ],
        targetConfiguration: [
          TimestreamqueryScheduledQueryTargetConfiguration(
            timestreamConfiguration: [
              TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfiguration(
                databaseName: TfArg.literal(leftover),
                tableName: TfArg.literal(leftover),
                timeColumn: TfArg.literal(leftover),
                dimensionMapping: [
                  TimestreamqueryScheduledQueryTargetConfigurationTimestreamConfigurationDimensionMapping(
                    dimensionValueType: TfArg.literal('VARCHAR'),
                    name: TfArg.literal(leftover),
                  ),
                ],
              ),
            ],
          ),
        ],
        errorReportConfiguration: [
          TimestreamqueryScheduledQueryErrorReportConfiguration(
            s3Configuration: [
              TimestreamqueryScheduledQueryErrorReportConfigurationS3Configuration(
                bucketName: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsTimestreamwriteDatabase(
        localName: 'timestreamwrite_database',
        databaseName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsTimestreamwriteTable(
        localName: 'timestreamwrite_table',
        databaseName: TfArg.literal(leftover),
        tableName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsTranscribeLanguageModel(
        localName: 'transcribe_language_model',
        baseModelName: TfArg.literal('NarrowBand'),
        languageCode: TfArg.literal('af-ZA'),
        modelName: TfArg.literal(leftover),
        inputDataConfig: TranscribeLanguageModelInputDataConfig(
          dataAccessRoleArn: TfArg.literal(arn),
          s3Uri: TfArg.literal('https://example.com'),
        ),
      ),
    );

    add(
      AwsTranscribeMedicalVocabulary(
        localName: 'transcribe_medical_vocabulary',
        languageCode: TfArg.literal('en-US'),
        vocabularyFileUri: TfArg.literal('https://example.com'),
        vocabularyName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsTranscribeVocabulary(
        localName: 'transcribe_vocabulary',
        languageCode: TfArg.literal('af-ZA'),
        vocabularyName: TfArg.literal(leftover),
        phrases: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsTranscribeVocabularyFilter(
        localName: 'transcribe_vocabulary_filter',
        languageCode: TfArg.literal('af-ZA'),
        vocabularyFilterName: TfArg.literal(leftover),
        vocabularyFilterFileUri: TfArg.literal('https://example.com'),
      ),
    );

    add(
      AwsTransferAccess(
        localName: 'transfer_access',
        externalId: TfArg.literal(leftover),
        serverId: TfArg.literal('s-0123456789abcdef0'),
      ),
    );

    add(
      AwsTransferAgreement(
        localName: 'transfer_agreement',
        accessRole: TfArg.literal(arn),
        baseDirectory: TfArg.literal(leftover),
        localProfileId: TfArg.literal(leftover),
        partnerProfileId: TfArg.literal(leftover),
        serverId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsTransferCertificate(
        localName: 'transfer_certificate',
        certificate: TfArg.variable('leftover_secret'),
        usage: TfArg.literal('SIGNING'),
      ),
    );

    add(
      AwsTransferConnector(
        localName: 'transfer_connector',
        accessRole: TfArg.literal(leftover),
      ),
    );

    add(
      AwsTransferHostKey(
        localName: 'transfer_host_key',
        serverId: TfArg.literal(leftover),
        hostKeyBody: TfArg.variable('leftover_secret'),
        hostKeyBodyWo: TfArg.variable('leftover_secret'),
      ),
    );

    add(
      AwsTransferProfile(
        localName: 'transfer_profile',
        as2Id: TfArg.literal(leftover),
        profileType: TfArg.literal('LOCAL'),
      ),
    );

    add(
      AwsTransferServer(
        localName: 'transfer_server',
      ),
    );

    add(
      AwsTransferSshKey(
        localName: 'transfer_ssh_key',
        body: TfArg.literal(leftover),
        serverId: TfArg.literal('s-0123456789abcdef0'),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsTransferTag(
        localName: 'transfer_tag',
        key: TfArg.literal(leftover),
        resourceArn: TfArg.literal(arn),
        value: TfArg.literal(leftover),
      ),
    );

    add(
      AwsTransferUser(
        localName: 'transfer_user',
        role: TfArg.literal(arn),
        serverId: TfArg.literal('s-0123456789abcdef0'),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsTransferWebApp(
        localName: 'transfer_web_app',
        identityProviderDetails: [
          TransferWebAppIdentityProviderDetails(
            identityCenterConfig: [
              TransferWebAppIdentityProviderDetailsIdentityCenterConfig(
                instanceArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsTransferWebAppCustomization(
        localName: 'transfer_web_app_customization',
        webAppId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsTransferWorkflow(
        localName: 'transfer_workflow',
        steps: [
          TransferWorkflowSteps(
            type: TfArg.literal('COPY'),
          ),
        ],
      ),
    );

    add(
      AwsUxcAccountCustomizations(
        localName: 'uxc_account_customizations',
      ),
    );

    add(
      AwsVerifiedaccessEndpoint(
        localName: 'verifiedaccess_endpoint',
        attachmentType: TfArg.literal('vpc'),
        endpointType: TfArg.literal('load-balancer'),
        verifiedAccessGroupId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVerifiedaccessGroup(
        localName: 'verifiedaccess_group',
        verifiedaccessInstanceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVerifiedaccessInstance(
        localName: 'verifiedaccess_instance',
      ),
    );

    add(
      AwsVerifiedaccessInstanceLoggingConfiguration(
        localName: 'verifiedaccess_instance_logging_configuration',
        verifiedaccessInstanceId: TfArg.literal(leftover),
        accessLogs: VerifiedaccessInstanceLoggingConfigurationAccessLogs(
          includeTrustContext: TfArg.literal(true),
        ),
      ),
    );

    add(
      AwsVerifiedaccessInstanceTrustProviderAttachment(
        localName: 'verifiedaccess_instance_trust_provider_attachmen',
        verifiedaccessInstanceId: TfArg.literal(leftover),
        verifiedaccessTrustProviderId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVerifiedaccessTrustProvider(
        localName: 'verifiedaccess_trust_provider',
        policyReferenceName: TfArg.literal(leftover),
        trustProviderType: TfArg.literal('user'),
      ),
    );

    add(
      AwsVerifiedpermissionsIdentitySource(
        localName: 'verifiedpermissions_identity_source',
        policyStoreId: TfArg.literal(leftover),
        configuration: [
          VerifiedpermissionsIdentitySourceConfiguration(
            cognitoUserPoolConfiguration: [
              VerifiedpermissionsIdentitySourceConfigurationCognitoUserPoolConfiguration(
                userPoolArn: TfArg.literal(arn),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsVerifiedpermissionsPolicy(
        localName: 'verifiedpermissions_policy',
        policyStoreId: TfArg.literal(leftover),
        definition: [
          VerifiedpermissionsPolicyDefinition(
            static: [
              VerifiedpermissionsPolicyDefinitionStatic(
                statement: TfArg.literal(leftover),
              ),
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
            mode: TfArg.literal('OFF'),
          ),
        ],
      ),
    );

    add(
      AwsVerifiedpermissionsPolicyTemplate(
        localName: 'verifiedpermissions_policy_template',
        policyStoreId: TfArg.literal(leftover),
        statement: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVerifiedpermissionsSchema(
        localName: 'verifiedpermissions_schema',
        policyStoreId: TfArg.literal(leftover),
        definition: [
          VerifiedpermissionsSchemaDefinition(
            value: TfArg.literal(policy),
          ),
        ],
      ),
    );

    add(
      AwsVolumeAttachment(
        localName: 'volume_attachment',
        deviceName: TfArg.literal(leftover),
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        volumeId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpc(
        localName: 'vpc',
      ),
    );

    add(
      AwsVpcBlockPublicAccessExclusion(
        localName: 'vpc_block_public_access_exclusion',
        internetGatewayExclusionMode: TfArg.literal('allow-bidirectional'),
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcBlockPublicAccessOptions(
        localName: 'vpc_block_public_access_options',
        internetGatewayBlockMode: TfArg.literal('off'),
      ),
    );

    add(
      AwsVpcDhcpOptions(
        localName: 'vpc_dhcp_options',
        domainName: TfArg.literal(leftover),
        domainNameServers: TfArg.literal([leftover]),
        ipv6AddressPreferredLeaseTime: TfArg.literal(leftover),
        netbiosNameServers: TfArg.literal([leftover]),
        netbiosNodeType: TfArg.literal(leftover),
        ntpServers: TfArg.literal([leftover]),
      ),
    );

    add(
      AwsVpcDhcpOptionsAssociation(
        localName: 'vpc_dhcp_options_association',
        dhcpOptionsId: TfArg.literal(leftover),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcEncryptionControl(
        localName: 'vpc_encryption_control',
        mode: TfArg.literal('monitor'),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcEndpoint(
        localName: 'vpc_endpoint',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcEndpointConnectionAccepter(
        localName: 'vpc_endpoint_connection_accepter',
        vpcEndpointId: TfArg.literal(leftover),
        vpcEndpointServiceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointConnectionNotification(
        localName: 'vpc_endpoint_connection_notification',
        connectionEvents: TfArg.literal([leftover]),
        connectionNotificationArn: TfArg.literal(arn),
        vpcEndpointId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointPolicy(
        localName: 'vpc_endpoint_policy',
        vpcEndpointId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointPrivateDns(
        localName: 'vpc_endpoint_private_dns',
        privateDnsEnabled: TfArg.literal(true),
        vpcEndpointId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointRouteTableAssociation(
        localName: 'vpc_endpoint_route_table_association',
        routeTableId: TfArg.literal(leftover),
        vpcEndpointId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointSecurityGroupAssociation(
        localName: 'vpc_endpoint_security_group_association',
        securityGroupId: TfArg.literal('sg-0123456789abcdef0'),
        vpcEndpointId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointService(
        localName: 'vpc_endpoint_service',
        acceptanceRequired: TfArg.literal(true),
      ),
    );

    add(
      AwsVpcEndpointServiceAllowedPrincipal(
        localName: 'vpc_endpoint_service_allowed_principal',
        principalArn: TfArg.literal(arn),
        vpcEndpointServiceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointServicePrivateDnsVerification(
        localName: 'vpc_endpoint_service_private_dns_verification',
        serviceId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcEndpointSubnetAssociation(
        localName: 'vpc_endpoint_subnet_association',
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
        vpcEndpointId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcIpam(
        localName: 'vpc_ipam',
        operatingRegions: [
          VpcIpamOperatingRegions(
            regionName: TfArg.literal('us-east-1'),
          ),
        ],
      ),
    );

    add(
      AwsVpcIpamOrganizationAdminAccount(
        localName: 'vpc_ipam_organization_admin_account',
        delegatedAdminAccountId: TfArg.literal('123456789012'),
      ),
    );

    add(
      AwsVpcIpamPool(
        localName: 'vpc_ipam_pool',
        addressFamily: TfArg.literal('ipv4'),
        ipamScopeId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcIpamPoolCidr(
        localName: 'vpc_ipam_pool_cidr',
        ipamPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcIpamPoolCidrAllocation(
        localName: 'vpc_ipam_pool_cidr_allocation',
        ipamPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcIpamPreviewNextCidr(
        localName: 'vpc_ipam_preview_next_cidr',
        ipamPoolId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcIpamResourceDiscovery(
        localName: 'vpc_ipam_resource_discovery',
        operatingRegions: [
          VpcIpamResourceDiscoveryOperatingRegions(
            regionName: TfArg.literal('us-east-1'),
          ),
        ],
      ),
    );

    add(
      AwsVpcIpamResourceDiscoveryAssociation(
        localName: 'vpc_ipam_resource_discovery_association',
        ipamId: TfArg.literal(leftover),
        ipamResourceDiscoveryId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcIpamScope(
        localName: 'vpc_ipam_scope',
        ipamId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcIpv4CidrBlockAssociation(
        localName: 'vpc_ipv4_cidr_block_association',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcIpv6CidrBlockAssociation(
        localName: 'vpc_ipv6_cidr_block_association',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcNetworkPerformanceMetricSubscription(
        localName: 'vpc_network_performance_metric_subscription',
        destination: TfArg.literal(leftover),
        source: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcPeeringConnection(
        localName: 'vpc_peering_connection',
        peerVpcId: TfArg.literal(leftover),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcPeeringConnectionAccepter(
        localName: 'vpc_peering_connection_accepter',
        vpcPeeringConnectionId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcPeeringConnectionOptions(
        localName: 'vpc_peering_connection_options',
        vpcPeeringConnectionId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcRouteServer(
        localName: 'vpc_route_server',
        amazonSideAsn: TfArg.literal(200),
      ),
    );

    add(
      AwsVpcRouteServerEndpoint(
        localName: 'vpc_route_server_endpoint',
        routeServerId: TfArg.literal(leftover),
        subnetId: TfArg.literal('subnet-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcRouteServerPeer(
        localName: 'vpc_route_server_peer',
        peerAddress: TfArg.literal(leftover),
        routeServerEndpointId: TfArg.literal(leftover),
        bgpOptions: [
          VpcRouteServerPeerBgpOptions(
            peerAsn: TfArg.literal(200),
          ),
        ],
      ),
    );

    add(
      AwsVpcRouteServerPropagation(
        localName: 'vpc_route_server_propagation',
        routeServerId: TfArg.literal(leftover),
        routeTableId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpcRouteServerVpcAssociation(
        localName: 'vpc_route_server_vpc_association',
        routeServerId: TfArg.literal(leftover),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcSecurityGroupEgressRule(
        localName: 'vpc_security_group_egress_rule',
        ipProtocol: TfArg.literal(leftover),
        securityGroupId: TfArg.literal('sg-0123456789abcdef0'),
        cidrIpv4: TfArg.literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsVpcSecurityGroupIngressRule(
        localName: 'vpc_security_group_ingress_rule',
        ipProtocol: TfArg.literal(leftover),
        securityGroupId: TfArg.literal('sg-0123456789abcdef0'),
        cidrIpv4: TfArg.literal('10.0.0.0/16'),
      ),
    );

    add(
      AwsVpcSecurityGroupRulesExclusive(
        localName: 'vpc_security_group_rules_exclusive',
        egressRuleIds: TfArg.literal([leftover]),
        ingressRuleIds: TfArg.literal([leftover]),
        securityGroupId: TfArg.literal('sg-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpcSecurityGroupVpcAssociation(
        localName: 'vpc_security_group_vpc_association',
        securityGroupId: TfArg.literal('sg-0123456789abcdef0'),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpclatticeAccessLogSubscription(
        localName: 'vpclattice_access_log_subscription',
        destinationArn: TfArg.literal(arn),
        resourceIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpclatticeAuthPolicy(
        localName: 'vpclattice_auth_policy',
        policy: TfArg.literal(policy),
        resourceIdentifier: TfArg.literal(arn),
      ),
    );

    add(
      AwsVpclatticeDomainVerification(
        localName: 'vpclattice_domain_verification',
        domainName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpclatticeListener(
        localName: 'vpclattice_listener',
        name: TfArg.literal(leftover),
        protocol: TfArg.literal('HTTP'),
        defaultAction: VpclatticeListenerDefaultAction(
          fixedResponse: VpclatticeListenerDefaultActionFixedResponse(
            statusCode: TfArg.literal(200),
          ),
        ),
        serviceArn: TfArg.literal(arn),
        serviceIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpclatticeListenerRule(
        localName: 'vpclattice_listener_rule',
        listenerIdentifier: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        priority: TfArg.literal(1),
        serviceIdentifier: TfArg.literal(leftover),
        action: VpclatticeListenerRuleAction(
          fixedResponse: VpclatticeListenerRuleActionFixedResponse(
            statusCode: TfArg.literal(200),
          ),
        ),
        match: VpclatticeListenerRuleMatch(
          httpMatch: VpclatticeListenerRuleMatchHttpMatch(
            method: TfArg.literal(leftover),
          ),
        ),
      ),
    );

    add(
      AwsVpclatticeResourceConfiguration(
        localName: 'vpclattice_resource_configuration',
        name: TfArg.literal(leftover),
        resourceGatewayIdentifier: TfArg.literal(leftover),
        protocol: TfArg.literal('TCP'),
      ),
    );

    add(
      AwsVpclatticeResourceGateway(
        localName: 'vpclattice_resource_gateway',
        name: TfArg.literal(leftover),
        subnetIds: TfArg.literal([leftover]),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsVpclatticeResourcePolicy(
        localName: 'vpclattice_resource_policy',
        policy: TfArg.literal(policy),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsVpclatticeService(
        localName: 'vpclattice_service',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetwork(
        localName: 'vpclattice_service_network',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetworkResourceAssociation(
        localName: 'vpclattice_service_network_resource_association',
        resourceConfigurationIdentifier: TfArg.literal(leftover),
        serviceNetworkIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetworkServiceAssociation(
        localName: 'vpclattice_service_network_service_association',
        serviceIdentifier: TfArg.literal(leftover),
        serviceNetworkIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpclatticeServiceNetworkVpcAssociation(
        localName: 'vpclattice_service_network_vpc_association',
        serviceNetworkIdentifier: TfArg.literal(leftover),
        vpcIdentifier: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpclatticeTargetGroup(
        localName: 'vpclattice_target_group',
        name: TfArg.literal(leftover),
        type: TfArg.literal('IP'),
      ),
    );

    add(
      AwsVpclatticeTargetGroupAttachment(
        localName: 'vpclattice_target_group_attachment',
        targetGroupIdentifier: TfArg.literal(leftover),
        target: VpclatticeTargetGroupAttachmentTarget(
          id: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsVpnConcentrator(
        localName: 'vpn_concentrator',
        transitGatewayId: TfArg.literal(leftover),
        type: TfArg.literal('ipsec.1'),
      ),
    );

    add(
      AwsVpnConnection(
        localName: 'vpn_connection',
        customerGatewayId: TfArg.literal(leftover),
        type: TfArg.literal('ipsec.1'),
      ),
    );

    add(
      AwsVpnConnectionRoute(
        localName: 'vpn_connection_route',
        destinationCidrBlock: TfArg.literal('10.0.0.0/16'),
        vpnConnectionId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpnGateway(
        localName: 'vpn_gateway',
      ),
    );

    add(
      AwsVpnGatewayAttachment(
        localName: 'vpn_gateway_attachment',
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
        vpnGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsVpnGatewayRoutePropagation(
        localName: 'vpn_gateway_route_propagation',
        routeTableId: TfArg.literal(leftover),
        vpnGatewayId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafByteMatchSet(
        localName: 'waf_byte_match_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafGeoMatchSet(
        localName: 'waf_geo_match_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafIpset(
        localName: 'waf_ipset',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafRateBasedRule(
        localName: 'waf_rate_based_rule',
        metricName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        rateKey: TfArg.literal(leftover),
        rateLimit: TfArg.literal(200),
      ),
    );

    add(
      AwsWafRegexMatchSet(
        localName: 'waf_regex_match_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafRegexPatternSet(
        localName: 'waf_regex_pattern_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafRule(
        localName: 'waf_rule',
        metricName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafRuleGroup(
        localName: 'waf_rule_group',
        metricName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafSizeConstraintSet(
        localName: 'waf_size_constraint_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafSqlInjectionMatchSet(
        localName: 'waf_sql_injection_match_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafWebAcl(
        localName: 'waf_web_acl',
        metricName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        defaultAction: WafWebAclDefaultAction(
          type: TfArg.literal(leftover),
        ),
      ),
    );

    add(
      AwsWafXssMatchSet(
        localName: 'waf_xss_match_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalByteMatchSet(
        localName: 'wafregional_byte_match_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalGeoMatchSet(
        localName: 'wafregional_geo_match_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalIpset(
        localName: 'wafregional_ipset',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalRateBasedRule(
        localName: 'wafregional_rate_based_rule',
        metricName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        rateKey: TfArg.literal(leftover),
        rateLimit: TfArg.literal(200),
      ),
    );

    add(
      AwsWafregionalRegexMatchSet(
        localName: 'wafregional_regex_match_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalRegexPatternSet(
        localName: 'wafregional_regex_pattern_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalRule(
        localName: 'wafregional_rule',
        metricName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalRuleGroup(
        localName: 'wafregional_rule_group',
        metricName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalSizeConstraintSet(
        localName: 'wafregional_size_constraint_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalSqlInjectionMatchSet(
        localName: 'wafregional_sql_injection_match_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalWebAcl(
        localName: 'wafregional_web_acl',
        metricName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        defaultAction: WafregionalWebAclDefaultAction(
          type: TfArg.literal('BLOCK'),
        ),
      ),
    );

    add(
      AwsWafregionalWebAclAssociation(
        localName: 'wafregional_web_acl_association',
        resourceArn: TfArg.literal(arn),
        webAclId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafregionalXssMatchSet(
        localName: 'wafregional_xss_match_set',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWafv2ApiKey(
        localName: 'wafv2_api_key',
        scope: TfArg.literal('CLOUDFRONT'),
        tokenDomains: TfArg.literal(['example.com']),
      ),
    );

    add(
      AwsWafv2IpSet(
        localName: 'wafv2_ip_set',
        ipAddressVersion: TfArg.literal('IPV4'),
        scope: TfArg.literal('CLOUDFRONT'),
      ),
    );

    add(
      AwsWafv2RegexPatternSet(
        localName: 'wafv2_regex_pattern_set',
        scope: TfArg.literal('CLOUDFRONT'),
      ),
    );

    add(
      AwsWafv2RuleGroup(
        localName: 'wafv2_rule_group',
        capacity: TfArg.literal(200),
        scope: TfArg.literal('REGIONAL'),
        visibilityConfig: TfArg.literal({
          'cloudwatch_metrics_enabled': false,
          'metric_name': leftover,
          'sampled_requests_enabled': false,
        }),
      ),
    );

    add(
      AwsWafv2WebAcl(
        localName: 'wafv2_web_acl',
        scope: TfArg.literal('REGIONAL'),
        defaultAction: TfArg.literal({'allow': <String, dynamic>{}}),
        visibilityConfig: TfArg.literal({
          'cloudwatch_metrics_enabled': false,
          'metric_name': leftover,
          'sampled_requests_enabled': false,
        }),
      ),
    );

    add(
      AwsWafv2WebAclAssociation(
        localName: 'wafv2_web_acl_association',
        resourceArn: TfArg.literal(arn),
        webAclArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWafv2WebAclLoggingConfiguration(
        localName: 'wafv2_web_acl_logging_configuration',
        logDestinationConfigs: TfArg.literal([arn]),
        resourceArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWafv2WebAclRule(
        localName: 'wafv2_web_acl_rule',
        name: TfArg.literal(leftover),
        priority: TfArg.literal(200),
        webAclArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWafv2WebAclRuleGroupAssociation(
        localName: 'wafv2_web_acl_rule_group_association',
        priority: TfArg.literal(200),
        ruleName: TfArg.literal(leftover),
        webAclArn: TfArg.literal(arn),
        managedRuleGroup: [
          Wafv2WebAclRuleGroupAssociationManagedRuleGroup(
            name: TfArg.literal(leftover),
            vendorName: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsWorkmailDefaultDomain(
        localName: 'workmail_default_domain',
        domainName: TfArg.literal(leftover),
        organizationId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWorkmailDomain(
        localName: 'workmail_domain',
        domainName: TfArg.literal(leftover),
        organizationId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWorkmailGroup(
        localName: 'workmail_group',
        email: TfArg.literal('leftover@example.com'),
        name: TfArg.literal(leftover),
        organizationId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWorkmailOrganization(
        localName: 'workmail_organization',
        organizationAlias: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWorkmailUser(
        localName: 'workmail_user',
        displayName: TfArg.literal(leftover),
        email: TfArg.literal('leftover@example.com'),
        name: TfArg.literal(leftover),
        organizationId: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWorkspacesConnectionAlias(
        localName: 'workspaces_connection_alias',
        connectionString: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWorkspacesDirectory(
        localName: 'workspaces_directory',
      ),
    );

    add(
      AwsWorkspacesIpGroup(
        localName: 'workspaces_ip_group',
        name: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWorkspacesPool(
        localName: 'workspaces_pool',
        bundleId: TfArg.literal('wsb-leftover1'),
        description: TfArg.literal(leftover),
        directoryId: TfArg.literal('wsd-leftover1'),
        poolName: TfArg.literal(leftover),
        runningMode: TfArg.literal('AUTO_STOP'),
      ),
    );

    add(
      AwsWorkspacesWorkspace(
        localName: 'workspaces_workspace',
        bundleId: TfArg.literal(leftover),
        directoryId: TfArg.literal(leftover),
        userName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWorkspaceswebBrowserSettings(
        localName: 'workspacesweb_browser_settings',
        browserPolicy: TfArg.literal(policy),
      ),
    );

    add(
      AwsWorkspaceswebBrowserSettingsAssociation(
        localName: 'workspacesweb_browser_settings_association',
        browserSettingsArn: TfArg.literal(arn),
        portalArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebDataProtectionSettings(
        localName: 'workspacesweb_data_protection_settings',
        displayName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsWorkspaceswebDataProtectionSettingsAssociation(
        localName: 'workspacesweb_data_protection_settings_associati',
        dataProtectionSettingsArn: TfArg.literal(arn),
        portalArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebIdentityProvider(
        localName: 'workspacesweb_identity_provider',
        identityProviderDetails: TfArg.literal({'k': leftover}),
        identityProviderName: TfArg.literal(leftover),
        identityProviderType: TfArg.literal('SAML'),
        portalArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebIpAccessSettings(
        localName: 'workspacesweb_ip_access_settings',
        displayName: TfArg.literal(leftover),
        ipRule: [
          WorkspaceswebIpAccessSettingsIpRule(
            ipRange: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    add(
      AwsWorkspaceswebIpAccessSettingsAssociation(
        localName: 'workspacesweb_ip_access_settings_association',
        ipAccessSettingsArn: TfArg.literal(arn),
        portalArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebNetworkSettings(
        localName: 'workspacesweb_network_settings',
        securityGroupIds: TfArg.literal([leftover]),
        subnetIds: TfArg.literal([
          leftover,
          'leftover1',
        ]),
        vpcId: TfArg.literal('vpc-0123456789abcdef0'),
      ),
    );

    add(
      AwsWorkspaceswebNetworkSettingsAssociation(
        localName: 'workspacesweb_network_settings_association',
        networkSettingsArn: TfArg.literal(arn),
        portalArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebPortal(
        localName: 'workspacesweb_portal',
      ),
    );

    add(
      AwsWorkspaceswebSessionLogger(
        localName: 'workspacesweb_session_logger',
        logConfiguration: [
          WorkspaceswebSessionLoggerLogConfiguration(
            s3: [
              WorkspaceswebSessionLoggerLogConfigurationS3(
                bucket: TfArg.literal(leftover),
                folderStructure: TfArg.literal('Flat'),
                logFileFormat: TfArg.literal('JSONLines'),
              ),
            ],
          ),
        ],
        eventFilter: [
          WorkspaceswebSessionLoggerEventFilter(
            include: TfArg.literal(['WebsiteInteract']),
          ),
        ],
      ),
    );

    add(
      AwsWorkspaceswebSessionLoggerAssociation(
        localName: 'workspacesweb_session_logger_association',
        portalArn: TfArg.literal(arn),
        sessionLoggerArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebTrustStore(
        localName: 'workspacesweb_trust_store',
      ),
    );

    add(
      AwsWorkspaceswebTrustStoreAssociation(
        localName: 'workspacesweb_trust_store_association',
        portalArn: TfArg.literal(arn),
        trustStoreArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebUserAccessLoggingSettings(
        localName: 'workspacesweb_user_access_logging_settings',
        kinesisStreamArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebUserAccessLoggingSettingsAssociation(
        localName: 'workspacesweb_user_access_logging_settings_assoc',
        portalArn: TfArg.literal(arn),
        userAccessLoggingSettingsArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsWorkspaceswebUserSettings(
        localName: 'workspacesweb_user_settings',
        copyAllowed: TfArg.literal('Disabled'),
        downloadAllowed: TfArg.literal('Disabled'),
        pasteAllowed: TfArg.literal('Disabled'),
        printAllowed: TfArg.literal('Disabled'),
        uploadAllowed: TfArg.literal('Disabled'),
      ),
    );

    add(
      AwsWorkspaceswebUserSettingsAssociation(
        localName: 'workspacesweb_user_settings_association',
        portalArn: TfArg.literal(arn),
        userSettingsArn: TfArg.literal(arn),
      ),
    );

    add(
      AwsXrayEncryptionConfig(
        localName: 'xray_encryption_config',
        type: TfArg.literal('NONE'),
      ),
    );

    add(
      AwsXrayGroup(
        localName: 'xray_group',
        filterExpression: TfArg.literal(leftover),
        groupName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsXrayIndexingRule(
        localName: 'xray_indexing_rule',
        name: TfArg.literal(leftover),
        rule: [
          XrayIndexingRuleRule(
            probabilistic: [
              XrayIndexingRuleRuleProbabilistic(
                desiredSamplingPercentage: TfArg.literal(200),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      AwsXrayResourcePolicy(
        localName: 'xray_resource_policy',
        policyDocument: TfArg.literal(policy),
        policyName: TfArg.literal(leftover),
      ),
    );

    add(
      AwsXraySamplingRule(
        localName: 'xray_sampling_rule',
        fixedRate: TfArg.literal(200),
        host: TfArg.literal(leftover),
        httpMethod: TfArg.literal(leftover),
        priority: TfArg.literal(200),
        reservoirSize: TfArg.literal(200),
        resourceArn: TfArg.literal(arn),
        serviceName: TfArg.literal(leftover),
        serviceType: TfArg.literal(leftover),
        urlPath: TfArg.literal(leftover),
        version: TfArg.literal(200),
      ),
    );

    add(
      AwsXrayTraceSegmentDestination(
        localName: 'xray_trace_segment_destination',
        destination: TfArg.literal('XRay'),
      ),
    );

    addData(
      DataAwsAccountPrimaryContact(
        localName: 'd_account_primary_contact',
      ),
    );

    addData(
      DataAwsAccountRegions(
        localName: 'd_account_regions',
      ),
    );

    addData(
      DataAwsAccountaccessApplication(
        localName: 'd_accountaccess_application',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsAccountaccessEntitlements(
        localName: 'd_accountaccess_entitlements',
        applicationArn: TfArg.literal(arn),
        filter: [
          DataAccountaccessEntitlementsFilter(
            principalRole: [
              DataAccountaccessEntitlementsFilterPrincipalRole(
                accountId: TfArg.literal('123456789012'),
              ),
            ],
          ),
        ],
      ),
    );

    addData(
      DataAwsAcmCertificate(
        localName: 'd_acm_certificate',
        domain: TfArg.literal(leftover),
        tags: TfArg.literal({'k': leftover}),
      ),
    );

    addData(
      DataAwsAcmpcaCertificate(
        localName: 'd_acmpca_certificate',
        arn: TfArg.literal(arn),
        certificateAuthorityArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsAcmpcaCertificateAuthority(
        localName: 'd_acmpca_certificate_authority',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsAgentregistryRegistry(
        localName: 'd_agentregistry_registry',
        registryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAlb(
        localName: 'd_alb',
      ),
    );

    addData(
      DataAwsAlbListener(
        localName: 'd_alb_listener',
      ),
    );

    addData(
      DataAwsAlbTargetGroup(
        localName: 'd_alb_target_group',
      ),
    );

    addData(
      DataAwsAmi(
        localName: 'd_ami',
      ),
    );

    addData(
      DataAwsAmiIds(
        localName: 'd_ami_ids',
        owners: TfArg.literal([leftover]),
      ),
    );

    addData(
      DataAwsApiGatewayApiKey(
        localName: 'd_api_gateway_api_key',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayApiKeys(
        localName: 'd_api_gateway_api_keys',
      ),
    );

    addData(
      DataAwsApiGatewayAuthorizer(
        localName: 'd_api_gateway_authorizer',
        authorizerId: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayAuthorizers(
        localName: 'd_api_gateway_authorizers',
        restApiId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayDomainName(
        localName: 'd_api_gateway_domain_name',
        domainName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayExport(
        localName: 'd_api_gateway_export',
        exportType: TfArg.literal('oas30'),
        restApiId: TfArg.literal(leftover),
        stageName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayResource(
        localName: 'd_api_gateway_resource',
        path: TfArg.literal(leftover),
        restApiId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayRestApi(
        localName: 'd_api_gateway_rest_api',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewaySdk(
        localName: 'd_api_gateway_sdk',
        restApiId: TfArg.literal(leftover),
        sdkType: TfArg.literal('java'),
        stageName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApiGatewayVpcLink(
        localName: 'd_api_gateway_vpc_link',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApigatewayv2Api(
        localName: 'd_apigatewayv2_api',
        apiId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApigatewayv2Apis(
        localName: 'd_apigatewayv2_apis',
      ),
    );

    addData(
      DataAwsApigatewayv2Export(
        localName: 'd_apigatewayv2_export',
        apiId: TfArg.literal(leftover),
        outputType: TfArg.literal('JSON'),
        specification: TfArg.literal('OAS30'),
      ),
    );

    addData(
      DataAwsApigatewayv2VpcLink(
        localName: 'd_apigatewayv2_vpc_link',
        vpcLinkId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppconfigApplication(
        localName: 'd_appconfig_application',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppconfigConfigurationProfile(
        localName: 'd_appconfig_configuration_profile',
        applicationId: TfArg.literal(leftover),
        configurationProfileId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppconfigConfigurationProfiles(
        localName: 'd_appconfig_configuration_profiles',
        applicationId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppconfigEnvironment(
        localName: 'd_appconfig_environment',
        applicationId: TfArg.literal(leftover),
        environmentId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppconfigEnvironments(
        localName: 'd_appconfig_environments',
        applicationId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppintegrationsEventIntegration(
        localName: 'd_appintegrations_event_integration',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshGatewayRoute(
        localName: 'd_appmesh_gateway_route',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        virtualGatewayName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshMesh(
        localName: 'd_appmesh_mesh',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshRoute(
        localName: 'd_appmesh_route',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
        virtualRouterName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshVirtualGateway(
        localName: 'd_appmesh_virtual_gateway',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshVirtualNode(
        localName: 'd_appmesh_virtual_node',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshVirtualRouter(
        localName: 'd_appmesh_virtual_router',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAppmeshVirtualService(
        localName: 'd_appmesh_virtual_service',
        meshName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsApprunnerHostedZoneId(
        localName: 'd_apprunner_hosted_zone_id',
      ),
    );

    addData(
      DataAwsAppstreamImage(
        localName: 'd_appstream_image',
      ),
    );

    addData(
      DataAwsArcregionswitchPlan(
        localName: 'd_arcregionswitch_plan',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsArcregionswitchRoute53HealthChecks(
        localName: 'd_arcregionswitch_route53_health_checks',
        planArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsArn(
        localName: 'd_arn',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsAthenaNamedQuery(
        localName: 'd_athena_named_query',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAuditmanagerControl(
        localName: 'd_auditmanager_control',
        name: TfArg.literal(leftover),
        type: TfArg.literal('Standard'),
      ),
    );

    addData(
      DataAwsAuditmanagerFramework(
        localName: 'd_auditmanager_framework',
        frameworkType: TfArg.literal('Standard'),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAutoscalingGroup(
        localName: 'd_autoscaling_group',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsAutoscalingGroups(
        localName: 'd_autoscaling_groups',
      ),
    );

    addData(
      DataAwsAvailabilityZone(
        localName: 'd_availability_zone',
      ),
    );

    addData(
      DataAwsAvailabilityZones(
        localName: 'd_availability_zones',
      ),
    );

    addData(
      DataAwsBackupFramework(
        localName: 'd_backup_framework',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsBackupPlan(
        localName: 'd_backup_plan',
        planId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsBackupReportPlan(
        localName: 'd_backup_report_plan',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsBackupSelection(
        localName: 'd_backup_selection',
        planId: TfArg.literal(leftover),
        selectionId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsBackupVault(
        localName: 'd_backup_vault',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsBatchComputeEnvironment(
        localName: 'd_batch_compute_environment',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsBatchJobDefinition(
        localName: 'd_batch_job_definition',
      ),
    );

    addData(
      DataAwsBatchJobQueue(
        localName: 'd_batch_job_queue',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsBatchSchedulingPolicy(
        localName: 'd_batch_scheduling_policy',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsBedrockCustomModel(
        localName: 'd_bedrock_custom_model',
        modelId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsBedrockCustomModels(
        localName: 'd_bedrock_custom_models',
      ),
    );

    addData(
      DataAwsBedrockFoundationModel(
        localName: 'd_bedrock_foundation_model',
        modelId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsBedrockFoundationModelAgreementOffers(
        localName: 'd_bedrock_foundation_model_agreement_offers',
        modelId: TfArg.literal('2e.lzvycjp-i167ebv/zatu8l86d38a'),
      ),
    );

    addData(
      DataAwsBedrockFoundationModels(
        localName: 'd_bedrock_foundation_models',
      ),
    );

    addData(
      DataAwsBedrockInferenceProfile(
        localName: 'd_bedrock_inference_profile',
        inferenceProfileId: TfArg.literal(leftover),
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
        agentId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsBillingServiceAccount(
        localName: 'd_billing_service_account',
      ),
    );

    addData(
      DataAwsBillingViews(
        localName: 'd_billing_views',
      ),
    );

    addData(
      DataAwsBudgetsBudget(
        localName: 'd_budgets_budget',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCanonicalUserId(
        localName: 'd_canonical_user_id',
      ),
    );

    addData(
      DataAwsCeCostCategory(
        localName: 'd_ce_cost_category',
        costCategoryArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsCeTags(
        localName: 'd_ce_tags',
        timePeriod: DataCeTagsTimePeriod(
          end: TfArg.literal(leftover),
          start: TfArg.literal(leftover),
        ),
      ),
    );

    addData(
      DataAwsChatbotSlackWorkspace(
        localName: 'd_chatbot_slack_workspace',
        slackTeamName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudcontrolapiResource(
        localName: 'd_cloudcontrolapi_resource',
        identifier: TfArg.literal(leftover),
        typeName: TfArg.literal('AWS::S3::Bucket'),
      ),
    );

    addData(
      DataAwsCloudformationExport(
        localName: 'd_cloudformation_export',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudformationStack(
        localName: 'd_cloudformation_stack',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudformationType(
        localName: 'd_cloudformation_type',
      ),
    );

    addData(
      DataAwsCloudfrontCachePolicy(
        localName: 'd_cloudfront_cache_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontConnectionGroup(
        localName: 'd_cloudfront_connection_group',
        routingEndpoint: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontDistribution(
        localName: 'd_cloudfront_distribution',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontDistributionTenant(
        localName: 'd_cloudfront_distribution_tenant',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsCloudfrontFunction(
        localName: 'd_cloudfront_function',
        name: TfArg.literal(leftover),
        stage: TfArg.literal('DEVELOPMENT'),
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
        id: TfArg.literal(leftover),
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
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontOriginRequestPolicy(
        localName: 'd_cloudfront_origin_request_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontRealtimeLogConfig(
        localName: 'd_cloudfront_realtime_log_config',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudfrontResponseHeadersPolicy(
        localName: 'd_cloudfront_response_headers_policy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudhsmV2Cluster(
        localName: 'd_cloudhsm_v2_cluster',
        clusterId: TfArg.literal(leftover),
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
        resourceArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsCloudwatchEventBus(
        localName: 'd_cloudwatch_event_bus',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudwatchEventBuses(
        localName: 'd_cloudwatch_event_buses',
      ),
    );

    addData(
      DataAwsCloudwatchEventConnection(
        localName: 'd_cloudwatch_event_connection',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudwatchEventSource(
        localName: 'd_cloudwatch_event_source',
      ),
    );

    addData(
      DataAwsCloudwatchLogDataProtectionPolicyDocument(
        localName: 'd_cloudwatch_log_data_protection_policy_document',
        name: TfArg.literal(leftover),
        statement: [
          DataCloudwatchLogDataProtectionPolicyDocumentStatement(
            dataIdentifiers: TfArg.literal([leftover]),
            operation:
                DataCloudwatchLogDataProtectionPolicyDocumentStatementOperation(
              audit:
                  DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAudit(
                findingsDestination:
                    DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination(
                  cloudwatchLogs:
                      DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs(
                    logGroup: TfArg.literal(leftover),
                  ),
                ),
              ),
            ),
          ),
          DataCloudwatchLogDataProtectionPolicyDocumentStatement(
            dataIdentifiers: TfArg.literal([leftover]),
            operation:
                DataCloudwatchLogDataProtectionPolicyDocumentStatementOperation(
              audit:
                  DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAudit(
                findingsDestination:
                    DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestination(
                  cloudwatchLogs:
                      DataCloudwatchLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogs(
                    logGroup: TfArg.literal('leftover1'),
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
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCloudwatchLogGroups(
        localName: 'd_cloudwatch_log_groups',
      ),
    );

    addData(
      DataAwsCodeartifactAuthorizationToken(
        localName: 'd_codeartifact_authorization_token',
        domain: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCodeartifactRepositoryEndpoint(
        localName: 'd_codeartifact_repository_endpoint',
        domain: TfArg.literal(leftover),
        format: TfArg.literal('npm'),
        repository: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCodebuildFleet(
        localName: 'd_codebuild_fleet',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCodecatalystDevEnvironment(
        localName: 'd_codecatalyst_dev_environment',
        envId: TfArg.literal(leftover),
        projectName: TfArg.literal(leftover),
        spaceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCodecommitApprovalRuleTemplate(
        localName: 'd_codecommit_approval_rule_template',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCodecommitRepository(
        localName: 'd_codecommit_repository',
        repositoryName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCodeguruprofilerProfilingGroup(
        localName: 'd_codeguruprofiler_profiling_group',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCodestarconnectionsConnection(
        localName: 'd_codestarconnections_connection',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsCognitoIdentityPool(
        localName: 'd_cognito_identity_pool',
        identityPoolName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserGroup(
        localName: 'd_cognito_user_group',
        name: TfArg.literal(leftover),
        userPoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserGroups(
        localName: 'd_cognito_user_groups',
        userPoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserPool(
        localName: 'd_cognito_user_pool',
        userPoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserPoolClient(
        localName: 'd_cognito_user_pool_client',
        clientId: TfArg.literal(leftover),
        userPoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserPoolClients(
        localName: 'd_cognito_user_pool_clients',
        userPoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserPoolSigningCertificate(
        localName: 'd_cognito_user_pool_signing_certificate',
        userPoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCognitoUserPools(
        localName: 'd_cognito_user_pools',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectBotAssociation(
        localName: 'd_connect_bot_association',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        lexBot: DataConnectBotAssociationLexBot(
          name: TfArg.literal(leftover),
        ),
      ),
    );

    addData(
      DataAwsConnectContactFlow(
        localName: 'd_connect_contact_flow',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        contactFlowId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectContactFlowModule(
        localName: 'd_connect_contact_flow_module',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        contactFlowModuleId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectHoursOfOperation(
        localName: 'd_connect_hours_of_operation',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        hoursOfOperationId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectInstance(
        localName: 'd_connect_instance',
        instanceAlias: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectInstanceStorageConfig(
        localName: 'd_connect_instance_storage_config',
        associationId: TfArg.literal(leftover),
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        resourceType: TfArg.literal('CHAT_TRANSCRIPTS'),
      ),
    );

    addData(
      DataAwsConnectLambdaFunctionAssociation(
        localName: 'd_connect_lambda_function_association',
        functionArn: TfArg.literal(arn),
        instanceId: TfArg.literal('i-0123456789abcdef0'),
      ),
    );

    addData(
      DataAwsConnectPrompt(
        localName: 'd_connect_prompt',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectQueue(
        localName: 'd_connect_queue',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectQuickConnect(
        localName: 'd_connect_quick_connect',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectRoutingProfile(
        localName: 'd_connect_routing_profile',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectSecurityProfile(
        localName: 'd_connect_security_profile',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectUser(
        localName: 'd_connect_user',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectUserHierarchyGroup(
        localName: 'd_connect_user_hierarchy_group',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        hierarchyGroupId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsConnectUserHierarchyStructure(
        localName: 'd_connect_user_hierarchy_structure',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
      ),
    );

    addData(
      DataAwsConnectVocabulary(
        localName: 'd_connect_vocabulary',
        instanceId: TfArg.literal('i-0123456789abcdef0'),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsControltowerControls(
        localName: 'd_controltower_controls',
        targetIdentifier: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsCurReportDefinition(
        localName: 'd_cur_report_definition',
        reportName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsCustomerGateway(
        localName: 'd_customer_gateway',
      ),
    );

    addData(
      DataAwsDatapipelinePipeline(
        localName: 'd_datapipeline_pipeline',
        pipelineId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDatapipelinePipelineDefinition(
        localName: 'd_datapipeline_pipeline_definition',
        pipelineId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDatazoneDomain(
        localName: 'd_datazone_domain',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDatazoneEnvironmentBlueprint(
        localName: 'd_datazone_environment_blueprint',
        domainId: TfArg.literal(leftover),
        managed: TfArg.literal(true),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDbClusterSnapshot(
        localName: 'd_db_cluster_snapshot',
      ),
    );

    addData(
      DataAwsDbEventCategories(
        localName: 'd_db_event_categories',
      ),
    );

    addData(
      DataAwsDbInstance(
        localName: 'd_db_instance',
      ),
    );

    addData(
      DataAwsDbInstances(
        localName: 'd_db_instances',
      ),
    );

    addData(
      DataAwsDbParameterGroup(
        localName: 'd_db_parameter_group',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDbProxy(
        localName: 'd_db_proxy',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDbSnapshot(
        localName: 'd_db_snapshot',
      ),
    );

    addData(
      DataAwsDbSubnetGroup(
        localName: 'd_db_subnet_group',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDefaultTags(
        localName: 'd_default_tags',
      ),
    );

    addData(
      DataAwsDevopsguruNotificationChannel(
        localName: 'd_devopsguru_notification_channel',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDevopsguruResourceCollection(
        localName: 'd_devopsguru_resource_collection',
        type: TfArg.literal('AWS_CLOUD_FORMATION'),
      ),
    );

    addData(
      DataAwsDirectoryServiceDirectory(
        localName: 'd_directory_service_directory',
        directoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDmsCertificate(
        localName: 'd_dms_certificate',
        certificateId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDmsEndpoint(
        localName: 'd_dms_endpoint',
        endpointId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDmsReplicationInstance(
        localName: 'd_dms_replication_instance',
        replicationInstanceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDmsReplicationSubnetGroup(
        localName: 'd_dms_replication_subnet_group',
        replicationSubnetGroupId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDmsReplicationTask(
        localName: 'd_dms_replication_task',
        replicationTaskId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDocdbEngineVersion(
        localName: 'd_docdb_engine_version',
      ),
    );

    addData(
      DataAwsDocdbOrderableDbInstance(
        localName: 'd_docdb_orderable_db_instance',
      ),
    );

    addData(
      DataAwsDxConnection(
        localName: 'd_dx_connection',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDxGateway(
        localName: 'd_dx_gateway',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDxLocation(
        localName: 'd_dx_location',
        locationCode: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDxLocations(
        localName: 'd_dx_locations',
      ),
    );

    addData(
      DataAwsDxRouterConfiguration(
        localName: 'd_dx_router_configuration',
        routerTypeIdentifier: TfArg.literal(leftover),
        virtualInterfaceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDynamodbBackups(
        localName: 'd_dynamodb_backups',
      ),
    );

    addData(
      DataAwsDynamodbTable(
        localName: 'd_dynamodb_table',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDynamodbTableItem(
        localName: 'd_dynamodb_table_item',
        key: TfArg.literal('{"pk": {"S": "leftover"}}'),
        tableName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsDynamodbTables(
        localName: 'd_dynamodb_tables',
      ),
    );

    addData(
      DataAwsEbsDefaultKmsKey(
        localName: 'd_ebs_default_kms_key',
      ),
    );

    addData(
      DataAwsEbsEncryptionByDefault(
        localName: 'd_ebs_encryption_by_default',
      ),
    );

    addData(
      DataAwsEbsSnapshot(
        localName: 'd_ebs_snapshot',
      ),
    );

    addData(
      DataAwsEbsSnapshotIds(
        localName: 'd_ebs_snapshot_ids',
      ),
    );

    addData(
      DataAwsEbsVolume(
        localName: 'd_ebs_volume',
      ),
    );

    addData(
      DataAwsEbsVolumes(
        localName: 'd_ebs_volumes',
      ),
    );

    addData(
      DataAwsEc2CapacityBlockOffering(
        localName: 'd_ec2_capacity_block_offering',
        capacityDurationHours: TfArg.literal(200),
        instanceCount: TfArg.literal(200),
        instanceType: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEc2CapacityBlockReservation(
        localName: 'd_ec2_capacity_block_reservation',
        filter: [
          DataEc2CapacityBlockReservationFilter(
            name: TfArg.literal(leftover),
            values: TfArg.literal([leftover]),
          ),
        ],
      ),
    );

    addData(
      DataAwsEc2ClientVpnEndpoint(
        localName: 'd_ec2_client_vpn_endpoint',
      ),
    );

    addData(
      DataAwsEc2CoipPool(
        localName: 'd_ec2_coip_pool',
      ),
    );

    addData(
      DataAwsEc2CoipPools(
        localName: 'd_ec2_coip_pools',
      ),
    );

    addData(
      DataAwsEc2Host(
        localName: 'd_ec2_host',
      ),
    );

    addData(
      DataAwsEc2Hosts(
        localName: 'd_ec2_hosts',
      ),
    );

    addData(
      DataAwsEc2InstanceType(
        localName: 'd_ec2_instance_type',
        instanceType: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEc2InstanceTypeOffering(
        localName: 'd_ec2_instance_type_offering',
      ),
    );

    addData(
      DataAwsEc2InstanceTypeOfferings(
        localName: 'd_ec2_instance_type_offerings',
      ),
    );

    addData(
      DataAwsEc2InstanceTypes(
        localName: 'd_ec2_instance_types',
      ),
    );

    addData(
      DataAwsEc2LocalGateway(
        localName: 'd_ec2_local_gateway',
      ),
    );

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

    addData(
      DataAwsEc2LocalGateways(
        localName: 'd_ec2_local_gateways',
      ),
    );

    addData(
      DataAwsEc2ManagedPrefixList(
        localName: 'd_ec2_managed_prefix_list',
      ),
    );

    addData(
      DataAwsEc2ManagedPrefixLists(
        localName: 'd_ec2_managed_prefix_lists',
      ),
    );

    addData(
      DataAwsEc2NetworkInsightsAnalysis(
        localName: 'd_ec2_network_insights_analysis',
      ),
    );

    addData(
      DataAwsEc2NetworkInsightsPath(
        localName: 'd_ec2_network_insights_path',
      ),
    );

    addData(
      DataAwsEc2PublicIpv4Pool(
        localName: 'd_ec2_public_ipv4_pool',
        poolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEc2PublicIpv4Pools(
        localName: 'd_ec2_public_ipv4_pools',
      ),
    );

    addData(
      DataAwsEc2SerialConsoleAccess(
        localName: 'd_ec2_serial_console_access',
      ),
    );

    addData(
      DataAwsEc2ServiceLinkVirtualInterface(
        localName: 'd_ec2_service_link_virtual_interface',
        filter: [
          DataEc2ServiceLinkVirtualInterfaceFilter(
            name: TfArg.literal(leftover),
            values: TfArg.literal([leftover]),
          ),
        ],
      ),
    );

    addData(
      DataAwsEc2ServiceLinkVirtualInterfaces(
        localName: 'd_ec2_service_link_virtual_interfaces',
      ),
    );

    addData(
      DataAwsEc2SpotPrice(
        localName: 'd_ec2_spot_price',
      ),
    );

    addData(
      DataAwsEc2TransitGateway(
        localName: 'd_ec2_transit_gateway',
      ),
    );

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
        transitGatewayRouteTableId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEc2TransitGatewayRouteTablePropagations(
        localName: 'd_ec2_transit_gateway_route_table_propagations',
        transitGatewayRouteTableId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEc2TransitGatewayRouteTableRoutes(
        localName: 'd_ec2_transit_gateway_route_table_routes',
        transitGatewayRouteTableId: TfArg.literal(leftover),
        filter: [
          DataEc2TransitGatewayRouteTableRoutesFilter(
            name: TfArg.literal(leftover),
            values: TfArg.literal([leftover]),
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
      DataAwsEcrAuthorizationToken(
        localName: 'd_ecr_authorization_token',
      ),
    );

    addData(
      DataAwsEcrImage(
        localName: 'd_ecr_image',
        repositoryName: TfArg.literal(leftover),
        imageTag: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEcrImages(
        localName: 'd_ecr_images',
        repositoryName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEcrLifecyclePolicyDocument(
        localName: 'd_ecr_lifecycle_policy_document',
        rule: [
          DataEcrLifecyclePolicyDocumentRule(
            priority: TfArg.literal(200),
            selection: [
              DataEcrLifecyclePolicyDocumentRuleSelection(
                countNumber: TfArg.literal(200),
                countType: TfArg.literal('imageCountMoreThan'),
                tagStatus: TfArg.literal('any'),
              ),
            ],
          ),
        ],
      ),
    );

    addData(
      DataAwsEcrPullThroughCacheRule(
        localName: 'd_ecr_pull_through_cache_rule',
        ecrRepositoryPrefix: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEcrRepositories(
        localName: 'd_ecr_repositories',
      ),
    );

    addData(
      DataAwsEcrRepository(
        localName: 'd_ecr_repository',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEcrRepositoryCreationTemplate(
        localName: 'd_ecr_repository_creation_template',
        prefix: TfArg.literal(leftover),
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
        repositoryName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEcsCluster(
        localName: 'd_ecs_cluster',
        clusterName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEcsClusters(
        localName: 'd_ecs_clusters',
      ),
    );

    addData(
      DataAwsEcsContainerDefinition(
        localName: 'd_ecs_container_definition',
        containerName: TfArg.literal(leftover),
        taskDefinition: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEcsService(
        localName: 'd_ecs_service',
        clusterArn: TfArg.literal(arn),
        serviceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEcsTaskDefinition(
        localName: 'd_ecs_task_definition',
        taskDefinition: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEcsTaskExecution(
        localName: 'd_ecs_task_execution',
        cluster: TfArg.literal(leftover),
        taskDefinition: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEfsAccessPoint(
        localName: 'd_efs_access_point',
        accessPointId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEfsAccessPoints(
        localName: 'd_efs_access_points',
        fileSystemId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEfsFileSystem(
        localName: 'd_efs_file_system',
      ),
    );

    addData(
      DataAwsEfsMountTarget(
        localName: 'd_efs_mount_target',
      ),
    );

    addData(
      DataAwsEip(
        localName: 'd_eip',
      ),
    );

    addData(
      DataAwsEips(
        localName: 'd_eips',
      ),
    );

    addData(
      DataAwsEksAccessEntry(
        localName: 'd_eks_access_entry',
        clusterName: TfArg.literal(leftover),
        principalArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsEksAccessPolicies(
        localName: 'd_eks_access_policies',
      ),
    );

    addData(
      DataAwsEksAddon(
        localName: 'd_eks_addon',
        addonName: TfArg.literal(leftover),
        clusterName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEksAddonVersion(
        localName: 'd_eks_addon_version',
        addonName: TfArg.literal(leftover),
        kubernetesVersion: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEksCluster(
        localName: 'd_eks_cluster',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEksClusterAuth(
        localName: 'd_eks_cluster_auth',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEksClusterVersions(
        localName: 'd_eks_cluster_versions',
      ),
    );

    addData(
      DataAwsEksClusters(
        localName: 'd_eks_clusters',
      ),
    );

    addData(
      DataAwsEksNodeGroup(
        localName: 'd_eks_node_group',
        clusterName: TfArg.literal(leftover),
        nodeGroupName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEksNodeGroups(
        localName: 'd_eks_node_groups',
        clusterName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsElasticBeanstalkApplication(
        localName: 'd_elastic_beanstalk_application',
        name: TfArg.literal(leftover),
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
        nameRegex: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsElasticacheCluster(
        localName: 'd_elasticache_cluster',
        clusterId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsElasticacheReplicationGroup(
        localName: 'd_elasticache_replication_group',
        replicationGroupId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsElasticacheReservedCacheNodeOffering(
        localName: 'd_elasticache_reserved_cache_node_offering',
        cacheNodeType: TfArg.literal(leftover),
        duration: TfArg.literal(leftover),
        offeringType: TfArg.literal('Light Utilization'),
        productDescription: TfArg.literal('memcached'),
      ),
    );

    addData(
      DataAwsElasticacheServerlessCache(
        localName: 'd_elasticache_serverless_cache',
        name: TfArg.literal(leftover),
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
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsElasticacheUser(
        localName: 'd_elasticache_user',
        userId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsElasticsearchDomain(
        localName: 'd_elasticsearch_domain',
        domainName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsElb(
        localName: 'd_elb',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsElbHostedZoneId(
        localName: 'd_elb_hosted_zone_id',
      ),
    );

    addData(
      DataAwsElbServiceAccount(
        localName: 'd_elb_service_account',
      ),
    );

    addData(
      DataAwsEmrReleaseLabels(
        localName: 'd_emr_release_labels',
      ),
    );

    addData(
      DataAwsEmrSupportedInstanceTypes(
        localName: 'd_emr_supported_instance_types',
        releaseLabel: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsEmrcontainersVirtualCluster(
        localName: 'd_emrcontainers_virtual_cluster',
        virtualClusterId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsFisExperimentTemplates(
        localName: 'd_fis_experiment_templates',
      ),
    );

    addData(
      DataAwsFsxOntapFileSystem(
        localName: 'd_fsx_ontap_file_system',
        id: TfArg.literal(leftover),
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

    addData(
      DataAwsFsxOpenzfsSnapshot(
        localName: 'd_fsx_openzfs_snapshot',
      ),
    );

    addData(
      DataAwsFsxWindowsFileSystem(
        localName: 'd_fsx_windows_file_system',
        id: TfArg.literal(leftover),
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
      DataAwsGlueCatalog(
        localName: 'd_glue_catalog',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsGlueCatalogTable(
        localName: 'd_glue_catalog_table',
        databaseName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsGlueConnection(
        localName: 'd_glue_connection',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsGlueDataCatalogEncryptionSettings(
        localName: 'd_glue_data_catalog_encryption_settings',
        catalogId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsGlueRegistry(
        localName: 'd_glue_registry',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsGlueScript(
        localName: 'd_glue_script',
        dagEdge: [
          DataGlueScriptDagEdge(
            source: TfArg.literal(leftover),
            target: TfArg.literal(leftover),
          ),
        ],
        dagNode: [
          DataGlueScriptDagNode(
            id: TfArg.literal(leftover),
            nodeType: TfArg.literal(leftover),
            args: [
              DataGlueScriptDagNodeArgs(
                name: TfArg.literal(leftover),
                value: TfArg.literal(leftover),
              ),
            ],
          ),
        ],
      ),
    );

    addData(
      DataAwsGrafanaWorkspace(
        localName: 'd_grafana_workspace',
        workspaceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsGuarddutyDetector(
        localName: 'd_guardduty_detector',
      ),
    );

    addData(
      DataAwsGuarddutyFindingIds(
        localName: 'd_guardduty_finding_ids',
        detectorId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIamAccessKeys(
        localName: 'd_iam_access_keys',
        user: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIamAccountAlias(
        localName: 'd_iam_account_alias',
      ),
    );

    addData(
      DataAwsIamGroup(
        localName: 'd_iam_group',
        groupName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIamInstanceProfile(
        localName: 'd_iam_instance_profile',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIamInstanceProfiles(
        localName: 'd_iam_instance_profiles',
        roleName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIamOpenidConnectProvider(
        localName: 'd_iam_openid_connect_provider',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsIamOutboundWebIdentityFederation(
        localName: 'd_iam_outbound_web_identity_federation',
      ),
    );

    addData(
      DataAwsIamPolicy(
        localName: 'd_iam_policy',
      ),
    );

    addData(
      DataAwsIamPrincipalPolicySimulation(
        localName: 'd_iam_principal_policy_simulation',
        actionNames: TfArg.literal([leftover]),
        policySourceArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsIamRole(
        localName: 'd_iam_role',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIamRolePolicies(
        localName: 'd_iam_role_policies',
        roleName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIamRolePolicyAttachments(
        localName: 'd_iam_role_policy_attachments',
        roleName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIamRoles(
        localName: 'd_iam_roles',
      ),
    );

    addData(
      DataAwsIamSamlProvider(
        localName: 'd_iam_saml_provider',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsIamServerCertificate(
        localName: 'd_iam_server_certificate',
      ),
    );

    addData(
      DataAwsIamSessionContext(
        localName: 'd_iam_session_context',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsIamUser(
        localName: 'd_iam_user',
        userName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIamUserSshKey(
        localName: 'd_iam_user_ssh_key',
        encoding: TfArg.literal('SSH'),
        sshPublicKeyId: TfArg.literal(leftover),
        username: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIamUsers(
        localName: 'd_iam_users',
      ),
    );

    addData(
      DataAwsIdentitystoreGroup(
        localName: 'd_identitystore_group',
        identityStoreId: TfArg.literal(leftover),
        groupId: TfArg.literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsIdentitystoreGroupMemberships(
        localName: 'd_identitystore_group_memberships',
        groupId: TfArg.literal(leftover),
        identityStoreId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIdentitystoreGroups(
        localName: 'd_identitystore_groups',
        identityStoreId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsIdentitystoreUser(
        localName: 'd_identitystore_user',
        identityStoreId: TfArg.literal(leftover),
        userId: TfArg.literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsIdentitystoreUsers(
        localName: 'd_identitystore_users',
        identityStoreId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsImagebuilderComponent(
        localName: 'd_imagebuilder_component',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsImagebuilderComponents(
        localName: 'd_imagebuilder_components',
      ),
    );

    addData(
      DataAwsImagebuilderContainerRecipe(
        localName: 'd_imagebuilder_container_recipe',
        arn: TfArg.literal(arn),
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
        arn: TfArg.literal(arn),
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
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsImagebuilderImagePipeline(
        localName: 'd_imagebuilder_image_pipeline',
        arn: TfArg.literal(arn),
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
        arn: TfArg.literal(arn),
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
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsImagebuilderInfrastructureConfigurations(
        localName: 'd_imagebuilder_infrastructure_configurations',
      ),
    );

    addData(
      DataAwsInspectorRulesPackages(
        localName: 'd_inspector_rules_packages',
      ),
    );

    addData(
      DataAwsInstance(
        localName: 'd_instance',
      ),
    );

    addData(
      DataAwsInstances(
        localName: 'd_instances',
      ),
    );

    addData(
      DataAwsInternetGateway(
        localName: 'd_internet_gateway',
      ),
    );

    addData(
      DataAwsIotEndpoint(
        localName: 'd_iot_endpoint',
      ),
    );

    addData(
      DataAwsIotRegistrationCode(
        localName: 'd_iot_registration_code',
      ),
    );

    addData(
      DataAwsIpRanges(
        localName: 'd_ip_ranges',
        services: TfArg.literal([leftover]),
      ),
    );

    addData(
      DataAwsIvsStreamKey(
        localName: 'd_ivs_stream_key',
        channelArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsKendraExperience(
        localName: 'd_kendra_experience',
        experienceId: TfArg.literal(leftover),
        indexId: TfArg.literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsKendraFaq(
        localName: 'd_kendra_faq',
        faqId: TfArg.literal(leftover),
        indexId: TfArg.literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsKendraIndex(
        localName: 'd_kendra_index',
        id: TfArg.literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsKendraQuerySuggestionsBlockList(
        localName: 'd_kendra_query_suggestions_block_list',
        indexId: TfArg.literal('12345678-1234-1234-1234-123456789012'),
        querySuggestionsBlockListId:
            TfArg.literal('12345678-1234-1234-1234-123456789012'),
      ),
    );

    addData(
      DataAwsKendraThesaurus(
        localName: 'd_kendra_thesaurus',
        indexId: TfArg.literal('12345678-1234-1234-1234-123456789012'),
        thesaurusId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsKeyPair(
        localName: 'd_key_pair',
      ),
    );

    addData(
      DataAwsKinesisFirehoseDeliveryStream(
        localName: 'd_kinesis_firehose_delivery_stream',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsKinesisStream(
        localName: 'd_kinesis_stream',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsKinesisStreamConsumer(
        localName: 'd_kinesis_stream_consumer',
        streamArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsKmsAlias(
        localName: 'd_kms_alias',
        name: TfArg.literal('alias/leftover'),
      ),
    );

    addData(
      DataAwsKmsCiphertext(
        localName: 'd_kms_ciphertext',
        keyId: TfArg.literal(leftover),
        plaintext: TfArg.variable('leftover_secret'),
      ),
    );

    addData(
      DataAwsKmsCustomKeyStore(
        localName: 'd_kms_custom_key_store',
      ),
    );

    addData(
      DataAwsKmsKey(
        localName: 'd_kms_key',
        keyId: TfArg.literal('alias/leftover'),
      ),
    );

    addData(
      DataAwsKmsPublicKey(
        localName: 'd_kms_public_key',
        keyId: TfArg.literal('alias/leftover'),
      ),
    );

    addData(
      DataAwsKmsSecret(
        localName: 'd_kms_secret',
        secret: [
          DataKmsSecretSecret(
            name: TfArg.literal(leftover),
            payload: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    addData(
      DataAwsKmsSecrets(
        localName: 'd_kms_secrets',
        secret: [
          DataKmsSecretsSecret(
            name: TfArg.literal(leftover),
            payload: TfArg.literal(leftover),
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
        principal: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsLakeformationResource(
        localName: 'd_lakeformation_resource',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsLambdaAlias(
        localName: 'd_lambda_alias',
        functionName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLambdaCodeSigningConfig(
        localName: 'd_lambda_code_signing_config',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsLambdaFunction(
        localName: 'd_lambda_function',
        functionName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLambdaFunctionUrl(
        localName: 'd_lambda_function_url',
        functionName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLambdaFunctions(
        localName: 'd_lambda_functions',
      ),
    );

    addData(
      DataAwsLambdaInvocation(
        localName: 'd_lambda_invocation',
        functionName: TfArg.literal(leftover),
        input: TfArg.literal(policy),
      ),
    );

    addData(
      DataAwsLambdaLayerVersion(
        localName: 'd_lambda_layer_version',
      ),
    );

    addData(
      DataAwsLaunchConfiguration(
        localName: 'd_launch_configuration',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLaunchTemplate(
        localName: 'd_launch_template',
      ),
    );

    addData(
      DataAwsLb(
        localName: 'd_lb',
      ),
    );

    addData(
      DataAwsLbHostedZoneId(
        localName: 'd_lb_hosted_zone_id',
      ),
    );

    addData(
      DataAwsLbListener(
        localName: 'd_lb_listener',
      ),
    );

    addData(
      DataAwsLbListenerRule(
        localName: 'd_lb_listener_rule',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsLbTargetGroup(
        localName: 'd_lb_target_group',
      ),
    );

    addData(
      DataAwsLbTrustStore(
        localName: 'd_lb_trust_store',
      ),
    );

    addData(
      DataAwsLbs(
        localName: 'd_lbs',
      ),
    );

    addData(
      DataAwsLexBot(
        localName: 'd_lex_bot',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLexBotAlias(
        localName: 'd_lex_bot_alias',
        botName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLexIntent(
        localName: 'd_lex_intent',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLexSlotType(
        localName: 'd_lex_slot_type',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLicensemanagerGrants(
        localName: 'd_licensemanager_grants',
      ),
    );

    addData(
      DataAwsLicensemanagerReceivedLicense(
        localName: 'd_licensemanager_received_license',
        licenseArn: TfArg.literal(arn),
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
        collectionName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLocationMap(
        localName: 'd_location_map',
        mapName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLocationPlaceIndex(
        localName: 'd_location_place_index',
        indexName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLocationRouteCalculator(
        localName: 'd_location_route_calculator',
        calculatorName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLocationTracker(
        localName: 'd_location_tracker',
        trackerName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLocationTrackerAssociation(
        localName: 'd_location_tracker_association',
        consumerArn: TfArg.literal(arn),
        trackerName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsLocationTrackerAssociations(
        localName: 'd_location_tracker_associations',
        trackerName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMediaConvertQueue(
        localName: 'd_media_convert_queue',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMedialiveInput(
        localName: 'd_medialive_input',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbAcl(
        localName: 'd_memorydb_acl',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbCluster(
        localName: 'd_memorydb_cluster',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbParameterGroup(
        localName: 'd_memorydb_parameter_group',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbSnapshot(
        localName: 'd_memorydb_snapshot',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbSubnetGroup(
        localName: 'd_memorydb_subnet_group',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMemorydbUser(
        localName: 'd_memorydb_user',
        userName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMqBroker(
        localName: 'd_mq_broker',
      ),
    );

    addData(
      DataAwsMqBrokerEngineTypes(
        localName: 'd_mq_broker_engine_types',
      ),
    );

    addData(
      DataAwsMqBrokerInstanceTypeOfferings(
        localName: 'd_mq_broker_instance_type_offerings',
      ),
    );

    addData(
      DataAwsMskBootstrapBrokers(
        localName: 'd_msk_bootstrap_brokers',
        clusterArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsMskBrokerNodes(
        localName: 'd_msk_broker_nodes',
        clusterArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsMskCluster(
        localName: 'd_msk_cluster',
        clusterName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMskConfiguration(
        localName: 'd_msk_configuration',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMskKafkaVersion(
        localName: 'd_msk_kafka_version',
        preferredVersions: TfArg.literal([leftover]),
      ),
    );

    addData(
      DataAwsMskTopic(
        localName: 'd_msk_topic',
        clusterArn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMskVpcConnection(
        localName: 'd_msk_vpc_connection',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsMskconnectConnector(
        localName: 'd_mskconnect_connector',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMskconnectCustomPlugin(
        localName: 'd_mskconnect_custom_plugin',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsMskconnectWorkerConfiguration(
        localName: 'd_mskconnect_worker_configuration',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNatGateway(
        localName: 'd_nat_gateway',
      ),
    );

    addData(
      DataAwsNatGateways(
        localName: 'd_nat_gateways',
      ),
    );

    addData(
      DataAwsNeptuneEngineVersion(
        localName: 'd_neptune_engine_version',
      ),
    );

    addData(
      DataAwsNeptuneOrderableDbInstance(
        localName: 'd_neptune_orderable_db_instance',
      ),
    );

    addData(
      DataAwsNetworkAcls(
        localName: 'd_network_acls',
      ),
    );

    addData(
      DataAwsNetworkInterface(
        localName: 'd_network_interface',
      ),
    );

    addData(
      DataAwsNetworkInterfaces(
        localName: 'd_network_interfaces',
      ),
    );

    addData(
      DataAwsNetworkfirewallFirewall(
        localName: 'd_networkfirewall_firewall',
        arn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkfirewallFirewallPolicy(
        localName: 'd_networkfirewall_firewall_policy',
        arn: TfArg.literal(arn),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkfirewallResourcePolicy(
        localName: 'd_networkfirewall_resource_policy',
        resourceArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsNetworkmanagerConnection(
        localName: 'd_networkmanager_connection',
        connectionId: TfArg.literal(leftover),
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerConnections(
        localName: 'd_networkmanager_connections',
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerCoreNetwork(
        localName: 'd_networkmanager_core_network',
        coreNetworkId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerCoreNetworkPolicyDocument(
        localName: 'd_networkmanager_core_network_policy_document',
        coreNetworkConfiguration: [
          DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfiguration(
            asnRanges: TfArg.literal([leftover]),
            edgeLocations: [
              DataNetworkmanagerCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocations(
                location: TfArg.literal('us-east-1'),
              ),
            ],
          ),
        ],
        segments: [
          DataNetworkmanagerCoreNetworkPolicyDocumentSegments(
            name: TfArg.literal(leftover),
          ),
        ],
      ),
    );

    addData(
      DataAwsNetworkmanagerDevice(
        localName: 'd_networkmanager_device',
        deviceId: TfArg.literal(leftover),
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerDevices(
        localName: 'd_networkmanager_devices',
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerGlobalNetwork(
        localName: 'd_networkmanager_global_network',
        globalNetworkId: TfArg.literal(leftover),
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
        globalNetworkId: TfArg.literal(leftover),
        linkId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerLinks(
        localName: 'd_networkmanager_links',
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerSite(
        localName: 'd_networkmanager_site',
        globalNetworkId: TfArg.literal(leftover),
        siteId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsNetworkmanagerSites(
        localName: 'd_networkmanager_sites',
        globalNetworkId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOamLink(
        localName: 'd_oam_link',
        linkIdentifier: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOamLinks(
        localName: 'd_oam_links',
      ),
    );

    addData(
      DataAwsOamSink(
        localName: 'd_oam_sink',
        sinkIdentifier: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOamSinks(
        localName: 'd_oam_sinks',
      ),
    );

    addData(
      DataAwsOdbCloudAutonomousVmCluster(
        localName: 'd_odb_cloud_autonomous_vm_cluster',
        id: TfArg.literal(leftover),
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
        id: TfArg.literal(leftover),
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
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOdbCloudVmClusters(
        localName: 'd_odb_cloud_vm_clusters',
      ),
    );

    addData(
      DataAwsOdbDbNode(
        localName: 'd_odb_db_node',
        cloudVmClusterId: TfArg.literal(leftover),
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOdbDbNodes(
        localName: 'd_odb_db_nodes',
        cloudVmClusterId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOdbDbServer(
        localName: 'd_odb_db_server',
        cloudExadataInfrastructureId: TfArg.literal(leftover),
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOdbDbServers(
        localName: 'd_odb_db_servers',
        cloudExadataInfrastructureId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOdbDbSystemShapes(
        localName: 'd_odb_db_system_shapes',
      ),
    );

    addData(
      DataAwsOdbGiVersions(
        localName: 'd_odb_gi_versions',
      ),
    );

    addData(
      DataAwsOdbIamRoleAssociation(
        localName: 'd_odb_iam_role_association',
        iamRoleArn: TfArg.literal(arn),
        resourceArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsOdbNetwork(
        localName: 'd_odb_network',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOdbNetworkPeeringConnection(
        localName: 'd_odb_network_peering_connection',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOdbNetworkPeeringConnections(
        localName: 'd_odb_network_peering_connections',
      ),
    );

    addData(
      DataAwsOdbNetworks(
        localName: 'd_odb_networks',
      ),
    );

    addData(
      DataAwsOpensearchDomain(
        localName: 'd_opensearch_domain',
        domainName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOpensearchserverlessAccessPolicy(
        localName: 'd_opensearchserverless_access_policy',
        name: TfArg.literal(leftover),
        type: TfArg.literal('data'),
      ),
    );

    addData(
      DataAwsOpensearchserverlessCollection(
        localName: 'd_opensearchserverless_collection',
        name: TfArg.literal(leftover),
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
        name: TfArg.literal(leftover),
        type: TfArg.literal('retention'),
      ),
    );

    addData(
      DataAwsOpensearchserverlessSecurityConfig(
        localName: 'd_opensearchserverless_security_config',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOpensearchserverlessSecurityPolicy(
        localName: 'd_opensearchserverless_security_policy',
        name: TfArg.literal(leftover),
        type: TfArg.literal('encryption'),
      ),
    );

    addData(
      DataAwsOpensearchserverlessVpcEndpoint(
        localName: 'd_opensearchserverless_vpc_endpoint',
        vpcEndpointId: TfArg.literal('vpce-0123456789abcdef0'),
      ),
    );

    addData(
      DataAwsOrganizationsAccount(
        localName: 'd_organizations_account',
        accountId: TfArg.literal('123456789012'),
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
        accountId: TfArg.literal('123456789012'),
      ),
    );

    addData(
      DataAwsOrganizationsEntityPath(
        localName: 'd_organizations_entity_path',
        entityId: TfArg.literal('ou-ab12-cd34ef56'),
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
        name: TfArg.literal(leftover),
        parentId: TfArg.literal('r-ab12'),
      ),
    );

    addData(
      DataAwsOrganizationsOrganizationalUnitChildAccounts(
        localName: 'd_organizations_organizational_unit_child_accoun',
        parentId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsOrganizationalUnitDescendantAccounts(
        localName: 'd_organizations_organizational_unit_descendant_a',
        parentId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsOrganizationalUnitDescendantOrganizationalUnits(
        localName: 'd_organizations_organizational_unit_descendant_o',
        parentId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsOrganizationalUnits(
        localName: 'd_organizations_organizational_units',
        parentId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsPolicies(
        localName: 'd_organizations_policies',
        filter: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsPoliciesForTarget(
        localName: 'd_organizations_policies_for_target',
        filter: TfArg.literal(leftover),
        targetId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsPolicy(
        localName: 'd_organizations_policy',
        policyId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOrganizationsResourceTags(
        localName: 'd_organizations_resource_tags',
        resourceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOutpostsAsset(
        localName: 'd_outposts_asset',
        arn: TfArg.literal(arn),
        assetId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOutpostsAssets(
        localName: 'd_outposts_assets',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsOutpostsOutpost(
        localName: 'd_outposts_outpost',
      ),
    );

    addData(
      DataAwsOutpostsOutpostInstanceType(
        localName: 'd_outposts_outpost_instance_type',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsOutpostsOutpostInstanceTypes(
        localName: 'd_outposts_outpost_instance_types',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsOutpostsOutposts(
        localName: 'd_outposts_outposts',
      ),
    );

    addData(
      DataAwsOutpostsSite(
        localName: 'd_outposts_site',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsOutpostsSites(
        localName: 'd_outposts_sites',
      ),
    );

    addData(
      DataAwsPartition(
        localName: 'd_partition',
      ),
    );

    addData(
      DataAwsPollyVoices(
        localName: 'd_polly_voices',
      ),
    );

    addData(
      DataAwsPrefixList(
        localName: 'd_prefix_list',
      ),
    );

    addData(
      DataAwsPricingProduct(
        localName: 'd_pricing_product',
        serviceCode: TfArg.literal(leftover),
        filters: [
          DataPricingProductFilters(
            field: TfArg.literal(leftover),
            value: TfArg.literal(leftover),
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
        workspaceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsPrometheusWorkspaces(
        localName: 'd_prometheus_workspaces',
      ),
    );

    addData(
      DataAwsQldbLedger(
        localName: 'd_qldb_ledger',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsQuicksightAnalysis(
        localName: 'd_quicksight_analysis',
        analysisId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsQuicksightDataSet(
        localName: 'd_quicksight_data_set',
        dataSetId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsQuicksightGroup(
        localName: 'd_quicksight_group',
        groupName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsQuicksightTheme(
        localName: 'd_quicksight_theme',
        themeId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsQuicksightUser(
        localName: 'd_quicksight_user',
        userName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRamResourceShare(
        localName: 'd_ram_resource_share',
        resourceOwner: TfArg.literal('SELF'),
      ),
    );

    addData(
      DataAwsRdsCertificate(
        localName: 'd_rds_certificate',
      ),
    );

    addData(
      DataAwsRdsCluster(
        localName: 'd_rds_cluster',
        clusterIdentifier: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRdsClusterParameterGroup(
        localName: 'd_rds_cluster_parameter_group',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRdsClusters(
        localName: 'd_rds_clusters',
      ),
    );

    addData(
      DataAwsRdsEngineVersion(
        localName: 'd_rds_engine_version',
        engine: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRdsEvents(
        localName: 'd_rds_events',
      ),
    );

    addData(
      DataAwsRdsGlobalCluster(
        localName: 'd_rds_global_cluster',
        identifier: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRdsOrderableDbInstance(
        localName: 'd_rds_orderable_db_instance',
        engine: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRdsReservedInstanceOffering(
        localName: 'd_rds_reserved_instance_offering',
        dbInstanceClass: TfArg.literal(leftover),
        duration: TfArg.literal(200),
        multiAz: TfArg.literal(true),
        offeringType: TfArg.literal('Partial Upfront'),
        productDescription: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRdsSnapshots(
        localName: 'd_rds_snapshots',
      ),
    );

    addData(
      DataAwsRedshiftCluster(
        localName: 'd_redshift_cluster',
        clusterIdentifier: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRedshiftClusterCredentials(
        localName: 'd_redshift_cluster_credentials',
        clusterIdentifier: TfArg.literal(leftover),
        dbUser: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRedshiftDataShares(
        localName: 'd_redshift_data_shares',
      ),
    );

    addData(
      DataAwsRedshiftOrderableCluster(
        localName: 'd_redshift_orderable_cluster',
      ),
    );

    addData(
      DataAwsRedshiftProducerDataShares(
        localName: 'd_redshift_producer_data_shares',
        producerArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsRedshiftSubnetGroup(
        localName: 'd_redshift_subnet_group',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRedshiftserverlessCredentials(
        localName: 'd_redshiftserverless_credentials',
        workgroupName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRedshiftserverlessNamespace(
        localName: 'd_redshiftserverless_namespace',
        namespaceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRedshiftserverlessWorkgroup(
        localName: 'd_redshiftserverless_workgroup',
        workgroupName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRegion(
        localName: 'd_region',
      ),
    );

    addData(
      DataAwsRegions(
        localName: 'd_regions',
      ),
    );

    addData(
      DataAwsResiliencehubv2Policy(
        localName: 'd_resiliencehubv2_policy',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsResiliencehubv2Service(
        localName: 'd_resiliencehubv2_service',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsResiliencehubv2System(
        localName: 'd_resiliencehubv2_system',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsResourceexplorer2Search(
        localName: 'd_resourceexplorer2_search',
        queryString: TfArg.literal(leftover),
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
      DataAwsRoute(
        localName: 'd_route',
        routeTableId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53DelegationSet(
        localName: 'd_route53_delegation_set',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53Records(
        localName: 'd_route53_records',
        zoneId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverEndpoint(
        localName: 'd_route53_resolver_endpoint',
      ),
    );

    addData(
      DataAwsRoute53ResolverFirewallConfig(
        localName: 'd_route53_resolver_firewall_config',
        resourceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverFirewallDomainList(
        localName: 'd_route53_resolver_firewall_domain_list',
        firewallDomainListId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverFirewallRuleGroup(
        localName: 'd_route53_resolver_firewall_rule_group',
        firewallRuleGroupId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverFirewallRuleGroupAssociation(
        localName: 'd_route53_resolver_firewall_rule_group_associati',
        firewallRuleGroupAssociationId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverFirewallRules(
        localName: 'd_route53_resolver_firewall_rules',
        firewallRuleGroupId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53ResolverQueryLogConfig(
        localName: 'd_route53_resolver_query_log_config',
      ),
    );

    addData(
      DataAwsRoute53ResolverRule(
        localName: 'd_route53_resolver_rule',
      ),
    );

    addData(
      DataAwsRoute53ResolverRules(
        localName: 'd_route53_resolver_rules',
      ),
    );

    addData(
      DataAwsRoute53TrafficPolicyDocument(
        localName: 'd_route53_traffic_policy_document',
      ),
    );

    addData(
      DataAwsRoute53Zone(
        localName: 'd_route53_zone',
      ),
    );

    addData(
      DataAwsRoute53Zones(
        localName: 'd_route53_zones',
      ),
    );

    addData(
      DataAwsRoute53profilesProfile(
        localName: 'd_route53profiles_profile',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsRoute53profilesProfiles(
        localName: 'd_route53profiles_profiles',
      ),
    );

    addData(
      DataAwsRouteTable(
        localName: 'd_route_table',
      ),
    );

    addData(
      DataAwsRouteTables(
        localName: 'd_route_tables',
      ),
    );

    addData(
      DataAwsS3AccessPoint(
        localName: 'd_s3_access_point',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3AccountPublicAccessBlock(
        localName: 'd_s3_account_public_access_block',
      ),
    );

    addData(
      DataAwsS3Bucket(
        localName: 'd_s3_bucket',
        bucket: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketNotification(
        localName: 'd_s3_bucket_notification',
        bucket: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketObject(
        localName: 'd_s3_bucket_object',
        bucket: TfArg.literal(leftover),
        key: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketObjectLockConfiguration(
        localName: 'd_s3_bucket_object_lock_configuration',
        bucket: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketObjects(
        localName: 'd_s3_bucket_objects',
        bucket: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketPolicy(
        localName: 'd_s3_bucket_policy',
        bucket: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3BucketReplicationConfiguration(
        localName: 'd_s3_bucket_replication_configuration',
        bucket: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3Buckets(
        localName: 'd_s3_buckets',
      ),
    );

    addData(
      DataAwsS3DirectoryBuckets(
        localName: 'd_s3_directory_buckets',
      ),
    );

    addData(
      DataAwsS3Object(
        localName: 'd_s3_object',
        bucket: TfArg.literal(leftover),
        key: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3Objects(
        localName: 'd_s3_objects',
        bucket: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3controlAccessPoints(
        localName: 'd_s3control_access_points',
      ),
    );

    addData(
      DataAwsS3controlMultiRegionAccessPoint(
        localName: 'd_s3control_multi_region_access_point',
        name: TfArg.literal(leftover),
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
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3filesFileSystem(
        localName: 'd_s3files_file_system',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsS3filesFileSystems(
        localName: 'd_s3files_file_systems',
      ),
    );

    addData(
      DataAwsS3filesMountTarget(
        localName: 'd_s3files_mount_target',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSagemakerPrebuiltEcrImage(
        localName: 'd_sagemaker_prebuilt_ecr_image',
        repositoryName: TfArg.literal('autogluon-training'),
      ),
    );

    addData(
      DataAwsSavingsplansOfferings(
        localName: 'd_savingsplans_offerings',
      ),
    );

    addData(
      DataAwsSavingsplansSavingsPlan(
        localName: 'd_savingsplans_savings_plan',
        savingsPlanId: TfArg.literal(leftover),
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
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSecretsmanagerSecretRotation(
        localName: 'd_secretsmanager_secret_rotation',
        secretId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSecretsmanagerSecretVersion(
        localName: 'd_secretsmanager_secret_version',
        secretId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSecretsmanagerSecretVersions(
        localName: 'd_secretsmanager_secret_versions',
        secretId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSecretsmanagerSecrets(
        localName: 'd_secretsmanager_secrets',
      ),
    );

    addData(
      DataAwsSecurityGroup(
        localName: 'd_security_group',
      ),
    );

    addData(
      DataAwsSecurityGroups(
        localName: 'd_security_groups',
      ),
    );

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
        securityControlId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServerlessapplicationrepositoryApplication(
        localName: 'd_serverlessapplicationrepository_application',
        applicationId: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsService(
        localName: 'd_service',
      ),
    );

    addData(
      DataAwsServiceDiscoveryDnsNamespace(
        localName: 'd_service_discovery_dns_namespace',
        name: TfArg.literal(leftover),
        type: TfArg.literal('DNS_PUBLIC'),
      ),
    );

    addData(
      DataAwsServiceDiscoveryHttpNamespace(
        localName: 'd_service_discovery_http_namespace',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServiceDiscoveryService(
        localName: 'd_service_discovery_service',
        name: TfArg.literal(leftover),
        namespaceId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicePrincipal(
        localName: 'd_service_principal',
        serviceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogConstraint(
        localName: 'd_servicecatalog_constraint',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogLaunchPaths(
        localName: 'd_servicecatalog_launch_paths',
        productId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogPortfolio(
        localName: 'd_servicecatalog_portfolio',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogPortfolioConstraints(
        localName: 'd_servicecatalog_portfolio_constraints',
        portfolioId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogProduct(
        localName: 'd_servicecatalog_product',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogProvisioningArtifacts(
        localName: 'd_servicecatalog_provisioning_artifacts',
        productId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogappregistryApplication(
        localName: 'd_servicecatalogappregistry_application',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicecatalogappregistryAttributeGroup(
        localName: 'd_servicecatalogappregistry_attribute_group',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsServicecatalogappregistryAttributeGroupAssociations(
        localName: 'd_servicecatalogappregistry_attribute_group_asso',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicequotasService(
        localName: 'd_servicequotas_service',
        serviceName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicequotasServiceQuota(
        localName: 'd_servicequotas_service_quota',
        serviceCode: TfArg.literal(leftover),
        quotaCode: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsServicequotasTemplates(
        localName: 'd_servicequotas_templates',
        awsRegion: TfArg.literal('us-east-1'),
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
        domain: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSesEmailIdentity(
        localName: 'd_ses_email_identity',
        email: TfArg.literal('leftover@example.com'),
      ),
    );

    addData(
      DataAwsSesv2ConfigurationSet(
        localName: 'd_sesv2_configuration_set',
        configurationSetName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSesv2DedicatedIpPool(
        localName: 'd_sesv2_dedicated_ip_pool',
        poolName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSesv2EmailIdentity(
        localName: 'd_sesv2_email_identity',
        emailIdentity: TfArg.literal('leftover@example.com'),
      ),
    );

    addData(
      DataAwsSesv2EmailIdentityMailFromAttributes(
        localName: 'd_sesv2_email_identity_mail_from_attributes',
        emailIdentity: TfArg.literal('leftover@example.com'),
      ),
    );

    addData(
      DataAwsSfnActivity(
        localName: 'd_sfn_activity',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSfnAlias(
        localName: 'd_sfn_alias',
        name: TfArg.literal(leftover),
        statemachineArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSfnStateMachine(
        localName: 'd_sfn_state_machine',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSfnStateMachineVersions(
        localName: 'd_sfn_state_machine_versions',
        statemachineArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsShieldProtection(
        localName: 'd_shield_protection',
        protectionId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSignerSigningJob(
        localName: 'd_signer_signing_job',
        jobId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSignerSigningProfile(
        localName: 'd_signer_signing_profile',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSnsTopic(
        localName: 'd_sns_topic',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSpotDatafeedSubscription(
        localName: 'd_spot_datafeed_subscription',
      ),
    );

    addData(
      DataAwsSqsQueue(
        localName: 'd_sqs_queue',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSqsQueues(
        localName: 'd_sqs_queues',
      ),
    );

    addData(
      DataAwsSsmDocument(
        localName: 'd_ssm_document',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSsmInstances(
        localName: 'd_ssm_instances',
      ),
    );

    addData(
      DataAwsSsmMaintenanceWindows(
        localName: 'd_ssm_maintenance_windows',
      ),
    );

    addData(
      DataAwsSsmParameter(
        localName: 'd_ssm_parameter',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSsmParametersByPath(
        localName: 'd_ssm_parameters_by_path',
        path: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSsmPatchBaseline(
        localName: 'd_ssm_patch_baseline',
        owner: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSsmPatchBaselines(
        localName: 'd_ssm_patch_baselines',
      ),
    );

    addData(
      DataAwsSsmcontactsContact(
        localName: 'd_ssmcontacts_contact',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSsmcontactsContactChannel(
        localName: 'd_ssmcontacts_contact_channel',
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSsmcontactsPlan(
        localName: 'd_ssmcontacts_plan',
        contactId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsSsmcontactsRotation(
        localName: 'd_ssmcontacts_rotation',
        arn: TfArg.literal(arn),
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
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSsoadminApplication(
        localName: 'd_ssoadmin_application',
        applicationArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSsoadminApplicationAssignments(
        localName: 'd_ssoadmin_application_assignments',
        applicationArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSsoadminApplicationProviders(
        localName: 'd_ssoadmin_application_providers',
      ),
    );

    addData(
      DataAwsSsoadminInstances(
        localName: 'd_ssoadmin_instances',
      ),
    );

    addData(
      DataAwsSsoadminPermissionSet(
        localName: 'd_ssoadmin_permission_set',
        instanceArn: TfArg.literal(arn),
        arn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSsoadminPermissionSets(
        localName: 'd_ssoadmin_permission_sets',
        instanceArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSsoadminPrincipalApplicationAssignments(
        localName: 'd_ssoadmin_principal_application_assignments',
        instanceArn: TfArg.literal(arn),
        principalId: TfArg.literal(leftover),
        principalType: TfArg.literal('USER'),
      ),
    );

    addData(
      DataAwsStoragegatewayLocalDisk(
        localName: 'd_storagegateway_local_disk',
        gatewayArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsSubnet(
        localName: 'd_subnet',
      ),
    );

    addData(
      DataAwsSubnets(
        localName: 'd_subnets',
      ),
    );

    addData(
      DataAwsSyntheticsRuntimeVersion(
        localName: 'd_synthetics_runtime_version',
        prefix: TfArg.literal(leftover),
        latest: TfArg.literal(true),
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
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsTimestreamwriteTable(
        localName: 'd_timestreamwrite_table',
        databaseName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsTransferConnector(
        localName: 'd_transfer_connector',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsTransferServer(
        localName: 'd_transfer_server',
        serverId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsUxcServices(
        localName: 'd_uxc_services',
      ),
    );

    addData(
      DataAwsVerifiedpermissionsPolicyStore(
        localName: 'd_verifiedpermissions_policy_store',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsVpc(
        localName: 'd_vpc',
      ),
    );

    addData(
      DataAwsVpcDhcpOptions(
        localName: 'd_vpc_dhcp_options',
      ),
    );

    addData(
      DataAwsVpcEndpoint(
        localName: 'd_vpc_endpoint',
      ),
    );

    addData(
      DataAwsVpcEndpointAssociations(
        localName: 'd_vpc_endpoint_associations',
        vpcEndpointId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsVpcEndpointService(
        localName: 'd_vpc_endpoint_service',
      ),
    );

    addData(
      DataAwsVpcIpam(
        localName: 'd_vpc_ipam',
        id: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsVpcIpamPool(
        localName: 'd_vpc_ipam_pool',
      ),
    );

    addData(
      DataAwsVpcIpamPoolCidrs(
        localName: 'd_vpc_ipam_pool_cidrs',
        ipamPoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsVpcIpamPools(
        localName: 'd_vpc_ipam_pools',
      ),
    );

    addData(
      DataAwsVpcIpamPreviewNextCidr(
        localName: 'd_vpc_ipam_preview_next_cidr',
        ipamPoolId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsVpcIpams(
        localName: 'd_vpc_ipams',
      ),
    );

    addData(
      DataAwsVpcPeeringConnection(
        localName: 'd_vpc_peering_connection',
      ),
    );

    addData(
      DataAwsVpcPeeringConnections(
        localName: 'd_vpc_peering_connections',
      ),
    );

    addData(
      DataAwsVpcSecurityGroupRule(
        localName: 'd_vpc_security_group_rule',
      ),
    );

    addData(
      DataAwsVpcSecurityGroupRules(
        localName: 'd_vpc_security_group_rules',
      ),
    );

    addData(
      DataAwsVpclatticeAuthPolicy(
        localName: 'd_vpclattice_auth_policy',
        resourceIdentifier: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsVpclatticeListener(
        localName: 'd_vpclattice_listener',
        listenerIdentifier: TfArg.literal(leftover),
        serviceIdentifier: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsVpclatticeResourcePolicy(
        localName: 'd_vpclattice_resource_policy',
        resourceArn: TfArg.literal(arn),
      ),
    );

    addData(
      DataAwsVpclatticeService(
        localName: 'd_vpclattice_service',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsVpclatticeServiceNetwork(
        localName: 'd_vpclattice_service_network',
        serviceNetworkIdentifier: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsVpclatticeServiceNetworkServiceAssociations(
        localName: 'd_vpclattice_service_network_service_association',
        serviceNetworkIdentifier: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsVpcs(
        localName: 'd_vpcs',
      ),
    );

    addData(
      DataAwsVpnConnection(
        localName: 'd_vpn_connection',
        vpnConnectionId: TfArg.literal(leftover),
        filter: [
          DataVpnConnectionFilter(
            name: TfArg.literal(leftover),
            values: TfArg.literal([leftover]),
          ),
        ],
      ),
    );

    addData(
      DataAwsVpnGateway(
        localName: 'd_vpn_gateway',
      ),
    );

    addData(
      DataAwsWafIpset(
        localName: 'd_waf_ipset',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafRateBasedRule(
        localName: 'd_waf_rate_based_rule',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafRule(
        localName: 'd_waf_rule',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafSubscribedRuleGroup(
        localName: 'd_waf_subscribed_rule_group',
        metricName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafWebAcl(
        localName: 'd_waf_web_acl',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafregionalIpset(
        localName: 'd_wafregional_ipset',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafregionalRateBasedRule(
        localName: 'd_wafregional_rate_based_rule',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafregionalRule(
        localName: 'd_wafregional_rule',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafregionalSubscribedRuleGroup(
        localName: 'd_wafregional_subscribed_rule_group',
        metricName: TfArg.literal(leftover),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafregionalWebAcl(
        localName: 'd_wafregional_web_acl',
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafv2IpSet(
        localName: 'd_wafv2_ip_set',
        name: TfArg.literal(leftover),
        scope: TfArg.literal('CLOUDFRONT'),
      ),
    );

    addData(
      DataAwsWafv2ManagedRuleGroup(
        localName: 'd_wafv2_managed_rule_group',
        name: TfArg.literal(leftover),
        scope: TfArg.literal('CLOUDFRONT'),
        vendorName: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWafv2RegexPatternSet(
        localName: 'd_wafv2_regex_pattern_set',
        name: TfArg.literal(leftover),
        scope: TfArg.literal('CLOUDFRONT'),
      ),
    );

    addData(
      DataAwsWafv2RuleGroup(
        localName: 'd_wafv2_rule_group',
        name: TfArg.literal(leftover),
        scope: TfArg.literal('CLOUDFRONT'),
      ),
    );

    addData(
      DataAwsWafv2WebAcl(
        localName: 'd_wafv2_web_acl',
        scope: TfArg.literal('CLOUDFRONT'),
        name: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWorkspacesBundle(
        localName: 'd_workspaces_bundle',
      ),
    );

    addData(
      DataAwsWorkspacesDirectory(
        localName: 'd_workspaces_directory',
        directoryId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWorkspacesImage(
        localName: 'd_workspaces_image',
        imageId: TfArg.literal(leftover),
      ),
    );

    addData(
      DataAwsWorkspacesWorkspace(
        localName: 'd_workspaces_workspace',
      ),
    );
  }
}
