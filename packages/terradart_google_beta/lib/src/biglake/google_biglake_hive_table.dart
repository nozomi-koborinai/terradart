// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_hive_table`.
const Set<String> _googleBiglakeHiveTableSensitive = <String>{};

/// Factory wrapper for `google_biglake_hive_table`.
final class GoogleBiglakeHiveTable extends Resource {
  static const String tfType = 'google_biglake_hive_table';

  GoogleBiglakeHiveTable({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> database,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? project,
    TfArg<String>? viewExpandedText,
    TfArg<String>? viewOriginalText,
    TfArg<List<Map<String, dynamic>>>? partitionKeys,
    required TfArg<Map<String, dynamic>> storageDescriptor,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'catalog': catalog,
           'database': database,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'name': name,
           if (parameters != null) 'parameters': parameters,
           if (project != null) 'project': project,
           if (viewExpandedText != null) 'view_expanded_text': viewExpandedText,
           if (viewOriginalText != null) 'view_original_text': viewOriginalText,
           if (partitionKeys != null) 'partition_keys': partitionKeys,
           'storage_descriptor': storageDescriptor,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeHiveTableSensitive;
}
