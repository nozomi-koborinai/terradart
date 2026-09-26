// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_efs_backup_policy`.
const Set<String> _awsEfsBackupPolicySensitive = <String>{};

/// Typed helper for the `backup_policy` block of
/// `aws_efs_backup_policy` (derived from provider schema).
@immutable
final class EfsBackupPolicyBackupPolicy {
  const EfsBackupPolicyBackupPolicy({required this.status});

  final TfArg<String> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Factory wrapper for `aws_efs_backup_policy`.
final class AwsEfsBackupPolicy extends Resource {
  static const String tfType = 'aws_efs_backup_policy';

  AwsEfsBackupPolicy({
    required super.localName,
    required TfArg<String> fileSystemId,
    TfArg<String>? region,
    required EfsBackupPolicyBackupPolicy backupPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_system_id': fileSystemId,
           if (region != null) 'region': region,
           'backup_policy': TfArg.literal(backupPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsBackupPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
