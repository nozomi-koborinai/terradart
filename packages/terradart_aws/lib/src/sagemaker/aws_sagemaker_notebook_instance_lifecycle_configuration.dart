// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_notebook_instance_lifecycle_configuration`.
const Set<String> _awsSagemakerNotebookInstanceLifecycleConfigurationSensitive =
    <String>{};

/// Factory wrapper for `aws_sagemaker_notebook_instance_lifecycle_configuration`.
final class AwsSagemakerNotebookInstanceLifecycleConfiguration
    extends Resource {
  static const String tfType =
      'aws_sagemaker_notebook_instance_lifecycle_configuration';

  AwsSagemakerNotebookInstanceLifecycleConfiguration({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? onCreate,
    TfArg<String>? onStart,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (onCreate != null) 'on_create': onCreate,
           if (onStart != null) 'on_start': onStart,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSagemakerNotebookInstanceLifecycleConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
