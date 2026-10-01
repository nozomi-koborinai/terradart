// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// IAM service accounts, Workload Identity Federation pools
/// (including trust-domain namespaces and managed identities),
/// Workload Identity service-agent minting, Workforce Identity
/// Federation pools / providers / keys / SCIM (apply-excluded;
/// org parent), Workforce OAuth clients, OS Login SSH public keys,
/// project deny policies, and per-resource IAM members live
/// alongside their owning service barrel (e.g. `pubsub.dart`
/// exports `GooglePubsubTopicIamMember`). `IamPrincipal` names who a
/// grant is for.
library;

export 'src/iam/google_iam_access_boundary_policy.dart'
    show
        GoogleIamAccessBoundaryPolicy,
        IamAccessBoundaryPolicyAccessBoundaryRule,
        IamAccessBoundaryPolicyAvailabilityCondition,
        IamAccessBoundaryPolicyRules;
export 'src/iam/google_iam_deny_policy.dart'
    show
        GoogleIamDenyPolicy,
        IamDenyPolicyDenialCondition,
        IamDenyPolicyDenyRule,
        IamDenyPolicyRules;
export 'src/iam/google_iam_folder_access_policy.dart'
    show
        GoogleIamFolderAccessPolicy,
        IamFolderAccessPolicyConditions,
        IamFolderAccessPolicyDetails,
        IamFolderAccessPolicyEffect,
        IamFolderAccessPolicyOperation,
        IamFolderAccessPolicyRules;
export 'src/iam/google_iam_folders_policy_binding.dart'
    show
        GoogleIamFoldersPolicyBinding,
        IamFoldersPolicyBindingCondition,
        IamFoldersPolicyBindingTarget;
export 'src/iam/google_iam_oauth_client.dart' show GoogleIamOauthClient;
export 'src/iam/google_iam_oauth_client_credential.dart'
    show GoogleIamOauthClientCredential;
export 'src/iam/google_iam_organization_access_policy.dart'
    show
        GoogleIamOrganizationAccessPolicy,
        IamOrganizationAccessPolicyConditions,
        IamOrganizationAccessPolicyDetails,
        IamOrganizationAccessPolicyEffect,
        IamOrganizationAccessPolicyOperation,
        IamOrganizationAccessPolicyRules;
export 'src/iam/google_iam_organizations_policy_binding.dart'
    show
        GoogleIamOrganizationsPolicyBinding,
        IamOrganizationsPolicyBindingCondition,
        IamOrganizationsPolicyBindingTarget;
export 'src/iam/google_iam_principal_access_boundary_policy.dart'
    show
        GoogleIamPrincipalAccessBoundaryPolicy,
        IamPrincipalAccessBoundaryPolicyDetails,
        IamPrincipalAccessBoundaryPolicyRules;
export 'src/iam/google_iam_project_access_policy.dart'
    show
        GoogleIamProjectAccessPolicy,
        IamProjectAccessPolicyConditions,
        IamProjectAccessPolicyDetails,
        IamProjectAccessPolicyEffect,
        IamProjectAccessPolicyOperation,
        IamProjectAccessPolicyRules;
export 'src/iam/google_iam_projects_policy_binding.dart'
    show
        GoogleIamProjectsPolicyBinding,
        IamProjectsPolicyBindingCondition,
        IamProjectsPolicyBindingTarget;
export 'src/iam/google_iam_workforce_pool.dart'
    show
        GoogleIamWorkforcePool,
        IamWorkforcePoolAccessRestrictions,
        IamWorkforcePoolAllowedServices;
export 'src/iam/google_iam_workforce_pool_iam_binding.dart'
    show GoogleIamWorkforcePoolIamBinding, IamWorkforcePoolIamBindingCondition;
export 'src/iam/google_iam_workforce_pool_iam_member.dart'
    show GoogleIamWorkforcePoolIamMember, IamWorkforcePoolIamMemberCondition;
export 'src/iam/google_iam_workforce_pool_iam_policy.dart'
    show GoogleIamWorkforcePoolIamPolicy;
export 'src/iam/google_iam_workforce_pool_provider.dart'
    show
        GoogleIamWorkforcePoolProvider,
        IamWorkforcePoolProviderAssertionClaimsBehavior,
        IamWorkforcePoolProviderAttributesType,
        IamWorkforcePoolProviderClientSecret,
        IamWorkforcePoolProviderExtendedAttributesOauth2Client,
        IamWorkforcePoolProviderExtraAttributesOauth2Client,
        IamWorkforcePoolProviderGroupSource,
        IamWorkforcePoolProviderGroupSourceExtendedAttributesOauth2Client,
        IamWorkforcePoolProviderGroupSourceScimUsage,
        IamWorkforcePoolProviderOidc,
        IamWorkforcePoolProviderPlainText,
        IamWorkforcePoolProviderPlainTextChoice,
        IamWorkforcePoolProviderPlainTextWo,
        IamWorkforcePoolProviderQueryParameters,
        IamWorkforcePoolProviderResponseType,
        IamWorkforcePoolProviderSaml,
        IamWorkforcePoolProviderScimUsage,
        IamWorkforcePoolProviderTrustSource,
        IamWorkforcePoolProviderTrustSourceOidc,
        IamWorkforcePoolProviderTrustSourceSaml,
        IamWorkforcePoolProviderValue,
        IamWorkforcePoolProviderWebSsoConfig;
