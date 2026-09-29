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

  GoogleBiglakeHiveDatabase({
    required super.localName,
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
}
