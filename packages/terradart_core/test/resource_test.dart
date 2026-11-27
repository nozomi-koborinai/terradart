import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

final class _FakeResource extends Resource {
  _FakeResource(super.localName, {required TfArg<String> name, super.lifecycle})
    : super(terraformType: 'fake_thing', argMap: {'name': name});

  @override
  Set<String> get sensitiveFields => const {};
}

void main() {
  group('Resource', () {
    test('kind is ResourceKind.resource', () {
      final r = _FakeResource('main', name: const TfArgLiteral('hello'));
      expect(r.kind, ResourceKind.resource);
    });

    test('tfAddress is "<type>.<localName>"', () {
      final r = _FakeResource('main', name: const TfArgLiteral('hello'));
      expect(r.tfAddress, 'fake_thing.main');
    });

    test('argMap retains the typed TfArg entries (snake_case keys)', () {
      final r = _FakeResource('main', name: const TfArgLiteral('hello'));
      expect(r.argMap.keys, contains('name'));
      expect(r.argMap['name'], isA<TfArg<String>>());
    });

    test('default sensitiveFields is empty', () {
      final r = _FakeResource('main', name: const TfArgLiteral('hello'));
      expect(r.sensitiveFields, isEmpty);
    });

    test('lifecycle is exposed', () {
      final r = _FakeResource(
        'main',
        name: const TfArgLiteral('hello'),
        lifecycle: const LifecycleOptions(preventDestroy: true),
      );
      expect(r.lifecycle?.preventDestroy, isTrue);
    });

    test('Resource is also TfAddressed', () {
      final r = _FakeResource('main', name: const TfArgLiteral('hello'));
      expect(r.tfAddress, isA<String>());
    });
  });

  group('deletion_protection', () {
    test('synth writes deletion_protection only where a resource sets it', () {
      final stack = TestStack(providers: const [_google])
        ..add(FakePubsubTopic('kept', argMap: const {}))
        ..add(
          FakePubsubTopic(
            'disposable',
            argMap: const {'deletion_protection': TfArgLiteral<bool>(false)},
          ),
        );
      final topics =
          (stack.synth().tfJson['resource']
                  as Map<String, dynamic>)['google_pubsub_topic']
              as Map<String, dynamic>;
      expect(topics['kept'], isNot(contains('deletion_protection')));
      expect(topics['disposable'], {'deletion_protection': false});
    });

    test('neither Stack nor Resource has a switch that rewrites it', () {
      expect(() => (TestStack() as dynamic).devMode, throwsNoSuchMethodError);
      expect(
        () => (_FakeResource('a', name: const TfArgLiteral('x')) as dynamic)
            .supportsDeletionProtection,
        throwsNoSuchMethodError,
      );
    });
  });

  group('Resource.argMap', () {
    test('is fixed once the resource is built', () {
      final args = <String, TfArg<dynamic>?>{'name': const TfArgLiteral('a')};
      final r = FakePubsubTopic('t', argMap: args);
      args['name'] = const TfArgLiteral('b');
      expect(r.argMap['name']?.toTfJson(), 'a');
      expect(
        () => r.argMap['name'] = const TfArgLiteral('c'),
        throwsUnsupportedError,
      );
    });
  });
}

const _google = FakeStackProvider(
  providerName: 'google',
  source: 'hashicorp/google',
  versionConstraint: '~> 7.0',
);
