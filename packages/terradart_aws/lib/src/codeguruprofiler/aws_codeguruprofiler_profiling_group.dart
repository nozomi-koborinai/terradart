// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeguruprofiler_profiling_group`.
const Set<String> _awsCodeguruprofilerProfilingGroupSensitive = <String>{};

/// Typed helper for the `agent_orchestration_config` block of
/// `aws_codeguruprofiler_profiling_group` (derived from provider schema).
@immutable
final class CodeguruprofilerProfilingGroupAgentOrchestrationConfig {
  const CodeguruprofilerProfilingGroupAgentOrchestrationConfig({
    required this.profilingEnabled,
  });

  final TfArg<bool> profilingEnabled;

  Map<String, Object?> encode() => {
    'profiling_enabled': profilingEnabled.toTfJson(),
  };
}

/// Factory wrapper for `aws_codeguruprofiler_profiling_group`.
final class AwsCodeguruprofilerProfilingGroup extends Resource {
  static const String tfType = 'aws_codeguruprofiler_profiling_group';

  AwsCodeguruprofilerProfilingGroup({
    required super.localName,
    TfArg<String>? computePlatform,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<CodeguruprofilerProfilingGroupAgentOrchestrationConfig>?
    agentOrchestrationConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (computePlatform != null) 'compute_platform': computePlatform,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (agentOrchestrationConfig != null)
             'agent_orchestration_config': TfArg.literal([
               for (final e in agentOrchestrationConfig) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodeguruprofilerProfilingGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
