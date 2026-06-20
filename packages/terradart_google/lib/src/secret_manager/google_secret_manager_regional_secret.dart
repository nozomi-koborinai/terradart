// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_regional_secret`.
const Set<String> _googleSecretManagerRegionalSecretSensitive = <String>{};

/// Factory wrapper for `google_secret_manager_regional_secret`.
final class GoogleSecretManagerRegionalSecret extends Resource {
  static const String tfType = 'google_secret_manager_regional_secret';

  GoogleSecretManagerRegionalSecret({
    required super.localName,
    required TfArg<String> secretId,
    required TfArg<String> location,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? versionAliases,
    TfArg<String>? versionDestroyTtl,
    TfArg<String>? expireTime,
    TfArg<String>? ttl,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? deletionProtection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'secret_id': secretId,
           'location': location,
           if (labels != null) 'labels': labels,
           if (annotations != null) 'annotations': annotations,
           if (versionAliases != null) 'version_aliases': versionAliases,
           if (versionDestroyTtl != null)
             'version_destroy_ttl': versionDestroyTtl,
           if (expireTime != null) 'expire_time': expireTime,
           if (ttl != null) 'ttl': ttl,
           if (tags != null) 'tags': tags,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecretManagerRegionalSecretSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get secretIdRef => TfRef.attribute<String>(this, 'secret_id');
}
