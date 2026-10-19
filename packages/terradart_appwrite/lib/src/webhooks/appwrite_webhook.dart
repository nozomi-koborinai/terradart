// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_webhook`.
const Set<String> _appwriteWebhookSensitive = <String>{
  'auth_password',
  'auth_password_wo',
  'secret',
};

/// At most one of `auth_password`, `auth_password_wo` on `appwrite_webhook`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.authPassword(...)`.
sealed class WebhookAuthPassword {
  const WebhookAuthPassword();

  /// Sets `auth_password`.
  const factory WebhookAuthPassword.authPassword(
    Sensitive<String> authPassword,
  ) = WebhookAuthPasswordChoice;

  /// Sets `auth_password_wo`.
  const factory WebhookAuthPassword.authPasswordWo(
    Sensitive<String> authPasswordWo,
  ) = WebhookAuthPasswordWo;

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

/// The [WebhookAuthPassword.authPassword] choice: sets `auth_password`.
final class WebhookAuthPasswordChoice extends WebhookAuthPassword {
  const WebhookAuthPasswordChoice(this.authPassword);

  final Sensitive<String> authPassword;

  @internal
  @override
  String get blockKey => 'auth_password';

  @internal
  @override
  Map<String, Object?> encode() => {'auth_password': authPassword.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'auth_password': authPassword};
}

/// The [WebhookAuthPassword.authPasswordWo] choice: sets `auth_password_wo`.
final class WebhookAuthPasswordWo extends WebhookAuthPassword {
  const WebhookAuthPasswordWo(this.authPasswordWo);

  final Sensitive<String> authPasswordWo;

  @internal
  @override
  String get blockKey => 'auth_password_wo';

  @internal
  @override
  Map<String, Object?> encode() => {
    'auth_password_wo': authPasswordWo.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'auth_password_wo': authPasswordWo,
  };
}

/// Factory wrapper for `appwrite_webhook`.
///
/// Manages an Appwrite webhook.
final class AppwriteWebhook extends Resource {
  static const String tfType = 'appwrite_webhook';

  AppwriteWebhook(
    super.localName, {
    WebhookAuthPassword? authPassword,
    TfArg<num>? authPasswordWoVersion,
    TfArg<String>? authUsername,
    TfArg<bool>? enabled,
    required TfArg<List<String>> events,
    required TfArg<String> name,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? tls,
    required TfArg<String> url,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?authPassword?.argMap,
           'auth_password_wo_version': ?authPasswordWoVersion,
           'auth_username': ?authUsername,
           'enabled': ?enabled,
           'events': events,
           'name': name,
           'project_id': ?projectId?.encodeAs('id'),
           'tls': ?tls,
           'url': url,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteWebhookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteWebhook>`.
  RefTo<AppwriteWebhook> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `auth_password` attribute.
  TfRef<String> get authPassword =>
      TfRef.attribute<String>(this, 'auth_password');

  /// Reference to `auth_password_wo_version` attribute.
  TfRef<num> get authPasswordWoVersion =>
      TfRef.attribute<num>(this, 'auth_password_wo_version');

  /// Reference to `auth_username` attribute.
  TfRef<String> get authUsername =>
      TfRef.attribute<String>(this, 'auth_username');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `events` attribute.
  TfRef<List<String>> get events =>
      TfRef.attribute<List<String>>(this, 'events');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `tls` attribute.
  TfRef<bool> get tls => TfRef.attribute<bool>(this, 'tls');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
