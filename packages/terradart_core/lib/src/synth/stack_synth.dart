import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/synth/dart_constants_emitter.dart';
import 'package:terradart_core/src/synth/json_encoder.dart';
import 'package:terradart_core/src/synth/literal_resolver.dart';
import 'package:terradart_core/src/synth/output_emitter.dart';

/// Bundle returned by [StackSynth.synth].
class SynthResult {
  const SynthResult({
    required this.tfJson,
    required this.dartConstants,
    required this.dartConstantsPath,
  });

  /// JSON-serialisable map suitable for `dart:convert`'s `JsonEncoder`.
  /// All `TfArg` / `TfRef` instances have been collapsed to scalars or
  /// `${...}` interpolation strings.
  final Map<String, dynamic> tfJson;

  /// Generated Dart source for the `<stack>.app.dart` constants file.
  /// `null` when no AppExports produced Dart constants (i.e. all exports
  /// were Terraform-output-only or the stack registered none).
  final String? dartConstants;

  /// Output path hint for the Dart constants file (read from
  /// [Stack.appExportsOutputPath]). `null` when unset — the caller's
  /// `main()` is responsible for supplying a default in that case.
  final String? dartConstantsPath;
}

/// Synth entry point: convert a [Stack] into the JSON map for
/// `main.tf.json` plus the Dart source for `<stack>.app.dart`.
///
/// This is a thin orchestrator over the building blocks in `synth/`:
/// [LiteralResolver] (Pass 1) → [OutputEmitter] (Pass 2) → assemble
/// JSON via [JsonEncoder], render Dart via [DartConstantsEmitter].
class StackSynth {
  /// Synthesise [stack] into a [SynthResult].
  ///
  /// `stackName` is used to derive the generated Dart class name
  /// (`<PascalCaseStackName>Exports`). Defaults to the runtime type name
  /// of the `Stack` subclass — e.g. `class OrdersStack extends Stack` →
  /// `OrdersStackExports`.
  static SynthResult synth(Stack stack, {String? stackName}) {
    // 1. Top-level terraform block (required).
    final terraform = JsonEncoder.terraformBlock(stack);

    // 2. Optional provider block.
    final providers = JsonEncoder.providerBlock(stack);

    // 3. Resources & data sources.
    final resources = JsonEncoder.resourcesGroup(stack);
    final data = JsonEncoder.dataGroup(stack);

    // 4. Two-pass app exports.
    final resolver = LiteralResolver.fromStack(stack);
    final pass2 = OutputEmitter.run(stack: stack, resolver: resolver);
    final outputs = JsonEncoder.outputBlock(pass2.terraformOutputs);

    // 5. Assemble tf.json (key order is stable for golden tests).
    final tfJson = <String, dynamic>{'terraform': terraform};
    if (providers != null) tfJson['provider'] = providers;
    if (resources != null) tfJson['resource'] = resources;
    if (data != null) tfJson['data'] = data;
    if (outputs != null) tfJson['output'] = outputs;

    // 6. Dart constants file.
    String? dartConstants;
    if (pass2.dartConstants.isNotEmpty) {
      final resolvedName = stackName ?? _stackClassName(stack);
      dartConstants = DartConstantsEmitter.emit(
        stackName: _toPascalCase(resolvedName),
        constants: pass2.dartConstants,
      );
    }

    return SynthResult(
      tfJson: tfJson,
      dartConstants: dartConstants,
      dartConstantsPath: stack.appExportsOutputPath,
    );
  }

  /// Falls back to runtime type name when no explicit `stackName` is
  /// given. v0.0.x does not strip a trailing `Stack` suffix — a class
  /// literally named `OrdersStack` produces `OrdersStackExports`.
  static String _stackClassName(Stack stack) => stack.runtimeType.toString();

  static String _toPascalCase(String name) {
    if (name.isEmpty) return name;
    final parts = name.split(RegExp(r'[_\-\s]+'));
    return parts
        .map((p) => p.isEmpty ? '' : p[0].toUpperCase() + p.substring(1))
        .join();
  }
}
