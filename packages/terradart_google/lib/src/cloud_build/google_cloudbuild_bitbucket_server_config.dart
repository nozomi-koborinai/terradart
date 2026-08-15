// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudbuild_bitbucket_server_config`.
const Set<String> _googleCloudbuildBitbucketServerConfigSensitive = <String>{};

/// Typed helper for the `connected_repositories` block of
/// `google_cloudbuild_bitbucket_server_config` (derived from provider schema).
@immutable
final class CloudbuildBitbucketServerConfigConnectedRepositories {
  const CloudbuildBitbucketServerConfigConnectedRepositories({
    required this.projectKey,
    required this.repoSlug,
  });

  final TfArg<String> projectKey;

  final TfArg<String> repoSlug;

  Map<String, Object?> encode() => {
    'project_key': projectKey.toTfJson(),
    'repo_slug': repoSlug.toTfJson(),
  };
}

/// Typed helper for the `secrets` block of
/// `google_cloudbuild_bitbucket_server_config` (derived from provider schema).
@immutable
final class CloudbuildBitbucketServerConfigSecrets {
  const CloudbuildBitbucketServerConfigSecrets({
    required this.adminAccessTokenVersionName,
    required this.readAccessTokenVersionName,
    required this.webhookSecretVersionName,
  });

  final TfArg<String> adminAccessTokenVersionName;

  final TfArg<String> readAccessTokenVersionName;

  final TfArg<String> webhookSecretVersionName;

  Map<String, Object?> encode() => {
    'admin_access_token_version_name': adminAccessTokenVersionName.toTfJson(),
    'read_access_token_version_name': readAccessTokenVersionName.toTfJson(),
    'webhook_secret_version_name': webhookSecretVersionName.toTfJson(),
  };
}

/// Factory wrapper for `google_cloudbuild_bitbucket_server_config`.
///
/// BitbucketServerConfig represents the configuration for a Bitbucket Server.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudbuildBitbucketServerConfig extends Resource {
  static const String tfType = 'google_cloudbuild_bitbucket_server_config';

  GoogleCloudbuildBitbucketServerConfig({
    required super.localName,
    required TfArg<String> apiKey,
    required TfArg<String> configId,
    TfArg<String>? deletionPolicy,
    required TfArg<String> hostUri,
    required TfArg<String> location,
    TfArg<String>? peeredNetwork,
    TfArg<String>? project,
    TfArg<String>? sslCa,
    required TfArg<String> username,
    List<CloudbuildBitbucketServerConfigConnectedRepositories>?
    connectedRepositories,
    required CloudbuildBitbucketServerConfigSecrets secrets,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_key': apiKey,
           'config_id': configId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'host_uri': hostUri,
           'location': location,
           if (peeredNetwork != null) 'peered_network': peeredNetwork,
           if (project != null) 'project': project,
           if (sslCa != null) 'ssl_ca': sslCa,
           'username': username,
           if (connectedRepositories != null)
             'connected_repositories': TfArg.literal([
               for (final e in connectedRepositories) e.encode(),
             ]),
           'secrets': TfArg.literal(secrets.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudbuildBitbucketServerConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `webhook_key` attribute.
  TfRef<String> get webhookKey => TfRef.attribute<String>(this, 'webhook_key');
}
