import 'package:terradart_google/catalog.dart' show CatalogKind;

/// One Terraform resource/data reference extracted from `terraform show -json`.
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

  /// Module address, `root` for the root module, else e.g. `module.network`.
  final String modulePath;
}

/// Outcome of parsing a `terraform show -json` document.
final class ParseOutcome {
  const ParseOutcome({required this.references, required this.unparseable});

  /// Successfully extracted references (one per resource instance occurrence).
  final List<TfReference> references;

  /// Human-readable notes for entries that could not be interpreted
  /// (missing `type`/`mode`, unexpected shape). Never silently dropped.
  final List<String> unparseable;
}
