// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secure_source_manager_repository`.
const Set<String> _googleSecureSourceManagerRepositorySensitive = <String>{};

/// Typed helper for the `initial_config` block of
/// `google_secure_source_manager_repository` (derived from provider schema).
@immutable
final class SecureSourceManagerRepositoryInitialConfig {
  const SecureSourceManagerRepositoryInitialConfig({
    this.defaultBranch,
    this.gitignores,
    this.license,
    this.readme,
  });

  final TfArg<String>? defaultBranch;

  final TfArg<List<Object?>>? gitignores;

  final TfArg<String>? license;

  final TfArg<String>? readme;

  Map<String, Object?> encode() => {
    if (defaultBranch != null) 'default_branch': defaultBranch!.toTfJson(),
    if (gitignores != null) 'gitignores': gitignores!.toTfJson(),
    if (license != null) 'license': license!.toTfJson(),
    if (readme != null) 'readme': readme!.toTfJson(),
  };
}

/// Factory wrapper for `google_secure_source_manager_repository`.
///
/// Repositories store source code. It supports all Git SCM client commands and
/// has built-in pull requests and issue tracking. Both HTTPS and SSH
/// authentication are supported.
///
/// Secure Source Manager **repository** — a Git repository on an
/// [GoogleSecureSourceManagerInstance].
///
/// Pass the parent instance's resource [name] (not only the short id) to
/// [instance]. Optional [initialConfig] seeds default branch / license /
/// README on create.
///
/// Enable `securesourcemanager.googleapis.com` before apply. Prefer
/// [deletionPolicy] `DELETE` for disposable stacks.
final class GoogleSecureSourceManagerRepository extends Resource {
  static const String tfType = 'google_secure_source_manager_repository';

  GoogleSecureSourceManagerRepository({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> repositoryId,
    required TfArg<String> instance,
    TfArg<String>? description,
    SecureSourceManagerRepositoryInitialConfig? initialConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'repository_id': repositoryId,
           'instance': instance,
           if (description != null) 'description': description,
           if (initialConfig != null)
             'initial_config': TfArg.literal(initialConfig.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerRepositorySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `uris` attribute.
  TfRef<List<Map<String, Object?>>> get uris =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'uris');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryIdRef =>
      TfRef.attribute<String>(this, 'repository_id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
