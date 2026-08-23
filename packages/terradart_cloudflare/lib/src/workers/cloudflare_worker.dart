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
    this.logs,
    this.traces,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? headSamplingRate;

  final WorkerObservabilityLogs? logs;

  final WorkerObservabilityTraces? traces;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (headSamplingRate != null)
      'head_sampling_rate': headSamplingRate!.toTfJson(),
    if (logs != null) 'logs': logs!.encode(),
    if (traces != null) 'traces': traces!.encode(),
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

  final TfArg<String>? propagationPolicy;

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
    TfArg<bool>? logpush,
    required TfArg<String> name,
    TfArg<List<String>>? tags,
    WorkerObservability? observability,
    WorkerSubdomain? subdomain,
    List<WorkerTailConsumers>? tailConsumers,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (logpush != null) 'logpush': logpush,
           'name': name,
           if (tags != null) 'tags': tags,
           if (observability != null)
             'observability': TfArg.literal(observability.encode()),
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
