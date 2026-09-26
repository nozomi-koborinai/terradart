// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_apprunner_auto_scaling_configuration_version`.
const Set<String> _awsApprunnerAutoScalingConfigurationVersionSensitive =
    <String>{};

/// Factory wrapper for `aws_apprunner_auto_scaling_configuration_version`.
final class AwsApprunnerAutoScalingConfigurationVersion extends Resource {
  static const String tfType =
      'aws_apprunner_auto_scaling_configuration_version';

  AwsApprunnerAutoScalingConfigurationVersion({
    required super.localName,
    required TfArg<String> autoScalingConfigurationName,
    TfArg<num>? maxConcurrency,
    TfArg<num>? maxSize,
    TfArg<num>? minSize,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_scaling_configuration_name': autoScalingConfigurationName,
           if (maxConcurrency != null) 'max_concurrency': maxConcurrency,
           if (maxSize != null) 'max_size': maxSize,
           if (minSize != null) 'min_size': minSize,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApprunnerAutoScalingConfigurationVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auto_scaling_configuration_revision` attribute.
  TfRef<num> get autoScalingConfigurationRevision =>
      TfRef.attribute<num>(this, 'auto_scaling_configuration_revision');

  /// Reference to `has_associated_service` attribute.
  TfRef<bool> get hasAssociatedService =>
      TfRef.attribute<bool>(this, 'has_associated_service');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `latest` attribute.
  TfRef<bool> get latest => TfRef.attribute<bool>(this, 'latest');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