export 'src/iam/google_iam_workforce_pool_provider_key.dart'
    show
        GoogleIamWorkforcePoolProviderKey,
        IamWorkforcePoolProviderKeyData,
        IamWorkforcePoolProviderKeySpec;
export 'src/iam/google_iam_workforce_pool_provider_scim_tenant.dart'
    show GoogleIamWorkforcePoolProviderScimTenant;
export 'src/iam/google_iam_workforce_pool_provider_scim_token.dart'
    show GoogleIamWorkforcePoolProviderScimToken;
export 'src/iam/google_iam_workload_identity_pool.dart'
    show
        GoogleIamWorkloadIdentityPool,
        IamWorkloadIdentityPoolAdditionalTrustBundles,
        IamWorkloadIdentityPoolAttestationRules,
        IamWorkloadIdentityPoolCa,
        IamWorkloadIdentityPoolCaPools,
        IamWorkloadIdentityPoolInlineCertificateIssuanceConfig,
        IamWorkloadIdentityPoolInlineTrustConfig,
        IamWorkloadIdentityPoolKeyAlgorithm,
        IamWorkloadIdentityPoolTrustAnchors,
        IamWorkloadIdentityPoolUseDefaultSharedCa,
        WorkloadIdentityPoolMode;
export 'src/iam/google_iam_workload_identity_pool_iam_binding.dart'
    show
        GoogleIamWorkloadIdentityPoolIamBinding,
        IamWorkloadIdentityPoolIamBindingCondition;
export 'src/iam/google_iam_workload_identity_pool_iam_member.dart'
    show
        GoogleIamWorkloadIdentityPoolIamMember,
        IamWorkloadIdentityPoolIamMemberCondition;
export 'src/iam/google_iam_workload_identity_pool_iam_policy.dart'
    show GoogleIamWorkloadIdentityPoolIamPolicy;
export 'src/iam/google_iam_workload_identity_pool_managed_identity.dart'
    show
        GoogleIamWorkloadIdentityPoolManagedIdentity,
        IamWorkloadIdentityPoolManagedIdentityAttestationRules;
export 'src/iam/google_iam_workload_identity_pool_namespace.dart'
    show GoogleIamWorkloadIdentityPoolNamespace;
export 'src/iam/google_iam_workload_identity_pool_provider.dart'
    show
        GoogleIamWorkloadIdentityPoolProvider,
        IamWorkloadIdentityPoolProviderAws,
        IamWorkloadIdentityPoolProviderIntermediateCas,
        IamWorkloadIdentityPoolProviderOidc,
        IamWorkloadIdentityPoolProviderSaml,
        IamWorkloadIdentityPoolProviderTrustAnchors,
        IamWorkloadIdentityPoolProviderTrustSource,
        IamWorkloadIdentityPoolProviderTrustSourceAws,
        IamWorkloadIdentityPoolProviderTrustSourceOidc,
        IamWorkloadIdentityPoolProviderTrustSourceSaml,
        IamWorkloadIdentityPoolProviderTrustSourceX509,
        IamWorkloadIdentityPoolProviderTrustStore,
        IamWorkloadIdentityPoolProviderX509;
export 'src/iam/google_os_login_ssh_public_key.dart'
    show GoogleOsLoginSshPublicKey;
export 'src/iam/google_project_iam_audit_config.dart'
    show
        GoogleProjectIamAuditConfig,
        ProjectIamAuditConfigAuditLogConfig,
        ProjectIamAuditConfigAuditLogConfigLogType;
export 'src/iam/google_project_iam_binding.dart'
    show GoogleProjectIamBinding, ProjectIamBindingCondition;
export 'src/iam/google_project_iam_custom_role.dart'
    show CustomRoleStage, GoogleProjectIamCustomRole;
export 'src/iam/google_project_iam_member.dart'
    show GoogleProjectIamMember, ProjectIamMemberCondition;
export 'src/iam/google_project_iam_member_remove.dart'
    show GoogleProjectIamMemberRemove;
export 'src/iam/google_project_iam_policy.dart' show GoogleProjectIamPolicy;
export 'src/iam/google_service_account.dart' show GoogleServiceAccount;
export 'src/iam/google_service_account_iam_binding.dart'
    show GoogleServiceAccountIamBinding, ServiceAccountIamBindingCondition;
export 'src/iam/google_service_account_iam_member.dart'
    show GoogleServiceAccountIamMember, ServiceAccountIamMemberCondition;
export 'src/iam/google_service_account_iam_policy.dart'
    show GoogleServiceAccountIamPolicy;
export 'src/iam/google_service_account_key.dart'
    show GoogleServiceAccountKey, KeyAlgorithm, PrivateKeyType, PublicKeyType;
export 'src/iam/google_workload_identity_service_agent.dart'
    show GoogleWorkloadIdentityServiceAgent;
export 'src/iam/iam_principal.dart' show IamPrincipal;
