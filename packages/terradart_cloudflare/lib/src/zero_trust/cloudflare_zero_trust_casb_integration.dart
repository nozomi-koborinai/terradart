// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_casb_integration`.
const Set<String> _cloudflareZeroTrustCasbIntegrationSensitive = <String>{
  'anthropic.anthropic_admin_api_key.api_key',
  'anthropic.anthropic_compliance_api_key.compliance_api_key',
  'anthropic.anthropic_workspace_api_key.api_key',
  'google_cloud_platform.google_cloud_platform_service_account.service_account_key_json',
  'google_workspace.google_domain_wide_delegation_service_account.service_account_key_json',
  'openai.chatgpt_compliance_api_key.admin_api_key',
  'openai.chatgpt_compliance_api_key.compliance_api_key',
  'openai.chatgpt_compliance_api_key.project_api_key',
  'openai.chatgpt_standard_api_key.admin_api_key',
  'openai.chatgpt_standard_api_key.project_api_key',
};

/// Zero Trust Casb Integration Use enum for `use_cases`.
extension type const ZeroTrustCasbIntegrationUseCases._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustCasbIntegrationUseCases.variable(String name)
    : this._(TfArg.variable(name));
  ZeroTrustCasbIntegrationUseCases.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustCasbIntegrationUseCases.arg(TfArg<String> arg) : this._(arg);

  static const casb = ZeroTrustCasbIntegrationUseCases._(TfArgLiteral('casb'));
  static const ces = ZeroTrustCasbIntegrationUseCases._(TfArgLiteral('ces'));
  static const autoRemediation = ZeroTrustCasbIntegrationUseCases._(
    TfArgLiteral('auto_remediation'),
  );

  static const List<ZeroTrustCasbIntegrationUseCases> values = [
    casb,
    ces,
    autoRemediation,
  ];
}

/// Typed helper for the `anthropic` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationAnthropic {
  const ZeroTrustCasbIntegrationAnthropic({
    this.anthropicAdminApiKey,
    this.anthropicComplianceApiKey,
    this.anthropicWorkspaceApiKey,
  });

  final ZeroTrustCasbIntegrationAnthropicAdminApiKey? anthropicAdminApiKey;

  final ZeroTrustCasbIntegrationAnthropicComplianceApiKey?
  anthropicComplianceApiKey;

  final ZeroTrustCasbIntegrationAnthropicWorkspaceApiKey?
  anthropicWorkspaceApiKey;

  @internal
  Map<String, Object?> encode() => {
    'anthropic_admin_api_key': ?anthropicAdminApiKey?.encode(),
    'anthropic_compliance_api_key': ?anthropicComplianceApiKey?.encode(),
    'anthropic_workspace_api_key': ?anthropicWorkspaceApiKey?.encode(),
  };
}

/// Typed helper for the `anthropic.anthropic_admin_api_key` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationAnthropicAdminApiKey {
  const ZeroTrustCasbIntegrationAnthropicAdminApiKey({
    required this.apiKey,
    this.tenantId,
  });

  final Sensitive<String> apiKey;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'api_key': apiKey.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `anthropic.anthropic_compliance_api_key` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationAnthropicComplianceApiKey {
  const ZeroTrustCasbIntegrationAnthropicComplianceApiKey({
    required this.complianceApiKey,
    this.tenantId,
  });

  final Sensitive<String> complianceApiKey;

  final TfArg<String>? tenantId;

  @internal
  Map<String, Object?> encode() => {
    'compliance_api_key': complianceApiKey.toTfJson(),
    'tenant_id': ?tenantId?.toTfJson(),
  };
}

/// Typed helper for the `anthropic.anthropic_workspace_api_key` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationAnthropicWorkspaceApiKey {
  const ZeroTrustCasbIntegrationAnthropicWorkspaceApiKey({
    required this.apiKey,
    required this.tenantId,
  });

  final Sensitive<String> apiKey;

  final TfArg<String> tenantId;

  @internal
  Map<String, Object?> encode() => {
    'api_key': apiKey.toTfJson(),
    'tenant_id': tenantId.toTfJson(),
  };
}

