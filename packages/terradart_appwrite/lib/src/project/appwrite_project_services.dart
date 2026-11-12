// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_project_services`.
const Set<String> _appwriteProjectServicesSensitive = <String>{};

/// Factory wrapper for `appwrite_project_services`.
///
/// Enables and disables the API services of a project. Each service is managed
/// only when its attribute is set. Requests made with an API key, including the
/// provider's own, are not blocked by a disabled service; it applies to
/// requests from users and guests.
final class AppwriteProjectServices extends Resource {
  static const String tfType = 'appwrite_project_services';

  AppwriteProjectServices(
    super.localName, {
    TfArg<bool>? account,
    TfArg<bool>? advisor,
    TfArg<bool>? avatars,
    TfArg<bool>? databases,
    TfArg<bool>? functions,
    TfArg<bool>? graphql,
    TfArg<bool>? health,
    TfArg<bool>? locale,
    TfArg<bool>? messaging,
    TfArg<bool>? migrations,
    TfArg<bool>? project,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? proxy,
    TfArg<bool>? sites,
    TfArg<bool>? storage,
    TfArg<bool>? tablesdb,
    TfArg<bool>? teams,
    TfArg<bool>? users,
    TfArg<bool>? vcs,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account': ?account,
           'advisor': ?advisor,
           'avatars': ?avatars,
           'databases': ?databases,
           'functions': ?functions,
           'graphql': ?graphql,
           'health': ?health,
           'locale': ?locale,
           'messaging': ?messaging,
           'migrations': ?migrations,
           'project': ?project,
           'project_id': ?projectId?.encodeAs('id'),
           'proxy': ?proxy,
           'sites': ?sites,
           'storage': ?storage,
           'tablesdb': ?tablesdb,
           'teams': ?teams,
           'users': ?users,
           'vcs': ?vcs,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteProjectServicesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteProjectServices>`.
  RefTo<AppwriteProjectServices> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account` attribute.
  TfRef<bool> get account => TfRef.attribute<bool>(this, 'account');

  /// Reference to `advisor` attribute.
  TfRef<bool> get advisor => TfRef.attribute<bool>(this, 'advisor');

  /// Reference to `avatars` attribute.
  TfRef<bool> get avatars => TfRef.attribute<bool>(this, 'avatars');

  /// Reference to `databases` attribute.
  TfRef<bool> get databases => TfRef.attribute<bool>(this, 'databases');

  /// Reference to `functions` attribute.
  TfRef<bool> get functions => TfRef.attribute<bool>(this, 'functions');

  /// Reference to `graphql` attribute.
  TfRef<bool> get graphql => TfRef.attribute<bool>(this, 'graphql');

  /// Reference to `health` attribute.
  TfRef<bool> get health => TfRef.attribute<bool>(this, 'health');

  /// Reference to `locale` attribute.
  TfRef<bool> get locale => TfRef.attribute<bool>(this, 'locale');

  /// Reference to `messaging` attribute.
  TfRef<bool> get messaging => TfRef.attribute<bool>(this, 'messaging');

  /// Reference to `migrations` attribute.
  TfRef<bool> get migrations => TfRef.attribute<bool>(this, 'migrations');

  /// Reference to `project` attribute.
  TfRef<bool> get project => TfRef.attribute<bool>(this, 'project');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `proxy` attribute.
  TfRef<bool> get proxy => TfRef.attribute<bool>(this, 'proxy');

  /// Reference to `sites` attribute.
  TfRef<bool> get sites => TfRef.attribute<bool>(this, 'sites');

  /// Reference to `storage` attribute.
  TfRef<bool> get storage => TfRef.attribute<bool>(this, 'storage');

  /// Reference to `tablesdb` attribute.
  TfRef<bool> get tablesdb => TfRef.attribute<bool>(this, 'tablesdb');

  /// Reference to `teams` attribute.
  TfRef<bool> get teams => TfRef.attribute<bool>(this, 'teams');

  /// Reference to `users` attribute.
  TfRef<bool> get users => TfRef.attribute<bool>(this, 'users');

  /// Reference to `vcs` attribute.
  TfRef<bool> get vcs => TfRef.attribute<bool>(this, 'vcs');
}
