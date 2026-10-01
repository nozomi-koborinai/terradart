// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_instance.dart' show GoogleBigtableInstance;

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
///   instance: instance.ref,
///   query: TfArg.literal('SELECT * FROM events WHERE timestamp > 0'),
/// );
/// ```
final class GoogleBigtableLogicalView extends Resource {
  static const String tfType = 'google_bigtable_logical_view';

  GoogleBigtableLogicalView({
    required super.localName,
    required TfArg<String> logicalViewId,
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
           'logical_view_id': logicalViewId,
           'query': query,
           'instance': ?instance?.encodeAs('name'),
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableLogicalViewSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableLogicalView>`.
  RefTo<GoogleBigtableLogicalView> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtectionRef =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `logical_view_id` attribute.
  TfRef<String> get logicalViewIdRef =>
      TfRef.attribute<String>(this, 'logical_view_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `query` attribute.
  TfRef<String> get queryRef => TfRef.attribute<String>(this, 'query');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
