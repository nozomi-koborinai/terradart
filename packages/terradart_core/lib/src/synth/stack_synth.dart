import 'package:meta/meta.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/synth/app_exports_emitter.dart';
import 'package:terradart_core/src/synth/json_encoder.dart';

/// Bundle returned by [StackSynth.synth].
class SynthResult {
  const SynthResult({
    required this.tfJson,
    required this.dartSource,
    required this.dartSourcePath,
  });

  /// JSON-serialisable map suitable for `dart:convert`'s `JsonEncoder`.
  /// All `TfArg` / `TfRef` instances have been collapsed to scalars or
  /// `${...}` interpolation strings.
  final Map<String, dynamic> tfJson;

  /// Generated Dart source of the [Stack.appExports] file, rendered in full
  /// (an empty class when the Stack declares no constants); `null` when the
  /// Stack has no such file.
  final String? dartSource;

  /// [AppExports.path] of [Stack.appExports], or `null`.
  final String? dartSourcePath;
}

/// Synth entry point: convert a [Stack] into the JSON map for
/// `main.tf.json` plus the Dart source of the `Stack.appExports` file.
///
/// This is a thin orchestrator over the building blocks in `synth/`:
/// JSON via [TfJsonEncoder], outputs and the Dart file via
/// [AppExportsEmitter].
///
/// Internal: callers should use [Stack.synth] (in-memory) or
/// [Stack.writeTo] (file write) — the public surface routes through
/// the Stack-level API, not this orchestrator class directly.
@internal
class StackSynth {
  /// Synthesise [stack] into a [SynthResult].
  static SynthResult synth(Stack stack) {
    // 1. Top-level terraform block (required).
    final terraform = TfJsonEncoder.terraformBlock(stack);

    // 2. Optional provider and variable blocks.
    final providers = TfJsonEncoder.providerBlock(stack);
    final variables = TfJsonEncoder.variableBlock(stack);

    // 3. Resources, data sources, module calls, and the moved entries
    // between them.
    final resources = TfJsonEncoder.resourcesGroup(stack);
    final data = TfJsonEncoder.dataGroup(stack);
    final modules = TfJsonEncoder.moduleGroup(stack);
    final moved = TfJsonEncoder.movedBlock(stack);

    // 4. Outputs.
    final outputs = AppExportsEmitter.outputBlock(stack);

    // 5. Assemble tf.json (key order is stable for golden tests).
    final tfJson = <String, dynamic>{'terraform': terraform};
    if (variables != null) tfJson['variable'] = variables;
    if (providers != null) tfJson['provider'] = providers;
    if (resources != null) tfJson['resource'] = resources;
    if (data != null) tfJson['data'] = data;
    if (modules != null) tfJson['module'] = modules;
    if (moved != null) tfJson['moved'] = moved;
    if (outputs != null) tfJson['output'] = outputs;

    // 6. The app's Dart file.
    return SynthResult(
      tfJson: tfJson,
      dartSource: AppExportsEmitter.dartSource(stack),
      dartSourcePath: stack.appExports?.path,
    );
  }
}
