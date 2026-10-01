// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_security_controls`.
const Set<String> _awsSecurityhubSecurityControlsSensitive = <String>{};

/// Factory wrapper for `aws_securityhub_security_controls`.
final class DataAwsSecurityhubSecurityControls extends Data {
  static const String tfType = 'aws_securityhub_security_controls';

  DataAwsSecurityhubSecurityControls(
    super.localName, {
    TfArg<String>? region,
    TfArg<String>? standardsArn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'standards_arn': ?standardsArn},
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubSecurityControlsSensitive;

  /// Reference to `security_control_definitions` attribute.
  TfRef<List<Map<String, Object?>>> get securityControlDefinitions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'security_control_definitions',
      );

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `standards_arn` attribute.
  TfRef<String> get standardsArn =>
      TfRef.attribute<String>(this, 'standards_arn');
}
