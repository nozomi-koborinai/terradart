// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_workspace_saml_configuration`.
const Set<String> _awsGrafanaWorkspaceSamlConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_grafana_workspace_saml_configuration`.
final class AwsGrafanaWorkspaceSamlConfiguration extends Resource {
  static const String tfType = 'aws_grafana_workspace_saml_configuration';

  AwsGrafanaWorkspaceSamlConfiguration({
    required super.localName,
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
           if (adminRoleValues != null) 'admin_role_values': adminRoleValues,
           if (allowedOrganizations != null)
             'allowed_organizations': allowedOrganizations,
           'editor_role_values': editorRoleValues,
           if (emailAssertion != null) 'email_assertion': emailAssertion,
           if (groupsAssertion != null) 'groups_assertion': groupsAssertion,
           if (idpMetadataUrl != null) 'idp_metadata_url': idpMetadataUrl,
           if (idpMetadataXml != null) 'idp_metadata_xml': idpMetadataXml,
           if (loginAssertion != null) 'login_assertion': loginAssertion,
           if (loginValidityDuration != null)
             'login_validity_duration': loginValidityDuration,
           if (nameAssertion != null) 'name_assertion': nameAssertion,
           if (orgAssertion != null) 'org_assertion': orgAssertion,
           if (region != null) 'region': region,
           if (roleAssertion != null) 'role_assertion': roleAssertion,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGrafanaWorkspaceSamlConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
