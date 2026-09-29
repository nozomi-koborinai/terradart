// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../webhooks/appwrite_webhook.dart';
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_webhook`.
const Set<String> _appwriteWebhookSensitive = <String>{};

/// Factory wrapper for `appwrite_webhook`.
///
/// Fetches an Appwrite webhook by ID.
final class DataAppwriteWebhook extends Data {
  static const String tfType = 'appwrite_webhook';

  DataAppwriteWebhook({
    required super.localName,
    required TfArg<String> id,
    RefTo<AppwriteProject>? projectId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, 'project_id': ?projectId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _appwriteWebhookSensitive;

  /// A reference to the `appwrite_webhook` this data source reads, for
  /// arguments typed `RefTo<AppwriteWebhook>`.
  RefTo<AppwriteWebhook> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `events` attribute.
  TfRef<List<String>> get events =>
      TfRef.attribute<List<String>>(this, 'events');

  /// Reference to `tls` attribute.
  TfRef<bool> get tls => TfRef.attribute<bool>(this, 'tls');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
