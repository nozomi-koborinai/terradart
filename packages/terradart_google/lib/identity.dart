// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Identity Platform — project Auth config, multi-tenant realms,
/// tenant OIDC IdP metadata, leftover default-supported / SAML IdP
/// configs, and Cloud Identity groups / memberships (apply-excluded).
/// `google_identity_platform_oauth_idp_config` stays uncurated as
/// the coverage-fixture sentinel.
library;

export 'src/identity/google_cloud_identity_group.dart'
    show
        CloudIdentityGroupGroupKey,
        CloudIdentityGroupInitialGroupConfig,
        GoogleCloudIdentityGroup;
export 'src/identity/google_cloud_identity_group_membership.dart'
    show
        CloudIdentityGroupMembershipPreferredMemberKey,
        CloudIdentityGroupMembershipRoles,
        CloudIdentityGroupMembershipRolesExpiryDetail,
        CloudIdentityGroupMembershipRolesName,
        GoogleCloudIdentityGroupMembership;
export 'src/identity/google_identity_platform_config.dart'
    show GoogleIdentityPlatformConfig;
export 'src/identity/google_identity_platform_default_supported_idp_config.dart'
    show GoogleIdentityPlatformDefaultSupportedIdpConfig;
export 'src/identity/google_identity_platform_inbound_saml_config.dart'
    show
        GoogleIdentityPlatformInboundSamlConfig,
        IdentityPlatformInboundSamlConfigIdpConfig,
        IdentityPlatformInboundSamlConfigIdpConfigIdpCertificates,
        IdentityPlatformInboundSamlConfigSpConfig;
export 'src/identity/google_identity_platform_tenant.dart'
    show GoogleIdentityPlatformTenant, IdentityPlatformTenantDeletionPolicy;
export 'src/identity/google_identity_platform_tenant_default_supported_idp_config.dart'
    show GoogleIdentityPlatformTenantDefaultSupportedIdpConfig;
export 'src/identity/google_identity_platform_tenant_inbound_saml_config.dart'
    show
        GoogleIdentityPlatformTenantInboundSamlConfig,
        IdentityPlatformTenantInboundSamlConfigIdpConfig,
        IdentityPlatformTenantInboundSamlConfigIdpConfigIdpCertificates,
        IdentityPlatformTenantInboundSamlConfigSpConfig;
export 'src/identity/google_identity_platform_tenant_oauth_idp_config.dart'
    show GoogleIdentityPlatformTenantOauthIdpConfig;
