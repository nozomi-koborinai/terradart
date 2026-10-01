// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;
import '../sites/appwrite_site.dart' show AppwriteSite;

/// Sensitive field paths for `appwrite_site_variable`.
const Set<String> _appwriteSiteVariableSensitive = <String>{'value'};

/// Factory wrapper for `appwrite_site_variable`.
///
/// Manages an Appwrite site environment variable.
///
/// Site environment variable. [value] is sensitive — pass
/// `TfArg.variable` so the secret never enters synth output.
final class AppwriteSiteVariable extends Resource {
  static const String tfType = 'appwrite_site_variable';

  AppwriteSiteVariable(
    super.localName, {
    required TfArg<String> key,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? secret,
    required RefTo<AppwriteSite> siteId,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key': key,
           'project_id': ?projectId?.encodeAs('id'),
           'secret': ?secret,
           'site_id': siteId.encodeAs('id'),
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteSiteVariableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteSiteVariable>`.
  RefTo<AppwriteSiteVariable> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `secret` attribute.
  TfRef<bool> get secret => TfRef.attribute<bool>(this, 'secret');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
