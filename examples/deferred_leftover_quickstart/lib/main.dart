/// Deferred leftover quickstart — remaining uncurated GA leftovers.
///
/// Skip-listed; synth + `terraform validate` only. Do not apply.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/active_directory.dart';
import 'package:terradart_google/apigee.dart';
import 'package:terradart_google/assured_workloads.dart';
import 'package:terradart_google/billing.dart';
import 'package:terradart_google/cloud_asset.dart';
import 'package:terradart_google/cloud_build.dart';
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/cloud_security_compliance.dart';
import 'package:terradart_google/clouddomains.dart';
import 'package:terradart_google/cloudfunctions.dart';
import 'package:terradart_google/container.dart';
import 'package:terradart_google/database_migration.dart';
import 'package:terradart_google/dataflow.dart';
import 'package:terradart_google/dataproc.dart';
import 'package:terradart_google/datastream.dart';
import 'package:terradart_google/deployment_manager.dart';
import 'package:terradart_google/developer_connect.dart';
import 'package:terradart_google/dlp.dart';
import 'package:terradart_google/document_ai.dart';
import 'package:terradart_google/firebaserules.dart';
import 'package:terradart_google/folder.dart';
import 'package:terradart_google/gemini.dart';
import 'package:terradart_google/healthcare.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/iap.dart';
import 'package:terradart_google/identity.dart';
import 'package:terradart_google/logging.dart';
import 'package:terradart_google/model_armor.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/organization.dart';
import 'package:terradart_google/os_config.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/securityposture.dart';
import 'package:terradart_google/service_networking.dart';
import 'package:terradart_google/site_verification.dart';
import 'package:terradart_google/cloud_sql.dart';
import 'package:terradart_google/transcoder.dart';
import 'package:terradart_google/vertex_ai.dart';

final class DeferredLeftoverStack extends Stack {
  DeferredLeftoverStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    add(
      GoogleActiveDirectoryDomainTrust(
        localName: 'activedirectorydomaintrust',
        deletionPolicy: TfArg.literal('DELETE'),
        domain: TfArg.literal('terradart-leftover'),
        targetDnsIpAddresses: TfArg.literal(['terradart-leftover']),
        targetDomainName: TfArg.literal('terradart-leftover'),
        trustDirection:
            TfArg.literal(ActiveDirectoryDomainTrustTrustDirection.inbound),
        trustHandshakeSecret: TfArg.variable('ad_trust_handshake_secret'),
        trustType: TfArg.literal(ActiveDirectoryDomainTrustTrustType.forest),
      ),
    );

    add(
      GoogleApigeeSecurityAction(
        localName: 'apigeesecurityaction',
        deletionPolicy: TfArg.literal('DELETE'),
        envId: TfArg.literal('terradart-leftover'),
        orgId: TfArg.literal('organizations/123456789'),
        securityActionId: TfArg.literal('terradart-leftover'),
        state: TfArg.literal(ApigeeSecurityActionState.enabled),
        conditionConfig: const ApigeeSecurityActionConditionConfig(),
        deny: const ApigeeSecurityActionDeny(),
      ),
    );

    add(
      GoogleAssuredWorkloadsWorkload(
        localName: 'assuredworkloadsworkload',
        complianceRegime: TfArg.literal(
          AssuredWorkloadsWorkloadComplianceRegime.complianceRegimeUnspecified,
        ),
        deletionPolicy: TfArg.literal('DELETE'),
        displayName: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('us-central1'),
        organization: TfArg.literal('organizations/123456789'),
      ),
    );

    add(
      GoogleBillingBudget(
        localName: 'billingbudget',
        billingAccount: TfArg.literal('billingAccounts/000000-000000-000000'),
        deletionPolicy: TfArg.literal('DELETE'),
        amount: BillingBudgetAmount(
          lastPeriodAmount: TfArg.literal(true),
        ),
      ),
    );

    add(
      GoogleBillingProjectInfo(
        localName: 'billingprojectinfo',
        billingAccount: TfArg.literal('billingAccounts/000000-000000-000000'),
        deletionPolicy: TfArg.literal('DELETE'),
      ),
    );

