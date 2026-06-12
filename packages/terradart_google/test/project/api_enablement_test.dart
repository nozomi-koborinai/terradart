import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/project.dart';
import 'package:test/test.dart';

void main() {
  group('ApiEnablement.registerOn', () {
    test('registers services only when propagation delay is zero', () {
      final stack = _TestStack();
      final deps = ApiEnablement(
        services: Apis.required(barrels: [Barrels.pubsub]),
        propagationDelay: Duration.zero,
      ).registerOn(stack);
      expect(deps, hasLength(1));
      expect(stack.resourceTypes, ['google_project_service']);
    });

    test('adds time_sleep when propagation delay is set', () {
      final stack = _TestStack(withTime: true);
      final deps = ApisEnablement.enable(
        barrels: [Barrels.pubsub],
        propagationDelay: const Duration(seconds: 45),
      ).registerOn(stack);
      expect(deps, hasLength(1));
      expect(stack.resourceTypes, [
        'google_project_service',
        'time_sleep',
      ]);
      final sleep = stack.lastSleep!;
      expect(sleep.argMap['create_duration']!.toTfJson(), '45s');
    });
  });
}

final class _TestStack extends Stack {
  _TestStack({bool withTime = false})
      : super(
          providers: [
            if (withTime) const TimeProvider(),
          ],
        );

  final List<String> resourceTypes = [];
  TimeSleep? lastSleep;

  @override
  T add<T extends Resource>(T resource) {
    resourceTypes.add(resource.terraformType);
    if (resource is TimeSleep) lastSleep = resource;
    return super.add(resource);
  }
}
