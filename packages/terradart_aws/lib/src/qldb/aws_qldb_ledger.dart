// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_qldb_ledger`.
const Set<String> _awsQldbLedgerSensitive = <String>{};

/// Factory wrapper for `aws_qldb_ledger`.
final class AwsQldbLedger extends Resource {
  static const String tfType = 'aws_qldb_ledger';

  AwsQldbLedger({
    required super.localName,
    TfArg<bool>? deletionProtection,
    TfArg<String>? kmsKey,
    TfArg<String>? name,
    required TfArg<String> permissionsMode,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (kmsKey != null) 'kms_key': kmsKey,
           if (name != null) 'name': name,
           'permissions_mode': permissionsMode,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQldbLedgerSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
