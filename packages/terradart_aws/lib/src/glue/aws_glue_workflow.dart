// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_glue_workflow`.
const Set<String> _awsGlueWorkflowSensitive = <String>{};

/// Factory wrapper for `aws_glue_workflow`.
final class AwsGlueWorkflow extends Resource {
  static const String tfType = 'aws_glue_workflow';

  AwsGlueWorkflow({
    required super.localName,
    TfArg<Map<String, String>>? defaultRunProperties,
    TfArg<String>? description,
    TfArg<num>? maxConcurrentRuns,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultRunProperties != null)
             'default_run_properties': defaultRunProperties,
           if (description != null) 'description': description,
           if (maxConcurrentRuns != null)
             'max_concurrent_runs': maxConcurrentRuns,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueWorkflowSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