    add(
      GoogleBillingSubaccount(
        localName: 'billingsubaccount',
        deletionPolicy: TfArg.literal('DELETE'),
        displayName: TfArg.literal('terradart-leftover'),
        masterBillingAccount:
            TfArg.literal('billingAccounts/000000-000000-000000'),
      ),
    );

    add(
      GoogleCloudAssetFolderFeed(
        localName: 'cloudassetfolderfeed',
        billingProject: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        feedId: TfArg.literal('terradart-leftover'),
        folder: TfArg.literal('folders/123456789'),
        feedOutputConfig: CloudAssetFolderFeedFeedOutputConfig(
          pubsubDestination:
              CloudAssetFolderFeedFeedOutputConfigPubsubDestination(
            topic: TfArg.literal('terradart-leftover'),
          ),
        ),
      ),
    );

    add(
      GoogleCloudAssetOrganizationFeed(
        localName: 'cloudassetorganizationfeed',
        billingProject: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        feedId: TfArg.literal('terradart-leftover'),
        orgId: TfArg.literal('organizations/123456789'),
        feedOutputConfig: CloudAssetOrganizationFeedFeedOutputConfig(
          pubsubDestination:
              CloudAssetOrganizationFeedFeedOutputConfigPubsubDestination(
            topic: TfArg.literal('terradart-leftover'),
          ),
        ),
      ),
    );

    add(
      GoogleCloudIdentityGroup(
        localName: 'cloudidentitygroup',
        deletionPolicy: TfArg.literal('DELETE'),
        labels: TfArg.literal({'terradart': 'leftover'}),
        parent: TfArg.literal('organizations/123456789'),
        groupKey:
            CloudIdentityGroupGroupKey(id: TfArg.literal('terradart-leftover')),
      ),
    );

    add(
      GoogleCloudIdentityGroupMembership(
        localName: 'cloudidentitygroupmembership',
        deletionPolicy: TfArg.literal('DELETE'),
        group: TfArg.literal('terradart-leftover'),
        preferredMemberKey: CloudIdentityGroupMembershipPreferredMemberKey(
          id: TfArg.literal('leftover@example.com'),
        ),
        roles: [
          CloudIdentityGroupMembershipRoles(
            name: TfArg.literal(CloudIdentityGroupMembershipRolesName.owner),
          ),
        ],
      ),
    );

    add(
      GoogleCloudRunDomainMapping(
        localName: 'cloudrundomainmapping',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        name: TfArg.literal('terradart-leftover'),
        spec: CloudRunDomainMappingSpec(
          routeName: TfArg.literal('terradart-leftover'),
        ),
      ),
    );

    add(
      GoogleCloudSecurityComplianceCloudControl(
        localName: 'cloudsecuritycompliancecloud',
        cloudControlId: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
      ),
    );

    add(
      GoogleCloudSecurityComplianceFramework(
        localName: 'cloudsecuritycomplianceframe',
        deletionPolicy: TfArg.literal('DELETE'),
        frameworkId: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('us-central1'),
      ),
    );

    add(
      GoogleCloudSecurityComplianceFrameworkDeployment(
        localName: 'complianceframeworkdeploymen',
        deletionPolicy: TfArg.literal('DELETE'),
        frameworkDeploymentId: TfArg.literal('terradart-leftover'),
        cloudControlMetadata: [
          CloudSecurityComplianceFrameworkDeploymentCloudControlMetadata(
            enforcementMode: TfArg.literal('terradart-leftover'),
            cloudControlDetails:
                CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetails(
              majorRevisionId: TfArg.literal('terradart-leftover'),
              name: TfArg.literal('terradart-leftover'),
            ),
          ),
        ],
        framework: CloudSecurityComplianceFrameworkDeploymentFramework(
          framework: TfArg.literal('terradart-leftover'),
          majorRevisionId: TfArg.literal('terradart-leftover'),
        ),
        targetResourceConfig:
            CloudSecurityComplianceFrameworkDeploymentTargetResourceConfig(
          existingTargetResource: TfArg.literal('organizations/123456789'),
        ),
      ),
    );

