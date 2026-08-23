// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_messaging_topic`.
const Set<String> _appwriteMessagingTopicSensitive = <String>{};

/// Factory wrapper for `appwrite_messaging_topic`.
///
/// Manages an Appwrite messaging topic.
final class AppwriteMessagingTopic extends Resource {
  static const String tfType = 'appwrite_messaging_topic';

  AppwriteMessagingTopic({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? projectId,
    TfArg<List<String>>? subscribe,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (projectId != null) 'project_id': projectId,
           if (subscribe != null) 'subscribe': subscribe,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMessagingTopicSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
