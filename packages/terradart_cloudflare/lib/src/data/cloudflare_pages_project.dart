// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../pages/cloudflare_pages_project.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_pages_project`.
const Set<String> _cloudflarePagesProjectSensitive = <String>{
  'build_config.web_analytics_token',
  'canonical_deployment.build_config.web_analytics_token',
  'canonical_deployment.env_vars.*.value',
  'deployment_configs.preview.env_vars.*.value',
  'deployment_configs.production.env_vars.*.value',
  'latest_deployment.build_config.web_analytics_token',
  'latest_deployment.env_vars.*.value',
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
    RefTo<CloudflareAccount>? accountId,
    required TfArg<String> projectName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'project_name': projectName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePagesProjectSensitive;

  /// A reference to the `cloudflare_pages_project` this data source reads, for
  /// arguments typed `RefTo<CloudflarePagesProject>`.
  RefTo<CloudflarePagesProject> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `project_name` attribute.
  TfRef<String> get projectNameRef =>
      TfRef.attribute<String>(this, 'project_name');
}
