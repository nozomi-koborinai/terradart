/// Deferred leftover quickstart — remaining uncurated GA leftovers.
///
/// Coverage stack with dummy values; synth + `terraform validate` only.
/// Never apply.
library;

import 'package:terradart_google/provider.dart';
import 'package:terradart_google/active_directory.dart';
import 'package:terradart_google/apigee.dart';
import 'package:terradart_google/assured_workloads.dart';
import 'package:terradart_google/biglake.dart';
import 'package:terradart_google/billing.dart';
import 'package:terradart_google/cloud_asset.dart';
import 'package:terradart_google/cloud_build.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/cloud_security_compliance.dart';
import 'package:terradart_google/cloud_sql.dart';
import 'package:terradart_google/clouddomains.dart';
import 'package:terradart_google/cloudfunctions.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/container.dart';
import 'package:terradart_google/database_migration.dart';
import 'package:terradart_google/dataflow.dart';
import 'package:terradart_google/dataproc.dart';
import 'package:terradart_google/datastream.dart';
import 'package:terradart_google/deployment_manager.dart';
import 'package:terradart_google/developer_connect.dart';
import 'package:terradart_google/dlp.dart';
import 'package:terradart_google/document_ai.dart';
import 'package:terradart_google/eventarc.dart';
import 'package:terradart_google/firebaserules.dart';
import 'package:terradart_google/folder.dart';
import 'package:terradart_google/gemini.dart';
import 'package:terradart_google/healthcare.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/identity.dart';
import 'package:terradart_google/logging.dart';
import 'package:terradart_google/memorystore.dart';
import 'package:terradart_google/model_armor.dart';
import 'package:terradart_google/monitoring.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/observability.dart';
import 'package:terradart_google/organization.dart';
import 'package:terradart_google/os_config.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/redis.dart';
import 'package:terradart_google/securityposture.dart';
import 'package:terradart_google/service_networking.dart';
import 'package:terradart_google/site_verification.dart';
import 'package:terradart_google/transcoder.dart';
import 'package:terradart_google/vertex_ai.dart';

final class DeferredLeftoverStack extends Stack {
  DeferredLeftoverStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    // Declared here so the TfArg.variable references below resolve;
    // the values themselves arrive at `terraform apply -var` time.
    final adTrustHandshakeSecret = variable<String>(
      'ad_trust_handshake_secret',
      sensitive: true,
    );

    add(
      GoogleActiveDirectoryDomainTrust(
        'activedirectorydomaintrust',
        deletionPolicy: .literal('DELETE'),
        domain: .literal('terradart-leftover'),
        targetDnsIpAddresses: .literal(['terradart-leftover']),
        targetDomainName: .literal('terradart-leftover'),
        trustDirection: .inbound,
        trustHandshakeSecret: adTrustHandshakeSecret,
        trustType: .forest,
      ),
    );

    add(
      GoogleApigeeSecurityAction(
        'apigeesecurityaction',
        deletionPolicy: .literal('DELETE'),
        envId: .literal('terradart-leftover'),
        orgId: .literal('organizations/123456789'),
        securityActionId: .literal('terradart-leftover'),
        state: .enabled,
        conditionConfig: const ApigeeSecurityActionConditionConfig(),
        effect: const .deny(.new()),
      ),
    );

