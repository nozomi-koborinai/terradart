// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Identity-Aware Proxy (IAP) — settings, tunnel destination groups, plus
/// IAM for App Engine and external HTTPS load balancer backend services.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/google_iap_agent_registry_agent_iam_policy.dart'
    show DataGoogleIapAgentRegistryAgentIamPolicy;
export 'src/data/google_iap_agent_registry_endpoint_iam_policy.dart'
    show DataGoogleIapAgentRegistryEndpointIamPolicy;
export 'src/data/google_iap_agent_registry_iam_policy.dart'
    show DataGoogleIapAgentRegistryIamPolicy;
export 'src/data/google_iap_agent_registry_mcp_server_iam_policy.dart'
    show DataGoogleIapAgentRegistryMcpServerIamPolicy;
export 'src/data/google_iap_app_engine_service_iam_policy.dart'
    show DataGoogleIapAppEngineServiceIamPolicy;
export 'src/data/google_iap_app_engine_version_iam_policy.dart'
    show DataGoogleIapAppEngineVersionIamPolicy;
export 'src/data/google_iap_location_web_iam_policy.dart'
    show DataGoogleIapLocationWebIamPolicy;
export 'src/data/google_iap_tunnel_dest_group_iam_policy.dart'
    show DataGoogleIapTunnelDestGroupIamPolicy;
export 'src/data/google_iap_tunnel_iam_policy.dart'
    show DataGoogleIapTunnelIamPolicy;
export 'src/data/google_iap_tunnel_instance_iam_policy.dart'
    show DataGoogleIapTunnelInstanceIamPolicy;
export 'src/data/google_iap_web_backend_service_iam_policy.dart'
    show DataGoogleIapWebBackendServiceIamPolicy;
export 'src/data/google_iap_web_cloud_run_service_iam_policy.dart'
    show DataGoogleIapWebCloudRunServiceIamPolicy;
export 'src/data/google_iap_web_forwarding_rule_service_iam_policy.dart'
    show DataGoogleIapWebForwardingRuleServiceIamPolicy;
export 'src/data/google_iap_web_iam_policy.dart' show DataGoogleIapWebIamPolicy;
export 'src/data/google_iap_web_region_backend_service_iam_policy.dart'
    show DataGoogleIapWebRegionBackendServiceIamPolicy;
export 'src/data/google_iap_web_region_forwarding_rule_service_iam_policy.dart'
    show DataGoogleIapWebRegionForwardingRuleServiceIamPolicy;
export 'src/data/google_iap_web_type_app_engine_iam_policy.dart'
    show DataGoogleIapWebTypeAppEngineIamPolicy;
export 'src/data/google_iap_web_type_compute_iam_policy.dart'
    show DataGoogleIapWebTypeComputeIamPolicy;
export 'src/iap/google_iap_agent_registry_agent_iam_binding.dart'
    show
        GoogleIapAgentRegistryAgentIamBinding,
        IapAgentRegistryAgentIamBindingCondition;
export 'src/iap/google_iap_agent_registry_agent_iam_member.dart'
    show
        GoogleIapAgentRegistryAgentIamMember,
        IapAgentRegistryAgentIamMemberCondition;
export 'src/iap/google_iap_agent_registry_agent_iam_policy.dart'
    show GoogleIapAgentRegistryAgentIamPolicy;
export 'src/iap/google_iap_agent_registry_endpoint_iam_binding.dart'
    show
        GoogleIapAgentRegistryEndpointIamBinding,
        IapAgentRegistryEndpointIamBindingCondition;
export 'src/iap/google_iap_agent_registry_endpoint_iam_member.dart'
    show
        GoogleIapAgentRegistryEndpointIamMember,
        IapAgentRegistryEndpointIamMemberCondition;
export 'src/iap/google_iap_agent_registry_endpoint_iam_policy.dart'
    show GoogleIapAgentRegistryEndpointIamPolicy;
export 'src/iap/google_iap_agent_registry_iam_binding.dart'
    show GoogleIapAgentRegistryIamBinding, IapAgentRegistryIamBindingCondition;
export 'src/iap/google_iap_agent_registry_iam_member.dart'
    show GoogleIapAgentRegistryIamMember, IapAgentRegistryIamMemberCondition;
export 'src/iap/google_iap_agent_registry_iam_policy.dart'
    show GoogleIapAgentRegistryIamPolicy;
