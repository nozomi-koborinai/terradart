import 'package:terradart_core/src/data.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:test/test.dart';

class _FakeResource extends Resource {
  _FakeResource({required super.localName, required TfArg<String> name})
      : super(
          terraformType: 'fake_thing',
          argMap: {'name': name},
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

class _FakeData extends Data {
  _FakeData({required super.localName, required TfArg<String> name})
      : super(
          terraformType: 'fake_thing',
          argMap: {'name': name},
        );

  @override
  Set<String> get $sensitiveFields => const {};
}

class _TestStack extends Stack {
  _TestStack() : super(providers: const []);

  @override
  Future<void> synth({required String outDir}) async =>
      throw UnimplementedError();
}

void main() {
  group('Stack.add', () {
    test('returns the same instance', () {
      final stack = _TestStack();
      final r = _FakeResource(
        localName: 'a',
        name: const TfArgLiteral('x'),
      );
      final added = stack.add(r);
      expect(identical(added, r), isTrue);
    });

    test('appears in resources list', () {
      final stack = _TestStack();
      final r = _FakeResource(
        localName: 'a',
        name: const TfArgLiteral('x'),
      );
      stack.add(r);
      expect(stack.resources, hasLength(1));
      expect(stack.resources.first.tfAddress, 'fake_thing.a');
    });
  });

  group('Stack.addData', () {
    test('appears in dataSources list, not resources', () {
      final stack = _TestStack();
      final d = _FakeData(
        localName: 'current',
        name: const TfArgLiteral('x'),
      );
      stack.addData(d);
      expect(stack.dataSources, hasLength(1));
      expect(stack.resources, isEmpty);
      expect(stack.dataSources.first.tfAddress, 'data.fake_thing.current');
    });
  });

  group('add() rejects Data', () {
    test('Data passed to add throws ArgumentError', () {
      final stack = _TestStack();
      final d = _FakeData(
        localName: 'a',
        name: const TfArgLiteral('x'),
      );
      expect(
        () => stack.add(d),
        throwsArgumentError,
      );
    });
  });

  group('addData() rejects non-Data', () {
    test(
      'Resource passed to addData via dynamic cast throws TypeError',
      () {
        final stack = _TestStack();
        final r = _FakeResource(
          localName: 'a',
          name: const TfArgLiteral('x'),
        );
        expect(
          // ignore: avoid_dynamic_calls
          () => (stack as dynamic).addData(r),
          throwsA(isA<TypeError>()),
        );
      },
    );
  });
}
