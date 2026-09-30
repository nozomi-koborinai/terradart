/// Deferred leftover quickstart — remaining uncurated GA leftovers.
///
/// Coverage stack with dummy values; synth + `terraform validate` only.
/// Never apply.
library;

import 'package:terradart_core/terradart_core.dart';
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
    addVariable(
      'ad_trust_handshake_secret',
      const TfVariable(type: 'string', sensitive: true),
    );

    add(
      GoogleActiveDirectoryDomainTrust(
        localName: 'activedirectorydomaintrust',
        deletionPolicy: .literal('DELETE'),
        domain: .literal('terradart-leftover'),
        targetDnsIpAddresses: .literal(['terradart-leftover']),
        targetDomainName: .literal('terradart-leftover'),
        trustDirection: .literal(.inbound),
        trustHandshakeSecret: TfArg.variable('ad_trust_handshake_secret'),
        trustType: .literal(.forest),
      ),
    );

    add(
      GoogleApigeeSecurityAction(
        localName: 'apigeesecurityaction',
        deletionPolicy: .literal('DELETE'),
        envId: .literal('terradart-leftover'),
        orgId: .literal('organizations/123456789'),
        securityActionId: .literal('terradart-leftover'),
        state: .literal(.enabled),
        conditionConfig: const ApigeeSecurityActionConditionConfig(),
        effect: const .deny(ApigeeSecurityActionDeny()),
      ),
    );

    add(
      GoogleAssuredWorkloadsWorkload(
        localName: 'assuredworkloadsworkload',
        complianceRegime: .literal(.complianceRegimeUnspecified),
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        organization: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleBillingBudget(
        localName: 'billingbudget',
        billingAccount: .literal('billingAccounts/000000-000000-000000'),
        deletionPolicy: .literal('DELETE'),
        amount: .lastPeriodAmount(.literal(true)),
      ),
    );

    add(
      GoogleBillingProjectInfo(
        localName: 'billingprojectinfo',
        billingAccount: .literal('billingAccounts/000000-000000-000000'),
        deletionPolicy: .literal('DELETE'),
      ),
    );

    add(
      GoogleBillingSubaccount(
        localName: 'billingsubaccount',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        masterBillingAccount: .literal('billingAccounts/000000-000000-000000'),
      ),
    );

    add(
      GoogleCloudAssetFolderFeed(
        localName: 'cloudassetfolderfeed',
        billingProject: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        feedId: .literal('terradart-leftover'),
        folder: .literal('folders/123456789'),
        feedOutputConfig: CloudAssetFolderFeedFeedOutputConfig(
          pubsubDestination:
              CloudAssetFolderFeedFeedOutputConfigPubsubDestination(
                topic: .literal('terradart-leftover'),
              ),
        ),
      ),
    );

    add(
      GoogleCloudAssetOrganizationFeed(
        localName: 'cloudassetorganizationfeed',
        billingProject: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        feedId: .literal('terradart-leftover'),
        orgId: .literal('organizations/123456789'),
        feedOutputConfig: CloudAssetOrganizationFeedFeedOutputConfig(
          pubsubDestination:
              CloudAssetOrganizationFeedFeedOutputConfigPubsubDestination(
                topic: .literal('terradart-leftover'),
              ),
        ),
      ),
    );

    add(
      GoogleCloudIdentityGroup(
        localName: 'cloudidentitygroup',
        deletionPolicy: .literal('DELETE'),
        labels: .literal({'terradart': 'leftover'}),
        parent: .literal('organizations/123456789'),
        groupKey: CloudIdentityGroupGroupKey(
          id: .literal('terradart-leftover'),
        ),
      ),
    );

    add(
      GoogleCloudIdentityGroupMembership(
        localName: 'cloudidentitygroupmembership',
        deletionPolicy: .literal('DELETE'),
        group: .literal('terradart-leftover'),
        preferredMemberKey: CloudIdentityGroupMembershipPreferredMemberKey(
          id: .literal('leftover@example.com'),
        ),
        roles: [CloudIdentityGroupMembershipRoles(name: .literal(.owner))],
      ),
    );

    add(
      GoogleCloudRunDomainMapping(
        localName: 'cloudrundomainmapping',
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
        localName: 'cloudsecuritycompliancecloud',
        cloudControlId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleCloudSecurityComplianceFramework(
        localName: 'cloudsecuritycomplianceframe',
        deletionPolicy: .literal('DELETE'),
        frameworkId: .literal('terradart-leftover'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleCloudSecurityComplianceFrameworkDeployment(
        localName: 'complianceframeworkdeploymen',
        deletionPolicy: .literal('DELETE'),
        frameworkDeploymentId: .literal('terradart-leftover'),
        cloudControlMetadata: [
          CloudSecurityComplianceFrameworkDeploymentCloudControlMetadata(
            enforcementMode: .literal('terradart-leftover'),
            cloudControlDetails:
                CloudSecurityComplianceFrameworkDeploymentCloudControlMetadataCloudControlDetails(
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
        localName: 'cloudbuildbitbucketservercon',
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
        localName: 'clouddomainsregistration',
        domainName: .literal('example-leftover.test'),
        location: .literal('us-central1'),
        contactSettings: ClouddomainsRegistrationContactSettings(
          privacy: .literal('REDACTED_CONTACT_DATA'),
          adminContact: ClouddomainsRegistrationContactSettingsAdminContact(
            email: .literal('leftover@example.com'),
            phoneNumber: .literal('+15555550100'),
            postalAddress:
                ClouddomainsRegistrationContactSettingsAdminContactPostalAddress(
                  regionCode: .literal('US'),
                ),
          ),
          registrantContact:
              ClouddomainsRegistrationContactSettingsRegistrantContact(
                email: .literal('leftover@example.com'),
                phoneNumber: .literal('+15555550100'),
                postalAddress:
                    ClouddomainsRegistrationContactSettingsRegistrantContactPostalAddress(
                      regionCode: .literal('US'),
                    ),
              ),
          technicalContact: ClouddomainsRegistrationContactSettingsTechnicalContact(
            email: .literal('leftover@example.com'),
            phoneNumber: .literal('+15555550100'),
            postalAddress:
                ClouddomainsRegistrationContactSettingsTechnicalContactPostalAddress(
                  regionCode: .literal('US'),
                ),
          ),
        ),
        yearlyPrice: const ClouddomainsRegistrationYearlyPrice(),
      ),
    );

    add(
      GoogleCloudfunctionsFunction(
        localName: 'cloudfunctionsfunction',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        runtime: .literal('nodejs20'),
      ),
    );

    add(GoogleContainerRegistry(localName: 'containerregistry'));

    add(
      GoogleDataLossPreventionDiscoveryConfig(
        localName: 'datalosspreventiondiscoveryc',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        parent: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleDataPipelinePipeline(
        localName: 'datapipelinepipeline',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        state: .literal(.stateUnspecified),
        type: .literal(.pipelineTypeUnspecified),
      ),
    );

    add(
      GoogleDatabaseMigrationServiceConnectionProfile(
        localName: 'serviceconnectionprofile',
        connectionProfileId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        engine: const .postgresql(
          DatabaseMigrationServiceConnectionProfilePostgresql(),
        ),
      ),
    );

    add(
      GoogleDatabaseMigrationServiceMigrationJob(
        localName: 'databasemigrationservicemigr',
        deletionPolicy: .literal('DELETE'),
        destination: .literal('storage.googleapis.com/terradart-leftover'),
        migrationJobId: .literal('terradart-leftover'),
        source: .literal('terradart-leftover'),
        type: .literal(.oneTime),
      ),
    );

    add(
      GoogleDatabaseMigrationServicePrivateConnection(
        localName: 'serviceprivateconnection',
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
        localName: 'dataprocgdcsparkapplication',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        serviceinstance: .literal('terradart-leftover'),
        sparkApplicationId: .literal('terradart-leftover'),
        workload: const .sparkApplicationConfig(
          DataprocGdcSparkApplicationSparkApplicationConfig(),
        ),
      ),
    );

    add(
      GoogleDatastreamConnectionProfile(
        localName: 'datastreamconnectionprofile',
        connectionProfileId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        endpoint: .gcsProfile(
          DatastreamConnectionProfileGcsProfile(
            bucket: .literal('terradart-leftover'),
          ),
        ),
      ),
    );

    add(
      GoogleDatastreamPrivateConnection(
        localName: 'datastreamprivateconnection',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        privateConnectionId: .literal('terradart-leftover'),
        connectivity: .vpcPeeringConfig(
          DatastreamPrivateConnectionVpcPeeringConfig(
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
        localName: 'datastreamstream',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        streamId: .literal('terradart-leftover'),
        destinationConfig: DatastreamStreamDestinationConfig(
          destinationConnectionProfile: .literal('terradart-leftover'),
          system: const .gcsDestinationConfig(
            DatastreamStreamDestinationConfigGcsDestinationConfig(
              fileFormat: .avroFileFormat(
                DatastreamStreamDestinationConfigGcsDestinationConfigAvroFileFormat(),
              ),
            ),
          ),
        ),
        sourceConfig: DatastreamStreamSourceConfig(
          sourceConnectionProfile: .literal('terradart-leftover'),
          system: const .mysqlSourceConfig(
            DatastreamStreamSourceConfigMysqlSourceConfig(),
          ),
        ),
        backfill: const .backfillNone(DatastreamStreamBackfillNone()),
      ),
    );

    add(
      GoogleDeploymentManagerDeployment(
        localName: 'deploymentmanagerdeployment',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        target: DeploymentManagerDeploymentTarget(
          config: DeploymentManagerDeploymentTargetConfig(
            content: .literal('terradart-leftover'),
          ),
        ),
      ),
    );

    add(
      GoogleDeveloperConnectConnection(
        localName: 'developerconnectconnection',
        connectionId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleDeveloperConnectGitRepositoryLink(
        localName: 'developerconnectgitrepositor',
        cloneUri: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        gitRepositoryLinkId: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        parentConnection: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleDeveloperConnectInsightsConfig(
        localName: 'developerconnectinsightsconf',
        deletionPolicy: .literal('DELETE'),
        insightsConfigId: .literal('terradart-leftover'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleDocumentAiWarehouseDocumentSchema(
        localName: 'documentaiwarehousedocuments',
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
        localName: 'documentaiwarehouselocation',
        accessControlMode: .literal(
          DocumentAiWarehouseLocationAccessControlMode
              .aclModeDocumentLevelAccessControlGci,
        ),
        databaseType: .literal(.dbInfraSpanner),
        location: .literal('us-central1'),
        projectNumber: .literal('123456789012'),
      ),
    );

    add(
      GoogleFirebaserulesRelease(
        localName: 'firebaserulesrelease',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        rulesetName: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleFolder(
        localName: 'folder',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleFolderAccessApprovalSettings(
        localName: 'folderaccessapprovalsettings',
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
        localName: 'folderiamauditconfig',
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
        localName: 'folderorganizationpolicy',
        constraint: .literal('constraints/compute.disableSerialPortAccess'),
        deletionPolicy: .literal('DELETE'),
        folder: .literal('folders/123456789'),
      ),
    );

    add(
      GoogleGeminiRepositoryGroup(
        localName: 'geminirepositorygroup',
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
        localName: 'gkehubfeaturemembership',
        deletionPolicy: .literal('DELETE'),
        feature: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        membership: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleGkeHubMembershipBinding(
        localName: 'gkehubmembershipbinding',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        membershipBindingId: .literal('terradart-leftover'),
        membershipId: .literal('terradart-leftover'),
        scope: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleHealthcarePipelineJob(
        localName: 'healthcarepipelinejob',
        dataset: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        name: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIamAccessBoundaryPolicy(
        localName: 'iamaccessboundarypolicy',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
        rules: [const IamAccessBoundaryPolicyRules()],
      ),
    );

    add(
      GoogleIamFoldersPolicyBinding(
        localName: 'iamfolderspolicybinding',
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
        localName: 'iamoauthclientcredential',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        oauthClientCredentialId: .literal('terradart-leftover'),
        oauthclient: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIamOrganizationsPolicyBinding(
        localName: 'iamorganizationspolicybindin',
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
        localName: 'iamprincipalaccessboundarypo',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        organization: .literal('organizations/123456789'),
        principalAccessBoundaryPolicyId: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIamProjectsPolicyBinding(
        localName: 'iamprojectspolicybinding',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        policy: .literal('terradart-leftover'),
        policyBindingId: .literal('terradart-leftover'),
        target: const IamProjectsPolicyBindingTarget(),
      ),
    );

    add(
      GoogleIdentityPlatformDefaultSupportedIdpConfig(
        localName: 'supportedidpconfig',
        clientId: .literal('terradart-leftover'),
        clientSecret: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        idpId: .literal('google.com'),
      ),
    );

    add(
      GoogleIdentityPlatformInboundSamlConfig(
        localName: 'identityplatforminboundsamlc',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        idpConfig: IdentityPlatformInboundSamlConfigIdpConfig(
          idpEntityId: .literal('terradart-leftover'),
          ssoUrl: .literal('terradart-leftover'),
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
        clientId: .literal('terradart-leftover'),
        clientSecret: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        idpId: .literal('google.com'),
        tenant: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleIdentityPlatformTenantInboundSamlConfig(
        localName: 'inboundsamlconfig',
        deletionPolicy: .literal('DELETE'),
        displayName: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        tenant: .literal('terradart-leftover'),
        idpConfig: IdentityPlatformTenantInboundSamlConfigIdpConfig(
          idpEntityId: .literal('terradart-leftover'),
          ssoUrl: .literal('terradart-leftover'),
          idpCertificates: [
            const IdentityPlatformTenantInboundSamlConfigIdpConfigIdpCertificates(),
          ],
        ),
        spConfig: IdentityPlatformTenantInboundSamlConfigSpConfig(
          callbackUri: .literal('terradart-leftover'),
          spEntityId: .literal('terradart-leftover'),
        ),
      ),
    );

    add(
      GoogleLoggingBillingAccountBucketConfig(
        localName: 'loggingbillingaccountbucketc',
        billingAccount: .literal('billingAccounts/000000-000000-000000'),
        bucketId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleLoggingBillingAccountExclusion(
        localName: 'loggingbillingaccountexclusi',
        billingAccount: .literal('billingAccounts/000000-000000-000000'),
        filter: .literal('severity>=ERROR'),
        name: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleLoggingBillingAccountSink(
        localName: 'loggingbillingaccountsink',
        billingAccount: .literal('billingAccounts/000000-000000-000000'),
        deletionPolicy: .literal('DELETE'),
        destination: .literal('storage.googleapis.com/terradart-leftover'),
        name: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleLoggingFolderBucketConfig(
        localName: 'loggingfolderbucketconfig',
        bucketId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        folder: .literal('folders/123456789'),
        location: .literal('us-central1'),
      ),
    );

    add(
      GoogleLoggingFolderExclusion(
        localName: 'loggingfolderexclusion',
        filter: .literal('severity>=ERROR'),
        folder: .literal('folders/123456789'),
        name: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleLoggingFolderSettings(
        localName: 'loggingfoldersettings',
        folder: .literal('folders/123456789'),
      ),
    );

    add(
      GoogleLoggingOrganizationBucketConfig(
        localName: 'loggingorganizationbucketcon',
        bucketId: .literal('terradart-leftover'),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        organization: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleLoggingOrganizationExclusion(
        localName: 'loggingorganizationexclusion',
        filter: .literal('severity>=ERROR'),
        name: .literal('terradart-leftover'),
        orgId: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleLoggingOrganizationSettings(
        localName: 'loggingorganizationsettings',
        organization: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleModelArmorFloorsetting(
        localName: 'modelarmorfloorsetting',
        location: .literal('us-central1'),
        parent: .literal('organizations/123456789'),
        filterConfig: const ModelArmorFloorsettingFilterConfig(),
      ),
    );

    add(
      GoogleNetworkManagementOrganizationVpcFlowLogsConfig(
        localName: 'flowlogsconfig',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        organization: .literal('organizations/123456789'),
        vpcFlowLogsConfigId: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleNetworkSecurityAuthzPolicy(
        localName: 'networksecurityauthzpolicy',
        action: .literal(.allow),
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        name: .literal('terradart-leftover'),
        target: const NetworkSecurityAuthzPolicyTarget(),
      ),
    );

    add(
      GoogleOrgPolicyCustomConstraint(
        localName: 'orgpolicycustomconstraint',
        actionType: .literal(.allow),
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
        localName: 'orgpolicypolicy',
        deletionPolicy: .literal('DELETE'),
        name: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleOrganizationAccessApprovalSettings(
        localName: 'organizationaccessapprovalse',
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
        localName: 'organizationiamauditconfig',
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
        localName: 'organizationiamcustomrole',
        deletionPolicy: .literal('DELETE'),
        orgId: .literal('organizations/123456789'),
        permissions: .literal(['terradart-leftover']),
        roleId: .literal('terradart_leftover'),
        title: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleOrganizationPolicy(
        localName: 'organizationpolicy',
        constraint: .literal('constraints/compute.disableSerialPortAccess'),
        deletionPolicy: .literal('DELETE'),
        orgId: .literal('organizations/123456789'),
      ),
    );

    add(
      GoogleOsConfigV2PolicyOrchestratorForFolder(
        localName: 'orchestratorforfolder',
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
        localName: 'orchestratorfororganization',
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
        localName: 'projectaccessapprovalsetting',
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
        localName: 'projectdefaultserviceaccount',
        action: .literal('DEPRIVILEGE'),
        project: .literal(projectId),
      ),
    );

    add(
      GoogleProjectIamMemberRemove(
        localName: 'projectiammemberremove',
        member: .literal('user:leftover@example.com'),
        project: .literal(projectId),
        role: .literal('roles/viewer'),
      ),
    );

    add(
      GoogleProjectOrganizationPolicy(
        localName: 'projectorganizationpolicy',
        constraint: .literal('constraints/compute.disableSerialPortAccess'),
        deletionPolicy: .literal('DELETE'),
        project: .literal(projectId),
      ),
    );

    add(
      GoogleResourceManagerCapability(
        localName: 'resourcemanagercapability',
        capabilityName: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
        value: .literal(false),
      ),
    );

    add(
      GoogleResourceManagerLien(
        localName: 'resourcemanagerlien',
        deletionPolicy: .literal('DELETE'),
        origin: .literal('terradart-leftover'),
        parent: .literal('organizations/123456789'),
        reason: .literal('terradart-leftover'),
        restrictions: .literal(['terradart-leftover']),
      ),
    );

    add(
      GoogleSecurityposturePosture(
        localName: 'securitypostureposture',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
        parent: .literal('organizations/123456789'),
        postureId: .literal('terradart-leftover'),
        state: .literal(.deprecated),
        policySets: [
          SecurityposturePosturePolicySets(
            policySetId: .literal('terradart-leftover'),
            policies: [
              SecurityposturePosturePolicySetsPolicies(
                policyId: .literal('terradart-leftover'),
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
        localName: 'servicenetworkingpeereddnsdo',
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
        localName: 'servicenetworkingvpcservicec',
        enabled: .literal(false),
        network: .literal(
          'projects/ci-test-project-id/global/networks/default',
        ),
        service: .literal('allServices'),
      ),
    );

    add(
      GoogleSiteVerificationOwner(
        localName: 'siteverificationowner',
        deletionPolicy: .literal('DELETE'),
        email: .literal('leftover@example.com'),
        webResourceId: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleSiteVerificationWebResource(
        localName: 'siteverificationwebresource',
        deletionPolicy: .literal('DELETE'),
        verificationMethod: .literal(.analytics),
        site: SiteVerificationWebResourceSite(
          identifier: .literal('terradart-leftover'),
          type: .literal(.inetDomain),
        ),
      ),
    );

    add(
      GoogleSqlProvisionScript(
        localName: 'sqlprovisionscript',
        deletionPolicy: .literal('ABANDON'),
        instance: .literal('terradart-leftover'),
        script: .literal('terradart-leftover'),
      ),
    );

    add(
      GoogleTranscoderJob(
        localName: 'transcoderjob',
        deletionPolicy: .literal('DELETE'),
        location: .literal('us-central1'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalog(
        localName: 'biglake_hive_catalog',
        locationUri: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        primaryLocation: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalogIamBinding(
        localName: 'biglake_hive_catalog_iam_binding',
        members: .literal(['user:terradart-leftover@example.com']),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalogIamMember(
        localName: 'biglake_hive_catalog_iam_member',
        member: .literal('user:terradart-leftover@example.com'),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalogIamPolicy(
        localName: 'biglake_hive_catalog_iam_policy',
        name: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabase(
        localName: 'biglake_hive_database',
        catalog: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabaseIamBinding(
        localName: 'biglake_hive_database_iam_binding',
        catalog: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabaseIamMember(
        localName: 'biglake_hive_database_iam_member',
        catalog: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabaseIamPolicy(
        localName: 'biglake_hive_database_iam_policy',
        catalog: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleBiglakeHiveTable(
        localName: 'biglake_hive_table',
        catalog: .literal('terradart-leftover'),
        database: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        storageDescriptor: BiglakeHiveTableStorageDescriptor(
          locationUri: .literal('gs://terradart-leftover'),
          columns: [
            BiglakeHiveTableStorageDescriptorColumns(
              name: .literal('id'),
              type: .literal('string'),
            ),
          ],
        ),
      ),
    );
    add(
      GoogleBiglakeHiveTableIamBinding(
        localName: 'biglake_hive_table_iam_binding',
        catalog: .literal('terradart-leftover'),
        database: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveTableIamMember(
        localName: 'biglake_hive_table_iam_member',
        catalog: .literal('terradart-leftover'),
        database: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveTableIamPolicy(
        localName: 'biglake_hive_table_iam_policy',
        catalog: .literal('terradart-leftover'),
        database: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeNetworkEdgeSecurityService(
        localName: 'compute_network_edge_security_service',
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleObservabilityFolderSettings(
        localName: 'observability_folder_settings',
        folder: .literal('terradart-leftover'),
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleObservabilityOrganizationSettings(
        localName: 'observability_organization_settings',
        location: .literal('terradart-leftover'),
        organization: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleObservabilityProjectSettings(
        localName: 'observability_project_settings',
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleIamFolderAccessPolicy(
        localName: 'folder_access_policy',
        accessPolicyId: .literal('terradart-leftover'),
        location: .literal('global'),
        folder: .literal('123456789'),
        details: IamFolderAccessPolicyDetails(
          rules: [
            IamFolderAccessPolicyDetailsRules(
              effect: .literal(.deny),
              principals: .literal(['principalSet://goog/public:all']),
              operation: IamFolderAccessPolicyDetailsRulesOperation(
                permissions: .literal(['storage.googleapis.com/objects.get']),
              ),
            ),
          ],
        ),
      ),
    );
    add(
      GoogleIamOrganizationAccessPolicy(
        localName: 'organization_access_policy',
        accessPolicyId: .literal('terradart-leftover'),
        location: .literal('global'),
        organization: .literal('123456789'),
        details: IamOrganizationAccessPolicyDetails(
          rules: [
            IamOrganizationAccessPolicyDetailsRules(
              effect: .literal(.deny),
              principals: .literal(['principalSet://goog/public:all']),
              operation: IamOrganizationAccessPolicyDetailsRulesOperation(
                permissions: .literal(['storage.googleapis.com/objects.get']),
              ),
            ),
          ],
        ),
      ),
    );
    add(
      GoogleMemorystoreAclPolicy(
        localName: 'memorystore_acl_policy',
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
        localName: 'redis_cluster_acl_policy',
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
        localName: 'observability_bucket',
        bucketId: .literal('terradart-leftover'),
        location: .literal('global'),
        displayName: .literal('terradart leftover'),
      ),
    );
    add(
      GoogleObservabilityLink(
        localName: 'observability_link',
        bucket: observabilityBucket.ref,
        dataset: .literal('terradart-leftover'),
        linkId: .literal('terradart-leftover'),
        location: .literal('global'),
      ),
    );

    // Snoozes cannot be deleted: destroy only cancels them.
    add(
      GoogleMonitoringSnooze(
        localName: 'monitoring_snooze',
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
        localName: 'network_monitoring_provider',
        location: .literal('global'),
        networkMonitoringProviderId: .literal('terradart-leftover'),
        providerType: .literal('EXTERNAL'),
      ),
    );

    add(
      GoogleNetworkServicesAgentConnectivityTemplate(
        localName: 'agent_connectivity_template',
        agentConnectivityTemplateId: .literal('terradart-leftover'),
        location: .literal('us-central1'),
        accessPath: .literal(.agentToAnywhere),
        accessTypes: .literal(['PRIVATE']),
        egressNetworkConfig:
            NetworkServicesAgentConnectivityTemplateEgressNetworkConfig(
              networkAttachment: .literal(
                'projects/$projectId/regions/us-central1/networkAttachments/terradart-leftover',
              ),
              vpcEgress: .literal(.privateRangesOnly),
            ),
      ),
    );

    // RAG Engine bills the project's RagManagedDb tier while it is provisioned.
    add(
      GoogleVertexAiRagCorpus(
        localName: 'vertex_ai_rag_corpus',
        displayName: .literal('terradart leftover'),
        region: .literal('us-central1'),
        backend: .vectorDbConfig(
          VertexAiRagCorpusVectorDbConfig(
            backend: .ragManagedDb(
              .knn(VertexAiRagCorpusVectorDbConfigRagManagedDbKnn()),
            ),
          ),
        ),
      ),
    );

    // Authoritative grants on a dummy pipeline; eventarc_quickstart shows the
    // additive GoogleEventarcPipelineIamMember on a real one.
    add(
      GoogleEventarcPipelineIamBinding(
        localName: 'eventarc_pipeline_iam_binding',
        location: .literal('us-central1'),
        pipelineId: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
        members: .literal([
          'serviceAccount:terradart@$projectId.iam.gserviceaccount.com',
        ]),
      ),
    );
    add(
      GoogleEventarcPipelineIamPolicy(
        localName: 'eventarc_pipeline_iam_policy',
        location: .literal('us-central1'),
        pipelineId: .literal('terradart-leftover-policy'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
  }
}
