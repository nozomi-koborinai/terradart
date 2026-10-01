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

  GoogleDeveloperConnectGitRepositoryLink(
    super.localName, {
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           'clone_uri': cloneUri,
           'deletion_policy': ?deletionPolicy,
           'etag': ?etag,
           'git_repository_link_id': gitRepositoryLinkId,
           'labels': ?labels,
           'location': location,
           'parent_connection': parentConnection,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDeveloperConnectGitRepositoryLinkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDeveloperConnectGitRepositoryLink>`.
  RefTo<GoogleDeveloperConnectGitRepositoryLink> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `clone_uri` attribute.
  TfRef<String> get cloneUri => TfRef.attribute<String>(this, 'clone_uri');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `git_repository_link_id` attribute.
  TfRef<String> get gitRepositoryLinkId =>
      TfRef.attribute<String>(this, 'git_repository_link_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent_connection` attribute.
  TfRef<String> get parentConnection =>
      TfRef.attribute<String>(this, 'parent_connection');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