    add(
      GoogleAssuredWorkloadsWorkload(
        'assuredworkloadsworkload',
        complianceRegime: .complianceRegimeUnspecified,
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        organization: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleBillingBudget(
        'billingbudget',
        billingAccount: .literal('billingAccounts/000000-000000-000000'),
        deletionPolicy: .literal('DELETE'),
        amount: .lastPeriodAmount(.literal(true)),
      ),
    );

    add(
      GoogleBillingProjectInfo(
        'billingprojectinfo',
        billingAccount: .literal('billingAccounts/000000-000000-000000'),
        deletionPolicy: .literal('DELETE'),
      ),
    );

    add(
      GoogleBillingSubaccount(
        'billingsubaccount',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        masterBillingAccount: .literal('billingAccounts/000000-000000-000000'),
      ),
    );

    add(
      GoogleCloudAssetFolderFeed(
        'cloudassetfolderfeed',
        billingProject: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        feedId: .literal('terradart-leftover'),
        folder: .literal('folders/123456789'),
        feedOutputConfig: CloudAssetFolderFeedOutputConfig(
          pubsubDestination: .new(topic: .literal('terradart-leftover')),
        ),
      ),
    );

    add(
      GoogleCloudAssetOrganizationFeed(
        'cloudassetorganizationfeed',
        billingProject: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        feedId: .literal('terradart-leftover'),
        orgId: .literal('organizations/123456789'),
        feedOutputConfig: CloudAssetOrganizationFeedOutputConfig(
          pubsubDestination: .new(topic: .literal('terradart-leftover')),
        ),
      ),
    );

    add(
      GoogleCloudIdentityGroup(
        'cloudidentitygroup',
        deletionPolicy: .literal('DELETE'),
        labels: .literal({'terradart': 'leftover'}),
        parent: .literal('organizations/123456789'),
        groupKey: CloudIdentityGroupKey(id: .literal('terradart-leftover')),
      ),
    );

    add(
      GoogleCloudIdentityGroupMembership(
        'cloudidentitygroupmembership',
        deletionPolicy: .literal('DELETE'),
        group: .literal('terradart-leftover'),
        preferredMemberKey: CloudIdentityGroupMembershipPreferredMemberKey(
          id: .literal('leftover@example.com'),
        ),
        roles: [CloudIdentityGroupMembershipRoles(name: .owner)],
      ),
    );

    add(
      GoogleCloudRunDomainMapping(
        'cloudrundomainmapping',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        name: .literal('terradart-leftover'),
        spec: CloudRunDomainMappingSpec(
          routeName: .literal('terradart-leftover'),
        ),
      ),
    );

    add(
      GoogleCloudSecurityComplianceCloudControl(
        'cloudsecuritycompliancecloud',
        cloudControlId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleCloudSecurityComplianceFramework(
        'cloudsecuritycomplianceframe',
        deletionPolicy: .literal('DELETE'),
        frameworkId: .literal('terradart-leftover'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleCloudSecurityComplianceFrameworkDeployment(
        'complianceframeworkdeploymen',
        deletionPolicy: .literal('DELETE'),
        frameworkDeploymentId: .literal('terradart-leftover'),
        cloudControlMetadata: [
          CloudSecurityComplianceFrameworkDeploymentCloudControlMetadata(
            enforcementMode: .literal('terradart-leftover'),
            cloudControlDetails: .new(
              majorRevisionId: .literal('terradart-leftover'),
              name: .literal('terradart-leftover'),
            ),
          ),
        ],
        framework: CloudSecurityComplianceFrameworkDeploymentFramework(
          framework: .literal('terradart-leftover'),
          majorRevisionId: .literal('terradart-leftover'),
        ),
        targetResourceConfig: .existingTargetResource(
          .literal('organizations/123456789'),
        ),
      ),
    );

    add(
      GoogleCloudbuildBitbucketServerConfig(
        'cloudbuildbitbucketservercon',
        apiKey: .literal('terradart-leftover'),
        configId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        hostUri: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        username: .literal('terradart-leftover'),
        secrets: CloudbuildBitbucketServerConfigSecrets(
          adminAccessTokenVersionName: .literal('terradart-leftover'),
          readAccessTokenVersionName: .literal('terradart-leftover'),
          webhookSecretVersionName: .literal('terradart-leftover'),
        ),
      ),
    );

    add(
      GoogleClouddomainsRegistration(
        'clouddomainsregistration',
        domainName: .literal('example-leftover.test'),
        location: .literal('us-central1'),
        contactSettings: ClouddomainsRegistrationContactSettings(
          privacy: .literal('REDACTED_CONTACT_DATA'),
          adminContact: .new(
            email: .literal('leftover@example.com'),
            phoneNumber: .literal('+15555550100'),
            postalAddress: .new(regionCode: .literal('US')),
          ),
          registrantContact: .new(
            email: .literal('leftover@example.com'),
            phoneNumber: .literal('+15555550100'),
            postalAddress: .new(regionCode: .literal('US')),
          ),
          technicalContact: .new(
            email: .literal('leftover@example.com'),
            phoneNumber: .literal('+15555550100'),
            postalAddress: .new(regionCode: .literal('US')),
          ),
        ),
        yearlyPrice: const ClouddomainsRegistrationYearlyPrice(),
      ),
    );

    add(
      GoogleCloudfunctionsFunction(
        'cloudfunctionsfunction',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        runtime: .literal('nodejs20'),
      ),
    );

    add(GoogleContainerRegistry('containerregistry'));

    add(
      GoogleDataLossPreventionDiscoveryConfig(
        'datalosspreventiondiscoveryc',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        parent: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleDataPipelinePipeline(
        'datapipelinepipeline',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        state: .stateUnspecified,
        type: .pipelineTypeUnspecified,
      ),
    );

    add(
      GoogleDatabaseMigrationServiceConnectionProfile(
        'serviceconnectionprofile',
        connectionProfileId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        engine: const .postgresql(.new()),
      ),
    );

    add(
      GoogleDatabaseMigrationServiceMigrationJob(
        'databasemigrationservicemigr',
        deletionPolicy: .literal('DELETE'),
        destination: .literal('storage.googleapis.com/terradart-leftover'),
        migrationJobId: .literal('terradart-leftover'),
        source: .literal('terradart-leftover'),
        type: .oneTime,
      ),
    );

    add(
      GoogleDatabaseMigrationServicePrivateConnection(
        'serviceprivateconnection',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        privateConnectionId: .literal('terradart-leftover'),
        vpcPeeringConfig:
            DatabaseMigrationServicePrivateConnectionVpcPeeringConfig(
              subnet: .literal('10.0.0.0/29'),
              vpcName: .literal(
                'projects/ci-test-project-id/global/networks/default',
              ),
            ),
      ),
    );

    add(
      GoogleDataprocGdcSparkApplication(
        'dataprocgdcsparkapplication',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        serviceinstance: .literal('terradart-leftover'),
        sparkApplicationId: .literal('terradart-leftover'),
        workload: const .sparkApplicationConfig(.new()),
      ),
    );

    add(
      GoogleDatastreamConnectionProfile(
        'datastreamconnectionprofile',
        connectionProfileId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        endpoint: .gcsProfile(.new(bucket: .literal('terradart-leftover'))),
      ),
    );

    add(
      GoogleDatastreamPrivateConnection(
        'datastreamprivateconnection',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        privateConnectionId: .literal('terradart-leftover'),
        connectivity: .vpcPeeringConfig(
          .new(
            subnet: .literal('10.0.0.0/29'),
            vpc: .literal(
              'projects/ci-test-project-id/global/networks/default',
            ),
          ),
        ),
      ),
    );

    add(
      GoogleDatastreamStream(
        'datastreamstream',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        streamId: .literal('terradart-leftover'),
        destinationConfig: DatastreamStreamDestinationConfig(
          destinationConnectionProfile: .literal('terradart-leftover'),
          system: const .gcsDestinationConfig(
            .new(fileFormat: .avroFileFormat(.new())),
          ),
        ),
        sourceConfig: DatastreamStreamSourceConfig(
          sourceConnectionProfile: .literal('terradart-leftover'),
          system: const .mysqlSourceConfig(.new()),
        ),
        backfill: const .backfillNone(.new()),
      ),
    );

    add(
      GoogleDeploymentManagerDeployment(
        'deploymentmanagerdeployment',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        target: DeploymentManagerDeploymentTarget(
          config: .new(content: .literal('terradart-leftover')),
        ),
      ),
    );

    add(
      GoogleDeveloperConnectConnection(
        'developerconnectconnection',
        connectionId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleDeveloperConnectGitRepositoryLink(
        'developerconnectgitrepositor',
        cloneUri: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        gitRepositoryLinkId: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        parentConnection: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleDeveloperConnectInsightsConfig(
        'developerconnectinsightsconf',
        deletionPolicy: .literal('DELETE'),
        insightsConfigId: .literal('terradart-leftover'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleDocumentAiWarehouseDocumentSchema(
        'documentaiwarehousedocuments',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        projectNumber: .literal('123456789012'),
        propertyDefinitions: [
          DocumentAiWarehouseDocumentSchemaPropertyDefinitions(
            name: .literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleDocumentAiWarehouseLocation(
        'documentaiwarehouselocation',
        accessControlMode: DocumentAiWarehouseLocationAccessControlMode
            .aclModeDocumentLevelAccessControlGci,
        databaseType: .dbInfraSpanner,
        location: .literal('us-central1'),
        projectNumber: .literal('123456789012'),
      ),
    );

    add(
      GoogleFirebaserulesRelease(
        'firebaserulesrelease',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        rulesetName: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleFolder(
        'folder',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleFolderAccessApprovalSettings(
        'folderaccessapprovalsettings',
        deletionPolicy: .literal('DELETE'),
        folderId: .literal('folders/123456789'),
        enrolledServices: [
          FolderAccessApprovalSettingsEnrolledServices(
            cloudProduct: .literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleFolderIamAuditConfig(
        'folderiamauditconfig',
        folder: .literal('folders/123456789'),
        service: .literal('allServices'),
        auditLogConfig: [
          FolderIamAuditConfigAuditLogConfig(
            logType: .literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleFolderOrganizationPolicy(
        'folderorganizationpolicy',
        constraint: .literal('constraints/compute.disableSerialPortAccess'),
        deletionPolicy: .literal('DELETE'),
        folder: .literal('folders/123456789'),
      ),
    );

    add(
      GoogleGeminiRepositoryGroup(
        'geminirepositorygroup',
        codeRepositoryIndex: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        repositoryGroupId: .literal('terradart-leftover'),
        repositories: [
          GeminiRepositoryGroupRepositories(
            branchPattern: .literal('terradart-leftover'),
            resource: .literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleGkeHubFeatureMembership(
        'gkehubfeaturemembership',
        deletionPolicy: .literal('DELETE'),
        feature: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        membership: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleGkeHubMembershipBinding(
        'gkehubmembershipbinding',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        membershipBindingId: .literal('terradart-leftover'),
        membershipId: .literal('terradart-leftover'),
        scope: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleHealthcarePipelineJob(
        'healthcarepipelinejob',
        dataset: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        name: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIamAccessBoundaryPolicy(
        'iamaccessboundarypolicy',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
        rules: [const IamAccessBoundaryPolicyRules()],
      ),
    );

    add(
      GoogleIamFoldersPolicyBinding(
        'iamfolderspolicybinding',
        deletionPolicy: .literal('DELETE'),
        folder: .literal('folders/123456789'),
        location: .literal('us-central1'),
        policy: .literal('terradart-leftover'),
        policyBindingId: .literal('terradart-leftover'),
        target: const IamFoldersPolicyBindingTarget(),
      ),
    );

    add(
      GoogleIamOauthClientCredential(
        'iamoauthclientcredential',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        oauthClientCredentialId: .literal('terradart-leftover'),
        oauthclient: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIamOrganizationsPolicyBinding(
        'iamorganizationspolicybindin',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        organization: .literal('organizations/123456789'),
        policy: .literal('terradart-leftover'),
        policyBindingId: .literal('terradart-leftover'),
        target: const IamOrganizationsPolicyBindingTarget(),
      ),
    );

    add(
      GoogleIamPrincipalAccessBoundaryPolicy(
        'iamprincipalaccessboundarypo',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        organization: .literal('organizations/123456789'),
        principalAccessBoundaryPolicyId: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIamProjectsPolicyBinding(
        'iamprojectspolicybinding',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        policy: .literal('terradart-leftover'),
        policyBindingId: .literal('terradart-leftover'),
        target: const IamProjectsPolicyBindingTarget(),
      ),
    );

    add(
      GoogleIdentityPlatformDefaultSupportedIdpConfig(
        'supportedidpconfig',
        clientId: .literal('terradart-leftover'),
        clientSecret: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        idpId: .literal('google.com'),
      ),
    );

    add(
      GoogleIdentityPlatformInboundSamlConfig(
        'identityplatforminboundsamlc',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        idpConfig: IdentityPlatformInboundSamlConfigIdpConfig(
          idpEntityId: .literal('terradart-leftover'),
          ssoUrl: .literal('terradart-leftover'),
          idpCertificates: [const .new()],
        ),
        spConfig: const IdentityPlatformInboundSamlConfigSpConfig(),
      ),
    );

    add(
      GoogleIdentityPlatformTenantDefaultSupportedIdpConfig(
        'supportedidpconfig',
        clientId: .literal('terradart-leftover'),
        clientSecret: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        idpId: .literal('google.com'),
        tenant: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIdentityPlatformTenantInboundSamlConfig(
        'inboundsamlconfig',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        tenant: .literal('terradart-leftover'),
        idpConfig: IdentityPlatformTenantInboundSamlConfigIdpConfig(
          idpEntityId: .literal('terradart-leftover'),
          ssoUrl: .literal('terradart-leftover'),
          idpCertificates: [const .new()],
        ),
        spConfig: IdentityPlatformTenantInboundSamlConfigSpConfig(
          callbackUri: .literal('terradart-leftover'),
          spEntityId: .literal('terradart-leftover'),
        ),
      ),
    );

    add(
      GoogleLoggingBillingAccountBucketConfig(
        'loggingbillingaccountbucketc',
        billingAccount: .literal('billingAccounts/000000-000000-000000'),
        bucketId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleLoggingBillingAccountExclusion(
        'loggingbillingaccountexclusi',
        billingAccount: .literal('billingAccounts/000000-000000-000000'),
        filter: .literal('severity>=ERROR'),
        name: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleLoggingBillingAccountSink(
        'loggingbillingaccountsink',
        billingAccount: .literal('billingAccounts/000000-000000-000000'),
        deletionPolicy: .literal('DELETE'),
        destination: .literal('storage.googleapis.com/terradart-leftover'),
        name: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleLoggingFolderBucketConfig(
        'loggingfolderbucketconfig',
        bucketId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        folder: .literal('folders/123456789'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleLoggingFolderExclusion(
        'loggingfolderexclusion',
        filter: .literal('severity>=ERROR'),
        folder: .literal('folders/123456789'),
        name: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleLoggingFolderSettings(
        'loggingfoldersettings',
        folder: .literal('folders/123456789'),
      ),
    );

    add(
      GoogleLoggingOrganizationBucketConfig(
        'loggingorganizationbucketcon',
        bucketId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        organization: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleLoggingOrganizationExclusion(
        'loggingorganizationexclusion',
        filter: .literal('severity>=ERROR'),
        name: .literal('terradart-leftover'),
        orgId: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleLoggingOrganizationSettings(
        'loggingorganizationsettings',
        organization: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleModelArmorFloorsetting(
        'modelarmorfloorsetting',
        location: .literal('us-central1'),
        parent: .literal('organizations/123456789'),
        filterConfig: const ModelArmorFloorsettingFilterConfig(),
      ),
    );

    add(
      GoogleNetworkManagementOrganizationVpcFlowLogsConfig(
        'flowlogsconfig',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        organization: .literal('organizations/123456789'),
        vpcFlowLogsConfigId: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleNetworkSecurityAuthzPolicy(
        'networksecurityauthzpolicy',
        action: .allow,
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        name: .literal('terradart-leftover'),
        target: const NetworkSecurityAuthzPolicyTarget(),
      ),
    );

    add(
      GoogleOrgPolicyCustomConstraint(
        'orgpolicycustomconstraint',
        actionType: .allow,
        condition: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        methodTypes: .literal(['terradart-leftover']),
        name: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
        resourceTypes: .literal(['terradart-leftover']),
      ),
    );

    add(
      GoogleOrgPolicyPolicy(
        'orgpolicypolicy',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleOrganizationAccessApprovalSettings(
        'organizationaccessapprovalse',
        deletionPolicy: .literal('DELETE'),
        organizationId: .literal('terradart-leftover'),
        enrolledServices: [
          OrganizationAccessApprovalSettingsEnrolledServices(
            cloudProduct: .literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleOrganizationIamAuditConfig(
        'organizationiamauditconfig',
        orgId: .literal('organizations/123456789'),
        service: .literal('allServices'),
        auditLogConfig: [
          OrganizationIamAuditConfigAuditLogConfig(
            logType: .literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleOrganizationIamCustomRole(
        'organizationiamcustomrole',
        deletionPolicy: .literal('DELETE'),
        orgId: .literal('organizations/123456789'),
        permissions: .literal(['terradart-leftover']),
        roleId: .literal('terradart_leftover'),
        title: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleOrganizationPolicy(
        'organizationpolicy',
        constraint: .literal('constraints/compute.disableSerialPortAccess'),
        deletionPolicy: .literal('DELETE'),
        orgId: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleOsConfigV2PolicyOrchestratorForFolder(
        'orchestratorforfolder',
        action: .literal('DEPRIVILEGE'),
        deletionPolicy: .literal('DELETE'),
        folderId: .literal('folders/123456789'),
        policyOrchestratorId: .literal('terradart-leftover'),
        orchestratedResource:
            const OsConfigV2PolicyOrchestratorForFolderOrchestratedResource(),
      ),
    );

    add(
      GoogleOsConfigV2PolicyOrchestratorForOrganization(
        'orchestratorfororganization',
        action: .literal('DEPRIVILEGE'),
        deletionPolicy: .literal('DELETE'),
        organizationId: .literal('terradart-leftover'),
        policyOrchestratorId: .literal('terradart-leftover'),
        orchestratedResource:
            const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResource(),
      ),
    );

    add(
      GoogleProjectAccessApprovalSettings(
        'projectaccessapprovalsetting',
        deletionPolicy: .literal('DELETE'),
        projectId: .literal(projectId),
        enrolledServices: [
          ProjectAccessApprovalSettingsEnrolledServices(
            cloudProduct: .literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleProjectDefaultServiceAccounts(
        'projectdefaultserviceaccount',
        action: .literal('DEPRIVILEGE'),
        project: .literal(projectId),
      ),
    );

    add(
      GoogleProjectIamMemberRemove(
        'projectiammemberremove',
        member: .user('leftover@example.com'),
        project: .literal(projectId),
        role: .literal('roles/viewer'),
      ),
    );

    add(
      GoogleProjectOrganizationPolicy(
        'projectorganizationpolicy',
        constraint: .literal('constraints/compute.disableSerialPortAccess'),
        deletionPolicy: .literal('DELETE'),
        project: .literal(projectId),
      ),
    );

    add(
      GoogleResourceManagerCapability(
        'resourcemanagercapability',
        capabilityName: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
        value: .literal(false),
      ),
    );

    add(
      GoogleResourceManagerLien(
        'resourcemanagerlien',
        deletionPolicy: .literal('DELETE'),
        origin: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
        reason: .literal('terradart-leftover'),
        restrictions: .literal(['terradart-leftover']),
      ),
    );

    add(
      GoogleSecurityposturePosture(
        'securitypostureposture',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        parent: .literal('organizations/123456789'),
        postureId: .literal('terradart-leftover'),
        state: .deprecated,
        policySets: [
          SecurityposturePosturePolicySets(
            policySetId: .literal('terradart-leftover'),
            policies: [
              .new(
                policyId: .literal('terradart-leftover'),
                constraint: const .new(),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      GoogleSecurityposturePostureDeployment(
        'securitypostureposturedeploy',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        parent: .literal('organizations/123456789'),
        postureDeploymentId: .literal('terradart-leftover'),
        postureId: .literal('terradart-leftover'),
        postureRevisionId: .literal('terradart-leftover'),
        targetResource: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleServiceNetworkingPeeredDnsDomain(
        'servicenetworkingpeereddnsdo',
        deletionPolicy: .literal('DELETE'),
        dnsSuffix: .literal('leftover.example.'),
        name: .literal('terradart-leftover'),
        network: .literal(
          'projects/ci-test-project-id/global/networks/default',
        ),
      ),
    );

    add(
      GoogleServiceNetworkingVpcServiceControls(
        'servicenetworkingvpcservicec',
        enabled: .literal(false),
        network: .literal(
          'projects/ci-test-project-id/global/networks/default',
        ),
        service: .literal('allServices'),
      ),
    );

    add(
      GoogleSiteVerificationOwner(
        'siteverificationowner',
        deletionPolicy: .literal('DELETE'),
        email: .literal('leftover@example.com'),
        webResourceId: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleSiteVerificationWebResource(
        'siteverificationwebresource',
        deletionPolicy: .literal('DELETE'),
        verificationMethod: .analytics,
        site: SiteVerificationWebResourceSite(
          identifier: .literal('terradart-leftover'),
          type: .inetDomain,
        ),
      ),
    );

    add(
      GoogleSqlProvisionScript(
        'sqlprovisionscript',
        deletionPolicy: .literal('ABANDON'),
        instance: .literal('terradart-leftover'),
        script: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleTranscoderJob(
        'transcoderjob',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalog(
        'biglake_hive_catalog',
        locationUri: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        primaryLocation: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalogIamBinding(
        'biglake_hive_catalog_iam_binding',
        members: .literal([.user('terradart-leftover@example.com')]),
        catalog: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalogIamMember(
        'biglake_hive_catalog_iam_member',
        member: .user('terradart-leftover@example.com'),
        catalog: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalogIamPolicy(
        'biglake_hive_catalog_iam_policy',
        catalog: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabase(
        'biglake_hive_database',
        catalog: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabaseIamBinding(
        'biglake_hive_database_iam_binding',
        catalog: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        database: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabaseIamMember(
        'biglake_hive_database_iam_member',
        catalog: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        database: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabaseIamPolicy(
        'biglake_hive_database_iam_policy',
        catalog: .literal('terradart-leftover'),
        database: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleBiglakeHiveTable(
        'biglake_hive_table',
        catalog: .literal('terradart-leftover'),
        database: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        storageDescriptor: BiglakeHiveTableStorageDescriptor(
          locationUri: .literal('gs://terradart-leftover'),
          columns: [.new(name: .literal('id'), type: .literal('string'))],
        ),
      ),
    );
    add(
      GoogleBiglakeHiveTableIamBinding(
        'biglake_hive_table_iam_binding',
        catalog: .literal('terradart-leftover'),
        database: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        table: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveTableIamMember(
        'biglake_hive_table_iam_member',
        catalog: .literal('terradart-leftover'),
        database: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        table: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveTableIamPolicy(
        'biglake_hive_table_iam_policy',
        catalog: .literal('terradart-leftover'),
        database: .literal('terradart-leftover'),
        table: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeNetworkEdgeSecurityService(
        'compute_network_edge_security_service',
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleObservabilityFolderSettings(
        'observability_folder_settings',
        folder: .literal('terradart-leftover'),
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleObservabilityOrganizationSettings(
        'observability_organization_settings',
        location: .literal('terradart-leftover'),
        organization: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleObservabilityProjectSettings(
        'observability_project_settings',
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleIamFolderAccessPolicy(
        'folder_access_policy',
        accessPolicyId: .literal('terradart-leftover'),
        location: .literal('global'),
        folder: .literal('123456789'),
        details: IamFolderAccessPolicyDetails(
          rules: [
            .new(
              effect: .deny,
              principals: .literal(['principalSet://goog/public:all']),
              operation: .new(
                permissions: .literal(['storage.googleapis.com/objects.get']),
              ),
            ),
          ],
        ),
      ),
    );
    add(
      GoogleIamOrganizationAccessPolicy(
        'organization_access_policy',
        accessPolicyId: .literal('terradart-leftover'),
        location: .literal('global'),
        organization: .literal('123456789'),
        details: IamOrganizationAccessPolicyDetails(
          rules: [
            .new(
              effect: .deny,
              principals: .literal(['principalSet://goog/public:all']),
              operation: .new(
                permissions: .literal(['storage.googleapis.com/objects.get']),
              ),
            ),
          ],
        ),
      ),
    );
    add(
      GoogleMemorystoreAclPolicy(
        'memorystore_acl_policy',
        aclPolicyId: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        rules: [
          MemorystoreAclPolicyRules(
            username: .literal('terradart-leftover'),
            rule: .literal('on ~* +@read'),
          ),
        ],
      ),
    );
    add(
      GoogleRedisClusterAclPolicy(
        'redis_cluster_acl_policy',
        aclPolicyId: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        rules: [
          RedisClusterAclPolicyRules(
            username: .literal('terradart-leftover'),
            rule: .literal('on ~* +@read'),
          ),
        ],
      ),
    );

    // A link exposes an existing dataset of the bucket; datasets appear once
    // telemetry lands and have no Terraform resource.
    final observabilityBucket = add(
      GoogleObservabilityBucket(
        'observability_bucket',
        bucketId: .literal('terradart-leftover'),
        location: .literal('global'),
        displayName: .literal('terradart leftover'),
      ),
    );
    add(
      GoogleObservabilityLink(
        'observability_link',
        bucket: observabilityBucket.ref,
        dataset: .literal('terradart-leftover'),
        linkId: .literal('terradart-leftover'),
        location: .literal('global'),
      ),
    );

    // Snoozes cannot be deleted: destroy only cancels them.
    add(
      GoogleMonitoringSnooze(
        'monitoring_snooze',
        displayName: .literal('terradart leftover'),
        criteria: MonitoringSnoozeCriteria(
          policies: .literal(['projects/$projectId/alertPolicies/123456789']),
        ),
        interval: MonitoringSnoozeInterval(
          startTime: .literal('2030-01-01T00:00:00Z'),
          endTime: .literal('2030-01-02T00:00:00Z'),
        ),
      ),
    );

    add(
      GoogleNetworkManagementNetworkMonitoringProvider(
        'network_monitoring_provider',
        location: .literal('global'),
        networkMonitoringProviderId: .literal('terradart-leftover'),
        providerType: .literal('EXTERNAL'),
      ),
    );

    add(
      GoogleNetworkServicesAgentConnectivityTemplate(
        'agent_connectivity_template',
        agentConnectivityTemplateId: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        accessPath: .agentToAnywhere,
        accessTypes: .literal(['PRIVATE']),
        egressNetworkConfig:
            NetworkServicesAgentConnectivityTemplateEgressNetworkConfig(
              networkAttachment: .literal(
                'projects/$projectId/regions/us-central1/networkAttachments/terradart-leftover',
              ),
              vpcEgress: .privateRangesOnly,
            ),
      ),
    );

    // RAG Engine bills the project's RagManagedDb tier while it is provisioned.
    add(
      GoogleVertexAiRagCorpus(
        'vertex_ai_rag_corpus',
        displayName: .literal('terradart leftover'),
        region: .literal('us-central1'),
        backend: .vectorDbConfig(.new(backend: .ragManagedDb(.knn(.new())))),
      ),
    );

    // Authoritative grants on a dummy pipeline; eventarc_quickstart shows the
    // additive GoogleEventarcPipelineIamMember on a real one.
    add(
      GoogleEventarcPipelineIamBinding(
        'eventarc_pipeline_iam_binding',
        location: .literal('us-central1'),
        pipeline: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
        members: .literal([
          .serviceAccount('terradart@$projectId.iam.gserviceaccount.com'),
        ]),
      ),
    );
    add(
      GoogleEventarcPipelineIamPolicy(
        'eventarc_pipeline_iam_policy',
        location: .literal('us-central1'),
        pipeline: .literal('terradart-leftover-policy'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
  }
}
