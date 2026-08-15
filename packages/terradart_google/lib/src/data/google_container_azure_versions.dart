// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_azure_versions`.
const Set<String> _googleContainerAzureVersionsSensitive = <String>{};

/// Factory wrapper for `google_container_azure_versions`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleContainerAzureVersions extends Data {
  static const String tfType = 'google_container_azure_versions';

  DataGoogleContainerAzureVersions({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAzureVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `supported_regions` attribute.
  TfRef<List<String>> get supportedRegions =>
      TfRef.attribute<List<String>>(this, 'supported_regions');

  /// Reference to `valid_versions` attribute.
  TfRef<List<String>> get validVersions =>
      TfRef.attribute<List<String>>(this, 'valid_versions');
}
