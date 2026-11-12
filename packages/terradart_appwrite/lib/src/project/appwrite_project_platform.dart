// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_platform`.
const Set<String> _appwriteProjectPlatformSensitive = <String>{};

/// Factory wrapper for `appwrite_project_platform`.
///
/// Manages a platform of an Appwrite project: a web app, or an Android, Apple,
/// Linux or Windows app, allowed to call the project's APIs from a client SDK.
final class AppwriteProjectPlatform extends Resource {
  static const String tfType = 'appwrite_project_platform';

  AppwriteProjectPlatform(
    super.localName, {
    TfArg<String>? applicationId,
    TfArg<String>? bundleIdentifier,
    TfArg<String>? hostname,
    required TfArg<String> name,
    TfArg<String>? packageIdentifierName,
    TfArg<String>? packageName,
    RefTo<AppwriteProject>? projectId,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': ?applicationId,
           'bundle_identifier': ?bundleIdentifier,
           'hostname': ?hostname,
           'name': name,
           'package_identifier_name': ?packageIdentifierName,
           'package_name': ?packageName,
           'project_id': ?projectId?.encodeAs('id'),
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectPlatformSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectPlatform>`.
  RefTo<AppwriteProjectPlatform> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `bundle_identifier` attribute.
  TfRef<String> get bundleIdentifier =>
      TfRef.attribute<String>(this, 'bundle_identifier');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `package_identifier_name` attribute.
  TfRef<String> get packageIdentifierName =>
      TfRef.attribute<String>(this, 'package_identifier_name');

  /// Reference to `package_name` attribute.
  TfRef<String> get packageName =>
      TfRef.attribute<String>(this, 'package_name');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
