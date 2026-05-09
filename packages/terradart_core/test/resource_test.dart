import 'package:terradart_core/src/lifecycle.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:test/test.dart';

class _FakeSchema {
  const _FakeSchema(this.name);
  final String name;
}

class _FakeResource extends Resource<_FakeSchema> {
  _FakeResource({
    required super.localName,
    required TfArg<String> name,
    super.lifecycle,
  }) : super(
          terraformType: 'fake_thing',
          schema: _FakeSchema(name.literalOrPlaceholder),
          argMap: {'name': name},
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

void main() {
  group('Resource<S>', () {
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

    test('schema is the schemantic concrete instance', () {
      final r = _FakeResource(
        localName: 'main',
        name: const TfArgLiteral('hello'),
      );
      expect(r.schema.name, 'hello');
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
}
