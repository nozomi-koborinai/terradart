import 'package:terradart_core/terradart_core.dart';

import '../../catalog.dart';
import 'barrels.dart';
import 'google_project_service.dart';
import 'terraform_api_requirements.dart';

/// Helpers for declaring [GoogleProjectService] enablement from barrel imports.
abstract final class Apis {
  /// Returns one [GoogleProjectService] per distinct API endpoint required by
  /// curated resource factories in the given [barrels].
  ///
  /// Add each returned service with [Stack.add], then wire
  /// [ResourceDependency] on downstream factories that need the API:
  ///
  /// ```dart
  /// final apis = Apis.required(barrels: [Barrels.cloudRun, Barrels.pubsub]);
  /// for (final api in apis) {
  ///   add(api);
  /// }
  ///
  /// add(
  ///   GoogleCloudRunV2Service(
  ///     localName: 'api',
  ///     // ...
  ///     dependsOn: apis.map(ResourceDependency.new).toList(),
  ///   ),
  /// );
  /// ```
  ///
  /// IAM-only adjuncts (`*_iam_member`, `*_iam_binding`) and the
  /// [GoogleProject] data source do not contribute APIs. The `project` barrel
  /// only contains [GoogleProjectService] itself.
  ///
  /// **API propagation lag:** prefer [ApisEnablement.enable] +
  /// [ApiEnablement.registerOn] with `const TimeProvider()` on the stack —
  /// inserts [TimeSleep] after the enablement resources automatically.
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
          localName: _localName(localNamePrefix, endpoint),
          service: TfArg.literal(endpoint),
          disableOnDestroy: disableOnDestroy ?? TfArg.literal(false),
        ),
    ];
  }
}

String _localName(String prefix, String endpoint) {
  final stem = endpoint.replaceFirst('.googleapis.com', '');
  return '${prefix}_$stem';
}
