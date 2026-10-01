// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_key`.
const Set<String> _appwriteProjectKeySensitive = <String>{'secret'};

/// Factory wrapper for `appwrite_project_key`.
///
/// Manages an Appwrite project API key.
///
/// Appwrite **project API key**.
///
/// The create endpoint is gone upstream: mint the key in the Console and
/// `terraform import` it. Read / update / delete still work. Synth output
/// never contains the secret — see [AppwriteProvider].
final class AppwriteProjectKey extends Resource {
  static const String tfType = 'appwrite_project_key';

  AppwriteProjectKey({
    required super.localName,
    TfArg<String>? expire,
    required TfArg<String> name,
    TfArg<String>? organizationId,
    RefTo<AppwriteProject>? projectId,
    required TfArg<List<String>> scopes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'expire': ?expire,
           'name': name,
           'organization_id': ?organizationId,
           'project_id': ?projectId?.encodeAs('id'),
           'scopes': scopes,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectKeySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectKey>`.
  RefTo<AppwriteProjectKey> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accessed_at` attribute.
  TfRef<String> get accessedAt => TfRef.attribute<String>(this, 'accessed_at');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `sdks` attribute.
  TfRef<List<String>> get sdks => TfRef.attribute<List<String>>(this, 'sdks');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `expire` attribute.
  TfRef<String> get expire => TfRef.attribute<String>(this, 'expire');

  /// Reference to `organization_id` attribute.
  TfRef<String> get organizationId =>
      TfRef.attribute<String>(this, 'organization_id');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');
}
