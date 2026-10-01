// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_organization`.
const Set<String> _awsOrganizationsOrganizationSensitive = <String>{};

/// Organizations Organization Enabled Policy enum for `enabled_policy_types`.
extension type const OrganizationsOrganizationEnabledPolicyTypes._(
  TfArg<String> _
) implements TfArg<String> {
  OrganizationsOrganizationEnabledPolicyTypes.variable(String name)
    : this._(TfArg.variable(name));
  OrganizationsOrganizationEnabledPolicyTypes.expression(String template)
    : this._(TfArg.expression(template));
  const OrganizationsOrganizationEnabledPolicyTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const serviceControlPolicy =
      OrganizationsOrganizationEnabledPolicyTypes._(
        TfArgLiteral('SERVICE_CONTROL_POLICY'),
      );
  static const resourceControlPolicy =
      OrganizationsOrganizationEnabledPolicyTypes._(
        TfArgLiteral('RESOURCE_CONTROL_POLICY'),
      );
  static const tagPolicy = OrganizationsOrganizationEnabledPolicyTypes._(
    TfArgLiteral('TAG_POLICY'),
  );
  static const backupPolicy = OrganizationsOrganizationEnabledPolicyTypes._(
    TfArgLiteral('BACKUP_POLICY'),
  );
  static const aiservicesOptOutPolicy =
      OrganizationsOrganizationEnabledPolicyTypes._(
        TfArgLiteral('AISERVICES_OPT_OUT_POLICY'),
      );
  static const chatbotPolicy = OrganizationsOrganizationEnabledPolicyTypes._(
    TfArgLiteral('CHATBOT_POLICY'),
  );
  static const declarativePolicyEc2 =
      OrganizationsOrganizationEnabledPolicyTypes._(
        TfArgLiteral('DECLARATIVE_POLICY_EC2'),
      );
  static const securityhubPolicy =
      OrganizationsOrganizationEnabledPolicyTypes._(
        TfArgLiteral('SECURITYHUB_POLICY'),
      );
  static const inspectorPolicy = OrganizationsOrganizationEnabledPolicyTypes._(
    TfArgLiteral('INSPECTOR_POLICY'),
  );
  static const upgradeRolloutPolicy =
      OrganizationsOrganizationEnabledPolicyTypes._(
        TfArgLiteral('UPGRADE_ROLLOUT_POLICY'),
      );
  static const bedrockPolicy = OrganizationsOrganizationEnabledPolicyTypes._(
    TfArgLiteral('BEDROCK_POLICY'),
  );
  static const s3Policy = OrganizationsOrganizationEnabledPolicyTypes._(
    TfArgLiteral('S3_POLICY'),
  );
  static const networkSecurityDirectorPolicy =
      OrganizationsOrganizationEnabledPolicyTypes._(
        TfArgLiteral('NETWORK_SECURITY_DIRECTOR_POLICY'),
      );

  static const List<OrganizationsOrganizationEnabledPolicyTypes> values = [
    serviceControlPolicy,
    resourceControlPolicy,
    tagPolicy,
    backupPolicy,
    aiservicesOptOutPolicy,
    chatbotPolicy,
    declarativePolicyEc2,
    securityhubPolicy,
    inspectorPolicy,
    upgradeRolloutPolicy,
    bedrockPolicy,
    s3Policy,
    networkSecurityDirectorPolicy,
  ];
}

/// Organizations Organization Feature enum for `feature_set`.
extension type const OrganizationsOrganizationFeatureSet._(TfArg<String> _)
    implements TfArg<String> {
  OrganizationsOrganizationFeatureSet.variable(String name)
    : this._(TfArg.variable(name));
  OrganizationsOrganizationFeatureSet.expression(String template)
    : this._(TfArg.expression(template));
  const OrganizationsOrganizationFeatureSet.arg(TfArg<String> arg)
    : this._(arg);

  static const all = OrganizationsOrganizationFeatureSet._(TfArgLiteral('ALL'));
  static const consolidatedBilling = OrganizationsOrganizationFeatureSet._(
    TfArgLiteral('CONSOLIDATED_BILLING'),
  );

  static const List<OrganizationsOrganizationFeatureSet> values = [
    all,
    consolidatedBilling,
  ];
}

/// Factory wrapper for `aws_organizations_organization`.
final class AwsOrganizationsOrganization extends Resource {
  static const String tfType = 'aws_organizations_organization';

  AwsOrganizationsOrganization(
    super.localName, {
    TfArg<List<String>>? awsServiceAccessPrincipals,
    List<OrganizationsOrganizationEnabledPolicyTypes>? enabledPolicyTypes,
    OrganizationsOrganizationFeatureSet? featureSet,
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
  TfRef<List<String>> get awsServiceAccessPrincipals =>
      TfRef.attribute<List<String>>(this, 'aws_service_access_principals');

  /// Reference to `enabled_policy_types` attribute.
  TfRef<List<String>> get enabledPolicyTypes =>
      TfRef.attribute<List<String>>(this, 'enabled_policy_types');

  /// Reference to `feature_set` attribute.
  TfRef<String> get featureSet => TfRef.attribute<String>(this, 'feature_set');

  /// Reference to `return_organization_only` attribute.
  TfRef<bool> get returnOrganizationOnly =>
      TfRef.attribute<bool>(this, 'return_organization_only');
}