/// Typed helper for the `aws` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationAws {
  const ZeroTrustCasbIntegrationAws({this.awsIamRole});

  final ZeroTrustCasbIntegrationAwsIamRole? awsIamRole;

  @internal
  Map<String, Object?> encode() => {'aws_iam_role': ?awsIamRole?.encode()};
}

/// Typed helper for the `aws.aws_iam_role` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationAwsIamRole {
  const ZeroTrustCasbIntegrationAwsIamRole({
    required this.externalId,
    required this.roleArn,
  });

  final TfArg<String> externalId;

  final TfArg<String> roleArn;

  @internal
  Map<String, Object?> encode() => {
    'external_id': externalId.toTfJson(),
    'role_arn': roleArn.toTfJson(),
  };
}

/// Typed helper for the `box` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationBox {
  const ZeroTrustCasbIntegrationBox({this.boxServerAuthentication});

  final ZeroTrustCasbIntegrationBoxServerAuthentication?
  boxServerAuthentication;

  @internal
  Map<String, Object?> encode() => {
    'box_server_authentication': ?boxServerAuthentication?.encode(),
  };
}

/// Typed helper for the `box.box_server_authentication` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationBoxServerAuthentication {
  const ZeroTrustCasbIntegrationBoxServerAuthentication({
    required this.enterpriseId,
  });

  final TfArg<String> enterpriseId;

  @internal
  Map<String, Object?> encode() => {'enterprise_id': enterpriseId.toTfJson()};
}

/// Typed helper for the `google_cloud_platform` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationGoogleCloudPlatform {
  const ZeroTrustCasbIntegrationGoogleCloudPlatform({
    this.googleCloudPlatformServiceAccount,
  });

  final ZeroTrustCasbIntegrationGoogleCloudPlatformServiceAccount?
  googleCloudPlatformServiceAccount;

  @internal
  Map<String, Object?> encode() => {
    'google_cloud_platform_service_account': ?googleCloudPlatformServiceAccount
        ?.encode(),
  };
}

/// Typed helper for the `google_cloud_platform.google_cloud_platform_service_account` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationGoogleCloudPlatformServiceAccount {
  const ZeroTrustCasbIntegrationGoogleCloudPlatformServiceAccount({
    required this.serviceAccountKeyJson,
  });

  final Sensitive<String> serviceAccountKeyJson;

  @internal
  Map<String, Object?> encode() => {
    'service_account_key_json': serviceAccountKeyJson.toTfJson(),
  };
}

/// Typed helper for the `google_workspace` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationGoogleWorkspace {
  const ZeroTrustCasbIntegrationGoogleWorkspace({
    this.googleDomainWideDelegationServiceAccount,
  });

  final ZeroTrustCasbIntegrationGoogleDomainWideDelegationServiceAccount?
  googleDomainWideDelegationServiceAccount;

  @internal
  Map<String, Object?> encode() => {
    'google_domain_wide_delegation_service_account':
        ?googleDomainWideDelegationServiceAccount?.encode(),
  };
}

/// Typed helper for the `google_workspace.google_domain_wide_delegation_service_account` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationGoogleDomainWideDelegationServiceAccount {
  const ZeroTrustCasbIntegrationGoogleDomainWideDelegationServiceAccount({
    required this.administratorEmail,
    required this.serviceAccountKeyJson,
  });

  final TfArg<String> administratorEmail;

  final Sensitive<String> serviceAccountKeyJson;

  @internal
  Map<String, Object?> encode() => {
    'administrator_email': administratorEmail.toTfJson(),
    'service_account_key_json': serviceAccountKeyJson.toTfJson(),
  };
}

/// Typed helper for the `openai` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationOpenai {
  const ZeroTrustCasbIntegrationOpenai({
    this.chatgptComplianceApiKey,
    this.chatgptStandardApiKey,
  });

  final ZeroTrustCasbIntegrationChatgptComplianceApiKey?
  chatgptComplianceApiKey;

  final ZeroTrustCasbIntegrationChatgptStandardApiKey? chatgptStandardApiKey;

  @internal
  Map<String, Object?> encode() => {
    'chatgpt_compliance_api_key': ?chatgptComplianceApiKey?.encode(),
    'chatgpt_standard_api_key': ?chatgptStandardApiKey?.encode(),
  };
}

