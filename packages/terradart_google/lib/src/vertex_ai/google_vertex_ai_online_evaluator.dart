// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vertex_ai_online_evaluator`.
const Set<String> _googleVertexAiOnlineEvaluatorSensitive = <String>{};

/// Typed helper for the `cloud_observability` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorCloudObservability {
  const VertexAiOnlineEvaluatorCloudObservability({
    this.logView,
    this.traceView,
    required this.openTelemetry,
    this.sessionScope,
    this.traceScope,
  });

  final TfArg<String>? logView;

  final TfArg<String>? traceView;

  final VertexAiOnlineEvaluatorOpenTelemetry openTelemetry;

  final VertexAiOnlineEvaluatorSessionScope? sessionScope;

  final VertexAiOnlineEvaluatorTraceScope? traceScope;

  @internal
  Map<String, Object?> encode() => {
    'log_view': ?logView?.toTfJson(),
    'trace_view': ?traceView?.toTfJson(),
    'open_telemetry': openTelemetry.encode(),
    'session_scope': ?sessionScope?.encode(),
    'trace_scope': ?traceScope?.encode(),
  };
}

/// Typed helper for the `cloud_observability.open_telemetry` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorOpenTelemetry {
  const VertexAiOnlineEvaluatorOpenTelemetry({required this.semconvVersion});

  final TfArg<String> semconvVersion;

  @internal
  Map<String, Object?> encode() => {
    'semconv_version': semconvVersion.toTfJson(),
  };
}

/// Typed helper for the `cloud_observability.session_scope` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorSessionScope {
  const VertexAiOnlineEvaluatorSessionScope({
    this.filter,
    this.inactivityTrigger,
  });

  final List<VertexAiOnlineEvaluatorSessionScopeFilter>? filter;

  final VertexAiOnlineEvaluatorInactivityTrigger? inactivityTrigger;

  @internal
  Map<String, Object?> encode() => {
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
    'inactivity_trigger': ?inactivityTrigger?.encode(),
  };
}

/// Typed helper for the `cloud_observability.session_scope.filter` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorSessionScopeFilter {
  const VertexAiOnlineEvaluatorSessionScopeFilter({
    this.duration,
    this.modelCallErrors,
    this.modelCalls,
    this.toolCallErrors,
    this.toolCalls,
    this.totalTokenUsage,
    this.userTurns,
  });

  final VertexAiOnlineEvaluatorDuration? duration;

  final VertexAiOnlineEvaluatorModelCallErrors? modelCallErrors;

  final VertexAiOnlineEvaluatorModelCalls? modelCalls;

  final VertexAiOnlineEvaluatorToolCallErrors? toolCallErrors;

  final VertexAiOnlineEvaluatorToolCalls? toolCalls;

  final VertexAiOnlineEvaluatorTotalTokenUsage? totalTokenUsage;

  final VertexAiOnlineEvaluatorUserTurns? userTurns;

  @internal
  Map<String, Object?> encode() => {
    'duration': ?duration?.encode(),
    'model_call_errors': ?modelCallErrors?.encode(),
    'model_calls': ?modelCalls?.encode(),
    'tool_call_errors': ?toolCallErrors?.encode(),
    'tool_calls': ?toolCalls?.encode(),
    'total_token_usage': ?totalTokenUsage?.encode(),
    'user_turns': ?userTurns?.encode(),
  };
}

/// Typed helper for the `cloud_observability.session_scope.filter.duration` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VertexAiOnlineEvaluatorDuration {
  const VertexAiOnlineEvaluatorDuration({
    required this.comparisonOperator,
    required this.value,
  });

  final VertexAiOnlineEvaluatorComparisonOperator comparisonOperator;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `comparison_operator` — derived from the provider schema description.
extension type const VertexAiOnlineEvaluatorComparisonOperator._(
  TfArg<String> _
) implements TfArg<String> {
  VertexAiOnlineEvaluatorComparisonOperator.variable(String name)
    : this._(TfArg.variable(name));
  VertexAiOnlineEvaluatorComparisonOperator.expression(String template)
    : this._(TfArg.expression(template));
  const VertexAiOnlineEvaluatorComparisonOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const less = VertexAiOnlineEvaluatorComparisonOperator._(
    TfArgLiteral('LESS'),
  );
  static const lessOrEqual = VertexAiOnlineEvaluatorComparisonOperator._(
    TfArgLiteral('LESS_OR_EQUAL'),
  );
  static const equal = VertexAiOnlineEvaluatorComparisonOperator._(
    TfArgLiteral('EQUAL'),
  );
  static const notEqual = VertexAiOnlineEvaluatorComparisonOperator._(
    TfArgLiteral('NOT_EQUAL'),
  );
  static const greaterOrEqual = VertexAiOnlineEvaluatorComparisonOperator._(
    TfArgLiteral('GREATER_OR_EQUAL'),
  );
  static const greater = VertexAiOnlineEvaluatorComparisonOperator._(
    TfArgLiteral('GREATER'),
  );

  static const List<VertexAiOnlineEvaluatorComparisonOperator> values = [
    less,
    lessOrEqual,
    equal,
    notEqual,
    greaterOrEqual,
    greater,
  ];
}

