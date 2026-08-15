// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_developer_connect_git_repository_link`.
const Set<String> _googleDeveloperConnectGitRepositoryLinkSensitive =
    <String>{};

/// Factory wrapper for `google_developer_connect_git_repository_link`.
///
/// A git repository link to a parent connection.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDeveloperConnectGitRepositoryLink extends Resource {
  static const String tfType = 'google_developer_connect_git_repository_link';

  GoogleDeveloperConnectGitRepositoryLink({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    required TfArg<String> cloneUri,
    TfArg<String>? deletionPolicy,
    TfArg<String>? etag,
    required TfArg<String> gitRepositoryLinkId,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> parentConnection,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (annotations != null) 'annotations': annotations,
           'clone_uri': cloneUri,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (etag != null) 'etag': etag,
           'git_repository_link_id': gitRepositoryLinkId,
           if (labels != null) 'labels': labels,
           'location': location,
           'parent_connection': parentConnection,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDeveloperConnectGitRepositoryLinkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
