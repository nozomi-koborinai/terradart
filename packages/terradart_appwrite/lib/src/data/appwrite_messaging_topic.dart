// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../messaging/appwrite_messaging_topic.dart';

/// Sensitive field paths for `appwrite_messaging_topic`.
const Set<String> _appwriteMessagingTopicSensitive = <String>{};

/// Factory wrapper for `appwrite_messaging_topic`.
///
/// Fetches an Appwrite messaging topic by ID.
final class DataAppwriteMessagingTopic extends Data {
  static const String tfType = 'appwrite_messaging_topic';

  DataAppwriteMessagingTopic({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? projectId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (projectId != null) 'project_id': projectId},
       );

  @override
  Set<String> get sensitiveFields => _appwriteMessagingTopicSensitive;

  /// A reference to the `appwrite_messaging_topic` this data source reads, for
  /// arguments typed `RefTo<AppwriteMessagingTopic>`.
  // ignore: invalid_use_of_internal_member
  RefTo<AppwriteMessagingTopic> get ref => RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `subscribe` attribute.
  TfRef<List<String>> get subscribe =>
      TfRef.attribute<List<String>>(this, 'subscribe');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
