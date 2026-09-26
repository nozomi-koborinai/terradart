// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_auditmanager_organization_admin_account_registration`.
const Set<String>
_awsAuditmanagerOrganizationAdminAccountRegistrationSensitive = <String>{};

/// Factory wrapper for `aws_auditmanager_organization_admin_account_registration`.
final class AwsAuditmanagerOrganizationAdminAccountRegistration
    extends Resource {
  static const String tfType =
      'aws_auditmanager_organization_admin_account_registration';

  AwsAuditmanagerOrganizationAdminAccountRegistration({
    required super.localName,
    required TfArg<String> adminAccountId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_account_id': adminAccountId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAuditmanagerOrganizationAdminAccountRegistrationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');
}
