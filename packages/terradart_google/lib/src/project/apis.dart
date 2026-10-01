import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_time/terradart_time.dart' show TimeSleep;

import '../../catalog.dart';
import 'barrels.dart';
import 'google_project_service.dart';
import 'terraform_api_requirements.dart';

/// Default propagation wait for [Apis.enable].
const Duration _defaultPropagationDelay = Duration(seconds: 60);

/// Helpers for declaring [GoogleProjectService] enablement from barrel imports.
abstract final class Apis {
  /// Returns one [GoogleProjectService] per distinct API endpoint required by
  /// curated resource factories in the given [barrels].
  ///
  /// Most stacks want [enable] instead — it registers the services plus a
  /// propagation [TimeSleep] in one call. Use [required] directly when you
  /// need the raw service list (custom wiring, partial registration, tests).
  ///
  /// IAM-only adjuncts (`*_iam_member`, `*_iam_binding`) and the
  /// [GoogleProject] data source do not contribute APIs. The `project` barrel
  /// only contains [GoogleProjectService] itself.
  static List<GoogleProjectService> required({
    required Iterable<Barrels> barrels,
    TfArg<bool>? disableOnDestroy,
    String localNamePrefix = 'api',
  }) {
    final barrelNames = barrels.map((b) => b.catalogName).toSet();
    final endpoints = <String>{};

    for (final entry in terradartCatalog) {
      if (entry.kind != CatalogKind.resource) continue;
      if (!barrelNames.contains(entry.barrel)) continue;
      final api = requiredApiForTerraformType(entry.tfType);
      if (api != null) endpoints.add(api);
    }

    final sorted = endpoints.toList()..sort();
    return [
      for (final endpoint in sorted)
        GoogleProjectService(
          _localName(localNamePrefix, endpoint),
          service: TfArg.literal(endpoint),
          disableOnDestroy: disableOnDestroy ?? TfArg.literal(false),
        ),
    ];
  }

  /// Registers one [GoogleProjectService] per distinct API required by
  /// [barrels] on [stack], plus a [TimeSleep] propagation wait, and returns
  /// the dependencies downstream factories should declare:
  ///
  /// ```dart
  /// final apiDeps = Apis.enable(
  ///   this,
  ///   barrels: [Barrels.cloudRun, Barrels.redis],
  /// );
  ///
  /// add(
  ///   GoogleRedisInstance(
  ///     'cache',
  ///     name: .literal('cache'),
  ///     memorySizeGb: .literal(1),
  ///     dependsOn: apiDeps,
  ///   ),
  /// );
  /// ```
  ///
  /// When [propagationDelay] is positive (default 60s), the returned list
  /// holds the [TimeSleep]; otherwise it holds the service resources. The
  /// sleep's `triggers` map is keyed to the service set, so enabling an
  /// additional API in a later apply replaces the sleep and the new API gets
  /// the same propagation wait as the first apply. An empty service set
  /// (barrels that contribute no APIs) registers nothing and returns no
  /// dependencies.
  ///
  /// [propagationLocalName] defaults to `'<localNamePrefix>_propagation'`
  /// (e.g. `api_propagation`), so two enablement groups with distinct
  /// [localNamePrefix] values can coexist on one stack.
  ///
  /// Validation happens before any resource is added to [stack]:
  /// - Throws [StateError] when propagation is enabled but [Stack.providers]
  ///   contains no `time` provider — add `const TimeProvider()` (from
  ///   `package:terradart_time/terradart_time.dart`).
  /// - Throws [ArgumentError] when [propagationDelay] is positive but not a
  ///   whole number of seconds.
  static List<TfAddressed> enable(
    Stack stack, {
    required Iterable<Barrels> barrels,
    Duration propagationDelay = _defaultPropagationDelay,
    String? propagationLocalName,
    TfArg<bool>? disableOnDestroy,
    String localNamePrefix = 'api',
  }) {
    final services = required(
      barrels: barrels,
      disableOnDestroy: disableOnDestroy,
      localNamePrefix: localNamePrefix,
    );
    if (services.isEmpty) return const [];

    final sleepRequested = propagationDelay > Duration.zero;
    TfArg<String>? createDuration;
    if (sleepRequested) {
      createDuration = TfArg.duration(propagationDelay);
      final hasTimeProvider = stack.providers.any(
        (p) => p.providerName == 'time',
      );
      if (!hasTimeProvider) {
        throw StateError(
          'Apis.enable inserts a `time_sleep` resource, but Stack.providers '
          'has no `time` provider — synth would omit the hashicorp/time '
          'entry from required_providers and Terraform would fall back to '
          'an unpinned implied provider. Add `const TimeProvider()` (from '
          'package:terradart_time/terradart_time.dart) to Stack.providers, or pass '
          'propagationDelay: Duration.zero to skip the propagation sleep.',
        );
      }
    }

    final apiDeps = <TfAddressed>[];
    for (final api in services) {
      apiDeps.add(stack.add(api));
    }
    if (createDuration == null) {
      return apiDeps;
    }
    final sleep = stack.add(
      TimeSleep(
        propagationLocalName ?? '${localNamePrefix}_propagation',
        createDuration: createDuration,
        triggers: TfArg.literal({
          for (final api in services) api.localName: api.id.interpolation,
        }),
        dependsOn: apiDeps,
      ),
    );
    return [sleep];
  }
}

String _localName(String prefix, String endpoint) {
  final stem = endpoint.replaceFirst('.googleapis.com', '');
  return '${prefix}_$stem';
}
