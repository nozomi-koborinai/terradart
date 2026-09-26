// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_account_settings`.
const Set<String> _awsQuicksightAccountSettingsSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_account_settings`.
final class AwsQuicksightAccountSettings extends Resource {
  static const String tfType = 'aws_quicksight_account_settings';

  AwsQuicksightAccountSettings({
    required super.localName,
    TfArg<String>? awsAccountId,
    TfArg<String>? defaultNamespace,
    TfArg<String>? region,
    TfArg<bool>? terminationProtectionEnabled,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           if (defaultNamespace != null) 'default_namespace': defaultNamespace,
           if (region != null) 'region': region,
           if (terminationProtectionEnabled != null)
             'termination_protection_enabled': terminationProtectionEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightAccountSettingsSensitive;
}
