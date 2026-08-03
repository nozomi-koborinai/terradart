// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Agent Identity / Agent Registry — auth providers (API key / OAuth)
/// plus registered agent/MCP services and auth-provider bindings.
/// Requires Agent Identity scaffolding; ships debt-only (not applyable
/// on terradart-validate).
library;

export 'src/agent/google_agent_identity_auth_provider.dart'
    show
        AgentIdentityAuthProviderAuthProviderTypeParams,
        AgentIdentityAuthProviderAuthProviderTypeParamsApiKey,
        AgentIdentityAuthProviderAuthProviderTypeParamsThreeLeggedOauth,
        AgentIdentityAuthProviderAuthProviderTypeParamsTwoLeggedOauth,
        GoogleAgentIdentityAuthProvider;
export 'src/agent/google_agent_registry_binding.dart'
    show
        AgentRegistryBindingAuthProviderBinding,
        AgentRegistryBindingSource,
        AgentRegistryBindingTarget,
        GoogleAgentRegistryBinding;
export 'src/agent/google_agent_registry_service.dart'
    show
        AgentRegistryServiceAgentSpec,
        AgentRegistryServiceAgentSpecType,
        AgentRegistryServiceEndpointSpec,
        AgentRegistryServiceEndpointSpecType,
        AgentRegistryServiceInterfaces,
        AgentRegistryServiceInterfacesProtocolBinding,
        AgentRegistryServiceMcpServerSpec,
        AgentRegistryServiceMcpServerSpecType,
        AgentRegistryServiceSpec,
        GoogleAgentRegistryService;
