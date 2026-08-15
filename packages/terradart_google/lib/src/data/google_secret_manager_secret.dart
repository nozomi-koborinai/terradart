// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_secret`.
const Set<String> _googleSecretManagerSecretSensitive = <String>{};

/// Factory wrapper for `google_secret_manager_secret`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSecretManagerSecret extends Data {
  static const String tfType = 'google_secret_manager_secret';

  DataGoogleSecretManagerSecret({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> secretId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           'secret_id': secretId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSecretManagerSecretSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `replication` attribute.
  TfRef<List<Map<String, Object?>>> get replication =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'replication');

  /// Reference to `rotation` attribute.
  TfRef<List<Map<String, Object?>>> get rotation =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rotation');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `topics` attribute.
  TfRef<List<Map<String, Object?>>> get topics =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'topics');

  /// Reference to `ttl` attribute.
  TfRef<String> get ttl => TfRef.attribute<String>(this, 'ttl');

  /// Reference to `version_aliases` attribute.
  TfRef<Map<String, String>> get versionAliases =>
      TfRef.attribute<Map<String, String>>(this, 'version_aliases');

  /// Reference to `version_destroy_ttl` attribute.
  TfRef<String> get versionDestroyTtl =>
      TfRef.attribute<String>(this, 'version_destroy_ttl');
}
