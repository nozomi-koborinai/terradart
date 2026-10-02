import 'dart:io';

import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

void main() {
  test('public symbols are exported', () {
    // Compile-time: just referencing them is the test.
    final symbols = <Type>[
      TfArg,
      TfArgExpression,
      TfArgLiteral,
      TfRef,
      AttributeRef,
      DataRef,
      ResourceRef,
      RefTo,
      TfAddressed,
      Resource,
      ResourceKind,
      Data,
      LifecycleOptions,
      Stack,
      StackBackend,
      StackProvider,
      AppConstant,
      RefConstant,
      ValueConstant,
      EnvironmentConstant,
      AppExports,
      TfOutput,
      GcsBackend,
      S3Backend,
      SynthResult,
      DuplicateResourceError,
      TfVariable,
      TfMoved,
      ModuleCall,
      DuplicateModuleError,
      TfTimeouts,
    ];
    expect(symbols, hasLength(31));
  });

  test('generator building blocks stay out of the public library', () {
    final source = File('lib/terradart_core.dart').readAsStringSync();
    for (final name in [
      'TfJsonEncoder',
      'hasTemplateSequence',
      'templateVariableNames',
    ]) {
      expect(source, isNot(contains(name)), reason: name);
    }
  });

  test('TerraformDurationExt is accessible (extension method)', () {
    // Ensure the extension is reachable through the public surface.
    expect(const Duration(seconds: 7).toTfDurationString(), equals('7s'));
  });
}
