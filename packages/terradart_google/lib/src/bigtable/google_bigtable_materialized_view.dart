// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_instance.dart' show GoogleBigtableInstance;

/// Sensitive field paths for `google_bigtable_materialized_view`.
const Set<String> _googleBigtableMaterializedViewSensitive = <String>{};

/// Factory wrapper for `google_bigtable_materialized_view`.
///
/// A materialized view object that can be referenced in SQL queries.
///
/// Materialized view on a Bigtable instance — precomputed query results.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [materializedViewId]: view ID within the instance.
/// - [query]: SELECT query the view materializes.
/// - [instance]: parent instance — pass `instance.name`.
///
/// Example:
/// ```dart
/// GoogleBigtableMaterializedView(
///   'daily_counts',
///   materializedViewId: TfArg.literal('daily-counts'),
///   instance: instance.ref,
///   query: TfArg.literal(
///     'SELECT COUNT(*) AS cnt FROM events GROUP BY day',
///   ),
/// );
/// ```
final class GoogleBigtableMaterializedView extends Resource {
  static const String tfType = 'google_bigtable_materialized_view';

  GoogleBigtableMaterializedView(
    super.localName, {
    required TfArg<String> materializedViewId,
    required TfArg<String> query,
    RefTo<GoogleBigtableInstance>? instance,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'materialized_view_id': materializedViewId,
           'query': query,
           'instance': ?instance?.encodeAs('name'),
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableMaterializedViewSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableMaterializedView>`.
  RefTo<GoogleBigtableMaterializedView> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `materialized_view_id` attribute.
  TfRef<String> get materializedViewId =>
      TfRef.attribute<String>(this, 'materialized_view_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `query` attribute.
  TfRef<String> get query => TfRef.attribute<String>(this, 'query');
}
