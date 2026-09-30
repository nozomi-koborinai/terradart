// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_project`.
const Set<String> _appwriteProjectSensitive = <String>{};

/// Factory wrapper for `appwrite_project`.
///
/// Manages an Appwrite project within an organization.
///
/// Appwrite **project** — the top-level container for auth, databases,
/// storage, functions, and messaging.
///
/// Creating a project is an organization-scoped operation: apply needs an
/// organization API key (`APPWRITE_ORGANIZATION_API_KEY` env var, or the
/// provider's `organization_api_key`) and an organization id. Synth output
/// never contains credentials — see [AppwriteProvider].
final class AppwriteProject extends Resource {
  static const String tfType = 'appwrite_project';

  AppwriteProject({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? organizationId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'organization_id': ?organizationId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProject>`.
  RefTo<AppwriteProject> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `team_id` attribute.
  TfRef<String> get teamId => TfRef.attribute<String>(this, 'team_id');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationIdRef =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
