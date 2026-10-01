// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_dataform_repository`.
const Set<String> _googleDataformRepositorySensitive = <String>{};

/// Typed helper for the `git_remote_settings` block of
/// `google_dataform_repository` (derived from provider schema).
@immutable
final class DataformRepositoryGitRemoteSettings {
  const DataformRepositoryGitRemoteSettings({
    required this.authentication,
    required this.defaultBranch,
    required this.url,
  });

  final DataformRepositoryAuthentication authentication;

  final TfArg<String> defaultBranch;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    ...authentication.encode(),
    'default_branch': defaultBranch.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Exactly one of `authentication_token_secret_version`, `ssh_authentication_config`, `git_repository_link` on the `git_remote_settings` block of `google_dataform_repository`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.authenticationTokenSecretVersion(...)`.
sealed class DataformRepositoryAuthentication {
  const DataformRepositoryAuthentication();

  /// Sets `authentication_token_secret_version`.
  const factory DataformRepositoryAuthentication.authenticationTokenSecretVersion(
    TfArg<String> authenticationTokenSecretVersion,
  ) = DataformRepositoryAuthenticationTokenSecretVersion;

  /// Sets `ssh_authentication_config`.
  const factory DataformRepositoryAuthentication.sshAuthenticationConfig(
    DataformRepositorySshAuthenticationConfig sshAuthenticationConfig,
  ) = DataformRepositoryAuthenticationSshAuthenticationConfig;

  /// Sets `git_repository_link`.
  const factory DataformRepositoryAuthentication.gitRepositoryLink(
    TfArg<String> gitRepositoryLink,
  ) = DataformRepositoryAuthenticationGitRepositoryLink;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [DataformRepositoryAuthentication.authenticationTokenSecretVersion] choice: sets `authentication_token_secret_version`.
final class DataformRepositoryAuthenticationTokenSecretVersion
    extends DataformRepositoryAuthentication {
  const DataformRepositoryAuthenticationTokenSecretVersion(
    this.authenticationTokenSecretVersion,
  );

  final TfArg<String> authenticationTokenSecretVersion;

  @internal
  @override
  String get blockKey => 'authentication_token_secret_version';

  @internal
  @override
  Map<String, Object?> encode() => {
    'authentication_token_secret_version': authenticationTokenSecretVersion
        .toTfJson(),
  };
}

/// The [DataformRepositoryAuthentication.sshAuthenticationConfig] choice: sets `ssh_authentication_config`.
final class DataformRepositoryAuthenticationSshAuthenticationConfig
    extends DataformRepositoryAuthentication {
  const DataformRepositoryAuthenticationSshAuthenticationConfig(
    this.sshAuthenticationConfig,
  );

  final DataformRepositorySshAuthenticationConfig sshAuthenticationConfig;

  @internal
  @override
  String get blockKey => 'ssh_authentication_config';

  @internal
  @override
  Map<String, Object?> encode() => {
    'ssh_authentication_config': sshAuthenticationConfig.encode(),
  };
}

/// The [DataformRepositoryAuthentication.gitRepositoryLink] choice: sets `git_repository_link`.
final class DataformRepositoryAuthenticationGitRepositoryLink
    extends DataformRepositoryAuthentication {
  const DataformRepositoryAuthenticationGitRepositoryLink(
    this.gitRepositoryLink,
  );

  final TfArg<String> gitRepositoryLink;

  @internal
  @override
  String get blockKey => 'git_repository_link';

  @internal
  @override
  Map<String, Object?> encode() => {
    'git_repository_link': gitRepositoryLink.toTfJson(),
  };
}

/// Typed helper for the `git_remote_settings.ssh_authentication_config` block of
/// `google_dataform_repository` (derived from provider schema).
@immutable
final class DataformRepositorySshAuthenticationConfig {
  const DataformRepositorySshAuthenticationConfig({
    required this.hostPublicKey,
    required this.userPrivateKeySecretVersion,
  });

  final TfArg<String> hostPublicKey;

  final TfArg<String> userPrivateKeySecretVersion;

  @internal
  Map<String, Object?> encode() => {
    'host_public_key': hostPublicKey.toTfJson(),
    'user_private_key_secret_version': userPrivateKeySecretVersion.toTfJson(),
  };
}

/// Typed helper for the `workspace_compilation_overrides` block of
/// `google_dataform_repository` (derived from provider schema).
@immutable
final class DataformRepositoryWorkspaceCompilationOverrides {
  const DataformRepositoryWorkspaceCompilationOverrides({
    this.defaultDatabase,
    this.schemaSuffix,
    this.tablePrefix,
  });

  final TfArg<String>? defaultDatabase;

  final TfArg<String>? schemaSuffix;

  final TfArg<String>? tablePrefix;

  @internal
  Map<String, Object?> encode() => {
    'default_database': ?defaultDatabase?.toTfJson(),
    'schema_suffix': ?schemaSuffix?.toTfJson(),
    'table_prefix': ?tablePrefix?.toTfJson(),
  };
}

/// Factory wrapper for `google_dataform_repository`.
///
/// A resource represents a Dataform Git repository
///
/// Dataform **repository** — the regional container for SQL workflow code,
/// workspaces, and compilation results.
///
/// Creating a repository does not compile SQL or run workflows: BigQuery
/// charges start when a workflow invocation executes the compiled SQL.
///
/// `serviceAccount` is the identity workflow invocations run under; it needs
/// BigQuery access to the datasets the workflow writes. `kmsKeyName` is
/// immutable — it cannot be added or rotated after create.
///
/// **Cost:** gcp-cost: no Cloud Billing Catalog SKU after list_services
/// "Dataform" empty; BigQuery 24E6-581D-38E5 list_skus keyword
/// dataform/repository/compilation/workflow → 0. billing-behavior:
/// repository metadata is free config; BigQuery analysis SKUs fire on
/// workflow invocations, not on repository create.
///
/// The Git remote block is deliberately not curated: linking a remote needs
/// an external Git URL plus a Secret Manager token version (or a Developer
/// Connect link), and the API requires exactly one of those three
/// authentication shapes. Repositories created here hold Dataform-managed
/// workspaces.
///
/// Example:
/// ```dart
/// GoogleDataformRepository(
///   'analytics',
///   name: TfArg.literal('terradart-analytics'),
///   region: TfArg.literal('us-central1'),
///   displayName: TfArg.literal('TerraDart analytics'),
/// );
/// ```
final class GoogleDataformRepository extends Resource {
  static const String tfType = 'google_dataform_repository';

  GoogleDataformRepository(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? displayName,
    RefTo<GoogleServiceAccount>? serviceAccount,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    TfArg<String>? npmrcEnvironmentVariablesSecretVersion,
    DataformRepositoryWorkspaceCompilationOverrides?
    workspaceCompilationOverrides,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    DataformRepositoryGitRemoteSettings? gitRemoteSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'display_name': ?displayName,
           'service_account': ?serviceAccount?.encodeAs('email'),
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'npmrc_environment_variables_secret_version':
               ?npmrcEnvironmentVariablesSecretVersion,
           if (workspaceCompilationOverrides != null)
             'workspace_compilation_overrides': TfArg.literal(
               workspaceCompilationOverrides.encode(),
             ),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           if (gitRemoteSettings != null)
             'git_remote_settings': TfArg.literal(gitRemoteSettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataformRepositorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformRepository>`.
  RefTo<GoogleDataformRepository> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `npmrc_environment_variables_secret_version` attribute.
  TfRef<String> get npmrcEnvironmentVariablesSecretVersion =>
      TfRef.attribute<String>(
        this,
        'npmrc_environment_variables_secret_version',
      );

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');
}
