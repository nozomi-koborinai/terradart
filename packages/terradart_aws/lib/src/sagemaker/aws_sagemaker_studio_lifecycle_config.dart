// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_studio_lifecycle_config`.
const Set<String> _awsSagemakerStudioLifecycleConfigSensitive = <String>{};

/// Factory wrapper for `aws_sagemaker_studio_lifecycle_config`.
final class AwsSagemakerStudioLifecycleConfig extends Resource {
  static const String tfType = 'aws_sagemaker_studio_lifecycle_config';

  AwsSagemakerStudioLifecycleConfig({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> studioLifecycleConfigAppType,
    required TfArg<String> studioLifecycleConfigContent,
    required TfArg<String> studioLifecycleConfigName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'studio_lifecycle_config_app_type': studioLifecycleConfigAppType,
           'studio_lifecycle_config_content': studioLifecycleConfigContent,
           'studio_lifecycle_config_name': studioLifecycleConfigName,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSagemakerStudioLifecycleConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
