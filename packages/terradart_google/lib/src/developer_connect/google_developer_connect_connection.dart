// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_developer_connect_connection`.
const Set<String> _googleDeveloperConnectConnectionSensitive = <String>{};

/// Typed helper for the `bitbucket_cloud_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionBitbucketCloudConfig {
  const DeveloperConnectConnectionBitbucketCloudConfig({
    required this.webhookSecretSecretVersion,
    required this.workspace,
    required this.authorizerCredential,
    required this.readAuthorizerCredential,
  });

  final TfArg<String> webhookSecretSecretVersion;

  final TfArg<String> workspace;

  final DeveloperConnectConnectionBitbucketCloudConfigAuthorizerCredential
  authorizerCredential;

  final DeveloperConnectConnectionBitbucketCloudConfigReadAuthorizerCredential
  readAuthorizerCredential;

  Map<String, Object?> encode() => {
    'webhook_secret_secret_version': webhookSecretSecretVersion.toTfJson(),
    'workspace': workspace.toTfJson(),
    'authorizer_credential': authorizerCredential.encode(),
    'read_authorizer_credential': readAuthorizerCredential.encode(),
  };
}

/// Typed helper for the `bitbucket_cloud_config.authorizer_credential` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionBitbucketCloudConfigAuthorizerCredential {
  const DeveloperConnectConnectionBitbucketCloudConfigAuthorizerCredential({
    required this.userTokenSecretVersion,
  });

  final TfArg<String> userTokenSecretVersion;

  Map<String, Object?> encode() => {
    'user_token_secret_version': userTokenSecretVersion.toTfJson(),
  };
}

/// Typed helper for the `bitbucket_cloud_config.read_authorizer_credential` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionBitbucketCloudConfigReadAuthorizerCredential {
  const DeveloperConnectConnectionBitbucketCloudConfigReadAuthorizerCredential({
    required this.userTokenSecretVersion,
  });

  final TfArg<String> userTokenSecretVersion;

  Map<String, Object?> encode() => {
    'user_token_secret_version': userTokenSecretVersion.toTfJson(),
  };
}

/// Typed helper for the `bitbucket_data_center_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionBitbucketDataCenterConfig {
  const DeveloperConnectConnectionBitbucketDataCenterConfig({
    required this.hostUri,
    this.sslCaCertificate,
    required this.webhookSecretSecretVersion,
    required this.authorizerCredential,
    required this.readAuthorizerCredential,
    this.serviceDirectoryConfig,
  });

  final TfArg<String> hostUri;

  final TfArg<String>? sslCaCertificate;

  final TfArg<String> webhookSecretSecretVersion;

  final DeveloperConnectConnectionBitbucketDataCenterConfigAuthorizerCredential
  authorizerCredential;

  final DeveloperConnectConnectionBitbucketDataCenterConfigReadAuthorizerCredential
  readAuthorizerCredential;

  final DeveloperConnectConnectionBitbucketDataCenterConfigServiceDirectoryConfig?
  serviceDirectoryConfig;

  Map<String, Object?> encode() => {
    'host_uri': hostUri.toTfJson(),
    if (sslCaCertificate != null)
      'ssl_ca_certificate': sslCaCertificate!.toTfJson(),
    'webhook_secret_secret_version': webhookSecretSecretVersion.toTfJson(),
    'authorizer_credential': authorizerCredential.encode(),
    'read_authorizer_credential': readAuthorizerCredential.encode(),
    if (serviceDirectoryConfig != null)
      'service_directory_config': serviceDirectoryConfig!.encode(),
  };
}

/// Typed helper for the `bitbucket_data_center_config.authorizer_credential` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionBitbucketDataCenterConfigAuthorizerCredential {
  const DeveloperConnectConnectionBitbucketDataCenterConfigAuthorizerCredential({
    required this.userTokenSecretVersion,
  });

  final TfArg<String> userTokenSecretVersion;

  Map<String, Object?> encode() => {
    'user_token_secret_version': userTokenSecretVersion.toTfJson(),
  };
}

/// Typed helper for the `bitbucket_data_center_config.read_authorizer_credential` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionBitbucketDataCenterConfigReadAuthorizerCredential {
  const DeveloperConnectConnectionBitbucketDataCenterConfigReadAuthorizerCredential({
    required this.userTokenSecretVersion,
  });

  final TfArg<String> userTokenSecretVersion;

  Map<String, Object?> encode() => {
    'user_token_secret_version': userTokenSecretVersion.toTfJson(),
  };
}