    add(
      GoogleCloudbuildBitbucketServerConfig(
        localName: 'cloudbuildbitbucketservercon',
        apiKey: TfArg.literal('terradart-leftover'),
        configId: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        hostUri: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('us-central1'),
        username: TfArg.literal('terradart-leftover'),
        secrets: CloudbuildBitbucketServerConfigSecrets(
          adminAccessTokenVersionName: TfArg.literal('terradart-leftover'),
          readAccessTokenVersionName: TfArg.literal('terradart-leftover'),
          webhookSecretVersionName: TfArg.literal('terradart-leftover'),
        ),
      ),
    );

    add(
      GoogleClouddomainsRegistration(
        localName: 'clouddomainsregistration',
        domainName: TfArg.literal('example-leftover.test'),
        location: TfArg.literal('us-central1'),
        contactSettings: ClouddomainsRegistrationContactSettings(
          privacy: TfArg.literal('REDACTED_CONTACT_DATA'),
          adminContact: ClouddomainsRegistrationContactSettingsAdminContact(
            email: TfArg.literal('leftover@example.com'),
            phoneNumber: TfArg.literal('+15555550100'),
            postalAddress:
                ClouddomainsRegistrationContactSettingsAdminContactPostalAddress(
              regionCode: TfArg.literal('US'),
            ),
          ),
          registrantContact:
              ClouddomainsRegistrationContactSettingsRegistrantContact(
            email: TfArg.literal('leftover@example.com'),
            phoneNumber: TfArg.literal('+15555550100'),
            postalAddress:
                ClouddomainsRegistrationContactSettingsRegistrantContactPostalAddress(
              regionCode: TfArg.literal('US'),
            ),
          ),
          technicalContact:
              ClouddomainsRegistrationContactSettingsTechnicalContact(
            email: TfArg.literal('leftover@example.com'),
            phoneNumber: TfArg.literal('+15555550100'),
            postalAddress:
                ClouddomainsRegistrationContactSettingsTechnicalContactPostalAddress(
              regionCode: TfArg.literal('US'),
            ),
          ),
        ),
        yearlyPrice: const ClouddomainsRegistrationYearlyPrice(),
      ),
    );

    add(
      GoogleCloudfunctionsFunction(
        localName: 'cloudfunctionsfunction',
        deletionPolicy: TfArg.literal('DELETE'),
        name: TfArg.literal('terradart-leftover'),
        runtime: TfArg.literal('nodejs20'),
      ),
    );

    add(
      GoogleContainerRegistry(
        localName: 'containerregistry',
      ),
    );

    add(
      GoogleDataLossPreventionDiscoveryConfig(
        localName: 'datalosspreventiondiscoveryc',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        parent: TfArg.literal('organizations/123456789'),
      ),
    );

    add(
      GoogleDataPipelinePipeline(
        localName: 'datapipelinepipeline',
        deletionPolicy: TfArg.literal('DELETE'),
        name: TfArg.literal('terradart-leftover'),
        state: TfArg.literal(DataPipelinePipelineState.stateUnspecified),
        type: TfArg.literal(DataPipelinePipelineType.pipelineTypeUnspecified),
      ),
    );

    add(
      GoogleDatabaseMigrationServiceConnectionProfile(
        localName: 'serviceconnectionprofile',
        connectionProfileId: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        postgresql: const DatabaseMigrationServiceConnectionProfilePostgresql(),
      ),
    );

    add(
      GoogleDatabaseMigrationServiceMigrationJob(
        localName: 'databasemigrationservicemigr',
        deletionPolicy: TfArg.literal('DELETE'),
        destination: TfArg.literal('storage.googleapis.com/terradart-leftover'),
        migrationJobId: TfArg.literal('terradart-leftover'),
        source: TfArg.literal('terradart-leftover'),
        type: TfArg.literal(DatabaseMigrationServiceMigrationJobType.oneTime),
      ),
    );

    add(
      GoogleDatabaseMigrationServicePrivateConnection(
        localName: 'serviceprivateconnection',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        privateConnectionId: TfArg.literal('terradart-leftover'),
        vpcPeeringConfig:
            DatabaseMigrationServicePrivateConnectionVpcPeeringConfig(
          subnet: TfArg.literal('10.0.0.0/29'),
          vpcName: TfArg.literal(
            'projects/ci-test-project-id/global/networks/default',
          ),
        ),
      ),
    );

