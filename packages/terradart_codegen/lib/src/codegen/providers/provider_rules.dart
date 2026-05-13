import '../../ir/resource_def.dart';

/// Provider-specific data + behaviour pulled out of the inline Google-only
/// code in Phase 4.1–4.3. Each Terraform provider terradart supports is one
/// concrete subclass.
///
/// Phase 4.4 ships only `GoogleProviderRules`. AWS / Azure adapters land in
/// Phase 4.5+ when a real consumer (e.g. `terradart_aws`) is implemented.
/// The abstract base is open/closed so community adapters in separate
/// packages can plug in without touching this file.
abstract class ProviderRules {
  const ProviderRules();

  /// Terraform provider id, e.g. `'hashicorp/google'`. Used both as the
  /// `Map<String, ProviderRules>` registry key in `cli_runner.dart` and as
  /// the expected value for the `--provider` CLI flag.
  String get providerId;

  /// MM-product alias map + name-prefix overrides consumed by
  /// `OutputDirResolver`. Phase 4.2's `_googleOutputDirAliases` const moves
  /// into `GoogleProviderRules.outputDirAliases`.
  Map<String, String> get outputDirAliases;

  /// Cross-resource hint getter skeleton lines (Dart source, no leading
  /// indent) for the resource defined by [def]. Returned strings are
  /// embedded inside the `extraGetters: |2` commented block emitted by
  /// `WrapInitGenerator._buildExtraGettersAxis`.
  ///
  /// Google: 0–2 lines for `id` and `nameRef` (from `name` attr).
  /// AWS (Phase 4.5+): will return 0–2 lines for `id` and `arnRef`.
  List<String> universalGetters(ResourceDef def);
}
