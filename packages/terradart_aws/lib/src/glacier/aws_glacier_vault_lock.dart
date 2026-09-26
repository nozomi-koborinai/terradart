// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glacier_vault_lock`.
const Set<String> _awsGlacierVaultLockSensitive = <String>{};

/// Factory wrapper for `aws_glacier_vault_lock`.
final class AwsGlacierVaultLock extends Resource {
  static const String tfType = 'aws_glacier_vault_lock';

  AwsGlacierVaultLock({
    required super.localName,
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
           if (ignoreDeletionError != null)
             'ignore_deletion_error': ignoreDeletionError,
           'policy': policy,
           if (region != null) 'region': region,
           'vault_name': vaultName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlacierVaultLockSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
