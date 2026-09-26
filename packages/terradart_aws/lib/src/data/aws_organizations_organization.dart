// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_organization`.
const Set<String> _awsOrganizationsOrganizationSensitive = <String>{};

/// Factory wrapper for `aws_organizations_organization`.
final class DataAwsOrganizationsOrganization extends Data {
  static const String tfType = 'aws_organizations_organization';

  DataAwsOrganizationsOrganization({
    required super.localName,
    TfArg<bool>? returnOrganizationOnly,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
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

  /// Reference to `aws_service_access_principals` attribute.
  TfRef<List<String>> get awsServiceAccessPrincipals =>
      TfRef.attribute<List<String>>(this, 'aws_service_access_principals');

  /// Reference to `enabled_policy_types` attribute.
  TfRef<List<String>> get enabledPolicyTypes =>
      TfRef.attribute<List<String>>(this, 'enabled_policy_types');

  /// Reference to `feature_set` attribute.
  TfRef<String> get featureSet => TfRef.attribute<String>(this, 'feature_set');

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
