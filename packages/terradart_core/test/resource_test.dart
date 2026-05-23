import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:test/test.dart';

final class _FakeResource extends Resource {
  _FakeResource({
    required super.localName,
    required TfArg<String> name,
    super.lifecycle,
  }) : super(
          terraformType: 'fake_thing',
          argMap: {'name': name},
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

void main() {
  group('Resource', () {
    test('kind is ResourceKind.resource', () {
      final r = _FakeResource(
        localName: 'main',
        name: const TfArgLiteral('hello'),
      );
      expect(r.kind, ResourceKind.resource);
    });

    test('tfAddress is "<type>.<localName>"', () {
      final r = _FakeResource(
        localName: 'main',
        name: const TfArgLiteral('hello'),
      );
      expect(r.tfAddress, 'fake_thing.main');
    });

    test('argMap retains the typed TfArg entries (snake_case keys)', () {
      final r = _FakeResource(
        localName: 'main',
        name: const TfArgLiteral('hello'),
      );
      expect(r.argMap.keys, contains('name'));
      expect(r.argMap['name'], isA<TfArg<String>>());
    });

    test('default sensitiveFields is empty', () {
      final r = _FakeResource(
        localName: 'main',
        name: const TfArgLiteral('hello'),
      );
      expect(r.$sensitiveFields, isEmpty);
    });

    test('lifecycle is exposed', () {
      final r = _FakeResource(
        localName: 'main',
        name: const TfArgLiteral('hello'),
        lifecycle: const LifecycleOptions(preventDestroy: true),
      );
      expect(r.lifecycle?.preventDestroy, isTrue);
    });

    test('Resource is also TfAddressed', () {
      final r = _FakeResource(
        localName: 'main',
        name: const TfArgLiteral('hello'),
      );
      expect(r.tfAddress, isA<String>());
    });
  });

  group('Resource.\$supportsDeletionProtection', () {
    test('defaults to false on Resource base class', () {
      final r = _FakeResource(
        localName: 'a',
        name: const TfArgLiteral('x'),
      );
      expect(r.$supportsDeletionProtection, isFalse);
    });

    test('can be overridden to true', () {
      final r = _CapableResource(
        localName: 'b',
        name: const TfArgLiteral('y'),
      );
      expect(r.$supportsDeletionProtection, isTrue);
    });
  });
}

final class _CapableResource extends Resource {
  _CapableResource({required super.localName, required TfArg<String> name})
      : super(
          terraformType: 'fake_capable_thing',
          argMap: {'name': name},
        );

  @override
  Set<String> get $sensitiveFields => const {};

  @override
  bool get $supportsDeletionProtection => true;
}
