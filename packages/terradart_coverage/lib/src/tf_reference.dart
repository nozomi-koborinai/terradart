import 'package:terradart_google/catalog.dart' show CatalogKind;

/// One Terraform resource / data source occurrence, from a source scan
/// (`scanConfigDir`) or an evaluated `terraform show -json` document
/// (`parseShowJson`).
final class TfReference {
  const TfReference({
    required this.type,
    required this.kind,
    required this.modulePath,
  });

  /// Terraform type string, e.g. `google_storage_bucket`.
  final String type;

  /// Managed resource vs read-only data source.
  final CatalogKind kind;

  /// Module address (`root`, `module.network`) for evaluated input; the
  /// directory (`root`, `dev`, `modules/network`) for a source scan.
  final String modulePath;
}

/// Outcome of extracting references from Terraform input.
final class ParseOutcome {
  const ParseOutcome({
    required this.references,
    required this.unparseable,
    this.unexpanded = const [],
  });

  /// Successfully extracted references (one per resource instance occurrence).
  final List<TfReference> references;

  /// Human-readable notes for input that could not be interpreted (a file
  /// that fails to parse, a remote module, an entry without a `type`, an
  /// unexpected shape). Never silently dropped.
  final List<String> unparseable;

  /// Blocks whose `count` / `for_each` could not be expanded from source (a
  /// variable, a conditional, a function call other than `toset([...])`);
  /// each is counted once. Empty for evaluated input, where Terraform has
  /// already expanded them.
  final List<String> unexpanded;
}
