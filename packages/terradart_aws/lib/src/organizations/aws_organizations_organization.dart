// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_organization`.
const Set<String> _awsOrganizationsOrganizationSensitive = <String>{};

/// Organizations Organization Enabled Policy enum for `enabled_policy_types`.
enum OrganizationsOrganizationEnabledPolicyTypes implements TerraformEnum {
  serviceControlPolicy('SERVICE_CONTROL_POLICY'),
  resourceControlPolicy('RESOURCE_CONTROL_POLICY'),
  tagPolicy('TAG_POLICY'),
  backupPolicy('BACKUP_POLICY'),
  aiservicesOptOutPolicy('AISERVICES_OPT_OUT_POLICY'),
  chatbotPolicy('CHATBOT_POLICY'),
  declarativePolicyEc2('DECLARATIVE_POLICY_EC2'),
  securityhubPolicy('SECURITYHUB_POLICY'),
  inspectorPolicy('INSPECTOR_POLICY'),
  upgradeRolloutPolicy('UPGRADE_ROLLOUT_POLICY'),
  bedrockPolicy('BEDROCK_POLICY'),
  s3Policy('S3_POLICY'),
  networkSecurityDirectorPolicy('NETWORK_SECURITY_DIRECTOR_POLICY');

  const OrganizationsOrganizationEnabledPolicyTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Organizations Organization Feature enum for `feature_set`.
enum OrganizationsOrganizationFeatureSet implements TerraformEnum {
  all('ALL'),
  consolidatedBilling('CONSOLIDATED_BILLING');

  const OrganizationsOrganizationFeatureSet(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_organizations_organization`.
final class AwsOrganizationsOrganization extends Resource {
  static const String tfType = 'aws_organizations_organization';

  AwsOrganizationsOrganization({
    required super.localName,
    TfArg<List<String>>? awsServiceAccessPrincipals,
    List<TfArg<OrganizationsOrganizationEnabledPolicyTypes>>?
    enabledPolicyTypes,
    TfArg<OrganizationsOrganizationFeatureSet>? featureSet,
    TfArg<bool>? returnOrganizationOnly,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_service_access_principals': ?awsServiceAccessPrincipals,
           if (enabledPolicyTypes != null)
             'enabled_policy_types': TfArg.literal([
               for (final e in enabledPolicyTypes) e.toTfJson(),
             ]),
           'feature_set': ?featureSet,
           'return_organization_only': ?returnOrganizationOnly,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsOrganizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOrganizationsOrganization>`.
  RefTo<AwsOrganizationsOrganization> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accounts` attribute.
  TfRef<List<Map<String, Object?>>> get accounts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'accounts');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `master_account_arn` attribute.
  TfRef<String> get masterAccountArn =>
      TfRef.attribute<String>(this, 'master_account_arn');

  /// Reference to `master_account_email` attribute.
  TfRef<String> get masterAccountEmail =>
      TfRef.attribute<String>(this, 'master_account_email');

  /// Reference to `master_account_id` attribute.
  TfRef<String> get masterAccountId =>
      TfRef.attribute<String>(this, 'master_account_id');

  /// Reference to `master_account_name` attribute.
  TfRef<String> get masterAccountName =>
      TfRef.attribute<String>(this, 'master_account_name');

  /// Reference to `non_master_accounts` attribute.
  TfRef<List<Map<String, Object?>>> get nonMasterAccounts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'non_master_accounts');

  /// Reference to `roots` attribute.
  TfRef<List<Map<String, Object?>>> get roots =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'roots');

  /// Reference to `aws_service_access_principals` attribute.
  TfRef<List<String>> get awsServiceAccessPrincipalsRef =>
      TfRef.attribute<List<String>>(this, 'aws_service_access_principals');

  /// Reference to `enabled_policy_types` attribute.
  TfRef<List<String>> get enabledPolicyTypesRef =>
      TfRef.attribute<List<String>>(this, 'enabled_policy_types');

  /// Reference to `feature_set` attribute.
  TfRef<String> get featureSetRef =>
      TfRef.attribute<String>(this, 'feature_set');

  /// Reference to `return_organization_only` attribute.
  TfRef<bool> get returnOrganizationOnlyRef =>
      TfRef.attribute<bool>(this, 'return_organization_only');
}
