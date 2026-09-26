// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_organization_admin_account`.
const Set<String> _awsGuarddutyOrganizationAdminAccountSensitive = <String>{};

/// Factory wrapper for `aws_guardduty_organization_admin_account`.
final class AwsGuarddutyOrganizationAdminAccount extends Resource {
  static const String tfType = 'aws_guardduty_organization_admin_account';

  AwsGuarddutyOrganizationAdminAccount({
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
      _awsGuarddutyOrganizationAdminAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
