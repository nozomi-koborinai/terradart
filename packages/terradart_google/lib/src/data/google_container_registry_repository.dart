// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_registry_repository`.
const Set<String> _googleContainerRegistryRepositorySensitive = <String>{};

/// Factory wrapper for `google_container_registry_repository`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleContainerRegistryRepository extends Data {
  static const String tfType = 'google_container_registry_repository';

  DataGoogleContainerRegistryRepository(
    super.localName, {
    TfArg<String>? project,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'project': ?project, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContainerRegistryRepositorySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `repository_url` attribute.
  TfRef<String> get repositoryUrl =>
      TfRef.attribute<String>(this, 'repository_url');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
