import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

void main() {
  test('public symbols are exported', () {
    // Compile-time: just referencing them is the test.
    final symbols = <Type>[
      TfArg,
      TfArgLiteral,
      TfArgRef,
      TfRef,
      AttributeRef,
      DataRef,
      ResourceRef,
      TfAddressed,
      SchemaCarrier,
      Resource,
      ResourceKind,
      Data,
      LifecycleOptions,
      DependencyTarget,
      ResourceDependency,
      RefDependency,
      Stack,
      StackBackend,
      StackProvider,
      ProviderBinding,
      AppExport,
      // AppExport variants:
      StringExport,
      ResourceIdExport,
      ResourceAttributeExport,
      EnvBackedExport,
      GcsBackend,
      LiteralResolver,
      OutputEmitter,
      OutputEmissionResult,
      DartConstantSpec,
      TerraformOutputSpec,
      DartConstantsEmitter,
      JsonEncoder,
      StackSynth,
      SynthResult,
      DuplicateResourceError,
    ];
    expect(symbols, hasLength(36));
  });

  test('TerraformDurationExt is accessible (extension method)', () {
    // Ensure the extension is reachable through the public surface.
    expect(const Duration(seconds: 7).toTfDurationString(), equals('7s'));
  });
}
