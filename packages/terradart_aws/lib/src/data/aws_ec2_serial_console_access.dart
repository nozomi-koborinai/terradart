// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_serial_console_access`.
const Set<String> _awsEc2SerialConsoleAccessSensitive = <String>{};

/// Factory wrapper for `aws_ec2_serial_console_access`.
final class DataAwsEc2SerialConsoleAccess extends Data {
  static const String tfType = 'aws_ec2_serial_console_access';

  DataAwsEc2SerialConsoleAccess({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsEc2SerialConsoleAccessSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
