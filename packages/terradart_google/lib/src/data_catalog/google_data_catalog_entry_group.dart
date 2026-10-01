// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_entry_group`.
const Set<String> _googleDataCatalogEntryGroupSensitive = <String>{};

/// Factory wrapper for `google_data_catalog_entry_group`.
///
/// An EntryGroup resource represents a logical grouping of zero or more Data
/// Catalog Entry resources.
///
/// Data Catalog **entry group** — logical container for Data Catalog Entry
/// resources (legacy Data Catalog API).
///
/// Prefer [GoogleDataplexEntryGroup] for new catalogs; this factory remains
/// for stacks that still use `google_data_catalog_entry_group`. Creating an
/// entry group alone does not create entries or bill catalog SKUs.
///
/// Enable `datacatalog.googleapis.com` via [GoogleProjectService]
/// before apply. Region is typically regional (e.g. `us-central1`).
///
/// Example:
/// ```dart
/// GoogleDataCatalogEntryGroup(
///   localName: 'group',
///   entryGroupId: TfArg.literal('terradart_entry_group'),
///   region: TfArg.literal('us-central1'),
///   displayName: TfArg.literal('TerraDart entry group'),
///   description: TfArg.literal('TerraDart smoke Data Catalog entry group'),
/// );
/// ```
final class GoogleDataCatalogEntryGroup extends Resource {
  static const String tfType = 'google_data_catalog_entry_group';

  GoogleDataCatalogEntryGroup({
    required super.localName,
    required TfArg<String> entryGroupId,
    TfArg<String>? region,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group_id': entryGroupId,
           'region': ?region,
           'display_name': ?displayName,
           'description': ?description,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataCatalogEntryGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogEntryGroup>`.
  RefTo<GoogleDataCatalogEntryGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `entry_group_id` attribute.
  TfRef<String> get entryGroupId =>
      TfRef.attribute<String>(this, 'entry_group_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
