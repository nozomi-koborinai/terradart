// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_hive_database`.
const Set<String> _googleBiglakeHiveDatabaseSensitive = <String>{};

/// Factory wrapper for `google_biglake_hive_database`.
///
/// Hive Databases in Biglake Metastore. Hive Databases exist within a Hive
/// Catalog.
final class GoogleBiglakeHiveDatabase extends Resource {
  static const String tfType = 'google_biglake_hive_database';

  GoogleBiglakeHiveDatabase(
    super.localName, {
    required TfArg<String> catalog,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? locationUri,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'location_uri': ?locationUri,
           'name': name,
           'parameters': ?parameters,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveDatabase>`.
  RefTo<GoogleBiglakeHiveDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalog => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location_uri` attribute.
  TfRef<String> get locationUri =>
      TfRef.attribute<String>(this, 'location_uri');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
