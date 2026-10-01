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
           'default_run_properties': ?defaultRunProperties,
           'description': ?description,
           'max_concurrent_runs': ?maxConcurrentRuns,
           'name': ?name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGlueWorkflowSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGlueWorkflow>`.
  RefTo<AwsGlueWorkflow> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_run_properties` attribute.
  TfRef<Map<String, String>> get defaultRunProperties =>
      TfRef.attribute<Map<String, String>>(this, 'default_run_properties');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `max_concurrent_runs` attribute.
  TfRef<num> get maxConcurrentRuns =>
      TfRef.attribute<num>(this, 'max_concurrent_runs');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
