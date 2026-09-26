// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_account`.
const Set<String> _awsSecurityhubAccountSensitive = <String>{};

/// Factory wrapper for `aws_securityhub_account`.
final class AwsSecurityhubAccount extends Resource {
  static const String tfType = 'aws_securityhub_account';

  AwsSecurityhubAccount({
    required super.localName,
    TfArg<bool>? autoEnableControls,
    TfArg<String>? controlFindingGenerator,
    TfArg<bool>? enableDefaultStandards,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoEnableControls != null)
             'auto_enable_controls': autoEnableControls,
           if (controlFindingGenerator != null)
             'control_finding_generator': controlFindingGenerator,
           if (enableDefaultStandards != null)
             'enable_default_standards': enableDefaultStandards,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
