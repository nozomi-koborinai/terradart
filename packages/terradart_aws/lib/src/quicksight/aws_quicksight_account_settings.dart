// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_account_settings`.
const Set<String> _awsQuicksightAccountSettingsSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_account_settings`.
final class AwsQuicksightAccountSettings extends Resource {
  static const String tfType = 'aws_quicksight_account_settings';

  AwsQuicksightAccountSettings(
    super.localName, {
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
           'aws_account_id': ?awsAccountId,
           'default_namespace': ?defaultNamespace,
           'region': ?region,
           'termination_protection_enabled': ?terminationProtectionEnabled,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightAccountSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightAccountSettings>`.
  RefTo<AwsQuicksightAccountSettings> get ref => RefTo.of(this);

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `default_namespace` attribute.
  TfRef<String> get defaultNamespace =>
      TfRef.attribute<String>(this, 'default_namespace');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `termination_protection_enabled` attribute.
  TfRef<bool> get terminationProtectionEnabled =>
      TfRef.attribute<bool>(this, 'termination_protection_enabled');
}
