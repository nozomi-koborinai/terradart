// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_account`.
const Set<String> _awsSecurityhubAccountSensitive = <String>{};

/// Securityhub Account Control Finding enum for `control_finding_generator`.
enum SecurityhubAccountControlFindingGenerator implements TerraformEnum {
  standardControl('STANDARD_CONTROL'),
  securityControl('SECURITY_CONTROL');

  const SecurityhubAccountControlFindingGenerator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_securityhub_account`.
final class AwsSecurityhubAccount extends Resource {
  static const String tfType = 'aws_securityhub_account';

  AwsSecurityhubAccount({
    required super.localName,
    TfArg<bool>? autoEnableControls,
    TfArg<SecurityhubAccountControlFindingGenerator>? controlFindingGenerator,
    TfArg<bool>? enableDefaultStandards,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_enable_controls': ?autoEnableControls,
           'control_finding_generator': ?controlFindingGenerator,
           'enable_default_standards': ?enableDefaultStandards,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSecurityhubAccount>`.
  RefTo<AwsSecurityhubAccount> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_enable_controls` attribute.
  TfRef<bool> get autoEnableControlsRef =>
      TfRef.attribute<bool>(this, 'auto_enable_controls');

  /// Reference to `control_finding_generator` attribute.
  TfRef<String> get controlFindingGeneratorRef =>
      TfRef.attribute<String>(this, 'control_finding_generator');

  /// Reference to `enable_default_standards` attribute.
  TfRef<bool> get enableDefaultStandardsRef =>
      TfRef.attribute<bool>(this, 'enable_default_standards');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
