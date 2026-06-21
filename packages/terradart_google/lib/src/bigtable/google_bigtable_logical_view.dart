// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigtable_logical_view`.
const Set<String> _googleBigtableLogicalViewSensitive = <String>{};

/// Factory wrapper for `google_bigtable_logical_view`.
///
/// A logical view object that can be referenced in SQL queries.
///
/// Logical view on a Bigtable instance — a SQL-like query over tables.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [logicalViewId]: view ID within the instance.
/// - [query]: SELECT query defining the view.
/// - [instance]: parent instance — pass `TfArg.ref(instance.nameRef)`.
///
/// Example:
/// ```dart
/// GoogleBigtableLogicalView(
///   localName: 'recent_events',
///   logicalViewId: TfArg.literal('recent-events'),
///   instance: TfArg.ref(instance.nameRef),
///   query: TfArg.literal('SELECT * FROM events WHERE timestamp > 0'),
/// );
/// ```
final class GoogleBigtableLogicalView extends Resource {
  static const String tfType = 'google_bigtable_logical_view';

  GoogleBigtableLogicalView({
    required super.localName,
    required TfArg<String> logicalViewId,
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
           'logical_view_id': logicalViewId,
           'query': query,
           if (instance != null) 'instance': instance,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableLogicalViewSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
