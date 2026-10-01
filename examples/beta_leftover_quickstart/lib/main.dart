/// Beta leftover quickstart — remaining beta-only curated factories.
///
/// Coverage stack with dummy values; synth + `terraform validate` only.
/// Never apply.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google_beta/provider.dart';
import 'package:terradart_google_beta/active_directory.dart';
import 'package:terradart_google_beta/api_gateway.dart';
import 'package:terradart_google_beta/artifact_registry.dart';
import 'package:terradart_google_beta/bigquery.dart';
import 'package:terradart_google_beta/ces.dart';
import 'package:terradart_google_beta/chronicle.dart';
import 'package:terradart_google_beta/compute.dart';
import 'package:terradart_google_beta/container.dart';
import 'package:terradart_google_beta/dataflow.dart';
import 'package:terradart_google_beta/dataform.dart';
import 'package:terradart_google_beta/dataplex.dart';
import 'package:terradart_google_beta/firebase.dart';
import 'package:terradart_google_beta/folder.dart';
import 'package:terradart_google_beta/identity.dart';
import 'package:terradart_google_beta/kms.dart';
import 'package:terradart_google_beta/network.dart';
import 'package:terradart_google_beta/organization.dart';
import 'package:terradart_google_beta/os_config.dart';
import 'package:terradart_google_beta/privileged_access_manager.dart';
import 'package:terradart_google_beta/project.dart';
import 'package:terradart_google_beta/runtimeconfig.dart';
import 'package:terradart_google_beta/saas_runtime.dart';
import 'package:terradart_google_beta/security_scanner.dart';
import 'package:terradart_google_beta/service_usage.dart';
import 'package:terradart_google_beta/tags.dart';
import 'package:terradart_google_beta/tpu.dart';
import 'package:terradart_google_beta/vertex_ai.dart';