export 'src/iap/google_iap_agent_registry_mcp_server_iam_binding.dart'
    show
        GoogleIapAgentRegistryMcpServerIamBinding,
        IapAgentRegistryMcpServerIamBindingCondition;
export 'src/iap/google_iap_agent_registry_mcp_server_iam_member.dart'
    show
        GoogleIapAgentRegistryMcpServerIamMember,
        IapAgentRegistryMcpServerIamMemberCondition;
export 'src/iap/google_iap_agent_registry_mcp_server_iam_policy.dart'
    show GoogleIapAgentRegistryMcpServerIamPolicy;
export 'src/iap/google_iap_app_engine_service_iam_binding.dart'
    show
        GoogleIapAppEngineServiceIamBinding,
        IapAppEngineServiceIamBindingCondition;
export 'src/iap/google_iap_app_engine_service_iam_member.dart'
    show
        GoogleIapAppEngineServiceIamMember,
        IapAppEngineServiceIamMemberCondition;
export 'src/iap/google_iap_app_engine_service_iam_policy.dart'
    show GoogleIapAppEngineServiceIamPolicy;
export 'src/iap/google_iap_app_engine_version_iam_binding.dart'
    show
        GoogleIapAppEngineVersionIamBinding,
        IapAppEngineVersionIamBindingCondition;
export 'src/iap/google_iap_app_engine_version_iam_member.dart'
    show
        GoogleIapAppEngineVersionIamMember,
        IapAppEngineVersionIamMemberCondition;
export 'src/iap/google_iap_app_engine_version_iam_policy.dart'
    show GoogleIapAppEngineVersionIamPolicy;
export 'src/iap/google_iap_location_web_iam_binding.dart'
    show GoogleIapLocationWebIamBinding, IapLocationWebIamBindingCondition;
export 'src/iap/google_iap_location_web_iam_member.dart'
    show GoogleIapLocationWebIamMember, IapLocationWebIamMemberCondition;
export 'src/iap/google_iap_location_web_iam_policy.dart'
    show GoogleIapLocationWebIamPolicy;
export 'src/iap/google_iap_settings.dart'
    show
        GoogleIapSettings,
        IapSettingsAccessDeniedPageSettings,
        IapSettingsAccessSettings,
        IapSettingsAllowedDomainsSettings,
        IapSettingsApplicationSettings,
        IapSettingsAttributePropagationSettings,
        IapSettingsCorsSettings,
        IapSettingsCsmSettings,
        IapSettingsGcipSettings,
        IapSettingsMethod,
        IapSettingsOauth2,
        IapSettingsOauthSettings,
        IapSettingsOutputCredentials,
        IapSettingsPolicyType,
        IapSettingsReauthSettings,
        IapSettingsWorkforceIdentitySettings;
export 'src/iap/google_iap_tunnel_dest_group.dart'
    show GoogleIapTunnelDestGroup;
export 'src/iap/google_iap_tunnel_dest_group_iam_binding.dart'
    show
        GoogleIapTunnelDestGroupIamBinding,
        IapTunnelDestGroupIamBindingCondition;
export 'src/iap/google_iap_tunnel_dest_group_iam_member.dart'
    show
        GoogleIapTunnelDestGroupIamMember,
        IapTunnelDestGroupIamMemberCondition;
export 'src/iap/google_iap_tunnel_dest_group_iam_policy.dart'
    show GoogleIapTunnelDestGroupIamPolicy;
export 'src/iap/google_iap_tunnel_iam_binding.dart'
    show GoogleIapTunnelIamBinding, IapTunnelIamBindingCondition;
export 'src/iap/google_iap_tunnel_iam_member.dart'
    show GoogleIapTunnelIamMember, IapTunnelIamMemberCondition;
export 'src/iap/google_iap_tunnel_iam_policy.dart'
    show GoogleIapTunnelIamPolicy;
export 'src/iap/google_iap_tunnel_instance_iam_binding.dart'
    show
        GoogleIapTunnelInstanceIamBinding,
        IapTunnelInstanceIamBindingCondition;
export 'src/iap/google_iap_tunnel_instance_iam_member.dart'
    show GoogleIapTunnelInstanceIamMember, IapTunnelInstanceIamMemberCondition;
export 'src/iap/google_iap_tunnel_instance_iam_policy.dart'
    show GoogleIapTunnelInstanceIamPolicy;
