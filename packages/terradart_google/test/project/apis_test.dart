import 'package:terradart_google/project.dart';
import 'package:terradart_google/time.dart';
import 'package:test/test.dart';

import '../_helpers.dart';

void main() {
  group('Apis.required', () {
    test('cloudRun barrel includes run.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.cloudRun]);
      expect(apis, hasLength(1));
      expect(apis.single.argMap['service']!.toTfJson(), 'run.googleapis.com');
      expect(apis.single.localName, 'api_run');
    });

    test('dedupes endpoints across barrels', () {
      final apis = Apis.required(
        barrels: [Barrels.compute, Barrels.serviceNetworking],
      );
      final endpoints = apis
          .map((a) => a.argMap['service']!.toTfJson() as String)
          .toList()
        ..sort();
      expect(
        endpoints,
        [
          'compute.googleapis.com',
          'servicenetworking.googleapis.com',
          'vpcaccess.googleapis.com',
        ],
      );
    });

    test('pubsub barrel is a single API', () {
      final apis = Apis.required(barrels: [Barrels.pubsub]);
      expect(apis, hasLength(1));
      expect(
          apis.single.argMap['service']!.toTfJson(), 'pubsub.googleapis.com');
    });

    test('project barrel alone yields no APIs', () {
      final apis = Apis.required(barrels: [Barrels.project]);
      expect(apis, isEmpty);
    });

    test('iam barrel yields no APIs (IAM adjuncts only)', () {
      final apis = Apis.required(barrels: [Barrels.iamApi]);
      expect(apis, isEmpty);
    });

    test('alloydb barrel includes alloydb.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.alloydb]);
      expect(apis, hasLength(1));
      expect(
        apis.single.argMap['service']!.toTfJson(),
        'alloydb.googleapis.com',
      );
      expect(apis.single.localName, 'api_alloydb');
    });

    test('memcache barrel includes memcache.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.memcache]);
      expect(apis, hasLength(1));
      expect(
        apis.single.argMap['service']!.toTfJson(),
        'memcache.googleapis.com',
      );
    });

    test('spanner barrel includes spanner.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.spanner]);
      expect(apis, hasLength(1));
      expect(
        apis.single.argMap['service']!.toTfJson(),
        'spanner.googleapis.com',
      );
    });

    test('filestore barrel includes file.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.filestore]);
      expect(apis, hasLength(1));
      expect(apis.single.argMap['service']!.toTfJson(), 'file.googleapis.com');
      expect(apis.single.localName, 'api_file');
    });

    test('redis barrel includes redis.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.redis]);
      expect(apis, hasLength(1));
      expect(apis.single.argMap['service']!.toTfJson(), 'redis.googleapis.com');
      expect(apis.single.localName, 'api_redis');
    });

    test('osConfig barrel includes osconfig.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.osConfig]);
      expect(apis, hasLength(1));
      expect(
        apis.single.argMap['service']!.toTfJson(),
        'osconfig.googleapis.com',
      );
      expect(apis.single.localName, 'api_osconfig');
    });

    test(
        'binaryAuthorization barrel includes binaryauthorization.googleapis.com',
        () {
      final apis = Apis.required(barrels: [Barrels.binaryAuthorization]);
      expect(apis, hasLength(1));
      expect(
        apis.single.argMap['service']!.toTfJson(),
        'binaryauthorization.googleapis.com',
      );
    });

    test('publicCa barrel includes publicca.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.publicCa]);
      expect(
        apis.map((a) => a.argMap['service']!.toTfJson()).toList(),
        ['publicca.googleapis.com'],
      );
    });

    test('dataCatalog barrel includes datacatalog.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.dataCatalog]);
      expect(
        apis.map((a) => a.argMap['service']!.toTfJson()).toList(),
        ['datacatalog.googleapis.com'],
      );
    });

    test('apikeys barrel includes apikeys.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.apikeys]);
      expect(apis, hasLength(1));
      expect(
        apis.single.argMap['service']!.toTfJson(),
        'apikeys.googleapis.com',
      );
    });

    test('recaptcha barrel includes recaptchaenterprise.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.recaptcha]);
      expect(apis, hasLength(1));
      expect(
        apis.single.argMap['service']!.toTfJson(),
        'recaptchaenterprise.googleapis.com',
      );
    });
  });

  group('Apis.enable', () {
    test('zero propagation delay registers services only', () {
      final stack = TestStack();
      final deps = Apis.enable(
        stack,
        barrels: [Barrels.pubsub],
        propagationDelay: Duration.zero,
      );
      expect(deps, hasLength(1));
      expect(
        stack.resources.map((r) => r.terraformType),
        ['google_project_service'],
      );
    });

    test('negative delay also skips the sleep', () {
      final stack = TestStack();
      final deps = Apis.enable(
        stack,
        barrels: [Barrels.pubsub],
        propagationDelay: const Duration(seconds: -1),
      );
      expect(deps, hasLength(1));
      expect(
        stack.resources.map((r) => r.terraformType),
        ['google_project_service'],
      );
    });

    test('adds time_sleep with service-keyed triggers when delay is set', () {
      final stack = TestStack(providers: const [TimeProvider()]);
      final deps = Apis.enable(
        stack,
        barrels: [Barrels.pubsub],
        propagationDelay: const Duration(seconds: 45),
      );
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

    test('derives the sleep local name from localNamePrefix', () {
      final stack = TestStack(providers: const [TimeProvider()]);
      Apis.enable(stack, barrels: [Barrels.pubsub], localNamePrefix: 'apis_a');
      Apis.enable(stack, barrels: [Barrels.redis], localNamePrefix: 'apis_b');
      expect(
        stack.resources.whereType<TimeSleep>().map((s) => s.localName),
        ['apis_a_propagation', 'apis_b_propagation'],
      );
    });

    test(
        'throws StateError before mutating the stack when TimeProvider '
        'is missing', () {
      final stack = TestStack();
      expect(
        () => Apis.enable(stack, barrels: [Barrels.pubsub]),
        throwsStateError,
      );
      expect(stack.resources, isEmpty);
    });

    test(
        'throws ArgumentError before mutating the stack for sub-second '
        'delays', () {
      final stack = TestStack(providers: const [TimeProvider()]);
      expect(
        () => Apis.enable(
          stack,
          barrels: [Barrels.pubsub],
          propagationDelay: const Duration(milliseconds: 500),
        ),
        throwsArgumentError,
      );
      expect(stack.resources, isEmpty);
    });

    test('empty barrels register nothing and return no deps', () {
      final stack = TestStack();
      // Barrels.iamApi contributes no API endpoints (IAM-only adjuncts), so
      // there is nothing to enable and nothing to wait for.
      final deps = Apis.enable(stack, barrels: [Barrels.iamApi]);
      expect(deps, isEmpty);
      expect(stack.resources, isEmpty);
    });
  });

  group('Barrels', () {
    test('catalogName matches terradart outputDir strings', () {
      expect(Barrels.cloudRun.catalogName, 'cloud_run');
      expect(Barrels.serviceNetworking.catalogName, 'service_networking');
      expect(Barrels.alloydb.catalogName, 'alloydb');
      expect(Barrels.filestore.catalogName, 'filestore');
      expect(Barrels.redis.catalogName, 'redis');
      expect(Barrels.osConfig.catalogName, 'os_config');
      expect(Barrels.binaryAuthorization.catalogName, 'binary_authorization');
      expect(Barrels.apikeys.catalogName, 'apikeys');
      expect(Barrels.recaptcha.catalogName, 'recaptcha');
    });
  });
}
