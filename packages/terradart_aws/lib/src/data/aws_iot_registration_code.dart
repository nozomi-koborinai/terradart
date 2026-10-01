// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iot_registration_code`.
const Set<String> _awsIotRegistrationCodeSensitive = <String>{};

/// Factory wrapper for `aws_iot_registration_code`.
final class DataAwsIotRegistrationCode extends Data {
  static const String tfType = 'aws_iot_registration_code';

  DataAwsIotRegistrationCode(
    super.localName, {
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsIotRegistrationCodeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `registration_code` attribute.
  TfRef<String> get registrationCode =>
      TfRef.attribute<String>(this, 'registration_code');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