export 'src/iap/google_iap_web_backend_service_iam_binding.dart'
    show
        GoogleIapWebBackendServiceIamBinding,
        IapWebBackendServiceIamBindingCondition;
export 'src/iap/google_iap_web_backend_service_iam_member.dart'
    show
        GoogleIapWebBackendServiceIamMember,
        IapWebBackendServiceIamMemberCondition;
export 'src/iap/google_iap_web_backend_service_iam_policy.dart'
    show GoogleIapWebBackendServiceIamPolicy;
export 'src/iap/google_iap_web_cloud_run_service_iam_binding.dart'
    show
        GoogleIapWebCloudRunServiceIamBinding,
        IapWebCloudRunServiceIamBindingCondition;
export 'src/iap/google_iap_web_cloud_run_service_iam_member.dart'
    show
        GoogleIapWebCloudRunServiceIamMember,
        IapWebCloudRunServiceIamMemberCondition;
export 'src/iap/google_iap_web_cloud_run_service_iam_policy.dart'
    show GoogleIapWebCloudRunServiceIamPolicy;
export 'src/iap/google_iap_web_forwarding_rule_service_iam_binding.dart'
    show
        GoogleIapWebForwardingRuleServiceIamBinding,
        IapWebForwardingRuleServiceIamBindingCondition;
export 'src/iap/google_iap_web_forwarding_rule_service_iam_member.dart'
    show
        GoogleIapWebForwardingRuleServiceIamMember,
        IapWebForwardingRuleServiceIamMemberCondition;
export 'src/iap/google_iap_web_forwarding_rule_service_iam_policy.dart'
    show GoogleIapWebForwardingRuleServiceIamPolicy;
export 'src/iap/google_iap_web_iam_binding.dart'
    show GoogleIapWebIamBinding, IapWebIamBindingCondition;
export 'src/iap/google_iap_web_iam_member.dart'
    show GoogleIapWebIamMember, IapWebIamMemberCondition;
export 'src/iap/google_iap_web_iam_policy.dart' show GoogleIapWebIamPolicy;
export 'src/iap/google_iap_web_region_backend_service_iam_binding.dart'
    show
        GoogleIapWebRegionBackendServiceIamBinding,
        IapWebRegionBackendServiceIamBindingCondition;
export 'src/iap/google_iap_web_region_backend_service_iam_member.dart'
    show
        GoogleIapWebRegionBackendServiceIamMember,
        IapWebRegionBackendServiceIamMemberCondition;
export 'src/iap/google_iap_web_region_backend_service_iam_policy.dart'
    show GoogleIapWebRegionBackendServiceIamPolicy;
export 'src/iap/google_iap_web_region_forwarding_rule_service_iam_binding.dart'
    show
        GoogleIapWebRegionForwardingRuleServiceIamBinding,
        IapWebRegionForwardingRuleServiceIamBindingCondition;
export 'src/iap/google_iap_web_region_forwarding_rule_service_iam_member.dart'
    show
        GoogleIapWebRegionForwardingRuleServiceIamMember,
        IapWebRegionForwardingRuleServiceIamMemberCondition;
export 'src/iap/google_iap_web_region_forwarding_rule_service_iam_policy.dart'
    show GoogleIapWebRegionForwardingRuleServiceIamPolicy;
export 'src/iap/google_iap_web_type_app_engine_iam_binding.dart'
    show
        GoogleIapWebTypeAppEngineIamBinding,
        IapWebTypeAppEngineIamBindingCondition;
export 'src/iap/google_iap_web_type_app_engine_iam_member.dart'
    show
        GoogleIapWebTypeAppEngineIamMember,
        IapWebTypeAppEngineIamMemberCondition;
export 'src/iap/google_iap_web_type_app_engine_iam_policy.dart'
    show GoogleIapWebTypeAppEngineIamPolicy;
export 'src/iap/google_iap_web_type_compute_iam_binding.dart'
    show
        GoogleIapWebTypeComputeIamBinding,
        IapWebTypeComputeIamBindingCondition;
export 'src/iap/google_iap_web_type_compute_iam_member.dart'
    show GoogleIapWebTypeComputeIamMember, IapWebTypeComputeIamMemberCondition;
export 'src/iap/google_iap_web_type_compute_iam_policy.dart'
    show GoogleIapWebTypeComputeIamPolicy;