/// Typed helper for the `bitbucket_data_center_config.service_directory_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionBitbucketDataCenterConfigServiceDirectoryConfig {
  const DeveloperConnectConnectionBitbucketDataCenterConfigServiceDirectoryConfig({
    required this.service,
  });

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `crypto_key_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionCryptoKeyConfig {
  const DeveloperConnectConnectionCryptoKeyConfig({required this.keyReference});

  final TfArg<String> keyReference;

  Map<String, Object?> encode() => {'key_reference': keyReference.toTfJson()};
}

/// Typed helper for the `github_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGithubConfig {
  const DeveloperConnectConnectionGithubConfig({
    this.appInstallationId,
    required this.githubApp,
    this.authorizerCredential,
  });

  final TfArg<String>? appInstallationId;

  final TfArg<String> githubApp;

  final DeveloperConnectConnectionGithubConfigAuthorizerCredential?
  authorizerCredential;

  Map<String, Object?> encode() => {
    if (appInstallationId != null)
      'app_installation_id': appInstallationId!.toTfJson(),
    'github_app': githubApp.toTfJson(),
    if (authorizerCredential != null)
      'authorizer_credential': authorizerCredential!.encode(),
  };
}

/// Typed helper for the `github_config.authorizer_credential` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGithubConfigAuthorizerCredential {
  const DeveloperConnectConnectionGithubConfigAuthorizerCredential({
    required this.oauthTokenSecretVersion,
  });

  final TfArg<String> oauthTokenSecretVersion;

  Map<String, Object?> encode() => {
    'oauth_token_secret_version': oauthTokenSecretVersion.toTfJson(),
  };
}

/// Typed helper for the `github_enterprise_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGithubEnterpriseConfig {
  const DeveloperConnectConnectionGithubEnterpriseConfig({
    this.appId,
    this.appInstallationId,
    required this.hostUri,
    this.privateKeySecretVersion,
    this.sslCaCertificate,
    this.webhookSecretSecretVersion,
    this.serviceDirectoryConfig,
  });

  final TfArg<String>? appId;

  final TfArg<String>? appInstallationId;

  final TfArg<String> hostUri;

  final TfArg<String>? privateKeySecretVersion;

  final TfArg<String>? sslCaCertificate;

  final TfArg<String>? webhookSecretSecretVersion;

  final DeveloperConnectConnectionGithubEnterpriseConfigServiceDirectoryConfig?
  serviceDirectoryConfig;

  Map<String, Object?> encode() => {
    if (appId != null) 'app_id': appId!.toTfJson(),
    if (appInstallationId != null)
      'app_installation_id': appInstallationId!.toTfJson(),
    'host_uri': hostUri.toTfJson(),
    if (privateKeySecretVersion != null)
      'private_key_secret_version': privateKeySecretVersion!.toTfJson(),
    if (sslCaCertificate != null)
      'ssl_ca_certificate': sslCaCertificate!.toTfJson(),
    if (webhookSecretSecretVersion != null)
      'webhook_secret_secret_version': webhookSecretSecretVersion!.toTfJson(),
    if (serviceDirectoryConfig != null)
      'service_directory_config': serviceDirectoryConfig!.encode(),
  };
}

