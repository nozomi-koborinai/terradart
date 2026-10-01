// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glacier_vault_lock`.
const Set<String> _awsGlacierVaultLockSensitive = <String>{};

/// Factory wrapper for `aws_glacier_vault_lock`.
final class AwsGlacierVaultLock extends Resource {
  static const String tfType = 'aws_glacier_vault_lock';

  AwsGlacierVaultLock(
    super.localName, {
    required TfArg<bool> completeLock,
    TfArg<bool>? ignoreDeletionError,
    required TfArg<String> policy,
    TfArg<String>? region,
    required TfArg<String> vaultName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'complete_lock': completeLock,
           'ignore_deletion_error': ?ignoreDeletionError,
           'policy': policy,
           'region': ?region,
           'vault_name': vaultName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlacierVaultLockSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlacierVaultLock>`.
  RefTo<AwsGlacierVaultLock> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `complete_lock` attribute.
  TfRef<bool> get completeLock => TfRef.attribute<bool>(this, 'complete_lock');

  /// Reference to `ignore_deletion_error` attribute.
  TfRef<bool> get ignoreDeletionError =>
      TfRef.attribute<bool>(this, 'ignore_deletion_error');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `vault_name` attribute.
  TfRef<String> get vaultName => TfRef.attribute<String>(this, 'vault_name');
}
