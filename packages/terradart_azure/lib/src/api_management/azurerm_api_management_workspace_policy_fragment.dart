// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_workspace_policy_fragment`.
const Set<String> _azurermApiManagementWorkspacePolicyFragmentSensitive =
    <String>{};

/// Api Management Workspace Policy Fragment Xml enum for `xml_format`.
extension type const ApiManagementWorkspacePolicyFragmentXmlFormat._(
  TfArg<String> _
) implements TfArg<String> {
  ApiManagementWorkspacePolicyFragmentXmlFormat.variable(String name)
    : this._(TfArg.variable(name));
  ApiManagementWorkspacePolicyFragmentXmlFormat.expression(String template)
    : this._(TfArg.expression(template));
  const ApiManagementWorkspacePolicyFragmentXmlFormat.arg(TfArg<String> arg)
    : this._(arg);

  static const rawxml = ApiManagementWorkspacePolicyFragmentXmlFormat._(
    TfArgLiteral('rawxml'),
  );
  static const xml = ApiManagementWorkspacePolicyFragmentXmlFormat._(
    TfArgLiteral('xml'),
  );

  static const List<ApiManagementWorkspacePolicyFragmentXmlFormat> values = [
    rawxml,
    xml,
  ];
}

/// Factory wrapper for `azurerm_api_management_workspace_policy_fragment`.
final class AzurermApiManagementWorkspacePolicyFragment extends Resource {
  static const String tfType =
      'azurerm_api_management_workspace_policy_fragment';

  AzurermApiManagementWorkspacePolicyFragment(
    super.localName, {
    required TfArg<String> apiManagementWorkspaceId,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> xmlContent,
    ApiManagementWorkspacePolicyFragmentXmlFormat? xmlFormat,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_workspace_id': apiManagementWorkspaceId,
           'description': ?description,
           'name': name,
           'xml_content': xmlContent,
           'xml_format': ?xmlFormat,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementWorkspacePolicyFragmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementWorkspacePolicyFragment>`.
  RefTo<AzurermApiManagementWorkspacePolicyFragment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_workspace_id` attribute.
  TfRef<String> get apiManagementWorkspaceId =>
      TfRef.attribute<String>(this, 'api_management_workspace_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `xml_content` attribute.
  TfRef<String> get xmlContent => TfRef.attribute<String>(this, 'xml_content');

  /// Reference to `xml_format` attribute.
  TfRef<String> get xmlFormat => TfRef.attribute<String>(this, 'xml_format');
}
