import 'package:terradart_google/project.dart';
import 'package:test/test.dart';

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
      expect(apis.single.argMap['service']!.toTfJson(), 'pubsub.googleapis.com');
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

    test('redis barrel includes redis.googleapis.com', () {
      final apis = Apis.required(barrels: [Barrels.redis]);
      expect(apis, hasLength(1));
      expect(apis.single.argMap['service']!.toTfJson(), 'redis.googleapis.com');
      expect(apis.single.localName, 'api_redis');
    });
  });

  group('Barrels', () {
    test('catalogName matches terradart outputDir strings', () {
      expect(Barrels.cloudRun.catalogName, 'cloud_run');
      expect(Barrels.serviceNetworking.catalogName, 'service_networking');
      expect(Barrels.alloydb.catalogName, 'alloydb');
      expect(Barrels.redis.catalogName, 'redis');
    });
  });
}
