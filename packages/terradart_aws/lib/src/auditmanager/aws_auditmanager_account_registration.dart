// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_auditmanager_account_registration`.
const Set<String> _awsAuditmanagerAccountRegistrationSensitive = <String>{};

/// Factory wrapper for `aws_auditmanager_account_registration`.
final class AwsAuditmanagerAccountRegistration extends Resource {
  static const String tfType = 'aws_auditmanager_account_registration';

  AwsAuditmanagerAccountRegistration({
    required super.localName,
    TfArg<String>? delegatedAdminAccount,
    TfArg<bool>? deregisterOnDestroy,
    RefTo<AwsKmsKey>? kmsKey,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'delegated_admin_account': ?delegatedAdminAccount,
           'deregister_on_destroy': ?deregisterOnDestroy,
           'kms_key': ?kmsKey?.encodeAs('arn'),
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsAuditmanagerAccountRegistrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAuditmanagerAccountRegistration>`.
  RefTo<AwsAuditmanagerAccountRegistration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
