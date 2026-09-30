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
           'name': ?name,
           'on_create': ?onCreate,
           'on_start': ?onStart,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSagemakerNotebookInstanceLifecycleConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerNotebookInstanceLifecycleConfiguration>`.
  RefTo<AwsSagemakerNotebookInstanceLifecycleConfiguration> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `on_create` attribute.
  TfRef<String> get onCreateRef => TfRef.attribute<String>(this, 'on_create');

  /// Reference to `on_start` attribute.
  TfRef<String> get onStartRef => TfRef.attribute<String>(this, 'on_start');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
