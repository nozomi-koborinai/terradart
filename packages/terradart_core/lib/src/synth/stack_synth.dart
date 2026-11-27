import 'package:meta/meta.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/synth/app_exports_emitter.dart';
import 'package:terradart_core/src/synth/json_encoder.dart';
import 'package:terradart_core/src/synth/stack_validator.dart';
import 'package:terradart_core/src/synth/synth_issue.dart';

/// Bundle returned by [Stack.synth].
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

@internal
class StackSynth {
  static SynthResult synth(Stack stack) {
    final issues = StackValidator.validate(stack);
    if (issues.isNotEmpty) {
      throw SynthException(stack.runtimeType.toString(), issues);
    }

    final terraform = TfJsonEncoder.terraformBlock(stack);
    final providers = TfJsonEncoder.providerBlock(stack);
    final variables = TfJsonEncoder.variableBlock(stack);
    final resources = TfJsonEncoder.resourcesGroup(stack);
    final data = TfJsonEncoder.dataGroup(stack);
    final modules = TfJsonEncoder.moduleGroup(stack);
    final moved = TfJsonEncoder.movedBlock(stack);
    final outputs = AppExportsEmitter.outputBlock(stack);

    final tfJson = <String, dynamic>{'terraform': terraform};
    if (variables != null) tfJson['variable'] = variables;
    if (providers != null) tfJson['provider'] = providers;
    if (resources != null) tfJson['resource'] = resources;
    if (data != null) tfJson['data'] = data;
    if (modules != null) tfJson['module'] = modules;
    if (moved != null) tfJson['moved'] = moved;
    if (outputs != null) tfJson['output'] = outputs;

    return SynthResult(
      tfJson: tfJson,
      dartSource: AppExportsEmitter.dartSource(stack),
      dartSourcePath: stack.appExports?.path,
    );
  }
}
