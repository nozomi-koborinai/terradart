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

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_details` attribute.
  TfRef<List<Map<String, Object?>>> get stateDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state_details');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `agent_resource` attribute.
  TfRef<String> get agentResource =>
      TfRef.attribute<String>(this, 'agent_resource');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
