// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_configuration_recorder_status`.
const Set<String> _awsConfigConfigurationRecorderStatusSensitive = <String>{};

/// Factory wrapper for `aws_config_configuration_recorder_status`.
final class AwsConfigConfigurationRecorderStatus extends Resource {
  static const String tfType = 'aws_config_configuration_recorder_status';

  AwsConfigConfigurationRecorderStatus(
    super.localName, {
    required TfArg<bool> isEnabled,
    required TfArg<String> name,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'is_enabled': isEnabled, 'name': name, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsConfigConfigurationRecorderStatusSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigConfigurationRecorderStatus>`.
  RefTo<AwsConfigConfigurationRecorderStatus> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `is_enabled` attribute.
  TfRef<bool> get isEnabled => TfRef.attribute<bool>(this, 'is_enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
