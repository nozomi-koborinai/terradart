// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_lineage_config`.
const Set<String> _googleDataLineageConfigSensitive = <String>{};

/// Factory wrapper for `google_data_lineage_config`.
///
/// Configuration for Data Lineage.
///
/// Defines configuration options for Lineage customers to control behavior of
/// lineage systems.
final class GoogleDataLineageConfig extends Resource {
  static const String tfType = 'google_data_lineage_config';

  GoogleDataLineageConfig({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> location,
    required TfArg<String> parent,
    required TfArg<Map<String, dynamic>> ingestion,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'location': location,
           'parent': parent,
           'ingestion': ingestion,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataLineageConfigSensitive;
}
