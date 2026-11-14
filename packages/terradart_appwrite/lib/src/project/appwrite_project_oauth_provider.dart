// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_oauth_provider`.
const Set<String> _appwriteProjectOauthProviderSensitive = <String>{
  'client_secret',
  'client_secret_wo',
};

/// At most one of `client_secret`, `client_secret_wo` on `appwrite_project_oauth_provider`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.clientSecret(...)`.
sealed class ProjectOauthProviderClientSecret {
  const ProjectOauthProviderClientSecret();

  /// Sets `client_secret`.
  const factory ProjectOauthProviderClientSecret.clientSecret(
    Sensitive<String> clientSecret,
  ) = ProjectOauthProviderClientSecretChoice;

  /// Sets `client_secret_wo`.
  const factory ProjectOauthProviderClientSecret.clientSecretWo(
    Sensitive<String> clientSecretWo,
  ) = ProjectOauthProviderClientSecretWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ProjectOauthProviderClientSecret.clientSecret] choice: sets `client_secret`.
final class ProjectOauthProviderClientSecretChoice
    extends ProjectOauthProviderClientSecret {
  const ProjectOauthProviderClientSecretChoice(this.clientSecret);

  final Sensitive<String> clientSecret;

  @internal
  @override
  String get blockKey => 'client_secret';

  @internal
  @override
  Map<String, Object?> encode() => {'client_secret': clientSecret.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'client_secret': clientSecret};
}

/// The [ProjectOauthProviderClientSecret.clientSecretWo] choice: sets `client_secret_wo`.
final class ProjectOauthProviderClientSecretWo
    extends ProjectOauthProviderClientSecret {
  const ProjectOauthProviderClientSecretWo(this.clientSecretWo);

  final Sensitive<String> clientSecretWo;

  @internal
  @override
  String get blockKey => 'client_secret_wo';

  @internal
  @override
  Map<String, Object?> encode() => {
    'client_secret_wo': clientSecretWo.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'client_secret_wo': clientSecretWo,
  };
}

/// Factory wrapper for `appwrite_project_oauth_provider`.
///
/// Configures an OAuth2 sign-in provider of an Appwrite project. Every provider
/// exists in every project, so creating this resource sets the provider up and
/// destroying it disables the provider and clears its credentials.
final class AppwriteProjectOauthProvider extends Resource {
  static const String tfType = 'appwrite_project_oauth_provider';

  AppwriteProjectOauthProvider(
    super.localName, {
    TfArg<String>? authorizationServerId,
    TfArg<String>? authorizationUrl,
    TfArg<String>? clientId,
    ProjectOauthProviderClientSecret? clientSecret,
    TfArg<num>? clientSecretWoVersion,
    TfArg<String>? domain,
    TfArg<bool>? enabled,
    TfArg<String>? endpoint,
    TfArg<String>? keyId,
    TfArg<num>? maxAge,
    TfArg<List<String>>? nativeClientIds,
    TfArg<bool>? nativeEnabled,
    RefTo<AppwriteProject>? projectId,
    TfArg<List<String>>? prompt,
    required TfArg<String> providerId,
    TfArg<String>? realmName,
    TfArg<String>? teamId,
    TfArg<String>? tenant,
    TfArg<String>? tokenUrl,
    TfArg<String>? userInfoUrl,
    TfArg<String>? wellKnownUrl,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorization_server_id': ?authorizationServerId,
           'authorization_url': ?authorizationUrl,
           'client_id': ?clientId,
           ...?clientSecret?.argMap,
           'client_secret_wo_version': ?clientSecretWoVersion,
           'domain': ?domain,
           'enabled': ?enabled,
           'endpoint': ?endpoint,
           'key_id': ?keyId,
           'max_age': ?maxAge,
           'native_client_ids': ?nativeClientIds,
           'native_enabled': ?nativeEnabled,
           'project_id': ?projectId?.encodeAs('id'),
           'prompt': ?prompt,
           'provider_id': providerId,
           'realm_name': ?realmName,
           'team_id': ?teamId,
           'tenant': ?tenant,
           'token_url': ?tokenUrl,
           'user_info_url': ?userInfoUrl,
           'well_known_url': ?wellKnownUrl,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectOauthProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectOauthProvider>`.
  RefTo<AppwriteProjectOauthProvider> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorization_server_id` attribute.
  TfRef<String> get authorizationServerId =>
      TfRef.attribute<String>(this, 'authorization_server_id');

  /// Reference to `authorization_url` attribute.
  TfRef<String> get authorizationUrl =>
      TfRef.attribute<String>(this, 'authorization_url');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `client_secret_wo_version` attribute.
  TfRef<num> get clientSecretWoVersion =>
      TfRef.attribute<num>(this, 'client_secret_wo_version');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `max_age` attribute.
  TfRef<num> get maxAge => TfRef.attribute<num>(this, 'max_age');

  /// Reference to `native_client_ids` attribute.
  TfRef<List<String>> get nativeClientIds =>
      TfRef.attribute<List<String>>(this, 'native_client_ids');

  /// Reference to `native_enabled` attribute.
  TfRef<bool> get nativeEnabled =>
      TfRef.attribute<bool>(this, 'native_enabled');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `prompt` attribute.
  TfRef<List<String>> get prompt =>
      TfRef.attribute<List<String>>(this, 'prompt');

  /// Reference to `provider_id` attribute.
  TfRef<String> get providerId => TfRef.attribute<String>(this, 'provider_id');

  /// Reference to `realm_name` attribute.
  TfRef<String> get realmName => TfRef.attribute<String>(this, 'realm_name');

  /// Reference to `team_id` attribute.
  TfRef<String> get teamId => TfRef.attribute<String>(this, 'team_id');

  /// Reference to `tenant` attribute.
  TfRef<String> get tenant => TfRef.attribute<String>(this, 'tenant');

  /// Reference to `token_url` attribute.
  TfRef<String> get tokenUrl => TfRef.attribute<String>(this, 'token_url');

  /// Reference to `user_info_url` attribute.
  TfRef<String> get userInfoUrl =>
      TfRef.attribute<String>(this, 'user_info_url');

  /// Reference to `well_known_url` attribute.
  TfRef<String> get wellKnownUrl =>
      TfRef.attribute<String>(this, 'well_known_url');
}
