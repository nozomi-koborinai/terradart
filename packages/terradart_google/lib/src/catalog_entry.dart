/// Whether a catalog entry is a managed resource or a read-only data source.
enum CatalogKind { resource, dataSource }

/// Static metadata describing one curated terradart_google factory.
///
/// Generated into `_catalog.g.dart` by `terradart wrap`; consumed by
/// terradart_agent's MCP server. Hand-editing the generated list is pointless —
/// regenerate via `terradart wrap`.
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
