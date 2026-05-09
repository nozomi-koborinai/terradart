import 'package:terradart_core/src/app_export.dart';
import 'package:terradart_core/src/tf_ref.dart';
import 'package:test/test.dart';

/// Test fixture: minimal extension to confirm `AppExport` remains
/// extensible from outside `terradart`'s own library (cross-package
/// `abstract base class` contract).
final class _DummyExport extends AppExport {
  const _DummyExport(this.tag);
  final String tag;

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

/// Tiny `TfAddressed` stub — these tests construct refs without a real
/// `Resource` instance.
class _AddressStub implements TfAddressed {
  const _AddressStub(this.tfAddress);
  @override
  final String tfAddress;
}

void main() {
  group('AppExport', () {
    test('is an abstract base class subclassable from outside the library', () {
      const e = _DummyExport('FOO');
      expect(e, isA<AppExport>());
      expect(e.tag, 'FOO');
      expect(e.dartLiteralExpression, isNull);
      expect(e.dartType, 'String');
      expect(e.emitTerraformOutput, isFalse);
      expect(e.sensitive, isFalse);
    });
  });

  group('StringExport', () {
    test('exposes literal expression with raw-string quoting', () {
      final e = StringExport('orders-prod');
      expect(e.dartLiteralExpression, equals("r'orders-prod'"));
      expect(e.dartType, equals('String'));
      expect(e.emitTerraformOutput, isFalse);
      expect(e.terraformOutputName, isNull);
      expect(e.sensitive, isFalse);
      expect(e.description, isNull);
    });

    test('preserves single quotes via raw string', () {
      final e = StringExport("user's-topic");
      expect(e.dartLiteralExpression, equals("r'user's-topic'"));
    });

    test('rejects values containing newlines (would break raw string)', () {
      expect(
        () => StringExport('line1\nline2'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('rejects values containing carriage returns', () {
      expect(
        () => StringExport('line1\rline2'),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('description is preserved', () {
      final e = StringExport('v1', description: 'API version');
      expect(e.description, equals('API version'));
    });

    test('sensitive is hard-coded to false (never accepts secrets)', () {
      // StringExport always emits a Dart constant, so it MUST NOT carry
      // secrets. The constructor offers no `sensitive` parameter; the getter
      // returns `false`. Use EnvBackedExport or ResourceIdExport(sensitive:
      // true) for sensitive values.
      final e = StringExport('v1');
      expect(e.sensitive, isFalse);
    });
  });

  group('ResourceIdExport', () {
    final ordersTopic = const _AddressStub('google_pubsub_topic.orders');

    test('always returns null dartLiteralExpression at construction time', () {
      // Resolution happens in Pass 2 (output emitter) — the export itself
      // does not know its literal value.
      final ref = TfRef.attribute<String>(ordersTopic, 'name');
      final e = ResourceIdExport(ref);
      expect(e.dartLiteralExpression, isNull);
      expect(e.dartType, equals('String'));
      expect(e.emitTerraformOutput, isFalse);
      expect(e.sensitive, isFalse);
      expect(e.ref, same(ref));
    });

    test('emitTerraformOutput honoured when explicit', () {
      final ref = TfRef.attribute<String>(ordersTopic, 'id');
      final e = ResourceIdExport(ref, emitTerraformOutput: true);
      expect(e.emitTerraformOutput, isTrue);
    });

    test('terraformOutputName override respected', () {
      final ref = TfRef.attribute<String>(ordersTopic, 'name');
      final e = ResourceIdExport(
        ref,
        emitTerraformOutput: true,
        terraformOutputName: 'orders_topic_name_v2',
      );
      expect(e.terraformOutputName, equals('orders_topic_name_v2'));
    });

    test('sensitive flag forwards', () {
      final ref = TfRef.attribute<String>(ordersTopic, 'id');
      final e = ResourceIdExport(
        ref,
        emitTerraformOutput: true,
        sensitive: true,
      );
      expect(e.sensitive, isTrue);
    });
  });

  group('ResourceAttributeExport', () {
    test('carries dartType and literalEncoder', () {
      final ref = TfRef.attribute<int>(
        const _AddressStub('google_pubsub_subscription.worker'),
        'ack_deadline_seconds',
      );
      final e = ResourceAttributeExport<int>(
        ref: ref,
        dartType: 'int',
        literalEncoder: (v) => v.toString(),
      );
      expect(e.dartType, equals('int'));
      expect(e.literalEncoder(60), equals('60'));
      expect(e.dartLiteralExpression, isNull);
      expect(e.emitTerraformOutput, isFalse);
      expect(e.sensitive, isFalse);
    });

    test('Uri encoder example', () {
      final ref = TfRef.attribute<String>(
        const _AddressStub('google_cloud_run_v2_service.api'),
        'uri',
      );
      final e = ResourceAttributeExport<String>(
        ref: ref,
        dartType: 'Uri',
        literalEncoder: (v) => "Uri.parse(r'$v')",
      );
      expect(
        e.literalEncoder('https://example.com'),
        equals("Uri.parse(r'https://example.com')"),
      );
    });
  });

  group('EnvBackedExport', () {
    test('emits String.fromEnvironment with default', () {
      final e = EnvBackedExport(
        envVarName: 'API_BASE_URL',
        defaultValue: 'http://localhost:8080',
      );
      expect(
        e.dartLiteralExpression,
        equals(
          "const String.fromEnvironment('API_BASE_URL', defaultValue: r'http://localhost:8080')",
        ),
      );
      expect(e.emitTerraformOutput, isFalse);
      expect(e.sensitive, isFalse);
    });

    test('emits without defaultValue', () {
      final e = EnvBackedExport(envVarName: 'STAGE');
      expect(
        e.dartLiteralExpression,
        equals("const String.fromEnvironment('STAGE')"),
      );
    });

    test('rejects empty envVarName', () {
      expect(
        () => EnvBackedExport(envVarName: ''),
        throwsA(isA<ArgumentError>()),
      );
    });
  });

  group('AppExport variants — pattern dispatch smoke test', () {
    // `AppExport` is `abstract base class` (not `sealed`) for cross-package
    // extensibility, so a `switch` cannot be exhaustive. Synth uses an
    // `is`-chain to dispatch on the v0.0.x known variants and falls back to
    // a runtime error for unknown subclasses (defensive).
    String classify(AppExport e) {
      if (e is StringExport) return 'string';
      if (e is ResourceIdExport) return 'resource_id';
      if (e is ResourceAttributeExport) return 'attr';
      if (e is EnvBackedExport) return 'env';
      return 'unknown';
    }

    final ab = const _AddressStub('a.b');

    test('classify each variant', () {
      expect(classify(StringExport('a')), equals('string'));
      expect(
        classify(ResourceIdExport(TfRef.attribute<String>(ab, 'name'))),
        equals('resource_id'),
      );
      expect(
        classify(
          ResourceAttributeExport<int>(
            ref: TfRef.attribute<int>(ab, 'x'),
            dartType: 'int',
            literalEncoder: (v) => v.toString(),
          ),
        ),
        equals('attr'),
      );
      expect(classify(EnvBackedExport(envVarName: 'X')), equals('env'));
    });
  });
}
