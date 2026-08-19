// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_hive_database`.
const Set<String> _googleBiglakeHiveDatabaseSensitive = <String>{};

/// Factory wrapper for `google_biglake_hive_database`.
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
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'catalog': catalog,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (locationUri != null) 'location_uri': locationUri,
           'name': name,
           if (parameters != null) 'parameters': parameters,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveDatabaseSensitive;
}
