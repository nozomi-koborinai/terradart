// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_protocols`.
const Set<String> _appwriteProjectProtocolsSensitive = <String>{};

/// Factory wrapper for `appwrite_project_protocols`.
///
/// Enables and disables the protocols a project's API is served over. Each
/// protocol is managed only when its attribute is set. Disabling REST does not
/// block requests made with an API key, including the provider's own; disabling
/// GraphQL does.
final class AppwriteProjectProtocols extends Resource {
  static const String tfType = 'appwrite_project_protocols';

  AppwriteProjectProtocols(
    super.localName, {
    TfArg<bool>? graphql,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? rest,
    TfArg<bool>? websocket,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'graphql': ?graphql,
           'project_id': ?projectId?.encodeAs('id'),
           'rest': ?rest,
           'websocket': ?websocket,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectProtocolsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectProtocols>`.
  RefTo<AppwriteProjectProtocols> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `graphql` attribute.
  TfRef<bool> get graphql => TfRef.attribute<bool>(this, 'graphql');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `rest` attribute.
  TfRef<bool> get rest => TfRef.attribute<bool>(this, 'rest');

  /// Reference to `websocket` attribute.
  TfRef<bool> get websocket => TfRef.attribute<bool>(this, 'websocket');
}
