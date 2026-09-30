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

export 'src/iam/google_iam_access_boundary_policy.dart'
    show
        GoogleIamAccessBoundaryPolicy,
        IamAccessBoundaryPolicyRules,
        IamAccessBoundaryPolicyRulesAccessBoundaryRule,
        IamAccessBoundaryPolicyRulesAccessBoundaryRuleAvailabilityCondition;
export 'src/iam/google_iam_deny_policy.dart'
    show
        GoogleIamDenyPolicy,
        IamDenyPolicyRules,
        IamDenyPolicyRulesDenyRule,
        IamDenyPolicyRulesDenyRuleDenialCondition;
export 'src/iam/google_iam_folder_access_policy.dart'
    show
        GoogleIamFolderAccessPolicy,
        IamFolderAccessPolicyDetails,
        IamFolderAccessPolicyDetailsRules,
        IamFolderAccessPolicyDetailsRulesConditions,
        IamFolderAccessPolicyDetailsRulesEffect,
        IamFolderAccessPolicyDetailsRulesOperation;
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
        IamOrganizationAccessPolicyDetails,
        IamOrganizationAccessPolicyDetailsRules,
        IamOrganizationAccessPolicyDetailsRulesConditions,
        IamOrganizationAccessPolicyDetailsRulesEffect,
        IamOrganizationAccessPolicyDetailsRulesOperation;
export 'src/iam/google_iam_organizations_policy_binding.dart'
    show
        GoogleIamOrganizationsPolicyBinding,
        IamOrganizationsPolicyBindingCondition,
        IamOrganizationsPolicyBindingTarget;
export 'src/iam/google_iam_principal_access_boundary_policy.dart'
    show
        GoogleIamPrincipalAccessBoundaryPolicy,
        IamPrincipalAccessBoundaryPolicyDetails,
        IamPrincipalAccessBoundaryPolicyDetailsRules;
export 'src/iam/google_iam_project_access_policy.dart'
    show
        GoogleIamProjectAccessPolicy,
        IamProjectAccessPolicyDetails,
        IamProjectAccessPolicyDetailsRules,
        IamProjectAccessPolicyDetailsRulesConditions,
        IamProjectAccessPolicyDetailsRulesEffect,
        IamProjectAccessPolicyDetailsRulesOperation;
export 'src/iam/google_iam_projects_policy_binding.dart'
    show
        GoogleIamProjectsPolicyBinding,
        IamProjectsPolicyBindingCondition,
        IamProjectsPolicyBindingTarget;
export 'src/iam/google_iam_workforce_pool.dart'
    show
        GoogleIamWorkforcePool,
        IamWorkforcePoolAccessRestrictions,
        IamWorkforcePoolAccessRestrictionsAllowedServices;
export 'src/iam/google_iam_workforce_pool_iam_binding.dart'
    show GoogleIamWorkforcePoolIamBinding, IamWorkforcePoolIamBindingCondition;
export 'src/iam/google_iam_workforce_pool_iam_member.dart'
    show GoogleIamWorkforcePoolIamMember, IamWorkforcePoolIamMemberCondition;
export 'src/iam/google_iam_workforce_pool_iam_policy.dart'
    show GoogleIamWorkforcePoolIamPolicy;
export 'src/iam/google_iam_workforce_pool_provider.dart'
    show
        GoogleIamWorkforcePoolProvider,
        IamWorkforcePoolProviderExtendedAttributesOauth2Client,
        IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret,
        IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue,
        IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainText,
        IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainTextChoice,
        IamWorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValuePlainTextWo,
        IamWorkforcePoolProviderExtendedAttributesOauth2ClientQueryParameters,
        IamWorkforcePoolProviderExtraAttributesOauth2Client,
        IamWorkforcePoolProviderExtraAttributesOauth2ClientAttributesType,
        IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecret,
        IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue,
        IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainText,
        IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainTextChoice,
        IamWorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValuePlainTextWo,
        IamWorkforcePoolProviderExtraAttributesOauth2ClientQueryParameters,
        IamWorkforcePoolProviderOidc,
        IamWorkforcePoolProviderOidcClientSecret,
        IamWorkforcePoolProviderOidcClientSecretValue,
        IamWorkforcePoolProviderOidcClientSecretValuePlainText,
        IamWorkforcePoolProviderOidcClientSecretValuePlainTextChoice,
        IamWorkforcePoolProviderOidcClientSecretValuePlainTextWo,
        IamWorkforcePoolProviderOidcWebSsoConfig,
        IamWorkforcePoolProviderOidcWebSsoConfigAssertionClaimsBehavior,
        IamWorkforcePoolProviderOidcWebSsoConfigResponseType,
        IamWorkforcePoolProviderSaml,
        IamWorkforcePoolProviderScimUsage,
        IamWorkforcePoolProviderTrustSource,
        IamWorkforcePoolProviderTrustSourceOidc,
        IamWorkforcePoolProviderTrustSourceSaml;
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
    show
        GoogleIamWorkloadIdentityPool,
        IamWorkloadIdentityPoolAttestationRules,
        IamWorkloadIdentityPoolInlineCertificateIssuanceConfig,
        IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCa,
        IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCaPools,
        IamWorkloadIdentityPoolInlineCertificateIssuanceConfigCaUseDefaultSharedCa,
        IamWorkloadIdentityPoolInlineCertificateIssuanceConfigKeyAlgorithm,
        IamWorkloadIdentityPoolInlineTrustConfig,
        IamWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundles,
        IamWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundlesTrustAnchors,
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
        IamWorkloadIdentityPoolProviderOidc,
        IamWorkloadIdentityPoolProviderSaml,
        IamWorkloadIdentityPoolProviderTrustSource,
        IamWorkloadIdentityPoolProviderTrustSourceAws,
        IamWorkloadIdentityPoolProviderTrustSourceOidc,
        IamWorkloadIdentityPoolProviderTrustSourceSaml,
        IamWorkloadIdentityPoolProviderTrustSourceX509,
        IamWorkloadIdentityPoolProviderX509,
        IamWorkloadIdentityPoolProviderX509TrustStore,
        IamWorkloadIdentityPoolProviderX509TrustStoreIntermediateCas,
        IamWorkloadIdentityPoolProviderX509TrustStoreTrustAnchors;
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
