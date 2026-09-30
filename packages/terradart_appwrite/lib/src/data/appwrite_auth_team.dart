// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../auth/appwrite_auth_team.dart';
import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_auth_team`.
const Set<String> _appwriteAuthTeamSensitive = <String>{};

/// Factory wrapper for `appwrite_auth_team`.
///
/// Fetches an Appwrite team by ID.
final class DataAppwriteAuthTeam extends Data {
  static const String tfType = 'appwrite_auth_team';

  DataAppwriteAuthTeam({
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
  Set<String> get sensitiveFields => _appwriteAuthTeamSensitive;

  /// A reference to the `appwrite_auth_team` this data source reads, for
  /// arguments typed `RefTo<AppwriteAuthTeam>`.
  RefTo<AppwriteAuthTeam> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectIdRef => TfRef.attribute<String>(this, 'project_id');
}
