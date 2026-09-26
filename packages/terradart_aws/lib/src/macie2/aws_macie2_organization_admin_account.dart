// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_organization_admin_account`.
const Set<String> _awsMacie2OrganizationAdminAccountSensitive = <String>{};

/// Factory wrapper for `aws_macie2_organization_admin_account`.
final class AwsMacie2OrganizationAdminAccount extends Resource {
  static const String tfType = 'aws_macie2_organization_admin_account';

  AwsMacie2OrganizationAdminAccount({
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
      _awsMacie2OrganizationAdminAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
