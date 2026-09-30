import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/tf_moved.dart';
import 'package:test/test.dart';

class _Backend implements StackBackend {
  _Backend(this.bucket);
  final String bucket;
  @override
  String get backendType => 'gcs';
  @override
  Map<String, Object?> toTfJson() => {'bucket': bucket};
}

class _FakeProvider implements StackProvider {
  _FakeProvider();
  @override
  String get providerName => 'google';
  @override
  String? get alias => null;
  @override
  String get source => 'hashicorp/google';
  @override
  String get versionConstraint => '~> 7.0';
  @override
  Map<String, Object?> get configArgs => const {'project': 'demo'};
}

final class _S extends Stack {
  _S({super.providers = const [], super.backend});
}

void main() {
  group('StackProvider coordination interface', () {
    final p = _FakeProvider();
    test('source / versionConstraint / configArgs are exposed', () {
      expect(p.source, 'hashicorp/google');
      expect(p.versionConstraint, '~> 7.0');
      expect(p.configArgs, {'project': 'demo'});
    });
  });

  group('Stack.addMoved', () {
    test('records entries in order and exposes them read-only', () {
      final stack = _S()
        ..addMoved('google_pubsub_topic.a[0]', 'google_pubsub_topic.a_0')
        ..addMoved('google_pubsub_topic.a[1]', 'google_pubsub_topic.a_1');
      expect(
        stack.moved,
        equals(const [
          TfMoved(
            from: 'google_pubsub_topic.a[0]',
            to: 'google_pubsub_topic.a_0',
          ),
          TfMoved(
            from: 'google_pubsub_topic.a[1]',
            to: 'google_pubsub_topic.a_1',
          ),
        ]),
      );
      expect(
        () => stack.moved.add(const TfMoved(from: 'x.y', to: 'x.z')),
        throwsUnsupportedError,
      );
    });

    test('rejects empty, identical and repeated addresses', () {
      final stack = _S()..addMoved('a.b[0]', 'a.b_0');
      expect(() => stack.addMoved('', 'a.b_1'), throwsArgumentError);
      expect(() => stack.addMoved('a.b[1]', ' '), throwsArgumentError);
      expect(() => stack.addMoved('a.b_1', 'a.b_1'), throwsArgumentError);
      expect(
        () => stack.addMoved('a.b[0]', 'a.b_2'),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('already recorded'),
          ),
        ),
      );
    });
  });

  group('Stack.requiredVersion', () {
    test('defaults to ">= 1.11.0"', () {
      expect(_S().requiredVersion, '>= 1.11.0');
    });
    test('setter overrides default', () {
      final s = _S()..setRequiredVersion('>= 1.12.0');
      expect(s.requiredVersion, '>= 1.12.0');
    });
  });

  group('Stack.backend', () {
    test('defaults to null', () {
      expect(_S().backend, isNull);
    });
    test('setBackend round-trips and replaces existing backend', () {
      final s = _S(backend: _Backend('first'));
      expect((s.backend! as _Backend).bucket, 'first');
      s.setBackend(_Backend('second'));
      expect((s.backend! as _Backend).bucket, 'second');
    });
    test('setBackend works when none was passed at construction', () {
      final s = _S()..setBackend(_Backend('only'));
      expect(s.backend, isNotNull);
      expect(s.backend!.backendType, 'gcs');
    });
  });
}
