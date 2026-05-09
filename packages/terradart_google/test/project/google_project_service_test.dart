import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/terradart_google.dart';
import 'package:test/test.dart';

void main() {
  group('GoogleProjectService', () {
    test('localName + service produce minimal argMap', () {
      final api = GoogleProjectService(
        localName: 'pubsub',
        service: TfArg.literal('pubsub.googleapis.com'),
      );
      expect(api.terraformType, equals('google_project_service'));
      expect(api.localName, equals('pubsub'));
      expect(api.argMap.keys.toList(), equals(<String>['service']));
      expect(api.argMap['service'], isA<TfArg<String>>());
      expect(
        api.argMap['service']!.toTfJson(),
        equals('pubsub.googleapis.com'),
      );
    });

    test('project parameter threads through to argMap', () {
      final api = GoogleProjectService(
        localName: 'pubsub',
        service: TfArg.literal('pubsub.googleapis.com'),
        project: TfArg.literal('my-project-123'),
      );
      expect(api.argMap['project'], isA<TfArg<String>>());
      expect(api.argMap['project']!.toTfJson(), equals('my-project-123'));
    });

    test('disableOnDestroy snake_cases to disable_on_destroy', () {
      final api = GoogleProjectService(
        localName: 'pubsub',
        service: TfArg.literal('pubsub.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      );
      expect(api.argMap.containsKey('disable_on_destroy'), isTrue);
      expect(api.argMap.containsKey('disableOnDestroy'), isFalse);
      expect(api.argMap['disable_on_destroy']!.toTfJson(), equals(false));
    });

    test(
      'disableDependentServices snake_cases to disable_dependent_services',
      () {
        final api = GoogleProjectService(
          localName: 'pubsub',
          service: TfArg.literal('pubsub.googleapis.com'),
          disableDependentServices: TfArg.literal(true),
        );
        expect(api.argMap.containsKey('disable_dependent_services'), isTrue);
        expect(api.argMap.containsKey('disableDependentServices'), isFalse);
        expect(
          api.argMap['disable_dependent_services']!.toTfJson(),
          equals(true),
        );
      },
    );

    test('lifecycle prevent_destroy threads through to Resource', () {
      final api = GoogleProjectService(
        localName: 'pubsub',
        service: TfArg.literal('pubsub.googleapis.com'),
        lifecycle: const LifecycleOptions(preventDestroy: true),
      );
      expect(api.lifecycle?.preventDestroy, isTrue);
    });

    test('id getter produces stable TfRef interpolation', () {
      final api = GoogleProjectService(
        localName: 'pubsub',
        service: TfArg.literal('pubsub.googleapis.com'),
      );
      expect(
        api.id.interpolation,
        equals(r'${google_project_service.pubsub.id}'),
      );
    });

    test('\$sensitiveFields exposes empty set', () {
      final api = GoogleProjectService(
        localName: 'pubsub',
        service: TfArg.literal('pubsub.googleapis.com'),
      );
      expect(api.$sensitiveFields, isEmpty);
    });

    test('\$tfType constant matches terraformType', () {
      final api = GoogleProjectService(
        localName: 'pubsub',
        service: TfArg.literal('pubsub.googleapis.com'),
      );
      expect(GoogleProjectService.$tfType, equals('google_project_service'));
      expect(api.terraformType, equals(GoogleProjectService.$tfType));
    });
  });
}
