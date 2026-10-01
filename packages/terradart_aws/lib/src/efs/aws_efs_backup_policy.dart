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
final class EfsBackupPolicy {
  const EfsBackupPolicy({required this.status});

  final EfsBackupPolicyStatus status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// `status` — derived from the provider schema description.
extension type const EfsBackupPolicyStatus._(TfArg<String> _)
    implements TfArg<String> {
  EfsBackupPolicyStatus.variable(String name) : this._(TfArg.variable(name));
  EfsBackupPolicyStatus.expression(String template)
    : this._(TfArg.expression(template));
  const EfsBackupPolicyStatus.arg(TfArg<String> arg) : this._(arg);

  static const disabled = EfsBackupPolicyStatus._(TfArgLiteral('DISABLED'));
  static const enabled = EfsBackupPolicyStatus._(TfArgLiteral('ENABLED'));

  static const List<EfsBackupPolicyStatus> values = [disabled, enabled];
}

/// Factory wrapper for `aws_efs_backup_policy`.
final class AwsEfsBackupPolicy extends Resource {
  static const String tfType = 'aws_efs_backup_policy';

  AwsEfsBackupPolicy(
    super.localName, {
    required TfArg<String> fileSystemId,
    TfArg<String>? region,
    required EfsBackupPolicy backupPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'file_system_id': fileSystemId,
           'region': ?region,
           'backup_policy': TfArg.literal(backupPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsBackupPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEfsBackupPolicy>`.
  RefTo<AwsEfsBackupPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
