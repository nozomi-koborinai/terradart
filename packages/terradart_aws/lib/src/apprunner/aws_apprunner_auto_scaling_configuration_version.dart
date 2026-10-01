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
           'max_concurrency': ?maxConcurrency,
           'max_size': ?maxSize,
           'min_size': ?minSize,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsApprunnerAutoScalingConfigurationVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsApprunnerAutoScalingConfigurationVersion>`.
  RefTo<AwsApprunnerAutoScalingConfigurationVersion> get ref => RefTo.of(this);

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

  /// Reference to `auto_scaling_configuration_name` attribute.
  TfRef<String> get autoScalingConfigurationName =>
      TfRef.attribute<String>(this, 'auto_scaling_configuration_name');

  /// Reference to `max_concurrency` attribute.
  TfRef<num> get maxConcurrency =>
      TfRef.attribute<num>(this, 'max_concurrency');

  /// Reference to `max_size` attribute.
  TfRef<num> get maxSize => TfRef.attribute<num>(this, 'max_size');

  /// Reference to `min_size` attribute.
  TfRef<num> get minSize => TfRef.attribute<num>(this, 'min_size');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
