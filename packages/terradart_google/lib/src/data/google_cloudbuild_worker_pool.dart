// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cloud_build/google_cloudbuild_worker_pool.dart';

/// Sensitive field paths for `google_cloudbuild_worker_pool`.
const Set<String> _googleCloudbuildWorkerPoolSensitive = <String>{};

/// Factory wrapper for `google_cloudbuild_worker_pool`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudbuildWorkerPool extends Data {
  static const String tfType = 'google_cloudbuild_worker_pool';

  DataGoogleCloudbuildWorkerPool({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'name': name, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleCloudbuildWorkerPoolSensitive;

  /// A reference to the `google_cloudbuild_worker_pool` this data source reads, for
  /// arguments typed `RefTo<GoogleCloudbuildWorkerPool>`.
  RefTo<GoogleCloudbuildWorkerPool> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `network_config` attribute.
  TfRef<List<Map<String, Object?>>> get networkConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_config');

  /// Reference to `private_service_connect` attribute.
  TfRef<List<Map<String, Object?>>> get privateServiceConnect =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'private_service_connect',
      );

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `worker_config` attribute.
  TfRef<List<Map<String, Object?>>> get workerConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'worker_config');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