/// Typed helper for the `cloud_observability.session_scope.filter.model_call_errors` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorModelCallErrors {
  const VertexAiOnlineEvaluatorModelCallErrors({
    required this.comparisonOperator,
    required this.value,
  });

  final VertexAiOnlineEvaluatorComparisonOperator comparisonOperator;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `cloud_observability.session_scope.filter.model_calls` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorModelCalls {
  const VertexAiOnlineEvaluatorModelCalls({
    required this.comparisonOperator,
    required this.value,
  });

  final VertexAiOnlineEvaluatorComparisonOperator comparisonOperator;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `cloud_observability.session_scope.filter.tool_call_errors` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorToolCallErrors {
  const VertexAiOnlineEvaluatorToolCallErrors({
    required this.comparisonOperator,
    required this.value,
  });

  final VertexAiOnlineEvaluatorComparisonOperator comparisonOperator;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `cloud_observability.session_scope.filter.tool_calls` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorToolCalls {
  const VertexAiOnlineEvaluatorToolCalls({
    required this.comparisonOperator,
    required this.value,
  });

  final VertexAiOnlineEvaluatorComparisonOperator comparisonOperator;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `cloud_observability.session_scope.filter.total_token_usage` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class VertexAiOnlineEvaluatorTotalTokenUsage {
  const VertexAiOnlineEvaluatorTotalTokenUsage({
    required this.comparisonOperator,
    required this.value,
  });

  final VertexAiOnlineEvaluatorComparisonOperator comparisonOperator;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `cloud_observability.session_scope.filter.user_turns` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorUserTurns {
  const VertexAiOnlineEvaluatorUserTurns({
    required this.comparisonOperator,
    required this.value,
  });

  final VertexAiOnlineEvaluatorComparisonOperator comparisonOperator;

  final TfArg<num> value;

  @internal
  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `cloud_observability.session_scope.inactivity_trigger` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorInactivityTrigger {
  const VertexAiOnlineEvaluatorInactivityTrigger({required this.threshold});

  final TfArg<String> threshold;

  @internal
  Map<String, Object?> encode() => {'threshold': threshold.toTfJson()};
}

/// Typed helper for the `cloud_observability.trace_scope` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorTraceScope {
  const VertexAiOnlineEvaluatorTraceScope({this.filter});

  final List<VertexAiOnlineEvaluatorTraceScopeFilter>? filter;

  @internal
  Map<String, Object?> encode() => {
    if (filter != null) 'filter': [for (final e in filter!) e.encode()],
  };
}

/// Typed helper for the `cloud_observability.trace_scope.filter` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorTraceScopeFilter {
  const VertexAiOnlineEvaluatorTraceScopeFilter({
    this.duration,
    this.totalTokenUsage,
  });

  final VertexAiOnlineEvaluatorDuration? duration;

  final VertexAiOnlineEvaluatorTotalTokenUsage? totalTokenUsage;

  @internal
  Map<String, Object?> encode() => {
    'duration': ?duration?.encode(),
    'total_token_usage': ?totalTokenUsage?.encode(),
  };
}

/// Typed helper for the `config` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorConfig {
  const VertexAiOnlineEvaluatorConfig({
    this.maxEvaluatedSamplesPerRun,
    this.randomSampling,
  });

  final TfArg<String>? maxEvaluatedSamplesPerRun;

  final VertexAiOnlineEvaluatorRandomSampling? randomSampling;

  @internal
  Map<String, Object?> encode() => {
    'max_evaluated_samples_per_run': ?maxEvaluatedSamplesPerRun?.toTfJson(),
    'random_sampling': ?randomSampling?.encode(),
  };
}

/// Typed helper for the `config.random_sampling` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorRandomSampling {
  const VertexAiOnlineEvaluatorRandomSampling({required this.percentage});

  final TfArg<num> percentage;

  @internal
  Map<String, Object?> encode() => {'percentage': percentage.toTfJson()};
}

/// Typed helper for the `metric_sources` block of
/// `google_vertex_ai_online_evaluator` (derived from provider schema).
@immutable
final class VertexAiOnlineEvaluatorMetricSources {
  const VertexAiOnlineEvaluatorMetricSources({
    this.metric,
    this.metricResourceName,
  });

  final TfArg<String>? metric;

  final TfArg<String>? metricResourceName;

  @internal
  Map<String, Object?> encode() => {
    'metric': ?metric?.toTfJson(),
    'metric_resource_name': ?metricResourceName?.toTfJson(),
  };
}

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
    required VertexAiOnlineEvaluatorCloudObservability cloudObservability,
    required VertexAiOnlineEvaluatorConfig config,
    required List<VertexAiOnlineEvaluatorMetricSources> metricSources,
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
           'cloud_observability': TfArg.literal(cloudObservability.encode()),
           'config': TfArg.literal(config.encode()),
           'metric_sources': TfArg.literal([
             for (final e in metricSources) e.encode(),
           ]),
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
