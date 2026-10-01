// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../messaging/appwrite_messaging_topic.dart' show AppwriteMessagingTopic;
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_messaging_subscriber`.
const Set<String> _appwriteMessagingSubscriberSensitive = <String>{};

/// Factory wrapper for `appwrite_messaging_subscriber`.
///
/// Manages a subscriber to an Appwrite messaging topic.
final class AppwriteMessagingSubscriber extends Resource {
  static const String tfType = 'appwrite_messaging_subscriber';

  AppwriteMessagingSubscriber(
    super.localName, {
    RefTo<AppwriteProject>? projectId,
    required TfArg<String> targetId,
    required RefTo<AppwriteMessagingTopic> topicId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project_id': ?projectId?.encodeAs('id'),
           'target_id': targetId,
           'topic_id': topicId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMessagingSubscriberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteMessagingSubscriber>`.
  RefTo<AppwriteMessagingSubscriber> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetId => TfRef.attribute<String>(this, 'target_id');

  /// Reference to `topic_id` attribute.
  TfRef<String> get topicId => TfRef.attribute<String>(this, 'topic_id');
}
