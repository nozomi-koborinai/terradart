// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

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

  final TfArg<List<String>>? gitignores;

  final TfArg<String>? license;

  final TfArg<String>? readme;

  @internal
  Map<String, Object?> encode() => {
    'default_branch': ?defaultBranch?.toTfJson(),
    'gitignores': ?gitignores?.toTfJson(),
    'license': ?license?.toTfJson(),
    'readme': ?readme?.toTfJson(),
  };
}

/// Typed helper for the `scan_config` block of
/// `google_secure_source_manager_repository` (derived from provider schema).
@immutable
final class SecureSourceManagerRepositoryScanConfig {
  const SecureSourceManagerRepositoryScanConfig({this.secretScanConfig});

  final SecureSourceManagerRepositorySecretScanConfig? secretScanConfig;

  @internal
  Map<String, Object?> encode() => {
    'secret_scan_config': ?secretScanConfig?.encode(),
  };
}

/// Typed helper for the `scan_config.secret_scan_config` block of
/// `google_secure_source_manager_repository` (derived from provider schema).
@immutable
final class SecureSourceManagerRepositorySecretScanConfig {
  const SecureSourceManagerRepositorySecretScanConfig({
    this.enabled,
    this.inspectTemplate,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? inspectTemplate;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'inspect_template': ?inspectTemplate?.toTfJson(),
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

  GoogleSecureSourceManagerRepository(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> repositoryId,
    required TfArg<String> instance,
    TfArg<String>? description,
    SecureSourceManagerRepositoryInitialConfig? initialConfig,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    RefTo<GoogleServiceAccount>? serviceAccount,
    SecureSourceManagerRepositoryScanConfig? scanConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'repository_id': repositoryId,
           'instance': instance,
           'description': ?description,
           if (initialConfig != null)
             'initial_config': TfArg.literal(initialConfig.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'service_account': ?serviceAccount?.encodeAs('email'),
           if (scanConfig != null)
             'scan_config': TfArg.literal(scanConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerRepositorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecureSourceManagerRepository>`.
  RefTo<GoogleSecureSourceManagerRepository> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryId =>
      TfRef.attribute<String>(this, 'repository_id');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');
}
