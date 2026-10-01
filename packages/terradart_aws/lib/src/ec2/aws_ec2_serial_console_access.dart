// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_serial_console_access`.
const Set<String> _awsEc2SerialConsoleAccessSensitive = <String>{};

/// Factory wrapper for `aws_ec2_serial_console_access`.
final class AwsEc2SerialConsoleAccess extends Resource {
  static const String tfType = 'aws_ec2_serial_console_access';

  AwsEc2SerialConsoleAccess({
    required super.localName,
    TfArg<bool>? enabled,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'enabled': ?enabled, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsEc2SerialConsoleAccessSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2SerialConsoleAccess>`.
  RefTo<AwsEc2SerialConsoleAccess> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
