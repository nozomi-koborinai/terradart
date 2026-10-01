import 'package:terradart_core/src/data.dart';
import 'package:terradart_core/src/resource.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/tf_arg.dart';
import 'package:test/test.dart';

final class _FakeResource extends Resource {
  _FakeResource({required super.localName, required TfArg<String> name})
    : super(terraformType: 'fake_thing', argMap: {'name': name});

  @override
  Set<String> get sensitiveFields => const {};
}

final class _FakeData extends Data {
  _FakeData({required super.localName, required TfArg<String> name})
    : super(terraformType: 'fake_thing', argMap: {'name': name});

  @override
  Set<String> get sensitiveFields => const {};
}

final class _TestStack extends Stack {
  _TestStack() : super(providers: const []);
}

void main() {
  group('Stack.add', () {
    test('returns the same instance', () {
      final stack = _TestStack();
      final r = _FakeResource(localName: 'a', name: const TfArgLiteral('x'));
      final added = stack.add(r);
      expect(identical(added, r), isTrue);
    });

    test('appears in resources list', () {
      final stack = _TestStack();
      final r = _FakeResource(localName: 'a', name: const TfArgLiteral('x'));
      stack.add(r);
      expect(stack.resources, hasLength(1));
      expect(stack.resources.first.tfAddress, 'fake_thing.a');
    });
  });

  group('Stack.add a data source', () {
    test('appears in dataSources list, not resources', () {
      final stack = _TestStack();
      final d = _FakeData(localName: 'current', name: const TfArgLiteral('x'));
      expect(identical(stack.add(d), d), isTrue);
      expect(stack.dataSources, hasLength(1));
      expect(stack.resources, isEmpty);
      expect(stack.dataSources.first.tfAddress, 'data.fake_thing.current');
    });
  });
}