/// Typed helper for the `github_enterprise_config.service_directory_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGithubEnterpriseConfigServiceDirectoryConfig {
  const DeveloperConnectConnectionGithubEnterpriseConfigServiceDirectoryConfig({
    required this.service,
  });

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `gitlab_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGitlabConfig {
  const DeveloperConnectConnectionGitlabConfig({
    required this.webhookSecretSecretVersion,
    required this.authorizerCredential,
    required this.readAuthorizerCredential,
  });

  final TfArg<String> webhookSecretSecretVersion;

  final DeveloperConnectConnectionGitlabConfigAuthorizerCredential
  authorizerCredential;

  final DeveloperConnectConnectionGitlabConfigReadAuthorizerCredential
  readAuthorizerCredential;

  Map<String, Object?> encode() => {
    'webhook_secret_secret_version': webhookSecretSecretVersion.toTfJson(),
    'authorizer_credential': authorizerCredential.encode(),
    'read_authorizer_credential': readAuthorizerCredential.encode(),
  };
}

/// Typed helper for the `gitlab_config.authorizer_credential` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGitlabConfigAuthorizerCredential {
  const DeveloperConnectConnectionGitlabConfigAuthorizerCredential({
    required this.userTokenSecretVersion,
  });

  final TfArg<String> userTokenSecretVersion;

  Map<String, Object?> encode() => {
    'user_token_secret_version': userTokenSecretVersion.toTfJson(),
  };
}

/// Typed helper for the `gitlab_config.read_authorizer_credential` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGitlabConfigReadAuthorizerCredential {
  const DeveloperConnectConnectionGitlabConfigReadAuthorizerCredential({
    required this.userTokenSecretVersion,
  });

  final TfArg<String> userTokenSecretVersion;

  Map<String, Object?> encode() => {
    'user_token_secret_version': userTokenSecretVersion.toTfJson(),
  };
}

/// Typed helper for the `gitlab_enterprise_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGitlabEnterpriseConfig {
  const DeveloperConnectConnectionGitlabEnterpriseConfig({
    required this.hostUri,
    this.sslCaCertificate,
    required this.webhookSecretSecretVersion,
    required this.authorizerCredential,
    required this.readAuthorizerCredential,
    this.serviceDirectoryConfig,
  });

  final TfArg<String> hostUri;

  final TfArg<String>? sslCaCertificate;

  final TfArg<String> webhookSecretSecretVersion;

  final DeveloperConnectConnectionGitlabEnterpriseConfigAuthorizerCredential
  authorizerCredential;

  final DeveloperConnectConnectionGitlabEnterpriseConfigReadAuthorizerCredential
  readAuthorizerCredential;

  final DeveloperConnectConnectionGitlabEnterpriseConfigServiceDirectoryConfig?
  serviceDirectoryConfig;

  Map<String, Object?> encode() => {
    'host_uri': hostUri.toTfJson(),
    if (sslCaCertificate != null)
      'ssl_ca_certificate': sslCaCertificate!.toTfJson(),
    'webhook_secret_secret_version': webhookSecretSecretVersion.toTfJson(),
    'authorizer_credential': authorizerCredential.encode(),
    'read_authorizer_credential': readAuthorizerCredential.encode(),
    if (serviceDirectoryConfig != null)
      'service_directory_config': serviceDirectoryConfig!.encode(),
  };
}

/// Typed helper for the `gitlab_enterprise_config.authorizer_credential` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGitlabEnterpriseConfigAuthorizerCredential {
  const DeveloperConnectConnectionGitlabEnterpriseConfigAuthorizerCredential({
    required this.userTokenSecretVersion,
  });

  final TfArg<String> userTokenSecretVersion;

  Map<String, Object?> encode() => {
    'user_token_secret_version': userTokenSecretVersion.toTfJson(),
  };
}

/// Typed helper for the `gitlab_enterprise_config.read_authorizer_credential` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGitlabEnterpriseConfigReadAuthorizerCredential {
  const DeveloperConnectConnectionGitlabEnterpriseConfigReadAuthorizerCredential({
    required this.userTokenSecretVersion,
  });

  final TfArg<String> userTokenSecretVersion;

  Map<String, Object?> encode() => {
    'user_token_secret_version': userTokenSecretVersion.toTfJson(),
  };
}

