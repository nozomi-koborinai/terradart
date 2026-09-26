// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeguruprofiler_profiling_group`.
const Set<String> _awsCodeguruprofilerProfilingGroupSensitive = <String>{};

/// Factory wrapper for `aws_codeguruprofiler_profiling_group`.
final class DataAwsCodeguruprofilerProfilingGroup extends Data {
  static const String tfType = 'aws_codeguruprofiler_profiling_group';

  DataAwsCodeguruprofilerProfilingGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodeguruprofilerProfilingGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `agent_orchestration_config` attribute.
  TfRef<List<Map<String, Object?>>> get agentOrchestrationConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'agent_orchestration_config',
      );

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `compute_platform` attribute.
  TfRef<String> get computePlatform =>
      TfRef.attribute<String>(this, 'compute_platform');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `profiling_status` attribute.
  TfRef<List<Map<String, Object?>>> get profilingStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'profiling_status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
