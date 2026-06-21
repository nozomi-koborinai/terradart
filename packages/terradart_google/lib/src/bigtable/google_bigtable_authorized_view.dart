// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
/// - [tableName]: parent table ID — pass `TfArg.ref(table.nameRef)`.
/// - [name]: authorized view ID.
/// - [subsetView]: optional [BigtableAuthorizedViewSubsetView] filter.
///
/// Example:
/// ```dart
/// GoogleBigtableAuthorizedView(
///   localName: 'tenant_a',
///   instanceName: TfArg.ref(instance.nameRef),
///   tableName: TfArg.ref(table.nameRef),
///   name: TfArg.literal('tenant-a'),
///   subsetView: BigtableAuthorizedViewSubsetView(
///     rowPrefixes: [TfArg.literal('tenant-a#')],
///   ),
/// );
/// ```
final class GoogleBigtableAuthorizedView extends Resource {
  static const String tfType = 'google_bigtable_authorized_view';

  GoogleBigtableAuthorizedView({
    required super.localName,
    required TfArg<String> instanceName,
    required TfArg<String> tableName,
    required TfArg<String> name,
    BigtableAuthorizedViewSubsetView? subsetView,
    TfArg<String>? deletionPolicy,
    TfArg<String>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'table_name': tableName,
           'name': name,
           if (subsetView != null)
             'subset_view': TfArg.literal([subsetView.toArgMap()]),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigtableAuthorizedViewSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
