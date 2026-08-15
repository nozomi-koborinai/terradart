// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// IAM service accounts, Workload Identity Federation pools
/// (including trust-domain namespaces and managed identities),
/// Workload Identity service-agent minting, Workforce Identity
/// Federation pools / providers / keys / SCIM (apply-excluded;
/// org parent), Workforce OAuth clients, OS Login SSH public keys,
/// project deny policies, and per-resource IAM members live
/// alongside their owning service barrel (e.g. `pubsub.dart`
/// exports `GooglePubsubTopicIamMember`).
library;

export 'src/iam/google_iam_deny_policy.dart'
    show
        GoogleIamDenyPolicy,
        IamDenyPolicyRules,
        IamDenyPolicyRulesDenyRule,
        IamDenyPolicyRulesDenyRuleDenialCondition;
export 'src/iam/google_iam_oauth_client.dart' show GoogleIamOauthClient;
export 'src/iam/google_iam_workforce_pool.dart'
    show
        GoogleIamWorkforcePool,
        IamWorkforcePoolAccessRestrictions,
        IamWorkforcePoolAccessRestrictionsAllowedServices;
export 'src/iam/google_iam_workforce_pool_iam_binding.dart'
    show GoogleIamWorkforcePoolIamBinding;
export 'src/iam/google_iam_workforce_pool_iam_member.dart'
    show GoogleIamWorkforcePoolIamMember;
export 'src/iam/google_iam_workforce_pool_iam_policy.dart'
    show GoogleIamWorkforcePoolIamPolicy;
export 'src/iam/google_iam_workforce_pool_provider.dart'
    show
        GoogleIamWorkforcePoolProvider,
        IamWorkforcePoolProviderOidcTrust,
        IamWorkforcePoolProviderSamlTrust,
        IamWorkforcePoolProviderTrustSource;
export 'src/iam/google_iam_workforce_pool_provider_key.dart'
    show
        GoogleIamWorkforcePoolProviderKey,
        IamWorkforcePoolProviderKeyKeyData,
        IamWorkforcePoolProviderKeyKeyDataKeySpec;
export 'src/iam/google_iam_workforce_pool_provider_scim_tenant.dart'
    show GoogleIamWorkforcePoolProviderScimTenant;
export 'src/iam/google_iam_workforce_pool_provider_scim_token.dart'
    show GoogleIamWorkforcePoolProviderScimToken;
export 'src/iam/google_iam_workload_identity_pool.dart'
    show GoogleIamWorkloadIdentityPool, WorkloadIdentityPoolMode;
export 'src/iam/google_iam_workload_identity_pool_iam_binding.dart'
    show GoogleIamWorkloadIdentityPoolIamBinding;
export 'src/iam/google_iam_workload_identity_pool_iam_member.dart'
    show GoogleIamWorkloadIdentityPoolIamMember;
export 'src/iam/google_iam_workload_identity_pool_iam_policy.dart'
    show GoogleIamWorkloadIdentityPoolIamPolicy;
export 'src/iam/google_iam_workload_identity_pool_managed_identity.dart'
    show GoogleIamWorkloadIdentityPoolManagedIdentity;
export 'src/iam/google_iam_workload_identity_pool_namespace.dart'
    show GoogleIamWorkloadIdentityPoolNamespace;
export 'src/iam/google_iam_workload_identity_pool_provider.dart'
    show
        GoogleIamWorkloadIdentityPoolProvider,
        IamWorkloadIdentityPoolProviderAwsTrust,
        IamWorkloadIdentityPoolProviderOidcTrust,
        IamWorkloadIdentityPoolProviderSamlTrust,
        IamWorkloadIdentityPoolProviderTrustSource,
        IamWorkloadIdentityPoolProviderX509PemCertificate,
        IamWorkloadIdentityPoolProviderX509Trust,
        IamWorkloadIdentityPoolProviderX509TrustStore;
export 'src/iam/google_os_login_ssh_public_key.dart'
    show GoogleOsLoginSshPublicKey;
export 'src/iam/google_project_iam_audit_config.dart'
    show
        GoogleProjectIamAuditConfig,
        ProjectIamAuditConfigAuditLogConfig,
        ProjectIamAuditConfigAuditLogConfigLogType;
export 'src/iam/google_project_iam_binding.dart' show GoogleProjectIamBinding;
export 'src/iam/google_project_iam_custom_role.dart'
    show CustomRoleStage, GoogleProjectIamCustomRole;
export 'src/iam/google_project_iam_member.dart' show GoogleProjectIamMember;
export 'src/iam/google_project_iam_policy.dart' show GoogleProjectIamPolicy;
export 'src/iam/google_service_account.dart' show GoogleServiceAccount;
export 'src/iam/google_service_account_iam_binding.dart'
    show GoogleServiceAccountIamBinding;
export 'src/iam/google_service_account_iam_member.dart'
    show GoogleServiceAccountIamMember;
export 'src/iam/google_service_account_iam_policy.dart'
    show GoogleServiceAccountIamPolicy;
export 'src/iam/google_service_account_key.dart'
    show GoogleServiceAccountKey, KeyAlgorithm, PrivateKeyType, PublicKeyType;
export 'src/iam/google_workload_identity_service_agent.dart'
    show GoogleWorkloadIdentityServiceAgent;
