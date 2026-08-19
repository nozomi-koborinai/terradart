/// Beta leftover quickstart — remaining beta-only curated factories.
///
/// Skip-listed; synth + `terraform validate` only. Do not apply. The
/// apply-smoke harness is GA-only and beta apply policy is not designed.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google_beta/provider.dart';
import 'package:terradart_google_beta/active_directory.dart';
import 'package:terradart_google_beta/api_gateway.dart';
import 'package:terradart_google_beta/artifact_registry.dart';
import 'package:terradart_google_beta/biglake.dart';
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
import 'package:terradart_google_beta/observability.dart';
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
    add(
      GoogleActiveDirectoryPeering(
        localName: 'active_directory_peering',
        authorizedNetwork: TfArg.literal('terradart-leftover'),
        domainResource: TfArg.literal('terradart-leftover'),
        peeringId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleApiGatewayApi(
        localName: 'api_gateway_api',
        apiId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleApiGatewayApiConfig(
        localName: 'api_gateway_api_config',
        api: TfArg.literal('terradart-leftover'),
        openapiDocuments: TfArg.literal([
          {
            'document': {
              'contents': 'b3BlbmFwaTogIjMuMC4wIg==',
              'path': 'openapi.yaml',
            },
          },
        ]),
      ),
    );
    add(
      GoogleApiGatewayApiConfigIamBinding(
        localName: 'api_gateway_api_config_iam_binding',
        api: TfArg.literal('terradart-leftover'),
        apiConfig: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiConfigIamMember(
        localName: 'api_gateway_api_config_iam_member',
        api: TfArg.literal('terradart-leftover'),
        apiConfig: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiConfigIamPolicy(
        localName: 'api_gateway_api_config_iam_policy',
        api: TfArg.literal('terradart-leftover'),
        apiConfig: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleApiGatewayApiIamBinding(
        localName: 'api_gateway_api_iam_binding',
        api: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiIamMember(
        localName: 'api_gateway_api_iam_member',
        api: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayApiIamPolicy(
        localName: 'api_gateway_api_iam_policy',
        api: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleApiGatewayGateway(
        localName: 'api_gateway_gateway',
        apiConfig: TfArg.literal('terradart-leftover'),
        gatewayId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleApiGatewayGatewayIamBinding(
        localName: 'api_gateway_gateway_iam_binding',
        gateway: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayGatewayIamMember(
        localName: 'api_gateway_gateway_iam_member',
        gateway: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleApiGatewayGatewayIamPolicy(
        localName: 'api_gateway_gateway_iam_policy',
        gateway: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleArtifactRegistryVpcscConfig(
        localName: 'artifact_registry_vpcsc_config',
      ),
    );
    add(
      GoogleBiglakeHiveCatalog(
        localName: 'biglake_hive_catalog',
        locationUri: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
        primaryLocation: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalogIamBinding(
        localName: 'biglake_hive_catalog_iam_binding',
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalogIamMember(
        localName: 'biglake_hive_catalog_iam_member',
        member: TfArg.literal('user:terradart-leftover@example.com'),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveCatalogIamPolicy(
        localName: 'biglake_hive_catalog_iam_policy',
        name: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabase(
        localName: 'biglake_hive_database',
        catalog: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabaseIamBinding(
        localName: 'biglake_hive_database_iam_binding',
        catalog: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabaseIamMember(
        localName: 'biglake_hive_database_iam_member',
        catalog: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveDatabaseIamPolicy(
        localName: 'biglake_hive_database_iam_policy',
        catalog: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleBiglakeHiveTable(
        localName: 'biglake_hive_table',
        catalog: TfArg.literal('terradart-leftover'),
        database: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
        storageDescriptor: TfArg.literal({
          'location_uri': 'gs://terradart-leftover',
          'columns': [
            {'name': 'id', 'type': 'string'},
          ],
        }),
      ),
    );
    add(
      GoogleBiglakeHiveTableIamBinding(
        localName: 'biglake_hive_table_iam_binding',
        catalog: TfArg.literal('terradart-leftover'),
        database: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveTableIamMember(
        localName: 'biglake_hive_table_iam_member',
        catalog: TfArg.literal('terradart-leftover'),
        database: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleBiglakeHiveTableIamPolicy(
        localName: 'biglake_hive_table_iam_policy',
        catalog: TfArg.literal('terradart-leftover'),
        database: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleBigqueryAnalyticsHubDataExchangeSubscription(
        localName: 'bigquery_analytics_hub_data_exchange_subscription',
        dataExchangeId: TfArg.literal('terradart-leftover'),
        dataExchangeLocation: TfArg.literal('terradart-leftover'),
        dataExchangeProject: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('terradart-leftover'),
        subscriptionId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleCesEvaluation(
        localName: 'ces_evaluation',
        app: TfArg.literal('terradart-leftover'),
        displayName: TfArg.literal('terradart-leftover'),
        evaluationId: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleCesSecuritySettings(
        localName: 'ces_security_settings',
        location: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleChronicleSoarDomain(
        localName: 'chronicle_soar_domain',
        displayName: TfArg.literal('terradart-leftover'),
        environmentsJson: TfArg.literal('terradart-leftover'),
        instance: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeBackendBucketIamBinding(
        localName: 'compute_backend_bucket_iam_binding',
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendBucketIamMember(
        localName: 'compute_backend_bucket_iam_member',
        member: TfArg.literal('user:terradart-leftover@example.com'),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendBucketIamPolicy(
        localName: 'compute_backend_bucket_iam_policy',
        name: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeBackendServiceIamBinding(
        localName: 'compute_backend_service_iam_binding',
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendServiceIamMember(
        localName: 'compute_backend_service_iam_member',
        member: TfArg.literal('user:terradart-leftover@example.com'),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeBackendServiceIamPolicy(
        localName: 'compute_backend_service_iam_policy',
        name: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeFutureReservation(
        localName: 'compute_future_reservation',
        name: TfArg.literal('terradart-leftover'),
        timeWindow: TfArg.literal({
          'start_time': '2026-01-01T00:00:00Z',
          'end_time': '2026-01-02T00:00:00Z',
        }),
      ),
    );
    add(
      GoogleComputeInstanceFromMachineImage(
        localName: 'compute_instance_from_machine_image',
        name: TfArg.literal('terradart-leftover'),
        sourceMachineImage: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeMachineImage(
        localName: 'compute_machine_image',
        name: TfArg.literal('terradart-leftover'),
        sourceInstance: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeMachineImageIamBinding(
        localName: 'compute_machine_image_iam_binding',
        machineImage: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeMachineImageIamMember(
        localName: 'compute_machine_image_iam_member',
        machineImage: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeMachineImageIamPolicy(
        localName: 'compute_machine_image_iam_policy',
        machineImage: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeNetworkEdgeSecurityService(
        localName: 'compute_network_edge_security_service',
        name: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeNetworkFirewallPolicyPacketMirroringRule(
        localName: 'compute_network_firewall_policy_packet_mirroring_rule',
        action: TfArg.literal('mirror'),
        direction: TfArg.literal('INGRESS'),
        firewallPolicy: TfArg.literal('terradart-leftover'),
        priority: TfArg.literal(1000),
        match: TfArg.literal({
          'src_ip_ranges': ['0.0.0.0/0'],
          'layer4_configs': [
            {'ip_protocol': 'tcp'},
          ],
        }),
      ),
    );
    add(
      GoogleComputeRegionBackendBucket(
        localName: 'compute_region_backend_bucket',
        bucketName: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
        region: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeRegionBackendBucketIamBinding(
        localName: 'compute_region_backend_bucket_iam_binding',
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendBucketIamMember(
        localName: 'compute_region_backend_bucket_iam_member',
        member: TfArg.literal('user:terradart-leftover@example.com'),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendBucketIamPolicy(
        localName: 'compute_region_backend_bucket_iam_policy',
        name: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeRegionBackendServiceIamBinding(
        localName: 'compute_region_backend_service_iam_binding',
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendServiceIamMember(
        localName: 'compute_region_backend_service_iam_member',
        member: TfArg.literal('user:terradart-leftover@example.com'),
        name: TfArg.literal('terradart-leftover'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleComputeRegionBackendServiceIamPolicy(
        localName: 'compute_region_backend_service_iam_policy',
        name: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleComputeRegionNetworkPolicy(
        localName: 'compute_region_network_policy',
        name: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleComputeRegionNetworkPolicyTrafficClassificationRule(
        localName: 'compute_region_network_policy_traffic_classification_rule',
        networkPolicy: TfArg.literal('terradart-leftover'),
        priority: TfArg.literal(1000),
        match: TfArg.literal({
          'src_ip_ranges': ['0.0.0.0/0'],
          'layer4_configs': [
            {'ip_protocol': 'tcp'},
          ],
        }),
      ),
    );
    add(
      GoogleGkeHubMembershipRbacRoleBinding(
        localName: 'gke_hub_membership_rbac_role_binding',
        location: TfArg.literal('terradart-leftover'),
        membershipId: TfArg.literal('terradart-leftover'),
        membershipRbacRoleBindingId: TfArg.literal('terradart-leftover'),
        user: TfArg.literal('terradart-leftover'),
        role: TfArg.literal({'predefined_role': 'ADMIN'}),
      ),
    );
    add(
      GoogleDataflowFlexTemplateJob(
        localName: 'dataflow_flex_template_job',
        containerSpecGcsPath: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataformConfig(
        localName: 'dataform_config',
        region: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataformRepositoryReleaseConfig(
        localName: 'dataform_repository_release_config',
        gitCommitish: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataformRepositoryWorkflowConfig(
        localName: 'dataform_repository_workflow_config',
        name: TfArg.literal('terradart-leftover'),
        releaseConfig: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleDataplexDataAsset(
        localName: 'dataplex_data_asset',
        dataAssetId: TfArg.literal('terradart-leftover'),
        dataProductId: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('terradart-leftover'),
        resource: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseAiLogicConfig(
        localName: 'firebase_ai_logic_config',
      ),
    );
    add(
      GoogleFirebaseAiLogicPromptTemplate(
        localName: 'firebase_ai_logic_prompt_template',
        location: TfArg.literal('terradart-leftover'),
        templateId: TfArg.literal('terradart-leftover'),
        templateString: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseAiLogicPromptTemplateLock(
        localName: 'firebase_ai_logic_prompt_template_lock',
        location: TfArg.literal('terradart-leftover'),
        templateId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseAndroidApp(
        localName: 'firebase_android_app',
        displayName: TfArg.literal('terradart-leftover'),
        packageName: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseAppleApp(
        localName: 'firebase_apple_app',
        bundleId: TfArg.literal('terradart-leftover'),
        displayName: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseDatabaseInstance(
        localName: 'firebase_database_instance',
        instanceId: TfArg.literal('terradart-leftover'),
        region: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseExtensionsInstance(
        localName: 'firebase_extensions_instance',
        instanceId: TfArg.literal('terradart-leftover'),
        config: TfArg.literal({
          'extension_ref': 'firebase/firestore-send-email',
          'params': {'LOCATION': 'us-central1'},
        }),
      ),
    );
    add(
      GoogleFirebaseHostingChannel(
        localName: 'firebase_hosting_channel',
        channelId: TfArg.literal('terradart-leftover'),
        siteId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseHostingCustomDomain(
        localName: 'firebase_hosting_custom_domain',
        customDomain: TfArg.literal('terradart-leftover'),
        siteId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseHostingRelease(
        localName: 'firebase_hosting_release',
        siteId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseHostingSite(
        localName: 'firebase_hosting_site',
      ),
    );
    add(
      GoogleFirebaseHostingVersion(
        localName: 'firebase_hosting_version',
        siteId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseProject(
        localName: 'firebase_project',
      ),
    );
    add(
      GoogleFirebaseStorageBucket(
        localName: 'firebase_storage_bucket',
      ),
    );
    add(
      GoogleFirebaseStorageDefaultBucket(
        localName: 'firebase_storage_default_bucket',
        location: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFirebaseWebApp(
        localName: 'firebase_web_app',
        displayName: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleFolderServiceIdentity(
        localName: 'folder_service_identity',
        folder: TfArg.literal('terradart-leftover'),
        service: TfArg.literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleCloudIdentityPolicy(
        localName: 'cloud_identity_policy',
        customer: TfArg.literal('terradart-leftover'),
        policyQuery: TfArg.literal({'org_unit': 'terradart-leftover'}),
        setting: TfArg.literal({
          'type': 'settings/terradart-leftover',
          'value_json': '{}',
        }),
      ),
    );
    add(
      GoogleKmsFolderKajPolicyConfig(
        localName: 'kms_folder_kaj_policy_config',
        folder: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleKmsOrganizationKajPolicyConfig(
        localName: 'kms_organization_kaj_policy_config',
        organization: TfArg.literal('terradart-leftover'),
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
        action: TfArg.literal('ALLOW'),
        name: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleNetworkSecuritySacAttachment(
        localName: 'network_security_sac_attachment',
        location: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
        nccGateway: TfArg.literal('terradart-leftover'),
        sacRealm: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleNetworkSecuritySacRealm(
        localName: 'network_security_sac_realm',
        name: TfArg.literal('terradart-leftover'),
        securityService: TfArg.literal('SECURITY_SERVICE_UNSPECIFIED'),
      ),
    );
    add(
      GoogleNetworkServicesServiceLbPolicies(
        localName: 'network_services_service_lb_policies',
        location: TfArg.literal('terradart-leftover'),
        name: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleObservabilityFolderSettings(
        localName: 'observability_folder_settings',
        folder: TfArg.literal('terradart-leftover'),
        location: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleObservabilityOrganizationSettings(
        localName: 'observability_organization_settings',
        location: TfArg.literal('terradart-leftover'),
        organization: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleObservabilityProjectSettings(
        localName: 'observability_project_settings',
        location: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleOrganizationServiceIdentity(
        localName: 'organization_service_identity',
        organization: TfArg.literal('terradart-leftover'),
        service: TfArg.literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleOsConfigGuestPolicies(
        localName: 'os_config_guest_policies',
        guestPolicyId: TfArg.literal('terradart-leftover'),
        assignment: TfArg.literal({
          'zones': ['us-central1-a'],
        }),
      ),
    );
    add(
      GooglePrivilegedAccessManagerSettings(
        localName: 'privileged_access_manager_settings',
        location: TfArg.literal('terradart-leftover'),
        parent: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleProjectServiceIdentity(
        localName: 'project_service_identity',
        service: TfArg.literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleRuntimeconfigConfig(
        localName: 'runtimeconfig_config',
        name: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleRuntimeconfigConfigIamBinding(
        localName: 'runtimeconfig_config_iam_binding',
        config: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleRuntimeconfigConfigIamMember(
        localName: 'runtimeconfig_config_iam_member',
        config: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleRuntimeconfigConfigIamPolicy(
        localName: 'runtimeconfig_config_iam_policy',
        config: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleRuntimeconfigVariable(
        localName: 'runtimeconfig_variable',
        name: TfArg.literal('terradart-leftover'),
        parent: TfArg.literal('terradart-leftover'),
        text: TfArg.variable('runtimeconfig_variable_text'),
      ),
    );
    add(
      GoogleSaasRuntimeRelease(
        localName: 'saas_runtime_release',
        location: TfArg.literal('terradart-leftover'),
        releaseId: TfArg.literal('terradart-leftover'),
        unitKind: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeRolloutKind(
        localName: 'saas_runtime_rollout_kind',
        location: TfArg.literal('terradart-leftover'),
        rolloutKindId: TfArg.literal('terradart-leftover'),
        unitKind: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeSaas(
        localName: 'saas_runtime_saas',
        location: TfArg.literal('terradart-leftover'),
        saasId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeTenant(
        localName: 'saas_runtime_tenant',
        location: TfArg.literal('terradart-leftover'),
        saas: TfArg.literal('terradart-leftover'),
        tenantId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeUnit(
        localName: 'saas_runtime_unit',
        location: TfArg.literal('terradart-leftover'),
        unitId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeUnitKind(
        localName: 'saas_runtime_unit_kind',
        location: TfArg.literal('terradart-leftover'),
        saas: TfArg.literal('terradart-leftover'),
        unitKindId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSaasRuntimeUnitOperation(
        localName: 'saas_runtime_unit_operation',
        location: TfArg.literal('terradart-leftover'),
        unit: TfArg.literal('terradart-leftover'),
        unitOperationId: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleSecurityScannerScanConfig(
        localName: 'security_scanner_scan_config',
        displayName: TfArg.literal('terradart-leftover'),
        startingUrls: TfArg.literal(['terradart-leftover']),
      ),
    );
    add(
      GoogleServiceUsageConsumerQuotaOverride(
        localName: 'service_usage_consumer_quota_override',
        limit: TfArg.literal('terradart-leftover'),
        metric: TfArg.literal('terradart-leftover'),
        overrideValue: TfArg.literal('terradart-leftover'),
        service: TfArg.literal('pubsub.googleapis.com'),
      ),
    );
    add(
      GoogleTagsTagBindingCollection(
        localName: 'tags_tag_binding_collection',
        fullResourceName: TfArg.literal('terradart-leftover'),
        tags: TfArg.literal({'tagKeys/1': 'tagValues/1'}),
      ),
    );
    add(
      GoogleTpuV2QueuedResource(
        localName: 'tpu_v2_queued_resource',
        name: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleTpuV2Vm(
        localName: 'tpu_v2_vm',
        name: TfArg.literal('terradart-leftover'),
        runtimeVersion: TfArg.literal('terradart-leftover'),
      ),
    );
    add(
      GoogleVertexAiEndpointIamBinding(
        localName: 'vertex_ai_endpoint_iam_binding',
        endpoint: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiEndpointIamMember(
        localName: 'vertex_ai_endpoint_iam_member',
        endpoint: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiEndpointIamPolicy(
        localName: 'vertex_ai_endpoint_iam_policy',
        endpoint: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeatureGroupIamBinding(
        localName: 'vertex_ai_feature_group_iam_binding',
        featureGroup: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureGroupIamMember(
        localName: 'vertex_ai_feature_group_iam_member',
        featureGroup: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureGroupIamPolicy(
        localName: 'vertex_ai_feature_group_iam_policy',
        featureGroup: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreFeatureviewIamBinding(
        localName: 'vertex_ai_feature_online_store_featureview_iam_binding',
        featureOnlineStore: TfArg.literal('terradart-leftover'),
        featureView: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreFeatureviewIamMember(
        localName: 'vertex_ai_feature_online_store_featureview_iam_member',
        featureOnlineStore: TfArg.literal('terradart-leftover'),
        featureView: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreFeatureviewIamPolicy(
        localName: 'vertex_ai_feature_online_store_featureview_iam_policy',
        featureOnlineStore: TfArg.literal('terradart-leftover'),
        featureView: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreIamBinding(
        localName: 'vertex_ai_feature_online_store_iam_binding',
        featureOnlineStore: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreIamMember(
        localName: 'vertex_ai_feature_online_store_iam_member',
        featureOnlineStore: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeatureOnlineStoreIamPolicy(
        localName: 'vertex_ai_feature_online_store_iam_policy',
        featureOnlineStore: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreEntitytypeIamBinding(
        localName: 'vertex_ai_featurestore_entitytype_iam_binding',
        entitytype: TfArg.literal('terradart-leftover'),
        featurestore: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreEntitytypeIamMember(
        localName: 'vertex_ai_featurestore_entitytype_iam_member',
        entitytype: TfArg.literal('terradart-leftover'),
        featurestore: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreEntitytypeIamPolicy(
        localName: 'vertex_ai_featurestore_entitytype_iam_policy',
        entitytype: TfArg.literal('terradart-leftover'),
        featurestore: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreIamBinding(
        localName: 'vertex_ai_featurestore_iam_binding',
        featurestore: TfArg.literal('terradart-leftover'),
        members: TfArg.literal(['user:terradart-leftover@example.com']),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreIamMember(
        localName: 'vertex_ai_featurestore_iam_member',
        featurestore: TfArg.literal('terradart-leftover'),
        member: TfArg.literal('user:terradart-leftover@example.com'),
        role: TfArg.literal('roles/viewer'),
      ),
    );
    add(
      GoogleVertexAiFeaturestoreIamPolicy(
        localName: 'vertex_ai_featurestore_iam_policy',
        featurestore: TfArg.literal('terradart-leftover'),
        policyData: TfArg.literal('{"bindings":[]}'),
      ),
    );
    add(
      GoogleVertexAiMetadataStore(
        localName: 'vertex_ai_metadata_store',
      ),
    );
    add(
      GoogleVertexAiModelGardenEnableModel(
        localName: 'vertex_ai_model_garden_enable_model',
        publisherModelName: TfArg.literal('terradart-leftover'),
      ),
    );
  }
}
