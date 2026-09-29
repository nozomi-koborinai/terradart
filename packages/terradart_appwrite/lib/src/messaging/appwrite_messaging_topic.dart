// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

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
    RefTo<AppwriteProject>? projectId,
    TfArg<List<String>>? subscribe,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'project_id': ?projectId?.encodeAs('id'),
           'subscribe': ?subscribe,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteMessagingTopicSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteMessagingTopic>`.
  RefTo<AppwriteMessagingTopic> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
