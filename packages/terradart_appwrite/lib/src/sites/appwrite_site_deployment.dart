// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `appwrite_site_deployment`.
const Set<String> _appwriteSiteDeploymentSensitive = <String>{};

/// Site Deployment Source enum for `source_type`.
enum SiteDeploymentSourceType implements TerraformEnum {
  code('code'),
  template('template');

  const SiteDeploymentSourceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `appwrite_site_deployment`.
///
/// Manages an Appwrite site deployment.
final class AppwriteSiteDeployment extends Resource {
  static const String tfType = 'appwrite_site_deployment';

  AppwriteSiteDeployment({
    required super.localName,
    TfArg<bool>? activate,
    TfArg<String>? buildCommand,
    TfArg<String>? codeHash,
    TfArg<String>? codePath,
    TfArg<String>? installCommand,
    TfArg<String>? outputDirectory,
    TfArg<String>? owner,
    TfArg<String>? projectId,
    TfArg<String>? reference,
    TfArg<String>? repository,
    TfArg<String>? rootDirectory,
    required TfArg<String> siteId,
    required TfArg<SiteDeploymentSourceType> sourceType,
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
           'project_id': ?projectId,
           'reference': ?reference,
           'repository': ?repository,
           'root_directory': ?rootDirectory,
           'site_id': siteId,
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
}
