import 'package:terradart_core/src/app_export.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:test/test.dart';

final class _Export extends AppExport {
  const _Export(this.name);
  final String name;

  @override
  String? get dartLiteralExpression => null;

  @override
  String get dartType => 'String';

  @override
  bool get emitTerraformOutput => false;

  @override
  String? get terraformOutputName => null;

  @override
  bool get sensitive => false;

  @override
  String? get description => null;
}

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
  String get source => 'hashicorp/google';
  @override
  String get versionConstraint => '~> 7.0';
  @override
  Map<String, Object?> get configArgs => const {'project': 'demo'};
  @override
  String? get providerAlias => null;
  @override
  Map<String, Object?> toTfJson() => configArgs;
}

class _S extends Stack {
  _S({super.providers = const [], super.backend});

  @override
  Future<void> synth({required String outDir}) async =>
      throw UnimplementedError();
}

void main() {
  group('StackProvider coordination interface', () {
    final p = _FakeProvider();
    test('source / versionConstraint / configArgs are exposed', () {
      expect(p.source, 'hashicorp/google');
      expect(p.versionConstraint, '~> 7.0');
      expect(p.configArgs, {'project': 'demo'});
    });
    test('providerAlias defaults to null', () {
      expect(p.providerAlias, isNull);
    });
    test('toTfJson() backwards-compat returns the same as configArgs', () {
      expect(p.toTfJson(), p.configArgs);
    });
  });

  group('Stack.appExports', () {
    test('addExport / appExports round-trip preserves insertion order', () {
      final s = _S();
      s.addExport('a', const _Export('A'));
      s.addExport('b', const _Export('B'));
      expect(s.appExports, hasLength(2));
      expect(s.appExports.keys.toList(), equals(['a', 'b']));
      expect((s.appExports['a']! as _Export).name, 'A');
      expect((s.appExports['b']! as _Export).name, 'B');
    });

    test('appExports view is unmodifiable', () {
      final s = _S();
      s.addExport('a', const _Export('A'));
      expect(
        () => s.appExports['x'] = const _Export('X'),
        throwsUnsupportedError,
      );
    });

    test('addExport rejects duplicate keys', () {
      final s = _S()..addExport('a', const _Export('A'));
      expect(
        () => s.addExport('a', const _Export('A2')),
        throwsA(isA<ArgumentError>()),
      );
    });
  });

  group('Stack.appExportsOutputPath', () {
    test('defaults to null', () {
      expect(_S().appExportsOutputPath, isNull);
    });
    test('setter round-trips', () {
      final s = _S()..setAppExportsOutputPath('lib/gen/exports.dart');
      expect(s.appExportsOutputPath, 'lib/gen/exports.dart');
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
