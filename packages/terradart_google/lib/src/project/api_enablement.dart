import 'package:terradart_core/terradart_core.dart';

import 'apis.dart';
import 'barrels.dart';
import 'google_project_service.dart';

/// Default propagation wait shared by [ApiEnablement] and
/// [ApisEnablement.enable] — single source so the two layers cannot desync.
const Duration _defaultPropagationDelay = Duration(seconds: 60);

/// API enablement bundle — [GoogleProjectService] list plus optional
/// [TimeSleep] propagation delay.
final class ApiEnablement {
  const ApiEnablement({
    required this.services,
    this.propagationDelay = _defaultPropagationDelay,
    this.propagationLocalName = 'api_propagation',
  });

  final List<GoogleProjectService> services;

  /// When positive, [registerOn] inserts a [TimeSleep] after the services.
  /// Pass [Duration.zero] (or any non-positive value) to skip the sleep.
  ///
  /// Must be a whole number of seconds; [registerOn] throws [ArgumentError]
  /// for positive sub-second values before touching the stack.
  final Duration propagationDelay;

  final String propagationLocalName;

  /// Registers every [services] entry on [stack]. When [propagationDelay] is
  /// positive, also registers a [TimeSleep] that depends on all services.
  ///
  /// The sleep's `triggers` map is keyed to the service set, so enabling an
  /// additional API in a later apply replaces the sleep and the new API gets
  /// the same propagation wait as the first apply.
  ///
  /// Returns dependencies for downstream factories — the propagation sleep
  /// when present, otherwise the API enablement resources. An empty
  /// [services] list registers nothing and returns no dependencies (no
  /// 60-second no-op sleep for barrels that contribute no APIs).
  ///
  /// Validation happens before any resource is added to [stack]:
  /// - Throws [StateError] when propagation is enabled but [Stack.providers]
  ///   contains no `time` provider (add `const TimeProvider()`).
  /// - Throws [ArgumentError] when [propagationDelay] is positive but not a
  ///   whole number of seconds.
  List<ResourceDependency> registerOn(Stack stack) {
    if (services.isEmpty) return const [];
    final sleepRequested = propagationDelay > Duration.zero;
    TfArg<String>? createDuration;
    if (sleepRequested) {
      createDuration = TfArg.duration(propagationDelay);
      final hasTimeProvider =
          stack.providers.any((p) => p.providerName == 'time');
      if (!hasTimeProvider) {
        throw StateError(
          'ApiEnablement.registerOn inserts a `time_sleep` resource, but '
          'Stack.providers has no `time` provider — synth would omit the '
          'hashicorp/time entry from required_providers and Terraform would '
          'fall back to an unpinned implied provider. Add `const '
          'TimeProvider()` to Stack.providers, or pass propagationDelay: '
          'Duration.zero to skip the propagation sleep.',
        );
      }
    }

    final apiDeps = <ResourceDependency>[];
    for (final api in services) {
      apiDeps.add(ResourceDependency(stack.add(api)));
    }
    if (createDuration == null) {
      return apiDeps;
    }
    final sleep = stack.add(
      TimeSleep(
        localName: propagationLocalName,
        createDuration: createDuration,
        triggers: TfArg.literal({
          for (final api in services) api.localName: api.id.interpolation,
        }),
        dependsOn: apiDeps,
      ),
    );
    return [ResourceDependency(sleep)];
  }
}

/// Extension of [Apis.required] with optional propagation [TimeSleep].
abstract final class ApisEnablement {
  /// Builds an [ApiEnablement] for the distinct APIs required by [barrels].
  ///
  /// [propagationLocalName] defaults to `'<localNamePrefix>_propagation'`
  /// (e.g. `api_propagation`), so two enablement groups with distinct
  /// [localNamePrefix] values can coexist on one stack without colliding on
  /// the `time_sleep` local name.
  static ApiEnablement enable({
    required Iterable<Barrels> barrels,
    Duration propagationDelay = _defaultPropagationDelay,
    String? propagationLocalName,
    TfArg<bool>? disableOnDestroy,
    String localNamePrefix = 'api',
  }) =>
      ApiEnablement(
        services: Apis.required(
          barrels: barrels,
          disableOnDestroy: disableOnDestroy,
          localNamePrefix: localNamePrefix,
        ),
        propagationDelay: propagationDelay,
        propagationLocalName:
            propagationLocalName ?? '${localNamePrefix}_propagation',
      );
}
