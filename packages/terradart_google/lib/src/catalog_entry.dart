/// Whether a catalog entry is a managed resource or a read-only data source.
enum CatalogKind {
  /// A managed Terraform resource (`resource.<type>.<name>`), emitted as a
  /// `final class … extends Resource` wrapper.
  resource,

  /// A read-only Terraform data source (`data.<type>.<name>`), emitted as a
  /// `final class … extends Data` wrapper.
  dataSource,
}

/// Static metadata describing one curated terradart_google factory.
///
/// This type is **hand-written** (it is part of the public catalog API
/// consumed by terradart_agent's MCP server). Only the `terradartCatalog`
/// *list* of [CatalogEntry] values lives in the generated `_catalog.g.dart`,
/// which `terradart wrap` regenerates — one entry per curated resource and
/// data source. Edit this type by hand; never hand-edit the generated list
/// (regenerate via `terradart wrap`).
final class CatalogEntry {
  const CatalogEntry({
    required this.tfType,
    required this.className,
    required this.barrel,
    required this.kind,
    required this.summary,
    required this.constructorParams,
    required this.nestedTypes,
    required this.sensitiveFields,
    required this.docComment,
  });

  /// Terraform type string, e.g. `google_pubsub_topic`.
  final String tfType;

  /// Dart wrapper class name, e.g. `GooglePubsubTopic`.
  final String className;

  /// Per-service barrel (outputDir), e.g. `pubsub`.
  final String barrel;

  /// Resource vs data source.
  final CatalogKind kind;

  /// One-line summary (first sentence of the doc comment).
  final String summary;

  /// Constructor parameter names in declared order.
  final List<String> constructorParams;

  /// Names of nested helper types emitted alongside this resource.
  final List<String> nestedTypes;

  /// Sensitive field paths (dotted), masked at synth time.
  final List<String> sensitiveFields;

  /// Full doc comment text (markdown).
  final String docComment;
}
