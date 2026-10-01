// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../bigtable/google_bigtable_instance.dart' show GoogleBigtableInstance;
import '../bigtable/google_bigtable_table.dart' show GoogleBigtableTable;

/// Sensitive field paths for `google_bigtable_authorized_view`.
const Set<String> _googleBigtableAuthorizedViewSensitive = <String>{};

/// `subset_view` block on `google_bigtable_authorized_view`.
class BigtableAuthorizedViewSubsetView {
  const BigtableAuthorizedViewSubsetView({this.rowPrefixes});

  final List<TfArg<String>>? rowPrefixes;

  Map<String, Object?> toArgMap() => {
    if (rowPrefixes != null)
      'row_prefixes': rowPrefixes!.map((p) => p.toTfJson()).toList(),
  };
}

/// Factory wrapper for `google_bigtable_authorized_view`.
///
/// Authorized view on a Bigtable table — row-level access control.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [instanceName]: parent instance ID.
/// - [tableName]: parent table ID — pass `table.name`.
/// - [name]: authorized view ID.
/// - [subsetView]: optional [BigtableAuthorizedViewSubsetView] filter.
///
/// Example:
/// ```dart
/// GoogleBigtableAuthorizedView(
///   'tenant_a',
///   instanceName: instance.ref,
///   tableName: table.ref,
///   name: TfArg.literal('tenant-a'),
///   subsetView: BigtableAuthorizedViewSubsetView(
///     rowPrefixes: [TfArg.literal('tenant-a#')],
///   ),
/// );
/// ```
final class GoogleBigtableAuthorizedView extends Resource {
  static const String tfType = 'google_bigtable_authorized_view';

  GoogleBigtableAuthorizedView(
    super.localName, {
    required RefTo<GoogleBigtableInstance> instanceName,
    required RefTo<GoogleBigtableTable> tableName,
    required TfArg<String> name,
    BigtableAuthorizedViewSubsetView? subsetView,
    TfArg<String>? deletionPolicy,
    TfArg<String>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName.encodeAs('name'),
           'table_name': tableName.encodeAs('name'),
           'name': name,
           if (subsetView != null)
             'subset_view': TfArg.literal([subsetView.toArgMap()]),
           'deletion_policy': ?deletionPolicy,
           'deletion_protection': ?deletionProtection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableAuthorizedViewSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigtableAuthorizedView>`.
  RefTo<GoogleBigtableAuthorizedView> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<String> get deletionProtection =>
      TfRef.attribute<String>(this, 'deletion_protection');

  /// Reference to `instance_name` attribute.
  TfRef<String> get instanceName =>
      TfRef.attribute<String>(this, 'instance_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');
}
