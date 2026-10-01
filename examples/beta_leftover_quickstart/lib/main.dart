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
        'active_directory_peering',
        authorizedNetwork: .literal('terradart-leftover'),
        domainResource: .literal('terradart-leftover'),
        peeringId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleApiGatewayApi(
        'api_gateway_api',
        apiId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleApiGatewayApiConfig(
        'api_gateway_api_config',
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
        'api_gateway_api_config_iam_binding',
        api: .literal('terradart-leftover'),
        apiConfig: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiConfigIamMember(
        'api_gateway_api_config_iam_member',
        api: .literal('terradart-leftover'),
        apiConfig: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiConfigIamPolicy(
        'api_gateway_api_config_iam_policy',
        api: .literal('terradart-leftover'),
        apiConfig: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleApiGatewayApiIamBinding(
        'api_gateway_api_iam_binding',
        api: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiIamMember(
        'api_gateway_api_iam_member',
        api: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiIamPolicy(
        'api_gateway_api_iam_policy',
        api: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleApiGatewayGateway(
        'api_gateway_gateway',
        apiConfig: .literal('terradart-leftover'),
        gatewayId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleApiGatewayGatewayIamBinding(
        'api_gateway_gateway_iam_binding',
        gateway: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayGatewayIamMember(
        'api_gateway_gateway_iam_member',
        gateway: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayGatewayIamPolicy(
        'api_gateway_gateway_iam_policy',
        gateway: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(GoogleArtifactRegistryVpcscConfig('artifact_registry_vpcsc_config'));
    add(
      GoogleBigqueryAnalyticsHubDataExchangeSubscription(
        'bigquery_analytics_hub_data_exchange_subscription',
        dataExchangeId: .literal('terradart-leftover'),
        dataExchangeLocation: .literal('terradart-leftover'),
        dataExchangeProject: .literal('terradart-leftover'),
        location: .literal('terradart-leftover'),
        subscriptionId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleCesEvaluation(
        'ces_evaluation',
        app: .literal('terradart-leftover'),
        displayName: .literal('terradart-leftover'),
        evaluationId: .literal('terradart-leftover'),
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleCesSecuritySettings(
        'ces_security_settings',
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleChronicleSoarDomain(
        'chronicle_soar_domain',
        displayName: .literal('terradart-leftover'),
        environmentsJson: .literal('terradart-leftover'),
        instance: .literal('terradart-leftover'),
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeBackendBucketIamBinding(
        'compute_backend_bucket_iam_binding',
        members: .literal([.user('terradart-leftover@example.com')]),
        backendBucket: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendBucketIamMember(
        'compute_backend_bucket_iam_member',
        member: .user('terradart-leftover@example.com'),
        backendBucket: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendBucketIamPolicy(
        'compute_backend_bucket_iam_policy',
        backendBucket: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeBackendServiceIamBinding(
        'compute_backend_service_iam_binding',
        members: .literal([.user('terradart-leftover@example.com')]),
        backendService: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendServiceIamMember(
        'compute_backend_service_iam_member',
        member: .user('terradart-leftover@example.com'),
        backendService: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendServiceIamPolicy(
        'compute_backend_service_iam_policy',
        backendService: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeFutureReservation(
        'compute_future_reservation',
        name: .literal('terradart-leftover'),
        timeWindow: ComputeFutureReservationTimeWindow(
          startTime: .literal('2026-01-01T00:00:00Z'),
          endTime: .literal('2026-01-02T00:00:00Z'),
        ),
      ),
    );
    add(
      GoogleComputeInstanceFromMachineImage(
        'compute_instance_from_machine_image',
        name: .literal('terradart-leftover'),
        sourceMachineImage: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeMachineImage(
        'compute_machine_image',
        name: .literal('terradart-leftover'),
        sourceInstance: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeMachineImageIamBinding(
        'compute_machine_image_iam_binding',
        machineImage: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeMachineImageIamMember(
        'compute_machine_image_iam_member',
        machineImage: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeMachineImageIamPolicy(
        'compute_machine_image_iam_policy',
        machineImage: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeNetworkFirewallPolicyPacketMirroringRule(
        'compute_network_firewall_policy_packet_mirroring_rule',
        action: .literal('mirror'),
        direction: .ingress,
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
        'compute_region_backend_bucket',
        bucketName: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        region: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeRegionBackendBucketIamBinding(
        'compute_region_backend_bucket_iam_binding',
        members: .literal([.user('terradart-leftover@example.com')]),
        backendBucket: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendBucketIamMember(
        'compute_region_backend_bucket_iam_member',
        member: .user('terradart-leftover@example.com'),
        backendBucket: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendBucketIamPolicy(
        'compute_region_backend_bucket_iam_policy',
        backendBucket: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeRegionBackendServiceIamBinding(
        'compute_region_backend_service_iam_binding',
        members: .literal([.user('terradart-leftover@example.com')]),
        backendService: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendServiceIamMember(
        'compute_region_backend_service_iam_member',
        member: .user('terradart-leftover@example.com'),
        backendService: .literal('terradart-leftover'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendServiceIamPolicy(
        'compute_region_backend_service_iam_policy',
        backendService: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeRegionNetworkPolicy(
        'compute_region_network_policy',
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeRegionNetworkPolicyTrafficClassificationRule(
        'compute_region_network_policy_traffic_classification_rule',
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
        'gke_hub_membership_rbac_role_binding',
        location: .literal('terradart-leftover'),
        membershipId: .literal('terradart-leftover'),
        membershipRbacRoleBindingId: .literal('terradart-leftover'),
        user: .literal('terradart-leftover'),
        role: GkeHubMembershipRbacRoleBindingRole(predefinedRole: .admin),
      ),
    );
    add(
      GoogleDataflowFlexTemplateJob(
        'dataflow_flex_template_job',
        containerSpecGcsPath: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataformConfig(
        'dataform_config',
        region: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataformRepositoryReleaseConfig(
        'dataform_repository_release_config',
        gitCommitish: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataformRepositoryWorkflowConfig(
        'dataform_repository_workflow_config',
        name: .literal('terradart-leftover'),
        releaseConfig: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataplexDataAsset(
        'dataplex_data_asset',
        dataAssetId: .literal('terradart-leftover'),
        dataProductId: .literal('terradart-leftover'),
        location: .literal('terradart-leftover'),
        resource: .literal('terradart-leftover'),
      ),
    );
    add(GoogleFirebaseAiLogicConfig('firebase_ai_logic_config'));
    add(
      GoogleFirebaseAiLogicPromptTemplate(
        'firebase_ai_logic_prompt_template',
        location: .literal('terradart-leftover'),
        templateId: .literal('terradart-leftover'),
        templateString: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseAiLogicPromptTemplateLock(
        'firebase_ai_logic_prompt_template_lock',
        location: .literal('terradart-leftover'),
        templateId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseAndroidApp(
        'firebase_android_app',
        displayName: .literal('terradart-leftover'),
        packageName: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseAppleApp(
        'firebase_apple_app',
        bundleId: .literal('terradart-leftover'),
        displayName: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseDatabaseInstance(
        'firebase_database_instance',
        instanceId: .literal('terradart-leftover'),
        region: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseExtensionsInstance(
        'firebase_extensions_instance',
        instanceId: .literal('terradart-leftover'),
        config: FirebaseExtensionsInstanceConfig(
          extensionRef: .literal('firebase/firestore-send-email'),
          params: .literal({'LOCATION': 'us-central1'}),
        ),
      ),
    );
    add(
      GoogleFirebaseHostingChannel(
        'firebase_hosting_channel',
        channelId: .literal('terradart-leftover'),
        siteId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseHostingCustomDomain(
        'firebase_hosting_custom_domain',
        customDomain: .literal('terradart-leftover'),
        siteId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseHostingRelease(
        'firebase_hosting_release',
        siteId: .literal('terradart-leftover'),
      ),
    );
    add(GoogleFirebaseHostingSite('firebase_hosting_site'));
    add(
      GoogleFirebaseHostingVersion(
        'firebase_hosting_version',
        siteId: .literal('terradart-leftover'),
      ),
    );
    add(GoogleFirebaseProject('firebase_project'));
    add(GoogleFirebaseStorageBucket('firebase_storage_bucket'));
    add(
      GoogleFirebaseStorageDefaultBucket(
        'firebase_storage_default_bucket',
        location: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseWebApp(
        'firebase_web_app',
        displayName: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFolderServiceIdentity(
        'folder_service_identity',
        folder: .literal('terradart-leftover'),
        service: .literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleCloudIdentityPolicy(
        'cloud_identity_policy',
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
        'kms_folder_kaj_policy_config',
        folder: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleKmsOrganizationKajPolicyConfig(
        'kms_organization_kaj_policy_config',
        organization: .literal('terradart-leftover'),
      ),
    );
    add(GoogleKmsProjectKajPolicyConfig('kms_project_kaj_policy_config'));
    add(
      GoogleNetworkSecurityAuthorizationPolicy(
        'network_security_authorization_policy',
        action: .allow,
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleNetworkSecuritySacAttachment(
        'network_security_sac_attachment',
        location: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
        nccGateway: .literal('terradart-leftover'),
        sacRealm: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleNetworkSecuritySacRealm(
        'network_security_sac_realm',
        name: .literal('terradart-leftover'),
        securityService: .securityServiceUnspecified,
      ),
    );
    add(
      GoogleNetworkServicesServiceLbPolicies(
        'network_services_service_lb_policies',
        location: .literal('terradart-leftover'),
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleOrganizationServiceIdentity(
        'organization_service_identity',
        organization: .literal('terradart-leftover'),
        service: .literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleOsConfigGuestPolicies(
        'os_config_guest_policies',
        guestPolicyId: .literal('terradart-leftover'),
        assignment: OsConfigGuestPoliciesAssignment(
          zones: .literal(['us-central1-a']),
        ),
      ),
    );
    add(
      GooglePrivilegedAccessManagerSettings(
        'privileged_access_manager_settings',
        location: .literal('terradart-leftover'),
        parent: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleProjectServiceIdentity(
        'project_service_identity',
        service: .literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleRuntimeconfigConfig(
        'runtimeconfig_config',
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleRuntimeconfigConfigIamBinding(
        'runtimeconfig_config_iam_binding',
        config: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleRuntimeconfigConfigIamMember(
        'runtimeconfig_config_iam_member',
        config: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleRuntimeconfigConfigIamPolicy(
        'runtimeconfig_config_iam_policy',
        config: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleRuntimeconfigVariable(
        'runtimeconfig_variable',
        name: .literal('terradart-leftover'),
        parent: .literal('terradart-leftover'),
        text: TfArg.variable('runtimeconfig_variable_text'),
      ),
    );
    add(
      GoogleSaasRuntimeRelease(
        'saas_runtime_release',
        location: .literal('terradart-leftover'),
        releaseId: .literal('terradart-leftover'),
        unitKind: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeRolloutKind(
        'saas_runtime_rollout_kind',
        location: .literal('terradart-leftover'),
        rolloutKindId: .literal('terradart-leftover'),
        unitKind: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeSaas(
        'saas_runtime_saas',
        location: .literal('terradart-leftover'),
        saasId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeTenant(
        'saas_runtime_tenant',
        location: .literal('terradart-leftover'),
        saas: .literal('terradart-leftover'),
        tenantId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeUnit(
        'saas_runtime_unit',
        location: .literal('terradart-leftover'),
        unitId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeUnitKind(
        'saas_runtime_unit_kind',
        location: .literal('terradart-leftover'),
        saas: .literal('terradart-leftover'),
        unitKindId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeUnitOperation(
        'saas_runtime_unit_operation',
        location: .literal('terradart-leftover'),
        unit: .literal('terradart-leftover'),
        unitOperationId: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSecurityScannerScanConfig(
        'security_scanner_scan_config',
        displayName: .literal('terradart-leftover'),
        startingUrls: .literal(['terradart-leftover']),
      ),
    );
    add(
      GoogleServiceUsageConsumerQuotaOverride(
        'service_usage_consumer_quota_override',
        limit: .literal('terradart-leftover'),
        metric: .literal('terradart-leftover'),
        overrideValue: .literal('terradart-leftover'),
        service: .literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleTagsTagBindingCollection(
        'tags_tag_binding_collection',
        fullResourceName: .literal('terradart-leftover'),
        tags: .literal({'tagKeys/1': 'tagValues/1'}),
      ),
    );
    add(
      GoogleTpuV2QueuedResource(
        'tpu_v2_queued_resource',
        name: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleTpuV2Vm(
        'tpu_v2_vm',
        name: .literal('terradart-leftover'),
        runtimeVersion: .literal('terradart-leftover'),
      ),
    );
    add(
      GoogleVertexAiEndpointIamBinding(
        'vertex_ai_endpoint_iam_binding',
        endpoint: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiEndpointIamMember(
        'vertex_ai_endpoint_iam_member',
        endpoint: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiEndpointIamPolicy(
        'vertex_ai_endpoint_iam_policy',
        endpoint: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeatureGroupIamBinding(
        'vertex_ai_feature_group_iam_binding',
        featureGroup: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureGroupIamMember(
        'vertex_ai_feature_group_iam_member',
        featureGroup: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureGroupIamPolicy(
        'vertex_ai_feature_group_iam_policy',
        featureGroup: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreFeatureviewIamBinding(
        'vertex_ai_feature_online_store_featureview_iam_binding',
        featureOnlineStore: .literal('terradart-leftover'),
        featureView: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreFeatureviewIamMember(
        'vertex_ai_feature_online_store_featureview_iam_member',
        featureOnlineStore: .literal('terradart-leftover'),
        featureView: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreFeatureviewIamPolicy(
        'vertex_ai_feature_online_store_featureview_iam_policy',
        featureOnlineStore: .literal('terradart-leftover'),
        featureView: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreIamBinding(
        'vertex_ai_feature_online_store_iam_binding',
        featureOnlineStore: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreIamMember(
        'vertex_ai_feature_online_store_iam_member',
        featureOnlineStore: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreIamPolicy(
        'vertex_ai_feature_online_store_iam_policy',
        featureOnlineStore: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreEntitytypeIamBinding(
        'vertex_ai_featurestore_entitytype_iam_binding',
        entitytype: .literal('terradart-leftover'),
        featurestore: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreEntitytypeIamMember(
        'vertex_ai_featurestore_entitytype_iam_member',
        entitytype: .literal('terradart-leftover'),
        featurestore: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreEntitytypeIamPolicy(
        'vertex_ai_featurestore_entitytype_iam_policy',
        entitytype: .literal('terradart-leftover'),
        featurestore: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreIamBinding(
        'vertex_ai_featurestore_iam_binding',
        featurestore: .literal('terradart-leftover'),
        members: .literal([.user('terradart-leftover@example.com')]),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreIamMember(
        'vertex_ai_featurestore_iam_member',
        featurestore: .literal('terradart-leftover'),
        member: .user('terradart-leftover@example.com'),
        role: .literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreIamPolicy(
        'vertex_ai_featurestore_iam_policy',
        featurestore: .literal('terradart-leftover'),
        policyData: .literal('{"bindings":[]}'),
      ),
    );
    add(GoogleVertexAiMetadataStore('vertex_ai_metadata_store'));
    add(
      GoogleVertexAiModelGardenEnableModel(
        'vertex_ai_model_garden_enable_model',
        publisherModelName: .literal('terradart-leftover'),
      ),
    );
  }
}
