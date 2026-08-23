// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_messaging_subscriber`.
const Set<String> _appwriteMessagingSubscriberSensitive = <String>{};

/// Factory wrapper for `appwrite_messaging_subscriber`.
///
/// Manages a subscriber to an Appwrite messaging topic.
final class AppwriteMessagingSubscriber extends Resource {
  static const String tfType = 'appwrite_messaging_subscriber';

  AppwriteMessagingSubscriber({
    required super.localName,
    TfArg<String>? projectId,
    required TfArg<String> targetId,
    required TfArg<String> topicId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (projectId != null) 'project_id': projectId,
           'target_id': targetId,
           'topic_id': topicId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMessagingSubscriberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