/// Typed helper for the `gitlab_enterprise_config.service_directory_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionGitlabEnterpriseConfigServiceDirectoryConfig {
  const DeveloperConnectConnectionGitlabEnterpriseConfigServiceDirectoryConfig({
    required this.service,
  });

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `http_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionHttpConfig {
  const DeveloperConnectConnectionHttpConfig({
    required this.hostUri,
    this.sslCaCertificate,
    this.basicAuthentication,
    this.bearerTokenAuthentication,
    this.serviceDirectoryConfig,
  });

  final TfArg<String> hostUri;

  final TfArg<String>? sslCaCertificate;

  final DeveloperConnectConnectionHttpConfigBasicAuthentication?
  basicAuthentication;

  final DeveloperConnectConnectionHttpConfigBearerTokenAuthentication?
  bearerTokenAuthentication;

  final DeveloperConnectConnectionHttpConfigServiceDirectoryConfig?
  serviceDirectoryConfig;

  Map<String, Object?> encode() => {
    'host_uri': hostUri.toTfJson(),
    if (sslCaCertificate != null)
      'ssl_ca_certificate': sslCaCertificate!.toTfJson(),
    if (basicAuthentication != null)
      'basic_authentication': basicAuthentication!.encode(),
    if (bearerTokenAuthentication != null)
      'bearer_token_authentication': bearerTokenAuthentication!.encode(),
    if (serviceDirectoryConfig != null)
      'service_directory_config': serviceDirectoryConfig!.encode(),
  };
}

/// Typed helper for the `http_config.basic_authentication` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionHttpConfigBasicAuthentication {
  const DeveloperConnectConnectionHttpConfigBasicAuthentication({
    this.passwordSecretVersion,
    required this.username,
  });

  final TfArg<String>? passwordSecretVersion;

  final TfArg<String> username;

  Map<String, Object?> encode() => {
    if (passwordSecretVersion != null)
      'password_secret_version': passwordSecretVersion!.toTfJson(),
    'username': username.toTfJson(),
  };
}

/// Typed helper for the `http_config.bearer_token_authentication` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionHttpConfigBearerTokenAuthentication {
  const DeveloperConnectConnectionHttpConfigBearerTokenAuthentication({
    this.tokenSecretVersion,
  });

  final TfArg<String>? tokenSecretVersion;

  Map<String, Object?> encode() => {
    if (tokenSecretVersion != null)
      'token_secret_version': tokenSecretVersion!.toTfJson(),
  };
}

/// Typed helper for the `http_config.service_directory_config` block of
/// `google_developer_connect_connection` (derived from provider schema).
@immutable
final class DeveloperConnectConnectionHttpConfigServiceDirectoryConfig {
  const DeveloperConnectConnectionHttpConfigServiceDirectoryConfig({
    required this.service,
  });

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Factory wrapper for `google_developer_connect_connection`.
///
/// A connection for GitHub, GitHub Enterprise, GitLab, and GitLab Enterprise.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDeveloperConnectConnection extends Resource {
  static const String tfType = 'google_developer_connect_connection';

  GoogleDeveloperConnectConnection({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    required TfArg<String> connectionId,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? disabled,
    TfArg<String>? etag,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    DeveloperConnectConnectionBitbucketCloudConfig? bitbucketCloudConfig,
    DeveloperConnectConnectionBitbucketDataCenterConfig?
    bitbucketDataCenterConfig,
    DeveloperConnectConnectionCryptoKeyConfig? cryptoKeyConfig,
    DeveloperConnectConnectionGithubConfig? githubConfig,
    DeveloperConnectConnectionGithubEnterpriseConfig? githubEnterpriseConfig,
    DeveloperConnectConnectionGitlabConfig? gitlabConfig,
    DeveloperConnectConnectionGitlabEnterpriseConfig? gitlabEnterpriseConfig,
    DeveloperConnectConnectionHttpConfig? httpConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (annotations != null) 'annotations': annotations,
           'connection_id': connectionId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (disabled != null) 'disabled': disabled,
           if (etag != null) 'etag': etag,
           if (labels != null) 'labels': labels,
           'location': location,
           if (project != null) 'project': project,
           if (bitbucketCloudConfig != null)
             'bitbucket_cloud_config': TfArg.literal(
               bitbucketCloudConfig.encode(),
             ),
           if (bitbucketDataCenterConfig != null)
             'bitbucket_data_center_config': TfArg.literal(
               bitbucketDataCenterConfig.encode(),
             ),
           if (cryptoKeyConfig != null)
             'crypto_key_config': TfArg.literal(cryptoKeyConfig.encode()),
           if (githubConfig != null)
             'github_config': TfArg.literal(githubConfig.encode()),
           if (githubEnterpriseConfig != null)
             'github_enterprise_config': TfArg.literal(
               githubEnterpriseConfig.encode(),
             ),
           if (gitlabConfig != null)
             'gitlab_config': TfArg.literal(gitlabConfig.encode()),
           if (gitlabEnterpriseConfig != null)
             'gitlab_enterprise_config': TfArg.literal(
               gitlabEnterpriseConfig.encode(),
             ),
           if (httpConfig != null)
             'http_config': TfArg.literal(httpConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDeveloperConnectConnectionSensitive;

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

  /// Reference to `installation_state` attribute.
  TfRef<List<Map<String, Object?>>> get installationState =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'installation_state');

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
