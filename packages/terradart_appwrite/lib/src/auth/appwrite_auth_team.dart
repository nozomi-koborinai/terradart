// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_auth_team`.
const Set<String> _appwriteAuthTeamSensitive = <String>{};

/// Factory wrapper for `appwrite_auth_team`.
///
/// Manages an Appwrite team.
final class AppwriteAuthTeam extends Resource {
  static const String tfType = 'appwrite_auth_team';

  AppwriteAuthTeam({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? projectId,
    TfArg<List<String>>? roles,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (projectId != null) 'project_id': projectId,
           if (roles != null) 'roles': roles,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteAuthTeamSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
