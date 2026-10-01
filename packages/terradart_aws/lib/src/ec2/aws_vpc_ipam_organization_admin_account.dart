// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_organization_admin_account`.
const Set<String> _awsVpcIpamOrganizationAdminAccountSensitive = <String>{};

/// Factory wrapper for `aws_vpc_ipam_organization_admin_account`.
final class AwsVpcIpamOrganizationAdminAccount extends Resource {
  static const String tfType = 'aws_vpc_ipam_organization_admin_account';

  AwsVpcIpamOrganizationAdminAccount(
    super.localName, {
    required TfArg<String> delegatedAdminAccountId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'delegated_admin_account_id': delegatedAdminAccountId},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsVpcIpamOrganizationAdminAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpcIpamOrganizationAdminAccount>`.
  RefTo<AwsVpcIpamOrganizationAdminAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `service_principal` attribute.
  TfRef<String> get servicePrincipal =>
      TfRef.attribute<String>(this, 'service_principal');

  /// Reference to `delegated_admin_account_id` attribute.
  TfRef<String> get delegatedAdminAccountId =>
      TfRef.attribute<String>(this, 'delegated_admin_account_id');
}