final class BetaLeftoverStack extends Stack {
  BetaLeftoverStack({required String projectId})
    : super(
        providers: [
          GoogleBetaProvider(project: projectId, region: 'us-central1'),
        ],
      ) {
    // Declared here so the TfArg.variable references below resolve;
    // the values themselves arrive at `terraform apply -var` time.
    addVariable(
      'runtimeconfig_variable_text',
      const TfVariable(type: 'string', sensitive: true),
    );

    add(
      GoogleActiveDirectoryPeering(
        localName: 'active_directory_peering',
        authorizedNetwork: .literal('terradart-leftover'),
        domainResource: .literal('terradart-leftover'),
        peeringId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleApiGatewayApi(
        localName: 'api_gateway_api',
        apiId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleApiGatewayApiConfig(
        localName: 'api_gateway_api_config',
        api: .literal('terradart-leftover'),
        spec: .openapiDocuments([
          .new(
            document: .new(
              contents: .literal('b3BlbmFwaTogIjMuMC4wIg=='),
              path: .literal('openapi.yaml'),
            ),
          ),
        ]),
      ),
    );
    add(
      GoogleApiGatewayApiConfigIamBinding(
        localName: 'api_gateway_api_config_iam_binding',
        api: .literal('terradart-leftover'),
        apiConfig: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiConfigIamMember(
        localName: 'api_gateway_api_config_iam_member',
        api: .literal('terradart-leftover'),
        apiConfig: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiConfigIamPolicy(
        localName: 'api_gateway_api_config_iam_policy',
        api: .literal('terradart-leftover'),
        apiConfig: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleApiGatewayApiIamBinding(
        localName: 'api_gateway_api_iam_binding',
        api: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiIamMember(
        localName: 'api_gateway_api_iam_member',
        api: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiIamPolicy(
        localName: 'api_gateway_api_iam_policy',
        api: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleApiGatewayGateway(
        localName: 'api_gateway_gateway',
        apiConfig: .literal('terradart-leftover'),
        gatewayId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleApiGatewayGatewayIamBinding(
        localName: 'api_gateway_gateway_iam_binding',
        gateway: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayGatewayIamMember(
        localName: 'api_gateway_gateway_iam_member',
        gateway: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayGatewayIamPolicy(
        localName: 'api_gateway_gateway_iam_policy',
        gateway: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleArtifactRegistryVpcscConfig(
        localName: 'artifact_registry_vpcsc_config',
      ),
    );
    add(
      GoogleBigqueryAnalyticsHubDataExchangeSubscription(
        localName: 'bigquery_analytics_hub_data_exchange_subscription',
        dataExchangeId: .literal('terradart-leftover'),
        dataExchangeLocation: .literal('terradart-leftover'),
        dataExchangeProject: .literal('terradart-leftover'),
        location: .literal('terradart-leftover'),
        subscriptionId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleCesEvaluation(
        localName: 'ces_evaluation',
        app: .literal('terradart-leftover'),
        displayName: .literal('terradart-leftover'),
        evaluationId: .literal('terradart-leftover'),
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleCesSecuritySettings(
        localName: 'ces_security_settings',
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleChronicleSoarDomain(
        localName: 'chronicle_soar_domain',
        displayName: .literal('terradart-leftover'),
        environmentsJson: .literal('terradart-leftover'),
        instance: .literal('terradart-leftover'),
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeBackendBucketIamBinding(
        localName: 'compute_backend_bucket_iam_binding',
        members: .literal(['user:terradart-leftover@example.com']),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendBucketIamMember(
        localName: 'compute_backend_bucket_iam_member',
        member: .literal('user:terradart-leftover@example.com'),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendBucketIamPolicy(
        localName: 'compute_backend_bucket_iam_policy',
        name: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeBackendServiceIamBinding(
        localName: 'compute_backend_service_iam_binding',
        members: .literal(['user:terradart-leftover@example.com']),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendServiceIamMember(
        localName: 'compute_backend_service_iam_member',
        member: .literal('user:terradart-leftover@example.com'),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendServiceIamPolicy(
        localName: 'compute_backend_service_iam_policy',
        name: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeFutureReservation(
        localName: 'compute_future_reservation',
        name: .literal('terradart-leftover'),
        timeWindow: ComputeFutureReservationTimeWindow(
          startTime: .literal('2026-01-01T00:00:00Z'),
          endTime: .literal('2026-01-02T00:00:00Z'),
        ),
      ),
    );
    add(
      GoogleComputeInstanceFromMachineImage(
        localName: 'compute_instance_from_machine_image',
        name: .literal('terradart-leftover'),
        sourceMachineImage: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeMachineImage(
        localName: 'compute_machine_image',
        name: .literal('terradart-leftover'),
        sourceInstance: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeMachineImageIamBinding(
        localName: 'compute_machine_image_iam_binding',
        machineImage: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeMachineImageIamMember(
        localName: 'compute_machine_image_iam_member',
        machineImage: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeMachineImageIamPolicy(
        localName: 'compute_machine_image_iam_policy',
        machineImage: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeNetworkFirewallPolicyPacketMirroringRule(
        localName: 'compute_network_firewall_policy_packet_mirroring_rule',
        action: .literal('mirror'),
        direction: .literal(.ingress),
        firewallPolicy: .literal('terradart-leftover'),
        priority: .literal(1000),
        match: ComputeNetworkFirewallPolicyPacketMirroringRuleMatch(
          srcIpRanges: .literal(['0.0.0.0/0']),
          layer4Configs: [.new(ipProtocol: .literal('tcp'))],
        ),
      ),
    );
    add(
      GoogleComputeRegionBackendBucket(
        localName: 'compute_region_backend_bucket',
        bucketName: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        region: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeRegionBackendBucketIamBinding(
        localName: 'compute_region_backend_bucket_iam_binding',
        members: .literal(['user:terradart-leftover@example.com']),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendBucketIamMember(
        localName: 'compute_region_backend_bucket_iam_member',
        member: .literal('user:terradart-leftover@example.com'),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendBucketIamPolicy(
        localName: 'compute_region_backend_bucket_iam_policy',
        name: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeRegionBackendServiceIamBinding(
        localName: 'compute_region_backend_service_iam_binding',
        members: .literal(['user:terradart-leftover@example.com']),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendServiceIamMember(
        localName: 'compute_region_backend_service_iam_member',
        member: .literal('user:terradart-leftover@example.com'),
        name: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendServiceIamPolicy(
        localName: 'compute_region_backend_service_iam_policy',
        name: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeRegionNetworkPolicy(
        localName: 'compute_region_network_policy',
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeRegionNetworkPolicyTrafficClassificationRule(
        localName: 'compute_region_network_policy_traffic_classification_rule',
        networkPolicy: .literal('terradart-leftover'),
        priority: .literal(1000),
        match: ComputeRegionNetworkPolicyTrafficClassificationRuleMatch(
          srcIpRanges: .literal(['0.0.0.0/0']),
          layer4Configs: [.new(ipProtocol: .literal('tcp'))],
        ),
      ),
    );
    add(
      GoogleGkeHubMembershipRbacRoleBinding(
        localName: 'gke_hub_membership_rbac_role_binding',
        location: .literal('terradart-leftover'),
        membershipId: .literal('terradart-leftover'),
        membershipRbacRoleBindingId: .literal('terradart-leftover'),
        user: .literal('terradart-leftover'),
        role: GkeHubMembershipRbacRoleBindingRole(
          predefinedRole: .literal(.admin),
        ),
      ),
    );
    add(
      GoogleDataflowFlexTemplateJob(
        localName: 'dataflow_flex_template_job',
        containerSpecGcsPath: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataformConfig(
        localName: 'dataform_config',
        region: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataformRepositoryReleaseConfig(
        localName: 'dataform_repository_release_config',
        gitCommitish: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataformRepositoryWorkflowConfig(
        localName: 'dataform_repository_workflow_config',
        name: .literal('terradart-leftover'),
        releaseConfig: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataplexDataAsset(
        localName: 'dataplex_data_asset',
        dataAssetId: .literal('terradart-leftover'),
        dataProductId: .literal('terradart-leftover'),
        location: .literal('terradart-leftover'),
        resource: .literal('terradart-leftover'),
      ),
    );
    add(GoogleFirebaseAiLogicConfig(localName: 'firebase_ai_logic_config'));
    add(
      GoogleFirebaseAiLogicPromptTemplate(
        localName: 'firebase_ai_logic_prompt_template',
        location: .literal('terradart-leftover'),
        templateId: .literal('terradart-leftover'),
        templateString: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseAiLogicPromptTemplateLock(
        localName: 'firebase_ai_logic_prompt_template_lock',
        location: .literal('terradart-leftover'),
        templateId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseAndroidApp(
        localName: 'firebase_android_app',
        displayName: .literal('terradart-leftover'),
        packageName: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseAppleApp(
        localName: 'firebase_apple_app',
        bundleId: .literal('terradart-leftover'),
        displayName: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseDatabaseInstance(
        localName: 'firebase_database_instance',
        instanceId: .literal('terradart-leftover'),
        region: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseExtensionsInstance(
        localName: 'firebase_extensions_instance',
        instanceId: .literal('terradart-leftover'),
        config: FirebaseExtensionsInstanceConfig(
          extensionRef: .literal('firebase/firestore-send-email'),
          params: .literal({'LOCATION': 'us-central1'}),
        ),
      ),
    );
    add(
      GoogleFirebaseHostingChannel(
        localName: 'firebase_hosting_channel',
        channelId: .literal('terradart-leftover'),
        siteId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseHostingCustomDomain(
        localName: 'firebase_hosting_custom_domain',
        customDomain: .literal('terradart-leftover'),
        siteId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseHostingRelease(
        localName: 'firebase_hosting_release',
        siteId: .literal('terradart-leftover'),
      ),
    );
    add(GoogleFirebaseHostingSite(localName: 'firebase_hosting_site'));
    add(
      GoogleFirebaseHostingVersion(
        localName: 'firebase_hosting_version',
        siteId: .literal('terradart-leftover'),
      ),
    );
    add(GoogleFirebaseProject(localName: 'firebase_project'));
    add(GoogleFirebaseStorageBucket(localName: 'firebase_storage_bucket'));
    add(
      GoogleFirebaseStorageDefaultBucket(
        localName: 'firebase_storage_default_bucket',
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseWebApp(
        localName: 'firebase_web_app',
        displayName: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFolderServiceIdentity(
        localName: 'folder_service_identity',
        folder: .literal('terradart-leftover'),
        service: .literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleCloudIdentityPolicy(
        localName: 'cloud_identity_policy',
        customer: .literal('terradart-leftover'),
        policyQuery: CloudIdentityPolicyQuery(
          orgUnit: .literal('terradart-leftover'),
        ),
        setting: CloudIdentityPolicySetting(
          type: .literal('settings/terradart-leftover'),
          valueJson: .literal('{}'),
        ),
      ),
    );
    add(
      GoogleKmsFolderKajPolicyConfig(
        localName: 'kms_folder_kaj_policy_config',
        folder: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleKmsOrganizationKajPolicyConfig(
        localName: 'kms_organization_kaj_policy_config',
        organization: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleKmsProjectKajPolicyConfig(
        localName: 'kms_project_kaj_policy_config',
      ),
    );
    add(
      GoogleNetworkSecurityAuthorizationPolicy(
        localName: 'network_security_authorization_policy',
        action: .literal(.allow),
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleNetworkSecuritySacAttachment(
        localName: 'network_security_sac_attachment',
        location: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        nccGateway: .literal('terradart-leftover'),
        sacRealm: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleNetworkSecuritySacRealm(
        localName: 'network_security_sac_realm',
        name: .literal('terradart-leftover'),
        securityService: .literal(.securityServiceUnspecified),
      ),
    );
    add(
      GoogleNetworkServicesServiceLbPolicies(
        localName: 'network_services_service_lb_policies',
        location: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleOrganizationServiceIdentity(
        localName: 'organization_service_identity',
        organization: .literal('terradart-leftover'),
        service: .literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleOsConfigGuestPolicies(
        localName: 'os_config_guest_policies',
        guestPolicyId: .literal('terradart-leftover'),
        assignment: OsConfigGuestPoliciesAssignment(
          zones: .literal(['us-central1-a']),
        ),
      ),
    );
    add(
      GooglePrivilegedAccessManagerSettings(
        localName: 'privileged_access_manager_settings',
        location: .literal('terradart-leftover'),
        parent: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleProjectServiceIdentity(
        localName: 'project_service_identity',
        service: .literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleRuntimeconfigConfig(
        localName: 'runtimeconfig_config',
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleRuntimeconfigConfigIamBinding(
        localName: 'runtimeconfig_config_iam_binding',
        config: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleRuntimeconfigConfigIamMember(
        localName: 'runtimeconfig_config_iam_member',
        config: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleRuntimeconfigConfigIamPolicy(
        localName: 'runtimeconfig_config_iam_policy',
        config: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleRuntimeconfigVariable(
        localName: 'runtimeconfig_variable',
        name: .literal('terradart-leftover'),
        parent: .literal('terradart-leftover'),
        text: TfArg.variable('runtimeconfig_variable_text'),
      ),
    );
    add(
      GoogleSaasRuntimeRelease(
        localName: 'saas_runtime_release',
        location: .literal('terradart-leftover'),
        releaseId: .literal('terradart-leftover'),
        unitKind: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeRolloutKind(
        localName: 'saas_runtime_rollout_kind',
        location: .literal('terradart-leftover'),
        rolloutKindId: .literal('terradart-leftover'),
        unitKind: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeSaas(
        localName: 'saas_runtime_saas',
        location: .literal('terradart-leftover'),
        saasId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeTenant(
        localName: 'saas_runtime_tenant',
        location: .literal('terradart-leftover'),
        saas: .literal('terradart-leftover'),
        tenantId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeUnit(
        localName: 'saas_runtime_unit',
        location: .literal('terradart-leftover'),
        unitId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeUnitKind(
        localName: 'saas_runtime_unit_kind',
        location: .literal('terradart-leftover'),
        saas: .literal('terradart-leftover'),
        unitKindId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeUnitOperation(
        localName: 'saas_runtime_unit_operation',
        location: .literal('terradart-leftover'),
        unit: .literal('terradart-leftover'),
        unitOperationId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSecurityScannerScanConfig(
        localName: 'security_scanner_scan_config',
        displayName: .literal('terradart-leftover'),
        startingUrls: .literal(['terradart-leftover']),
      ),
    );
    add(
      GoogleServiceUsageConsumerQuotaOverride(
        localName: 'service_usage_consumer_quota_override',
        limit: .literal('terradart-leftover'),
        metric: .literal('terradart-leftover'),
        overrideValue: .literal('terradart-leftover'),
        service: .literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleTagsTagBindingCollection(
        localName: 'tags_tag_binding_collection',
        fullResourceName: .literal('terradart-leftover'),
        tags: .literal({'tagKeys/1': 'tagValues/1'}),
      ),
    );
    add(
      GoogleTpuV2QueuedResource(
        localName: 'tpu_v2_queued_resource',
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleTpuV2Vm(
        localName: 'tpu_v2_vm',
        name: .literal('terradart-leftover'),
        runtimeVersion: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleVertexAiEndpointIamBinding(
        localName: 'vertex_ai_endpoint_iam_binding',
        endpoint: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiEndpointIamMember(
        localName: 'vertex_ai_endpoint_iam_member',
        endpoint: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiEndpointIamPolicy(
        localName: 'vertex_ai_endpoint_iam_policy',
        endpoint: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeatureGroupIamBinding(
        localName: 'vertex_ai_feature_group_iam_binding',
        featureGroup: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureGroupIamMember(
        localName: 'vertex_ai_feature_group_iam_member',
        featureGroup: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureGroupIamPolicy(
        localName: 'vertex_ai_feature_group_iam_policy',
        featureGroup: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreFeatureviewIamBinding(
        localName: 'vertex_ai_feature_online_store_featureview_iam_binding',
        featureOnlineStore: .literal('terradart-leftover'),
        featureView: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreFeatureviewIamMember(
        localName: 'vertex_ai_feature_online_store_featureview_iam_member',
        featureOnlineStore: .literal('terradart-leftover'),
        featureView: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreFeatureviewIamPolicy(
        localName: 'vertex_ai_feature_online_store_featureview_iam_policy',
        featureOnlineStore: .literal('terradart-leftover'),
        featureView: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreIamBinding(
        localName: 'vertex_ai_feature_online_store_iam_binding',
        featureOnlineStore: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreIamMember(
        localName: 'vertex_ai_feature_online_store_iam_member',
        featureOnlineStore: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreIamPolicy(
        localName: 'vertex_ai_feature_online_store_iam_policy',
        featureOnlineStore: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreEntitytypeIamBinding(
        localName: 'vertex_ai_featurestore_entitytype_iam_binding',
        entitytype: .literal('terradart-leftover'),
        featurestore: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreEntitytypeIamMember(
        localName: 'vertex_ai_featurestore_entitytype_iam_member',
        entitytype: .literal('terradart-leftover'),
        featurestore: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreEntitytypeIamPolicy(
        localName: 'vertex_ai_featurestore_entitytype_iam_policy',
        entitytype: .literal('terradart-leftover'),
        featurestore: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreIamBinding(
        localName: 'vertex_ai_featurestore_iam_binding',
        featurestore: .literal('terradart-leftover'),
        members: .literal(['user:terradart-leftover@example.com']),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreIamMember(
        localName: 'vertex_ai_featurestore_iam_member',
        featurestore: .literal('terradart-leftover'),
        member: .literal('user:terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreIamPolicy(
        localName: 'vertex_ai_featurestore_iam_policy',
        featurestore: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(GoogleVertexAiMetadataStore(localName: 'vertex_ai_metadata_store'));
    add(
      GoogleVertexAiModelGardenEnableModel(
        localName: 'vertex_ai_model_garden_enable_model',
        publisherModelName: .literal('terradart-leftover'),
      ),
    );
  }
}
