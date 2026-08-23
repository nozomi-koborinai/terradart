// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_pages_project`.
const Set<String> _cloudflarePagesProjectSensitive = <String>{
  'build_config.web_analytics_token',
  'canonical_deployment.build_config.web_analytics_token',
  'canonical_deployment.env_vars.value',
  'deployment_configs.preview.env_vars.value',
  'deployment_configs.production.env_vars.value',
  'latest_deployment.build_config.web_analytics_token',
  'latest_deployment.env_vars.value',
};

/// Factory wrapper for `cloudflare_pages_project`.
///
/// Accepted Permissions
///
/// - `Pages Read` - `Pages Write`
final class DataCloudflarePagesProject extends Data {
  static const String tfType = 'cloudflare_pages_project';

  DataCloudflarePagesProject({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> projectName,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'project_name': projectName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePagesProjectSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `domains` attribute.
  TfRef<List<String>> get domains =>
      TfRef.attribute<List<String>>(this, 'domains');

  /// Reference to `framework` attribute.
  TfRef<String> get framework => TfRef.attribute<String>(this, 'framework');

  /// Reference to `framework_version` attribute.
  TfRef<String> get frameworkVersion =>
      TfRef.attribute<String>(this, 'framework_version');

  /// Reference to `preview_script_name` attribute.
  TfRef<String> get previewScriptName =>
      TfRef.attribute<String>(this, 'preview_script_name');

  /// Reference to `production_branch` attribute.
  TfRef<String> get productionBranch =>
      TfRef.attribute<String>(this, 'production_branch');

  /// Reference to `production_script_name` attribute.
  TfRef<String> get productionScriptName =>
      TfRef.attribute<String>(this, 'production_script_name');

  /// Reference to `subdomain` attribute.
  TfRef<String> get subdomain => TfRef.attribute<String>(this, 'subdomain');

  /// Reference to `uses_functions` attribute.
  TfRef<bool> get usesFunctions =>
      TfRef.attribute<bool>(this, 'uses_functions');
}
