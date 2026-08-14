// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_developer_connect_account_connector`.
const Set<String> _googleDeveloperConnectAccountConnectorSensitive = <String>{};

/// Typed helper for the `custom_oauth_config` block of
/// `google_developer_connect_account_connector` (derived from provider schema).
@immutable
final class DeveloperConnectAccountConnectorCustomOauthConfig {
  const DeveloperConnectAccountConnectorCustomOauthConfig({
    required this.authUri,
    required this.clientId,
    required this.clientSecret,
    required this.hostUri,
    this.pkceDisabled,
    required this.scmProvider,
    required this.scopes,
    this.sslCaCertificate,
    required this.tokenUri,
    this.serviceDirectoryConfig,
  });

  final TfArg<String> authUri;

  final TfArg<String> clientId;

  final TfArg<String> clientSecret;

  final TfArg<String> hostUri;

  final TfArg<bool>? pkceDisabled;

  final TfArg<String> scmProvider;

  final TfArg<List<Object?>> scopes;

  final TfArg<String>? sslCaCertificate;

  final TfArg<String> tokenUri;

  final DeveloperConnectAccountConnectorCustomOauthConfigServiceDirectoryConfig?
  serviceDirectoryConfig;

  Map<String, Object?> encode() => {
    'auth_uri': authUri.toTfJson(),
    'client_id': clientId.toTfJson(),
    'client_secret': clientSecret.toTfJson(),
    'host_uri': hostUri.toTfJson(),
    if (pkceDisabled != null) 'pkce_disabled': pkceDisabled!.toTfJson(),
    'scm_provider': scmProvider.toTfJson(),
    'scopes': scopes.toTfJson(),
    if (sslCaCertificate != null)
      'ssl_ca_certificate': sslCaCertificate!.toTfJson(),
    'token_uri': tokenUri.toTfJson(),
    if (serviceDirectoryConfig != null)
      'service_directory_config': serviceDirectoryConfig!.encode(),
  };
}

/// Typed helper for the `custom_oauth_config.service_directory_config` block of
/// `google_developer_connect_account_connector` (derived from provider schema).
@immutable
final class DeveloperConnectAccountConnectorCustomOauthConfigServiceDirectoryConfig {
  const DeveloperConnectAccountConnectorCustomOauthConfigServiceDirectoryConfig({
    required this.service,
  });

  final TfArg<String> service;

  Map<String, Object?> encode() => {'service': service.toTfJson()};
}

/// Typed helper for the `provider_oauth_config` block of
/// `google_developer_connect_account_connector` (derived from provider schema).
@immutable
final class DeveloperConnectAccountConnectorProviderOauthConfig {
  const DeveloperConnectAccountConnectorProviderOauthConfig({
    required this.scopes,
    this.systemProviderId,
  });

  final TfArg<List<Object?>> scopes;

  final TfArg<String>? systemProviderId;

  Map<String, Object?> encode() => {
    'scopes': scopes.toTfJson(),
    if (systemProviderId != null)
      'system_provider_id': systemProviderId!.toTfJson(),
  };
}

/// Typed helper for the `proxy_config` block of
/// `google_developer_connect_account_connector` (derived from provider schema).
@immutable
final class DeveloperConnectAccountConnectorProxyConfig {
  const DeveloperConnectAccountConnectorProxyConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `google_developer_connect_account_connector`.
///
/// Description
///
/// Developer Connect **account connector** — OAuth config that starts
/// a system-provider login (GitHub / GitLab / …). Creating the
/// connector does not complete OAuth, clone a repository, or create a
/// `google_developer_connect_connection`.
///
/// This leftover exposes the official GitHub recipe via
/// [providerOauthConfig] (`system_provider_id` + `scopes`). Custom
/// OAuth (`custom_oauth_config`, client secret) is left uncurated.
///
/// Enable `developerconnect.googleapis.com` via [GoogleProjectService]
/// before apply. Set [deletionPolicy] to `DELETE` so destroy removes
/// the unused connector.
///
/// Example:
/// ```dart
/// GoogleDeveloperConnectAccountConnector(
///   localName: 'github',
///   location: TfArg.literal('us-central1'),
///   accountConnectorId: TfArg.literal('terradart-github'),
///   providerOauthConfig:
///       DeveloperConnectAccountConnectorProviderOauthConfig(
///     systemProviderId: TfArg.literal('GITHUB'),
///     scopes: TfArg.literal(['repo']),
///   ),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GoogleDeveloperConnectAccountConnector extends Resource {
  static const String tfType = 'google_developer_connect_account_connector';

  GoogleDeveloperConnectAccountConnector({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> accountConnectorId,
    DeveloperConnectAccountConnectorProviderOauthConfig? providerOauthConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'account_connector_id': accountConnectorId,
           if (providerOauthConfig != null)
             'provider_oauth_config': TfArg.literal(
               providerOauthConfig.encode(),
             ),
           if (labels != null) 'labels': labels,
           if (annotations != null) 'annotations': annotations,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDeveloperConnectAccountConnectorSensitive;

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

  /// Reference to `oauth_start_uri` attribute.
  TfRef<String> get oauthStartUri =>
      TfRef.attribute<String>(this, 'oauth_start_uri');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
