// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_organization`.
const Set<String> _awsOrganizationsOrganizationSensitive = <String>{};

/// Factory wrapper for `aws_organizations_organization`.
final class AwsOrganizationsOrganization extends Resource {
  static const String tfType = 'aws_organizations_organization';

  AwsOrganizationsOrganization({
    required super.localName,
    TfArg<List<String>>? awsServiceAccessPrincipals,
    TfArg<List<String>>? enabledPolicyTypes,
    TfArg<String>? featureSet,
    TfArg<bool>? returnOrganizationOnly,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsServiceAccessPrincipals != null)
             'aws_service_access_principals': awsServiceAccessPrincipals,
           if (enabledPolicyTypes != null)
             'enabled_policy_types': enabledPolicyTypes,
           if (featureSet != null) 'feature_set': featureSet,
           if (returnOrganizationOnly != null)
             'return_organization_only': returnOrganizationOnly,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsOrganizationSensitive;

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
}
