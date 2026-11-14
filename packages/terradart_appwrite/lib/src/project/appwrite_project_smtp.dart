// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_smtp`.
const Set<String> _appwriteProjectSmtpSensitive = <String>{
  'password',
  'password_wo',
};

/// At most one of `password`, `password_wo` on `appwrite_project_smtp`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.password(...)`.
sealed class ProjectSmtpPassword {
  const ProjectSmtpPassword();

  /// Sets `password`.
  const factory ProjectSmtpPassword.password(Sensitive<String> password) =
      ProjectSmtpPasswordChoice;

  /// Sets `password_wo`.
  const factory ProjectSmtpPassword.passwordWo(Sensitive<String> passwordWo) =
      ProjectSmtpPasswordWo;

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

/// The [ProjectSmtpPassword.password] choice: sets `password`.
final class ProjectSmtpPasswordChoice extends ProjectSmtpPassword {
  const ProjectSmtpPasswordChoice(this.password);

  final Sensitive<String> password;

  @internal
  @override
  String get blockKey => 'password';

  @internal
  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'password': password};
}

/// The [ProjectSmtpPassword.passwordWo] choice: sets `password_wo`.
final class ProjectSmtpPasswordWo extends ProjectSmtpPassword {
  const ProjectSmtpPasswordWo(this.passwordWo);

  final Sensitive<String> passwordWo;

  @internal
  @override
  String get blockKey => 'password_wo';

  @internal
  @override
  Map<String, Object?> encode() => {'password_wo': passwordWo.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'password_wo': passwordWo};
}

/// Factory wrapper for `appwrite_project_smtp`.
///
/// Manages a project's custom SMTP server, which Appwrite sends the project's
/// emails through instead of its own.
final class AppwriteProjectSmtp extends Resource {
  static const String tfType = 'appwrite_project_smtp';

  AppwriteProjectSmtp(
    super.localName, {
    TfArg<bool>? enabled,
    required TfArg<String> host,
    ProjectSmtpPassword? password,
    TfArg<num>? passwordWoVersion,
    required TfArg<num> port,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? replyToEmail,
    TfArg<String>? replyToName,
    TfArg<String>? secure,
    required TfArg<String> senderEmail,
    TfArg<String>? senderName,
    TfArg<String>? username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': ?enabled,
           'host': host,
           ...?password?.argMap,
           'password_wo_version': ?passwordWoVersion,
           'port': port,
           'project_id': ?projectId?.encodeAs('id'),
           'reply_to_email': ?replyToEmail,
           'reply_to_name': ?replyToName,
           'secure': ?secure,
           'sender_email': senderEmail,
           'sender_name': ?senderName,
           'username': ?username,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectSmtpSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectSmtp>`.
  RefTo<AppwriteProjectSmtp> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `password_wo_version` attribute.
  TfRef<num> get passwordWoVersion =>
      TfRef.attribute<num>(this, 'password_wo_version');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `reply_to_email` attribute.
  TfRef<String> get replyToEmail =>
      TfRef.attribute<String>(this, 'reply_to_email');

  /// Reference to `reply_to_name` attribute.
  TfRef<String> get replyToName =>
      TfRef.attribute<String>(this, 'reply_to_name');

  /// Reference to `secure` attribute.
  TfRef<String> get secure => TfRef.attribute<String>(this, 'secure');

  /// Reference to `sender_email` attribute.
  TfRef<String> get senderEmail =>
      TfRef.attribute<String>(this, 'sender_email');

  /// Reference to `sender_name` attribute.
  TfRef<String> get senderName => TfRef.attribute<String>(this, 'sender_name');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
