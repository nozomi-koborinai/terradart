// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_filestore_instance`.
const Set<String> _googleFilestoreInstanceSensitive = <String>{};

/// Factory wrapper for `google_filestore_instance`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleFilestoreInstance extends Data {
  static const String tfType = 'google_filestore_instance';

  DataGoogleFilestoreInstance({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFilestoreInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection_enabled` attribute.
  TfRef<bool> get deletionProtectionEnabled =>
      TfRef.attribute<bool>(this, 'deletion_protection_enabled');

  /// Reference to `deletion_protection_reason` attribute.
  TfRef<String> get deletionProtectionReason =>
      TfRef.attribute<String>(this, 'deletion_protection_reason');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `desired_replica_state` attribute.
  TfRef<String> get desiredReplicaState =>
      TfRef.attribute<String>(this, 'desired_replica_state');

  /// Reference to `directory_services` attribute.
  TfRef<List<Map<String, Object?>>> get directoryServices =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'directory_services');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_replication` attribute.
  TfRef<List<Map<String, Object?>>> get effectiveReplication =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'effective_replication',
      );

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `file_shares` attribute.
  TfRef<List<Map<String, Object?>>> get fileShares =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'file_shares');

  /// Reference to `initial_replication` attribute.
  TfRef<List<Map<String, Object?>>> get initialReplication =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'initial_replication');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `networks` attribute.
  TfRef<List<Map<String, Object?>>> get networks =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'networks');

  /// Reference to `performance_config` attribute.
  TfRef<List<Map<String, Object?>>> get performanceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'performance_config');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
