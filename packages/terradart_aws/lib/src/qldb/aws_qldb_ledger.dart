// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_qldb_ledger`.
const Set<String> _awsQldbLedgerSensitive = <String>{};

/// Qldb Ledger Permissions enum for `permissions_mode`.
enum QldbLedgerPermissionsMode implements TerraformEnum {
  allowAll('ALLOW_ALL'),
  standard('STANDARD');

  const QldbLedgerPermissionsMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_qldb_ledger`.
final class AwsQldbLedger extends Resource {
  static const String tfType = 'aws_qldb_ledger';

  AwsQldbLedger({
    required super.localName,
    TfArg<bool>? deletionProtection,
    RefTo<AwsKmsKey>? kmsKey,
    TfArg<String>? name,
    required TfArg<QldbLedgerPermissionsMode> permissionsMode,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_protection': ?deletionProtection,
           'kms_key': ?kmsKey?.encodeAs('arn'),
           'name': ?name,
           'permissions_mode': permissionsMode,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQldbLedgerSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQldbLedger>`.
  RefTo<AwsQldbLedger> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `permissions_mode` attribute.
  TfRef<String> get permissionsMode =>
      TfRef.attribute<String>(this, 'permissions_mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