    add(
      GoogleDataprocGdcSparkApplication(
        localName: 'dataprocgdcsparkapplication',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        serviceinstance: TfArg.literal('terradart-leftover'),
        sparkApplicationId: TfArg.literal('terradart-leftover'),
        sparkApplicationConfig:
            const DataprocGdcSparkApplicationSparkApplicationConfig(),
      ),
    );

    add(
      GoogleDatastreamConnectionProfile(
        localName: 'datastreamconnectionprofile',
        connectionProfileId: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        displayName: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('us-central1'),
        gcsProfile: DatastreamConnectionProfileGcsProfile(
          bucket: TfArg.literal('terradart-leftover'),
        ),
      ),
    );

    add(
      GoogleDatastreamPrivateConnection(
        localName: 'datastreamprivateconnection',
        deletionPolicy: TfArg.literal('DELETE'),
        displayName: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('us-central1'),
        privateConnectionId: TfArg.literal('terradart-leftover'),
        vpcPeeringConfig: DatastreamPrivateConnectionVpcPeeringConfig(
          subnet: TfArg.literal('10.0.0.0/29'),
          vpc: TfArg.literal(
            'projects/ci-test-project-id/global/networks/default',
          ),
        ),
      ),
    );

    add(
      GoogleDatastreamStream(
        localName: 'datastreamstream',
        deletionPolicy: TfArg.literal('DELETE'),
        displayName: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('us-central1'),
        streamId: TfArg.literal('terradart-leftover'),
        destinationConfig: DatastreamStreamDestinationConfig(
          destinationConnectionProfile: TfArg.literal('terradart-leftover'),
          gcsDestinationConfig:
              const DatastreamStreamDestinationConfigGcsDestinationConfig(
            avroFileFormat:
                DatastreamStreamDestinationConfigGcsDestinationConfigAvroFileFormat(),
          ),
        ),
        sourceConfig: DatastreamStreamSourceConfig(
          sourceConnectionProfile: TfArg.literal('terradart-leftover'),
          mysqlSourceConfig:
              const DatastreamStreamSourceConfigMysqlSourceConfig(),
        ),
        backfillNone: const DatastreamStreamBackfillNone(),
      ),
    );

    add(
      GoogleDeploymentManagerDeployment(
        localName: 'deploymentmanagerdeployment',
        deletionPolicy: TfArg.literal('DELETE'),
        name: TfArg.literal('terradart-leftover'),
        target: DeploymentManagerDeploymentTarget(
          config: DeploymentManagerDeploymentTargetConfig(
            content: TfArg.literal('terradart-leftover'),
          ),
        ),
      ),
    );

    add(
      GoogleDeveloperConnectConnection(
        localName: 'developerconnectconnection',
        connectionId: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
      ),
    );

