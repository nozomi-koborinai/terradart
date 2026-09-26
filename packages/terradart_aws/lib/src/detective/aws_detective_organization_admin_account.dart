// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_detective_organization_admin_account`.
const Set<String> _awsDetectiveOrganizationAdminAccountSensitive = <String>{};

/// Factory wrapper for `aws_detective_organization_admin_account`.
final class AwsDetectiveOrganizationAdminAccount extends Resource {
  static const String tfType = 'aws_detective_organization_admin_account';

  AwsDetectiveOrganizationAdminAccount({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDetectiveOrganizationAdminAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
