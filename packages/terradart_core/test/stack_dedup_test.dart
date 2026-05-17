import 'package:terradart_core/src/data.dart';
import 'package:terradart_core/src/duplicate_resource_error.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:test/test.dart';

class _R extends Resource {
  _R({required super.localName, required String type})
      : super(
          terraformType: type,
          argMap: const {},
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

class _D extends Data {
  _D({required super.localName, required String type})
      : super(
          terraformType: type,
          argMap: const {},
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

class _S extends Stack {
  _S() : super(providers: const []);

  @override
  Future<void> synth({required String outDir}) async =>
      throw UnimplementedError();
}

void main() {
  group('DuplicateResourceError', () {
    test('toString includes kind/type/localName', () {
      final e = DuplicateResourceError(
        kind: ResourceKind.resource,
        terraformType: 'google_pubsub_topic',
        localName: 'orders',
      );
      expect(e.toString(), contains('resource'));
      expect(e.toString(), contains('google_pubsub_topic'));
      expect(e.toString(), contains('orders'));
    });

    test('is an Error', () {
      final e = DuplicateResourceError(
        kind: ResourceKind.resource,
        terraformType: 't',
        localName: 'n',
      );
      expect(e, isA<Error>());
    });
  });

  group('Stack dedup', () {
    test('same (resource, type, localName) -> DuplicateResourceError', () {
      final stack = _S();
      stack.add(_R(localName: 'orders', type: 'google_pubsub_topic'));
      expect(
        () => stack.add(_R(localName: 'orders', type: 'google_pubsub_topic')),
        throwsA(isA<DuplicateResourceError>()),
      );
    });

    test('different localName under same type -> ok', () {
      final stack = _S();
      stack.add(_R(localName: 'orders', type: 'google_pubsub_topic'));
      stack.add(_R(localName: 'events', type: 'google_pubsub_topic'));
      expect(stack.resources, hasLength(2));
    });

    test('different type under same localName -> ok', () {
      final stack = _S();
      stack.add(_R(localName: 'main', type: 'google_pubsub_topic'));
      stack.add(_R(localName: 'main', type: 'google_pubsub_subscription'));
      expect(stack.resources, hasLength(2));
    });

    test('resource and data with same type+localName coexist (kind differs)',
        () {
      final stack = _S();
      stack.add(_R(localName: 'main', type: 'google_project'));
      stack.addData(_D(localName: 'main', type: 'google_project'));
      expect(stack.resources, hasLength(1));
      expect(stack.dataSources, hasLength(1));
    });

    test('two data sources with same (data, type, localName) -> error', () {
      final stack = _S();
      stack.addData(_D(localName: 'current', type: 'google_project'));
      expect(
        () => stack.addData(_D(localName: 'current', type: 'google_project')),
        throwsA(isA<DuplicateResourceError>()),
      );
    });

    test(
        'cross-collection scenario: addData then add the SAME (type,localName) -> ok (different kind)',
        () {
      final stack = _S();
      stack.addData(_D(localName: 'shared', type: 'google_project'));
      stack.add(_R(localName: 'shared', type: 'google_project'));
      // Both registered because kind differs.
      expect(stack.resources, hasLength(1));
      expect(stack.dataSources, hasLength(1));
    });
  });
}
