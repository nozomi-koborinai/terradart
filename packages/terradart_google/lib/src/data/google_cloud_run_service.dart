// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_service`.
const Set<String> _googleCloudRunServiceSensitive = <String>{};

/// Factory wrapper for `google_cloud_run_service`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudRunService extends Data {
  static const String tfType = 'google_cloud_run_service';

  DataGoogleCloudRunService({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autogenerate_revision_name` attribute.
  TfRef<bool> get autogenerateRevisionName =>
      TfRef.attribute<bool>(this, 'autogenerate_revision_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `metadata` attribute.
  TfRef<List<Map<String, Object?>>> get metadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `template` attribute.
  TfRef<List<Map<String, Object?>>> get template =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'template');

  /// Reference to `traffic` attribute.
  TfRef<List<Map<String, Object?>>> get traffic =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'traffic');
}
