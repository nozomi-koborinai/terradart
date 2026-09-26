// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpc_ipam_organization_admin_account`.
const Set<String> _awsVpcIpamOrganizationAdminAccountSensitive = <String>{};

/// Factory wrapper for `aws_vpc_ipam_organization_admin_account`.
final class AwsVpcIpamOrganizationAdminAccount extends Resource {
  static const String tfType = 'aws_vpc_ipam_organization_admin_account';

  AwsVpcIpamOrganizationAdminAccount({
    required super.localName,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `service_principal` attribute.
  TfRef<String> get servicePrincipal =>
      TfRef.attribute<String>(this, 'service_principal');
}
