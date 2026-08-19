// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_hive_catalog`.
const Set<String> _googleBiglakeHiveCatalogSensitive = <String>{};

/// Factory wrapper for `google_biglake_hive_catalog`.
final class GoogleBiglakeHiveCatalog extends Resource {
  static const String tfType = 'google_biglake_hive_catalog';

  GoogleBiglakeHiveCatalog({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> locationUri,
    required TfArg<String> name,
    required TfArg<String> primaryLocation,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'location_uri': locationUri,
           'name': name,
           'primary_location': primaryLocation,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveCatalogSensitive;
}
