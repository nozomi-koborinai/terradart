import 'package:terradart_core/terradart_core.dart';

import 'apis.dart';
import 'barrels.dart';
import 'google_project_service.dart';

/// API enablement bundle — [GoogleProjectService] list plus optional
/// [TimeSleep] propagation delay.
final class ApiEnablement {
  const ApiEnablement({
    required this.services,
    this.propagationDelay = const Duration(seconds: 60),
    this.propagationLocalName = 'api_propagation',
  });

  final List<GoogleProjectService> services;

  /// When non-zero, [registerOn] inserts a [TimeSleep] after the services.
  /// Pass [Duration.zero] to skip propagation sleep.
  final Duration propagationDelay;

  final String propagationLocalName;

  /// Registers every [services] entry on [stack]. When [propagationDelay] is
  /// non-zero, also registers [TimeSleep] that depends on all services.
  ///
  /// Returns dependencies for downstream factories — the propagation sleep
  /// when present, otherwise the API enablement resources.
  ///
  /// Requires `const TimeProvider()` in [Stack.providers] when propagation is
  /// enabled.
  List<ResourceDependency> registerOn(Stack stack) {
    final apiDeps = <ResourceDependency>[];
    for (final api in services) {
      apiDeps.add(ResourceDependency(stack.add(api)));
    }
    if (propagationDelay <= Duration.zero) {
      return apiDeps;
    }
    final sleep = stack.add(
      TimeSleep(
        localName: propagationLocalName,
        createDuration: TfArg.literal(propagationDelay.toTfDurationString()),
        dependsOn: apiDeps,
      ),
    );
    return [ResourceDependency(sleep)];
  }
}

/// Extension of [Apis.required] with optional propagation [TimeSleep].
abstract final class ApisEnablement {
  static ApiEnablement enable({
    required Iterable<Barrels> barrels,
    Duration propagationDelay = const Duration(seconds: 60),
    String propagationLocalName = 'api_propagation',
    TfArg<bool>? disableOnDestroy,
    String localNamePrefix = 'api',
  }) => ApiEnablement(
    services: Apis.required(
      barrels: barrels,
      disableOnDestroy: disableOnDestroy,
      localNamePrefix: localNamePrefix,
    ),
    propagationDelay: propagationDelay,
    propagationLocalName: propagationLocalName,
  );
}