    add(
      GoogleDeveloperConnectGitRepositoryLink(
        localName: 'developerconnectgitrepositor',
        cloneUri: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        gitRepositoryLinkId: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('us-central1'),
        parentConnection: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleDeveloperConnectInsightsConfig(
        localName: 'developerconnectinsightsconf',
        deletionPolicy: TfArg.literal('DELETE'),
        insightsConfigId: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('us-central1'),
      ),
    );

    add(
      GoogleDocumentAiWarehouseDocumentSchema(
        localName: 'documentaiwarehousedocuments',
        deletionPolicy: TfArg.literal('DELETE'),
        displayName: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('us-central1'),
        projectNumber: TfArg.literal('123456789012'),
        propertyDefinitions: [
          DocumentAiWarehouseDocumentSchemaPropertyDefinitions(
            name: TfArg.literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleDocumentAiWarehouseLocation(
        localName: 'documentaiwarehouselocation',
        accessControlMode: TfArg.literal(
          DocumentAiWarehouseLocationAccessControlMode
              .aclModeDocumentLevelAccessControlGci,
        ),
        databaseType: TfArg.literal(
          DocumentAiWarehouseLocationDatabaseType.dbInfraSpanner,
        ),
        location: TfArg.literal('us-central1'),
        projectNumber: TfArg.literal('123456789012'),
      ),
    );

    add(
      GoogleFirebaserulesRelease(
        localName: 'firebaserulesrelease',
        deletionPolicy: TfArg.literal('DELETE'),
        name: TfArg.literal('terradart-leftover'),
        rulesetName: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleFolder(
        localName: 'folder',
        deletionPolicy: TfArg.literal('DELETE'),
        displayName: TfArg.literal('terradart-leftover'),
        parent: TfArg.literal('organizations/123456789'),
      ),
    );

    add(
      GoogleFolderAccessApprovalSettings(
        localName: 'folderaccessapprovalsettings',
        deletionPolicy: TfArg.literal('DELETE'),
        folderId: TfArg.literal('folders/123456789'),
        enrolledServices: [
          FolderAccessApprovalSettingsEnrolledServices(
            cloudProduct: TfArg.literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleFolderIamAuditConfig(
        localName: 'folderiamauditconfig',
        folder: TfArg.literal('folders/123456789'),
        service: TfArg.literal('allServices'),
        auditLogConfig: [
          FolderIamAuditConfigAuditLogConfig(
            logType: TfArg.literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleFolderOrganizationPolicy(
        localName: 'folderorganizationpolicy',
        constraint:
            TfArg.literal('constraints/compute.disableSerialPortAccess'),
        deletionPolicy: TfArg.literal('DELETE'),
        folder: TfArg.literal('folders/123456789'),
      ),
    );

    add(
      GoogleGeminiRepositoryGroup(
        localName: 'geminirepositorygroup',
        codeRepositoryIndex: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        repositoryGroupId: TfArg.literal('terradart-leftover'),
        repositories: [
          GeminiRepositoryGroupRepositories(
            branchPattern: TfArg.literal('terradart-leftover'),
            resource: TfArg.literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleGkeHubFeatureMembership(
        localName: 'gkehubfeaturemembership',
        deletionPolicy: TfArg.literal('DELETE'),
        feature: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('us-central1'),
        membership: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleGkeHubMembershipBinding(
        localName: 'gkehubmembershipbinding',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        membershipBindingId: TfArg.literal('terradart-leftover'),
        membershipId: TfArg.literal('terradart-leftover'),
        scope: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleHealthcarePipelineJob(
        localName: 'healthcarepipelinejob',
        dataset: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        name: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIamAccessBoundaryPolicy(
        localName: 'iamaccessboundarypolicy',
        deletionPolicy: TfArg.literal('DELETE'),
        name: TfArg.literal('terradart-leftover'),
        parent: TfArg.literal('organizations/123456789'),
        rules: [const IamAccessBoundaryPolicyRules()],
      ),
    );

    add(
      GoogleIamFoldersPolicyBinding(
        localName: 'iamfolderspolicybinding',
        deletionPolicy: TfArg.literal('DELETE'),
        folder: TfArg.literal('folders/123456789'),
        location: TfArg.literal('us-central1'),
        policy: TfArg.literal('terradart-leftover'),
        policyBindingId: TfArg.literal('terradart-leftover'),
        target: const IamFoldersPolicyBindingTarget(),
      ),
    );

    add(
      GoogleIamOauthClientCredential(
        localName: 'iamoauthclientcredential',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        oauthClientCredentialId: TfArg.literal('terradart-leftover'),
        oauthclient: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIamOrganizationsPolicyBinding(
        localName: 'iamorganizationspolicybindin',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        organization: TfArg.literal('organizations/123456789'),
        policy: TfArg.literal('terradart-leftover'),
        policyBindingId: TfArg.literal('terradart-leftover'),
        target: const IamOrganizationsPolicyBindingTarget(),
      ),
    );

    add(
      GoogleIamPrincipalAccessBoundaryPolicy(
        localName: 'iamprincipalaccessboundarypo',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        organization: TfArg.literal('organizations/123456789'),
        principalAccessBoundaryPolicyId: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIamProjectsPolicyBinding(
        localName: 'iamprojectspolicybinding',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        policy: TfArg.literal('terradart-leftover'),
        policyBindingId: TfArg.literal('terradart-leftover'),
        target: const IamProjectsPolicyBindingTarget(),
      ),
    );

    add(
      GoogleIapBrand(
        localName: 'iapbrand',
        applicationTitle: TfArg.literal('terradart-leftover'),
        supportEmail: TfArg.literal('leftover@example.com'),
      ),
    );

    add(
      GoogleIapClient(
        localName: 'iapclient',
        brand: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        displayName: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIdentityPlatformDefaultSupportedIdpConfig(
        localName: 'supportedidpconfig',
        clientId: TfArg.literal('terradart-leftover'),
        clientSecret: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        idpId: TfArg.literal('google.com'),
      ),
    );

    add(
      GoogleIdentityPlatformInboundSamlConfig(
        localName: 'identityplatforminboundsamlc',
        deletionPolicy: TfArg.literal('DELETE'),
        displayName: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
        idpConfig: IdentityPlatformInboundSamlConfigIdpConfig(
          idpEntityId: TfArg.literal('terradart-leftover'),
          ssoUrl: TfArg.literal('terradart-leftover'),
          idpCertificates: [
            const IdentityPlatformInboundSamlConfigIdpConfigIdpCertificates(),
          ],
        ),
        spConfig: const IdentityPlatformInboundSamlConfigSpConfig(),
      ),
    );

    add(
      GoogleIdentityPlatformTenantDefaultSupportedIdpConfig(
        localName: 'supportedidpconfig',
        clientId: TfArg.literal('terradart-leftover'),
        clientSecret: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        idpId: TfArg.literal('google.com'),
        tenant: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIdentityPlatformTenantInboundSamlConfig(
        localName: 'inboundsamlconfig',
        deletionPolicy: TfArg.literal('DELETE'),
        displayName: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
        tenant: TfArg.literal('terradart-leftover'),
        idpConfig: IdentityPlatformTenantInboundSamlConfigIdpConfig(
          idpEntityId: TfArg.literal('terradart-leftover'),
          ssoUrl: TfArg.literal('terradart-leftover'),
          idpCertificates: [
            const IdentityPlatformTenantInboundSamlConfigIdpConfigIdpCertificates(),
          ],
        ),
        spConfig: IdentityPlatformTenantInboundSamlConfigSpConfig(
          callbackUri: TfArg.literal('terradart-leftover'),
          spEntityId: TfArg.literal('terradart-leftover'),
        ),
      ),
    );

    add(
      GoogleLoggingBillingAccountBucketConfig(
        localName: 'loggingbillingaccountbucketc',
        billingAccount: TfArg.literal('billingAccounts/000000-000000-000000'),
        bucketId: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
      ),
    );

    add(
      GoogleLoggingBillingAccountExclusion(
        localName: 'loggingbillingaccountexclusi',
        billingAccount: TfArg.literal('billingAccounts/000000-000000-000000'),
        filter: TfArg.literal('severity>=ERROR'),
        name: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleLoggingBillingAccountSink(
        localName: 'loggingbillingaccountsink',
        billingAccount: TfArg.literal('billingAccounts/000000-000000-000000'),
        deletionPolicy: TfArg.literal('DELETE'),
        destination: TfArg.literal('storage.googleapis.com/terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleLoggingFolderBucketConfig(
        localName: 'loggingfolderbucketconfig',
        bucketId: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        folder: TfArg.literal('folders/123456789'),
        location: TfArg.literal('us-central1'),
      ),
    );

    add(
      GoogleLoggingFolderExclusion(
        localName: 'loggingfolderexclusion',
        filter: TfArg.literal('severity>=ERROR'),
        folder: TfArg.literal('folders/123456789'),
        name: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleLoggingFolderSettings(
        localName: 'loggingfoldersettings',
        folder: TfArg.literal('folders/123456789'),
      ),
    );

    add(
      GoogleLoggingOrganizationBucketConfig(
        localName: 'loggingorganizationbucketcon',
        bucketId: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        organization: TfArg.literal('organizations/123456789'),
      ),
    );

    add(
      GoogleLoggingOrganizationExclusion(
        localName: 'loggingorganizationexclusion',
        filter: TfArg.literal('severity>=ERROR'),
        name: TfArg.literal('terradart-leftover'),
        orgId: TfArg.literal('organizations/123456789'),
      ),
    );

    add(
      GoogleLoggingOrganizationSettings(
        localName: 'loggingorganizationsettings',
        organization: TfArg.literal('organizations/123456789'),
      ),
    );

    add(
      GoogleMlEngineModel(
        localName: 'mlenginemodel',
        deletionPolicy: TfArg.literal('DELETE'),
        name: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleModelArmorFloorsetting(
        localName: 'modelarmorfloorsetting',
        location: TfArg.literal('us-central1'),
        parent: TfArg.literal('organizations/123456789'),
        filterConfig: const ModelArmorFloorsettingFilterConfig(),
      ),
    );

    add(
      GoogleNetworkManagementOrganizationVpcFlowLogsConfig(
        localName: 'flowlogsconfig',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        organization: TfArg.literal('organizations/123456789'),
        vpcFlowLogsConfigId: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleNetworkSecurityAuthzPolicy(
        localName: 'networksecurityauthzpolicy',
        action: TfArg.literal(NetworkSecurityAuthzPolicyAction.allow),
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        name: TfArg.literal('terradart-leftover'),
        target: const NetworkSecurityAuthzPolicyTarget(),
      ),
    );

    add(
      GoogleOrgPolicyCustomConstraint(
        localName: 'orgpolicycustomconstraint',
        actionType: TfArg.literal(OrgPolicyCustomConstraintActionType.allow),
        condition: TfArg.literal('terradart-leftover'),
        deletionPolicy: TfArg.literal('DELETE'),
        methodTypes: TfArg.literal(['terradart-leftover']),
        name: TfArg.literal('terradart-leftover'),
        parent: TfArg.literal('organizations/123456789'),
        resourceTypes: TfArg.literal(['terradart-leftover']),
      ),
    );

    add(
      GoogleOrgPolicyPolicy(
        localName: 'orgpolicypolicy',
        deletionPolicy: TfArg.literal('DELETE'),
        name: TfArg.literal('terradart-leftover'),
        parent: TfArg.literal('organizations/123456789'),
      ),
    );

    add(
      GoogleOrganizationAccessApprovalSettings(
        localName: 'organizationaccessapprovalse',
        deletionPolicy: TfArg.literal('DELETE'),
        organizationId: TfArg.literal('terradart-leftover'),
        enrolledServices: [
          OrganizationAccessApprovalSettingsEnrolledServices(
            cloudProduct: TfArg.literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleOrganizationIamAuditConfig(
        localName: 'organizationiamauditconfig',
        orgId: TfArg.literal('organizations/123456789'),
        service: TfArg.literal('allServices'),
        auditLogConfig: [
          OrganizationIamAuditConfigAuditLogConfig(
            logType: TfArg.literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleOrganizationIamCustomRole(
        localName: 'organizationiamcustomrole',
        deletionPolicy: TfArg.literal('DELETE'),
        orgId: TfArg.literal('organizations/123456789'),
        permissions: TfArg.literal(['terradart-leftover']),
        roleId: TfArg.literal('terradart_leftover'),
        title: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleOrganizationPolicy(
        localName: 'organizationpolicy',
        constraint:
            TfArg.literal('constraints/compute.disableSerialPortAccess'),
        deletionPolicy: TfArg.literal('DELETE'),
        orgId: TfArg.literal('organizations/123456789'),
      ),
    );

    add(
      GoogleOsConfigV2PolicyOrchestratorForFolder(
        localName: 'orchestratorforfolder',
        action: TfArg.literal('DEPRIVILEGE'),
        deletionPolicy: TfArg.literal('DELETE'),
        folderId: TfArg.literal('folders/123456789'),
        policyOrchestratorId: TfArg.literal('terradart-leftover'),
        orchestratedResource:
            const OsConfigV2PolicyOrchestratorForFolderOrchestratedResource(),
      ),
    );

    add(
      GoogleOsConfigV2PolicyOrchestratorForOrganization(
        localName: 'orchestratorfororganization',
        action: TfArg.literal('DEPRIVILEGE'),
        deletionPolicy: TfArg.literal('DELETE'),
        organizationId: TfArg.literal('terradart-leftover'),
        policyOrchestratorId: TfArg.literal('terradart-leftover'),
        orchestratedResource:
            const OsConfigV2PolicyOrchestratorForOrganizationOrchestratedResource(),
      ),
    );

    add(
      GoogleProjectAccessApprovalSettings(
        localName: 'projectaccessapprovalsetting',
        deletionPolicy: TfArg.literal('DELETE'),
        projectId: TfArg.literal(projectId),
        enrolledServices: [
          ProjectAccessApprovalSettingsEnrolledServices(
            cloudProduct: TfArg.literal('terradart-leftover'),
          ),
        ],
      ),
    );

    add(
      GoogleProjectDefaultServiceAccounts(
        localName: 'projectdefaultserviceaccount',
        action: TfArg.literal('DEPRIVILEGE'),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      GoogleProjectIamMemberRemove(
        localName: 'projectiammemberremove',
        member: TfArg.literal('user:leftover@example.com'),
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/viewer'),
      ),
    );

    add(
      GoogleProjectOrganizationPolicy(
        localName: 'projectorganizationpolicy',
        constraint:
            TfArg.literal('constraints/compute.disableSerialPortAccess'),
        deletionPolicy: TfArg.literal('DELETE'),
        project: TfArg.literal(projectId),
      ),
    );

    add(
      GoogleResourceManagerCapability(
        localName: 'resourcemanagercapability',
        capabilityName: TfArg.literal('terradart-leftover'),
        parent: TfArg.literal('organizations/123456789'),
        value: TfArg.literal(false),
      ),
    );

    add(
      GoogleResourceManagerLien(
        localName: 'resourcemanagerlien',
        deletionPolicy: TfArg.literal('DELETE'),
        origin: TfArg.literal('terradart-leftover'),
        parent: TfArg.literal('organizations/123456789'),
        reason: TfArg.literal('terradart-leftover'),
        restrictions: TfArg.literal(['terradart-leftover']),
      ),
    );

    add(
      GoogleSecurityposturePosture(
        localName: 'securitypostureposture',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        parent: TfArg.literal('organizations/123456789'),
        postureId: TfArg.literal('terradart-leftover'),
        state: TfArg.literal(SecurityposturePostureState.deprecated),
        policySets: [
          SecurityposturePosturePolicySets(
            policySetId: TfArg.literal('terradart-leftover'),
            policies: [
              SecurityposturePosturePolicySetsPolicies(
                policyId: TfArg.literal('terradart-leftover'),
                constraint:
                    const SecurityposturePosturePolicySetsPoliciesConstraint(),
              ),
            ],
          ),
        ],
      ),
    );

    add(
      GoogleSecurityposturePostureDeployment(
        localName: 'securitypostureposturedeploy',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
        parent: TfArg.literal('organizations/123456789'),
        postureDeploymentId: TfArg.literal('terradart-leftover'),
        postureId: TfArg.literal('terradart-leftover'),
        postureRevisionId: TfArg.literal('terradart-leftover'),
        targetResource: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleServiceNetworkingPeeredDnsDomain(
        localName: 'servicenetworkingpeereddnsdo',
        deletionPolicy: TfArg.literal('DELETE'),
        dnsSuffix: TfArg.literal('leftover.example.'),
        name: TfArg.literal('terradart-leftover'),
        network: TfArg.literal(
          'projects/ci-test-project-id/global/networks/default',
        ),
      ),
    );

    add(
      GoogleServiceNetworkingVpcServiceControls(
        localName: 'servicenetworkingvpcservicec',
        enabled: TfArg.literal(false),
        network: TfArg.literal(
          'projects/ci-test-project-id/global/networks/default',
        ),
        service: TfArg.literal('allServices'),
      ),
    );

    add(
      GoogleSiteVerificationOwner(
        localName: 'siteverificationowner',
        deletionPolicy: TfArg.literal('DELETE'),
        email: TfArg.literal('leftover@example.com'),
        webResourceId: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleSiteVerificationWebResource(
        localName: 'siteverificationwebresource',
        deletionPolicy: TfArg.literal('DELETE'),
        verificationMethod: TfArg.literal(
          SiteVerificationWebResourceVerificationMethod.analytics,
        ),
        site: SiteVerificationWebResourceSite(
          identifier: TfArg.literal('terradart-leftover'),
          type: TfArg.literal(SiteVerificationWebResourceSiteType.inetDomain),
        ),
      ),
    );

    add(
      GoogleSqlProvisionScript(
        localName: 'sqlprovisionscript',
        deletionPolicy: TfArg.literal('ABANDON'),
        instance: TfArg.literal('terradart-leftover'),
        script: TfArg.literal('terradart-leftover'),
      ),
    );

    add(
      GoogleTranscoderJob(
        localName: 'transcoderjob',
        deletionPolicy: TfArg.literal('DELETE'),
        location: TfArg.literal('us-central1'),
      ),
    );
  }
}