/// Typed helper for the `openai.chatgpt_compliance_api_key` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationChatgptComplianceApiKey {
  const ZeroTrustCasbIntegrationChatgptComplianceApiKey({
    required this.adminApiKey,
    required this.complianceApiKey,
    required this.organizationId,
    this.projectApiKey,
    this.projectId,
    required this.workspaceId,
  });

  final Sensitive<String> adminApiKey;

  final Sensitive<String> complianceApiKey;

  final TfArg<String> organizationId;

  final Sensitive<String>? projectApiKey;

  final TfArg<String>? projectId;

  final TfArg<String> workspaceId;

  @internal
  Map<String, Object?> encode() => {
    'admin_api_key': adminApiKey.toTfJson(),
    'compliance_api_key': complianceApiKey.toTfJson(),
    'organization_id': organizationId.toTfJson(),
    'project_api_key': ?projectApiKey?.toTfJson(),
    'project_id': ?projectId?.toTfJson(),
    'workspace_id': workspaceId.toTfJson(),
  };
}

/// Typed helper for the `openai.chatgpt_standard_api_key` block of
/// `cloudflare_zero_trust_casb_integration` (derived from provider schema).
@immutable
final class ZeroTrustCasbIntegrationChatgptStandardApiKey {
  const ZeroTrustCasbIntegrationChatgptStandardApiKey({
    required this.adminApiKey,
    required this.organizationId,
    this.projectApiKey,
    this.projectId,
  });

  final Sensitive<String> adminApiKey;

  final TfArg<String> organizationId;

  final Sensitive<String>? projectApiKey;

  final TfArg<String>? projectId;

  @internal
  Map<String, Object?> encode() => {
    'admin_api_key': adminApiKey.toTfJson(),
    'organization_id': organizationId.toTfJson(),
    'project_api_key': ?projectApiKey?.toTfJson(),
    'project_id': ?projectId?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_casb_integration`.
///
/// Creates and manages a CASB integration. Exactly one vendor and exactly one
/// authentication method must be configured.
final class CloudflareZeroTrustCasbIntegration extends Resource {
  static const String tfType = 'cloudflare_zero_trust_casb_integration';

  CloudflareZeroTrustCasbIntegration(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<List<String>>? dlpProfiles,
    required TfArg<String> name,
    required TfArg<bool> paused,
    TfArg<List<String>>? permissions,
    List<ZeroTrustCasbIntegrationUseCases>? useCases,
    ZeroTrustCasbIntegrationAnthropic? anthropic,
    ZeroTrustCasbIntegrationAws? aws,
    ZeroTrustCasbIntegrationBox? box,
    ZeroTrustCasbIntegrationGoogleCloudPlatform? googleCloudPlatform,
    ZeroTrustCasbIntegrationGoogleWorkspace? googleWorkspace,
    ZeroTrustCasbIntegrationOpenai? openai,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'dlp_profiles': ?dlpProfiles,
           'name': name,
           'paused': paused,
           'permissions': ?permissions,
           if (useCases != null)
             'use_cases': TfArg.literal([
               for (final e in useCases) e.toTfJson(),
             ]),
           if (anthropic != null)
             'anthropic': TfArg.literal(anthropic.encode()),
           if (aws != null) 'aws': TfArg.literal(aws.encode()),
           if (box != null) 'box': TfArg.literal(box.encode()),
           if (googleCloudPlatform != null)
             'google_cloud_platform': TfArg.literal(
               googleCloudPlatform.encode(),
             ),
           if (googleWorkspace != null)
             'google_workspace': TfArg.literal(googleWorkspace.encode()),
           if (openai != null) 'openai': TfArg.literal(openai.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustCasbIntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustCasbIntegration>`.
  RefTo<CloudflareZeroTrustCasbIntegration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `secrets_digest` attribute.
  TfRef<String> get secretsDigest =>
      TfRef.attribute<String>(this, 'secrets_digest');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `dlp_profiles` attribute.
  TfRef<List<String>> get dlpProfiles =>
      TfRef.attribute<List<String>>(this, 'dlp_profiles');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `use_cases` attribute.
  TfRef<List<String>> get useCases =>
      TfRef.attribute<List<String>>(this, 'use_cases');
}
