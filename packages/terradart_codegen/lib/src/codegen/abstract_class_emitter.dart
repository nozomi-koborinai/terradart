import '../ir/resource_def.dart';

/// Plan 5.X (v0.5.0-dev) — Layer 1 abstract class emission is retired.
///
/// Pre-Plan-5.X, this emitter generated `$Foo` schemantic-decorated abstract
/// classes (`@TerraformResource`, `@StringField`, `@Sensitive`, etc.) for
/// each resource. With the schemantic chain dropped, the abstract class has
/// no consumer (it was only ever consumed by the schemantic build_runner
/// pass that produced `_$Foo` concrete carriers, themselves never read by
/// the synth pipeline). [emit] now returns the empty string; the call site
/// in `wrap_command.dart` no longer invokes it.
///
/// Kept as a transitional stub so downstream importers do not break in a
/// single release cycle. Safe to delete entirely after that.
class AbstractClassEmitter {
  const AbstractClassEmitter();

  /// Plan 5.X stub. Always returns the empty string.
  ///
  /// Parameters preserved for API compatibility; intentionally unused.
  String emit(
    ResourceDef def, {
    required String providerSource,
    List<String>? extraSensitiveFields,
  }) {
    return '';
  }
}
