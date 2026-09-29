// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_worker`.
const Set<String> _cloudflareWorkerSensitive = <String>{};

/// Typed helper for the `observability` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerObservability {
  const WorkerObservability({
    this.enabled,
    this.headSamplingRate,
    this.issues,
    this.logs,
    this.traces,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? headSamplingRate;

  final WorkerObservabilityIssues? issues;

  final WorkerObservabilityLogs? logs;

  final WorkerObservabilityTraces? traces;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (headSamplingRate != null)
      'head_sampling_rate': headSamplingRate!.toTfJson(),
    if (issues != null) 'issues': issues!.encode(),
    if (logs != null) 'logs': logs!.encode(),
    if (traces != null) 'traces': traces!.encode(),
  };
}

/// Typed helper for the `observability.issues` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerObservabilityIssues {
  const WorkerObservabilityIssues({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `observability.logs` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerObservabilityLogs {
  const WorkerObservabilityLogs({
    this.destinations,
    this.enabled,
    this.headSamplingRate,
    this.invocationLogs,
    this.persist,
  });

  final TfArg<List<Object?>>? destinations;

  final TfArg<bool>? enabled;

  final TfArg<num>? headSamplingRate;

  final TfArg<bool>? invocationLogs;

  final TfArg<bool>? persist;

  Map<String, Object?> encode() => {
    if (destinations != null) 'destinations': destinations!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (headSamplingRate != null)
      'head_sampling_rate': headSamplingRate!.toTfJson(),
    if (invocationLogs != null) 'invocation_logs': invocationLogs!.toTfJson(),
    if (persist != null) 'persist': persist!.toTfJson(),
  };
}

/// Typed helper for the `observability.traces` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerObservabilityTraces {
  const WorkerObservabilityTraces({
    this.destinations,
    this.enabled,
    this.headSamplingRate,
    this.persist,
    this.propagationPolicy,
  });

  final TfArg<List<Object?>>? destinations;

  final TfArg<bool>? enabled;

  final TfArg<num>? headSamplingRate;

  final TfArg<bool>? persist;

  final TfArg<WorkerObservabilityTracesPropagationPolicy>? propagationPolicy;

  Map<String, Object?> encode() => {
    if (destinations != null) 'destinations': destinations!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (headSamplingRate != null)
      'head_sampling_rate': headSamplingRate!.toTfJson(),
    if (persist != null) 'persist': persist!.toTfJson(),
    if (propagationPolicy != null)
      'propagation_policy': propagationPolicy!.toTfJson(),
  };
}

/// `propagation_policy` — derived from the provider schema description.
enum WorkerObservabilityTracesPropagationPolicy implements TerraformEnum {
  authenticated('authenticated'),
  accept('accept');

  const WorkerObservabilityTracesPropagationPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `previews_base_config` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfig {
  const WorkerPreviewsBaseConfig({
    this.logpush,
    this.cacheOptions,
    this.env,
    this.limits,
    this.observability,
    this.placement,
    this.tailConsumers,
  });

  final TfArg<bool>? logpush;

  final WorkerPreviewsBaseConfigCacheOptions? cacheOptions;

  final Map<String, WorkerPreviewsBaseConfigEnv>? env;

  final WorkerPreviewsBaseConfigLimits? limits;

  final WorkerPreviewsBaseConfigObservability? observability;

  final WorkerPreviewsBaseConfigPlacement? placement;

  final List<WorkerPreviewsBaseConfigTailConsumers>? tailConsumers;

  Map<String, Object?> encode() => {
    if (logpush != null) 'logpush': logpush!.toTfJson(),
    if (cacheOptions != null) 'cache_options': cacheOptions!.encode(),
    if (env != null)
      'env': {for (final e in env!.entries) e.key: e.value.encode()},
    if (limits != null) 'limits': limits!.encode(),
    if (observability != null) 'observability': observability!.encode(),
    if (placement != null) 'placement': placement!.encode(),
    if (tailConsumers != null)
      'tail_consumers': [for (final e in tailConsumers!) e.encode()],
  };
}

/// Typed helper for the `previews_base_config.cache_options` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfigCacheOptions {
  const WorkerPreviewsBaseConfigCacheOptions({
    this.crossVersionCache,
    this.enabled,
  });

  final TfArg<bool>? crossVersionCache;

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (crossVersionCache != null)
      'cross_version_cache': crossVersionCache!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `previews_base_config.env` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfigEnv {
  const WorkerPreviewsBaseConfigEnv({required this.type});

  final TfArg<String> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Typed helper for the `previews_base_config.limits` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfigLimits {
  const WorkerPreviewsBaseConfigLimits({this.cpuMs, this.subrequests});

  final TfArg<num>? cpuMs;

  final TfArg<num>? subrequests;

  Map<String, Object?> encode() => {
    if (cpuMs != null) 'cpu_ms': cpuMs!.toTfJson(),
    if (subrequests != null) 'subrequests': subrequests!.toTfJson(),
  };
}

/// Typed helper for the `previews_base_config.observability` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfigObservability {
  const WorkerPreviewsBaseConfigObservability({
    this.enabled,
    this.headSamplingRate,
    this.redactQueryString,
    this.issues,
    this.logs,
    this.traces,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? headSamplingRate;

  final TfArg<bool>? redactQueryString;

  final WorkerPreviewsBaseConfigObservabilityIssues? issues;

  final WorkerPreviewsBaseConfigObservabilityLogs? logs;

  final WorkerPreviewsBaseConfigObservabilityTraces? traces;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (headSamplingRate != null)
      'head_sampling_rate': headSamplingRate!.toTfJson(),
    if (redactQueryString != null)
      'redact_query_string': redactQueryString!.toTfJson(),
    if (issues != null) 'issues': issues!.encode(),
    if (logs != null) 'logs': logs!.encode(),
    if (traces != null) 'traces': traces!.encode(),
  };
}

/// Typed helper for the `previews_base_config.observability.issues` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfigObservabilityIssues {
  const WorkerPreviewsBaseConfigObservabilityIssues({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `previews_base_config.observability.logs` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfigObservabilityLogs {
  const WorkerPreviewsBaseConfigObservabilityLogs({
    this.destinations,
    this.enabled,
    this.headSamplingRate,
    this.invocationLogs,
    this.persist,
  });

  final TfArg<List<Object?>>? destinations;

  final TfArg<bool>? enabled;

  final TfArg<num>? headSamplingRate;

  final TfArg<bool>? invocationLogs;

  final TfArg<bool>? persist;

  Map<String, Object?> encode() => {
    if (destinations != null) 'destinations': destinations!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (headSamplingRate != null)
      'head_sampling_rate': headSamplingRate!.toTfJson(),
    if (invocationLogs != null) 'invocation_logs': invocationLogs!.toTfJson(),
    if (persist != null) 'persist': persist!.toTfJson(),
  };
}

/// Typed helper for the `previews_base_config.observability.traces` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfigObservabilityTraces {
  const WorkerPreviewsBaseConfigObservabilityTraces({
    this.destinations,
    this.enabled,
    this.headSamplingRate,
    this.persist,
    this.propagationPolicy,
  });

  final TfArg<List<Object?>>? destinations;

  final TfArg<bool>? enabled;

  final TfArg<num>? headSamplingRate;

  final TfArg<bool>? persist;

  final TfArg<WorkerPreviewsBaseConfigObservabilityTracesPropagationPolicy>?
  propagationPolicy;

  Map<String, Object?> encode() => {
    if (destinations != null) 'destinations': destinations!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (headSamplingRate != null)
      'head_sampling_rate': headSamplingRate!.toTfJson(),
    if (persist != null) 'persist': persist!.toTfJson(),
    if (propagationPolicy != null)
      'propagation_policy': propagationPolicy!.toTfJson(),
  };
}

/// `propagation_policy` — derived from the provider schema description.
enum WorkerPreviewsBaseConfigObservabilityTracesPropagationPolicy
    implements TerraformEnum {
  authenticated('authenticated'),
  accept('accept');

  const WorkerPreviewsBaseConfigObservabilityTracesPropagationPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `previews_base_config.placement` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfigPlacement {
  const WorkerPreviewsBaseConfigPlacement({
    this.host,
    this.hostname,
    this.mode,
    this.region,
    this.target,
  });

  final TfArg<String>? host;

  final TfArg<String>? hostname;

  final TfArg<WorkerPreviewsBaseConfigPlacementMode>? mode;

  final TfArg<String>? region;

  final List<WorkerPreviewsBaseConfigPlacementTarget>? target;

  Map<String, Object?> encode() => {
    if (host != null) 'host': host!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
    if (target != null) 'target': [for (final e in target!) e.encode()],
  };
}

/// `mode` — derived from the provider schema description.
enum WorkerPreviewsBaseConfigPlacementMode implements TerraformEnum {
  smart('smart'),
  targeted('targeted');

  const WorkerPreviewsBaseConfigPlacementMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `previews_base_config.placement.target` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfigPlacementTarget {
  const WorkerPreviewsBaseConfigPlacementTarget({
    this.host,
    this.hostname,
    this.region,
  });

  final TfArg<String>? host;

  final TfArg<String>? hostname;

  final TfArg<String>? region;

  Map<String, Object?> encode() => {
    if (host != null) 'host': host!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
  };
}

/// Typed helper for the `previews_base_config.tail_consumers` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerPreviewsBaseConfigTailConsumers {
  const WorkerPreviewsBaseConfigTailConsumers({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Typed helper for the `subdomain` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerSubdomain {
  const WorkerSubdomain({this.enabled, this.previewsEnabled});

  final TfArg<bool>? enabled;

  final TfArg<bool>? previewsEnabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (previewsEnabled != null)
      'previews_enabled': previewsEnabled!.toTfJson(),
  };
}

/// Typed helper for the `tail_consumers` block of
/// `cloudflare_worker` (derived from provider schema).
@immutable
final class WorkerTailConsumers {
  const WorkerTailConsumers({required this.name});

  final TfArg<String> name;

  Map<String, Object?> encode() => {'name': name.toTfJson()};
}

/// Factory wrapper for `cloudflare_worker`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write` - `Workers Tail Read`
final class CloudflareWorker extends Resource {
  static const String tfType = 'cloudflare_worker';

  CloudflareWorker({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? force,
    TfArg<bool>? logpush,
    required TfArg<String> name,
    TfArg<List<String>>? tags,
    WorkerObservability? observability,
    WorkerPreviewsBaseConfig? previewsBaseConfig,
    WorkerSubdomain? subdomain,
    List<WorkerTailConsumers>? tailConsumers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (force != null) 'force': force,
           if (logpush != null) 'logpush': logpush,
           'name': name,
           if (tags != null) 'tags': tags,
           if (observability != null)
             'observability': TfArg.literal(observability.encode()),
           if (previewsBaseConfig != null)
             'previews_base_config': TfArg.literal(previewsBaseConfig.encode()),
           if (subdomain != null)
             'subdomain': TfArg.literal(subdomain.encode()),
           if (tailConsumers != null)
             'tail_consumers': TfArg.literal([
               for (final e in tailConsumers) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWorker>`.
  RefTo<CloudflareWorker> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `deployed_on` attribute.
  TfRef<String> get deployedOn => TfRef.attribute<String>(this, 'deployed_on');

  /// Reference to `updated_on` attribute.
  TfRef<String> get updatedOn => TfRef.attribute<String>(this, 'updated_on');
}
