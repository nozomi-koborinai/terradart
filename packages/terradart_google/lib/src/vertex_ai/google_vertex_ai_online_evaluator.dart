// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_online_evaluator`.
const Set<String> _googleVertexAiOnlineEvaluatorSensitive = <String>{};

/// Factory wrapper for `google_vertex_ai_online_evaluator`.
///
/// An OnlineEvaluator contains the configuration for an Online Evaluation. It
/// periodically samples traces or sessions emitted by an agent and evaluates
/// them using the configured metric sources.
final class GoogleVertexAiOnlineEvaluator extends Resource {
  static const String tfType = 'google_vertex_ai_online_evaluator';

  GoogleVertexAiOnlineEvaluator(
    super.localName, {
    required TfArg<String> agentResource,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<Map<String, dynamic>> cloudObservability,
    required TfArg<Map<String, dynamic>> config,
    required TfArg<List<Map<String, dynamic>>> metricSources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_resource': agentResource,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'project': ?project,
           'region': ?region,
           'cloud_observability': cloudObservability,
           'config': config,
           'metric_sources': metricSources,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVertexAiOnlineEvaluatorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleVertexAiOnlineEvaluator>`.
  RefTo<GoogleVertexAiOnlineEvaluator> get ref => RefTo.of(this);
}
