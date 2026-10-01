// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apprunner_default_auto_scaling_configuration_version`.
const Set<String> _awsApprunnerDefaultAutoScalingConfigurationVersionSensitive =
    <String>{};

/// Factory wrapper for `aws_apprunner_default_auto_scaling_configuration_version`.
final class AwsApprunnerDefaultAutoScalingConfigurationVersion
    extends Resource {
  static const String tfType =
      'aws_apprunner_default_auto_scaling_configuration_version';

  AwsApprunnerDefaultAutoScalingConfigurationVersion(
    super.localName, {
    required TfArg<String> autoScalingConfigurationArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_scaling_configuration_arn': autoScalingConfigurationArn,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApprunnerDefaultAutoScalingConfigurationVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApprunnerDefaultAutoScalingConfigurationVersion>`.
  RefTo<AwsApprunnerDefaultAutoScalingConfigurationVersion> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_scaling_configuration_arn` attribute.
  TfRef<String> get autoScalingConfigurationArn =>
      TfRef.attribute<String>(this, 'auto_scaling_configuration_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
