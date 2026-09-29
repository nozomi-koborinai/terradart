// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ec2/aws_ec2_serial_console_access.dart';

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
  }) : super(terraformType: tfType, argMap: {'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsEc2SerialConsoleAccessSensitive;

  /// A reference to the `aws_ec2_serial_console_access` this data source reads, for
  /// arguments typed `RefTo<AwsEc2SerialConsoleAccess>`.
  RefTo<AwsEc2SerialConsoleAccess> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
