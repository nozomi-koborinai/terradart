import 'dart:io';

import 'package:terradart_core/src/dart_source.dart';
import 'package:terradart_core/src/synth/dart_constants_emitter.dart';
import 'package:terradart_core/src/synth/output_emitter.dart';
import 'package:test/test.dart';

void main() {
  group('DartConstantsEmitter', () {
    test('emits empty class when no constants', () {
      final out = DartConstantsEmitter.emit(
        stackName: 'OrdersStack',
        constants: const <DartConstantSpec>[],
      );
      expect(
        out,
        equals('''// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: OrdersStack
// dart format off
// ignore_for_file: type=lint

abstract final class OrdersStackExports {
  OrdersStackExports._();
}
'''),
      );
    });

    test('emits single string constant', () {
      final out = DartConstantsEmitter.emit(
        stackName: 'OrdersStack',
        constants: const [
          DartConstantSpec(
            name: 'apiVersion',
            dartType: 'String',
            rhs: "r'v1'",
          ),
        ],
      );
      expect(
        out,
        equals('''// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: OrdersStack
// dart format off
// ignore_for_file: type=lint

abstract final class OrdersStackExports {
  OrdersStackExports._();

  static const String apiVersion = r'v1';
}
'''),
      );
    });

    test('emits multiple constants with doc comments', () {
      final out = DartConstantsEmitter.emit(
        stackName: 'OrdersStack',
        constants: const [
          DartConstantSpec(
            name: 'ordersTopicName',
            dartType: 'String',
            rhs: "r'orders-prod'",
            doc: 'Pub/Sub topic for orders.',
          ),
          DartConstantSpec(
            name: 'apiVersion',
            dartType: 'String',
            rhs: "r'v1'",
          ),
        ],
      );
      expect(
        out,
        equals('''// GENERATED CODE - DO NOT MODIFY BY HAND
// terradart synth output for stack: OrdersStack
// dart format off
// ignore_for_file: type=lint

abstract final class OrdersStackExports {
  OrdersStackExports._();

  /// Pub/Sub topic for orders.
  static const String ordersTopicName = r'orders-prod';

  static const String apiVersion = r'v1';
}
'''),
      );
    });

    test('multi-line doc comment is split per line', () {
      final out = DartConstantsEmitter.emit(
        stackName: 'OrdersStack',
        constants: const [
          DartConstantSpec(
            name: 'apiVersion',
            dartType: 'String',
            rhs: "r'v1'",
            doc: 'Line 1.\nLine 2.',
          ),
        ],
      );
      expect(out, contains('/// Line 1.\n  /// Line 2.\n'));
    });

    test('non-String dartType is preserved verbatim', () {
      final out = DartConstantsEmitter.emit(
        stackName: 'WebStack',
        constants: const [
          DartConstantSpec(
            name: 'apiUri',
            dartType: 'Uri',
            rhs: "Uri.parse(r'https://example.com')",
          ),
        ],
      );
      expect(
        out,
        contains(
          '  static const Uri apiUri = Uri.parse(r\'https://example.com\');',
        ),
      );
    });
  });

  group('DartConstantsEmitter output compiles', () {
    test('a value with quotes, dollars, and backslashes passes dart analyze',
        () async {
      final out = DartConstantsEmitter.emit(
        stackName: 'TrickyStack',
        constants: [
          DartConstantSpec(
            name: 'greeting',
            dartType: 'String',
            rhs: dartStringLiteral(r"it's $5 \ done"),
          ),
          DartConstantSpec(
            name: 'plain',
            dartType: 'String',
            rhs: dartStringLiteral('orders-prod'),
          ),
        ],
      );
      final dir = await Directory.systemTemp.createTemp('terradart_constants_');
      try {
        final file = File('${dir.path}/tricky.app.dart');
        await file.writeAsString(out);
        final result = await Process.run(
          Platform.resolvedExecutable,
          ['analyze', '--fatal-infos', file.path],
        );
        expect(
          result.exitCode,
          0,
          reason: 'dart analyze failed:\n${result.stdout}\n${result.stderr}',
        );
      } finally {
        await dir.delete(recursive: true);
      }
    });
  });
}
