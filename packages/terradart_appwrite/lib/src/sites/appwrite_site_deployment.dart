// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;
import '../sites/appwrite_site.dart' show AppwriteSite;

/// Sensitive field paths for `appwrite_site_deployment`.
const Set<String> _appwriteSiteDeploymentSensitive = <String>{};

/// Site Deployment Source enum for `source_type`.
extension type const SiteDeploymentSourceType._(TfArg<String> _)
    implements TfArg<String> {
  SiteDeploymentSourceType.variable(String name) : this._(TfArg.variable(name));
  SiteDeploymentSourceType.expression(String template)
    : this._(TfArg.expression(template));
  const SiteDeploymentSourceType.arg(TfArg<String> arg) : this._(arg);

  static const code = SiteDeploymentSourceType._(TfArgLiteral('code'));
  static const template = SiteDeploymentSourceType._(TfArgLiteral('template'));

  static const List<SiteDeploymentSourceType> values = [code, template];
}

/// Factory wrapper for `appwrite_site_deployment`.
///
/// Manages an Appwrite site deployment.
final class AppwriteSiteDeployment extends Resource {
  static const String tfType = 'appwrite_site_deployment';

  AppwriteSiteDeployment(
    super.localName, {
    TfArg<bool>? activate,
    TfArg<String>? buildCommand,
    TfArg<String>? codeHash,
    TfArg<String>? codePath,
    TfArg<String>? installCommand,
    TfArg<String>? outputDirectory,
    TfArg<String>? owner,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? reference,
    TfArg<String>? repository,
    TfArg<String>? rootDirectory,
    required RefTo<AppwriteSite> siteId,
    required SiteDeploymentSourceType sourceType,
    TfArg<String>? type,
    TfArg<bool>? waitForReady,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'activate': ?activate,
           'build_command': ?buildCommand,
           'code_hash': ?codeHash,
           'code_path': ?codePath,
           'install_command': ?installCommand,
           'output_directory': ?outputDirectory,
           'owner': ?owner,
           'project_id': ?projectId?.encodeAs('id'),
           'reference': ?reference,
           'repository': ?repository,
           'root_directory': ?rootDirectory,
           'site_id': siteId.encodeAs('id'),
           'source_type': sourceType,
           'type': ?type,
           'wait_for_ready': ?waitForReady,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteSiteDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteSiteDeployment>`.
  RefTo<AppwriteSiteDeployment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `build_duration` attribute.
  TfRef<num> get buildDuration => TfRef.attribute<num>(this, 'build_duration');

  /// Reference to `build_logs` attribute.
  TfRef<String> get buildLogs => TfRef.attribute<String>(this, 'build_logs');

  /// Reference to `build_size` attribute.
  TfRef<num> get buildSize => TfRef.attribute<num>(this, 'build_size');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `source_size` attribute.
  TfRef<num> get sourceSize => TfRef.attribute<num>(this, 'source_size');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `total_size` attribute.
  TfRef<num> get totalSize => TfRef.attribute<num>(this, 'total_size');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `activate` attribute.
  TfRef<bool> get activate => TfRef.attribute<bool>(this, 'activate');

  /// Reference to `build_command` attribute.
  TfRef<String> get buildCommand =>
      TfRef.attribute<String>(this, 'build_command');

  /// Reference to `code_hash` attribute.
  TfRef<String> get codeHash => TfRef.attribute<String>(this, 'code_hash');

  /// Reference to `code_path` attribute.
  TfRef<String> get codePath => TfRef.attribute<String>(this, 'code_path');

  /// Reference to `install_command` attribute.
  TfRef<String> get installCommand =>
      TfRef.attribute<String>(this, 'install_command');

  /// Reference to `output_directory` attribute.
  TfRef<String> get outputDirectory =>
      TfRef.attribute<String>(this, 'output_directory');

  /// Reference to `owner` attribute.
  TfRef<String> get owner => TfRef.attribute<String>(this, 'owner');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `reference` attribute.
  TfRef<String> get reference => TfRef.attribute<String>(this, 'reference');

  /// Reference to `repository` attribute.
  TfRef<String> get repository => TfRef.attribute<String>(this, 'repository');

  /// Reference to `root_directory` attribute.
  TfRef<String> get rootDirectory =>
      TfRef.attribute<String>(this, 'root_directory');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `source_type` attribute.
  TfRef<String> get sourceType => TfRef.attribute<String>(this, 'source_type');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `wait_for_ready` attribute.
  TfRef<bool> get waitForReady => TfRef.attribute<bool>(this, 'wait_for_ready');
}
