// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_scope`.
const Set<String> _googleGkeHubScopeSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_scope`.
///
/// Scope represents a Scope in a Fleet.
final class GoogleGkeHubScope extends Resource {
  static const String tfType = 'google_gke_hub_scope';

  GoogleGkeHubScope(
    super.localName, {
    required TfArg<String> scopeId,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? namespaceLabels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'scope_id': scopeId,
           'labels': ?labels,
           'namespace_labels': ?namespaceLabels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeHubScope>`.
  RefTo<GoogleGkeHubScope> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `namespace_labels` attribute.
  TfRef<Map<String, String>> get namespaceLabels =>
      TfRef.attribute<Map<String, String>>(this, 'namespace_labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `scope_id` attribute.
  TfRef<String> get scopeId => TfRef.attribute<String>(this, 'scope_id');
}
