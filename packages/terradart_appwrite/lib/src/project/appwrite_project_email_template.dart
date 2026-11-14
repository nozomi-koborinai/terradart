// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_email_template`.
const Set<String> _appwriteProjectEmailTemplateSensitive = <String>{};

/// Factory wrapper for `appwrite_project_email_template`.
///
/// Manages a project's custom email template for one type of email in one
/// locale. Appwrite uses custom templates only while the project's custom SMTP
/// is enabled.
final class AppwriteProjectEmailTemplate extends Resource {
  static const String tfType = 'appwrite_project_email_template';

  AppwriteProjectEmailTemplate(
    super.localName, {
    required TfArg<String> locale,
    required TfArg<String> message,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? replyToEmail,
    TfArg<String>? replyToName,
    TfArg<String>? senderEmail,
    TfArg<String>? senderName,
    required TfArg<String> subject,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'locale': locale,
           'message': message,
           'project_id': ?projectId?.encodeAs('id'),
           'reply_to_email': ?replyToEmail,
           'reply_to_name': ?replyToName,
           'sender_email': ?senderEmail,
           'sender_name': ?senderName,
           'subject': subject,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectEmailTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectEmailTemplate>`.
  RefTo<AppwriteProjectEmailTemplate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `locale` attribute.
  TfRef<String> get locale => TfRef.attribute<String>(this, 'locale');

  /// Reference to `message` attribute.
  TfRef<String> get message => TfRef.attribute<String>(this, 'message');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `reply_to_email` attribute.
  TfRef<String> get replyToEmail =>
      TfRef.attribute<String>(this, 'reply_to_email');

  /// Reference to `reply_to_name` attribute.
  TfRef<String> get replyToName =>
      TfRef.attribute<String>(this, 'reply_to_name');

  /// Reference to `sender_email` attribute.
  TfRef<String> get senderEmail =>
      TfRef.attribute<String>(this, 'sender_email');

  /// Reference to `sender_name` attribute.
  TfRef<String> get senderName => TfRef.attribute<String>(this, 'sender_name');

  /// Reference to `subject` attribute.
  TfRef<String> get subject => TfRef.attribute<String>(this, 'subject');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
