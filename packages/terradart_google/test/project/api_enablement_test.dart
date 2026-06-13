import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

void main() {
  group('ApiEnablement.registerOn', () {
    test('registers services only when propagation delay is zero', () {
      final stack = TestStack();
      final deps = ApiEnablement(
        services: Apis.required(barrels: [Barrels.pubsub]),
        propagationDelay: Duration.zero,
      ).registerOn(stack);
      expect(deps, hasLength(1));
      expect(
        stack.resources.map((r) => r.terraformType),
        ['google_project_service'],
      );
    });

    test('negative delay also skips the sleep', () {
      final stack = TestStack();
      final deps = ApiEnablement(
        services: Apis.required(barrels: [Barrels.pubsub]),
        propagationDelay: const Duration(seconds: -1),
      ).registerOn(stack);
      expect(deps, hasLength(1));
      expect(
        stack.resources.map((r) => r.terraformType),
        ['google_project_service'],
      );
    });

    test('adds time_sleep with service-keyed triggers when delay is set', () {
      final stack = TestStack(providers: const [TimeProvider()]);
      final deps = ApisEnablement.enable(
        barrels: [Barrels.pubsub],
        propagationDelay: const Duration(seconds: 45),
      ).registerOn(stack);
      expect(
        stack.resources.map((r) => r.terraformType),
        ['google_project_service', 'time_sleep'],
      );
      final sleep = stack.resources.whereType<TimeSleep>().single;
      // The returned dependency targets the sleep (not the services), and
      // the sleep itself depends on every service — the services -> sleep ->
      // dependents ordering is the whole contract of this helper.
      expect(deps.single.target, same(sleep));
      expect(
        sleep.dependsOn!.map((d) => d.bareAddress),
        ['google_project_service.api_pubsub'],
      );
      expect(sleep.localName, 'api_propagation');
      expect(sleep.argMap['create_duration']!.toTfJson(), '45s');
      expect(sleep.argMap['triggers']!.toTfJson(), {
        'api_pubsub': r'${google_project_service.api_pubsub.id}',
      });
    });

    test('empty barrels register nothing and return no deps', () {
      final stack = TestStack();
      // Barrels.iamApi contributes no API endpoints (IAM-only adjuncts), so
      // there is nothing to enable and nothing to wait for — previously this
      // registered a 60s no-op time_sleep gating all dependents.
      final deps =
          ApisEnablement.enable(barrels: [Barrels.iamApi]).registerOn(stack);
      expect(deps, isEmpty);
      expect(stack.resources, isEmpty);
    });

    test('derives the sleep local name from localNamePrefix', () {
      final stack = TestStack(providers: const [TimeProvider()]);
      ApisEnablement.enable(
        barrels: [Barrels.pubsub],
        localNamePrefix: 'apis_a',
      ).registerOn(stack);
      ApisEnablement.enable(
        barrels: [Barrels.redis],
        localNamePrefix: 'apis_b',
      ).registerOn(stack);
      expect(
        stack.resources.whereType<TimeSleep>().map((s) => s.localName),
        ['apis_a_propagation', 'apis_b_propagation'],
      );
    });

    test(
        'throws StateError before mutating the stack when TimeProvider '
        'is missing', () {
      final stack = TestStack();
      final enablement = ApisEnablement.enable(barrels: [Barrels.pubsub]);
      expect(() => enablement.registerOn(stack), throwsStateError);
      expect(stack.resources, isEmpty);
    });

    test(
        'throws ArgumentError before mutating the stack for sub-second '
        'delays', () {
      final stack = TestStack(providers: const [TimeProvider()]);
      final enablement = ApisEnablement.enable(
        barrels: [Barrels.pubsub],
        propagationDelay: const Duration(milliseconds: 500),
      );
      expect(() => enablement.registerOn(stack), throwsArgumentError);
      expect(stack.resources, isEmpty);
    });
  });
}
