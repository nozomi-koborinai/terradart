// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_auditmanager_account_registration`.
const Set<String> _awsAuditmanagerAccountRegistrationSensitive = <String>{};

/// Factory wrapper for `aws_auditmanager_account_registration`.
final class AwsAuditmanagerAccountRegistration extends Resource {
  static const String tfType = 'aws_auditmanager_account_registration';

  AwsAuditmanagerAccountRegistration({
    required super.localName,
    TfArg<String>? delegatedAdminAccount,
    TfArg<bool>? deregisterOnDestroy,
    TfArg<String>? kmsKey,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (delegatedAdminAccount != null)
             'delegated_admin_account': delegatedAdminAccount,
           if (deregisterOnDestroy != null)
             'deregister_on_destroy': deregisterOnDestroy,
           if (kmsKey != null) 'kms_key': kmsKey,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAuditmanagerAccountRegistrationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
