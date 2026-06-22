// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
/// - [instance]: parent instance — pass `TfArg.ref(instance.nameRef)`.
///
/// Example:
/// ```dart
/// GoogleBigtableMaterializedView(
///   localName: 'daily_counts',
///   materializedViewId: TfArg.literal('daily-counts'),
///   instance: TfArg.ref(instance.nameRef),
///   query: TfArg.literal(
///     'SELECT COUNT(*) AS cnt FROM events GROUP BY day',
///   ),
/// );
/// ```
final class GoogleBigtableMaterializedView extends Resource {
  static const String tfType = 'google_bigtable_materialized_view';

  GoogleBigtableMaterializedView({
    required super.localName,
    required TfArg<String> materializedViewId,
    required TfArg<String> query,
    TfArg<String>? instance,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'materialized_view_id': materializedViewId,
           'query': query,
           if (instance != null) 'instance': instance,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableMaterializedViewSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
