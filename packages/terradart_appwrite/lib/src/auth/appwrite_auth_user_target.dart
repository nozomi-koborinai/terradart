// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_auth_user_target`.
const Set<String> _appwriteAuthUserTargetSensitive = <String>{};

/// Factory wrapper for `appwrite_auth_user_target`.
///
/// Manages a messaging target of an Appwrite user: an email address, phone
/// number or push token that messages can be sent to, and that
/// appwrite_messaging_subscriber can subscribe to a topic.
final class AppwriteAuthUserTarget extends Resource {
  static const String tfType = 'appwrite_auth_user_target';

  AppwriteAuthUserTarget(
    super.localName, {
    required TfArg<String> identifier,
    TfArg<String>? name,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? providerId,
    required TfArg<String> providerType,
    required TfArg<String> userId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identifier': identifier,
           'name': ?name,
           'project_id': ?projectId?.encodeAs('id'),
           'provider_id': ?providerId,
           'provider_type': providerType,
           'user_id': userId,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteAuthUserTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteAuthUserTarget>`.
  RefTo<AppwriteAuthUserTarget> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `expired` attribute.
  TfRef<bool> get expired => TfRef.attribute<bool>(this, 'expired');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `identifier` attribute.
  TfRef<String> get identifier => TfRef.attribute<String>(this, 'identifier');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `provider_id` attribute.
  TfRef<String> get providerId => TfRef.attribute<String>(this, 'provider_id');

  /// Reference to `provider_type` attribute.
  TfRef<String> get providerType =>
      TfRef.attribute<String>(this, 'provider_type');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
