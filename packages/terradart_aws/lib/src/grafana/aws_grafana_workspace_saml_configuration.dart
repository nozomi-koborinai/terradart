// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_workspace_saml_configuration`.
const Set<String> _awsGrafanaWorkspaceSamlConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_grafana_workspace_saml_configuration`.
final class AwsGrafanaWorkspaceSamlConfiguration extends Resource {
  static const String tfType = 'aws_grafana_workspace_saml_configuration';

  AwsGrafanaWorkspaceSamlConfiguration(
    super.localName, {
    TfArg<List<String>>? adminRoleValues,
    TfArg<List<String>>? allowedOrganizations,
    required TfArg<List<String>> editorRoleValues,
    TfArg<String>? emailAssertion,
    TfArg<String>? groupsAssertion,
    TfArg<String>? idpMetadataUrl,
    TfArg<String>? idpMetadataXml,
    TfArg<String>? loginAssertion,
    TfArg<num>? loginValidityDuration,
    TfArg<String>? nameAssertion,
    TfArg<String>? orgAssertion,
    TfArg<String>? region,
    TfArg<String>? roleAssertion,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'admin_role_values': ?adminRoleValues,
           'allowed_organizations': ?allowedOrganizations,
           'editor_role_values': editorRoleValues,
           'email_assertion': ?emailAssertion,
           'groups_assertion': ?groupsAssertion,
           'idp_metadata_url': ?idpMetadataUrl,
           'idp_metadata_xml': ?idpMetadataXml,
           'login_assertion': ?loginAssertion,
           'login_validity_duration': ?loginValidityDuration,
           'name_assertion': ?nameAssertion,
           'org_assertion': ?orgAssertion,
           'region': ?region,
           'role_assertion': ?roleAssertion,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGrafanaWorkspaceSamlConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGrafanaWorkspaceSamlConfiguration>`.
  RefTo<AwsGrafanaWorkspaceSamlConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `admin_role_values` attribute.
  TfRef<List<String>> get adminRoleValues =>
      TfRef.attribute<List<String>>(this, 'admin_role_values');

  /// Reference to `allowed_organizations` attribute.
  TfRef<List<String>> get allowedOrganizations =>
      TfRef.attribute<List<String>>(this, 'allowed_organizations');

  /// Reference to `editor_role_values` attribute.
  TfRef<List<String>> get editorRoleValues =>
      TfRef.attribute<List<String>>(this, 'editor_role_values');

  /// Reference to `email_assertion` attribute.
  TfRef<String> get emailAssertion =>
      TfRef.attribute<String>(this, 'email_assertion');

  /// Reference to `groups_assertion` attribute.
  TfRef<String> get groupsAssertion =>
      TfRef.attribute<String>(this, 'groups_assertion');

  /// Reference to `idp_metadata_url` attribute.
  TfRef<String> get idpMetadataUrl =>
      TfRef.attribute<String>(this, 'idp_metadata_url');

  /// Reference to `idp_metadata_xml` attribute.
  TfRef<String> get idpMetadataXml =>
      TfRef.attribute<String>(this, 'idp_metadata_xml');

  /// Reference to `login_assertion` attribute.
  TfRef<String> get loginAssertion =>
      TfRef.attribute<String>(this, 'login_assertion');

  /// Reference to `login_validity_duration` attribute.
  TfRef<num> get loginValidityDuration =>
      TfRef.attribute<num>(this, 'login_validity_duration');

  /// Reference to `name_assertion` attribute.
  TfRef<String> get nameAssertion =>
      TfRef.attribute<String>(this, 'name_assertion');

  /// Reference to `org_assertion` attribute.
  TfRef<String> get orgAssertion =>
      TfRef.attribute<String>(this, 'org_assertion');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_assertion` attribute.
  TfRef<String> get roleAssertion =>
      TfRef.attribute<String>(this, 'role_assertion');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
