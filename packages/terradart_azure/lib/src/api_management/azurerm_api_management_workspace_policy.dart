// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_workspace_policy`.
const Set<String> _azurermApiManagementWorkspacePolicySensitive = <String>{};

/// Exactly one of `xml_content`, `xml_link` on `azurerm_api_management_workspace_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.xmlContent(...)`.
sealed class ApiManagementWorkspacePolicyXml {
  const ApiManagementWorkspacePolicyXml();

  /// Sets `xml_content`.
  const factory ApiManagementWorkspacePolicyXml.xmlContent(
    TfArg<String> xmlContent,
  ) = ApiManagementWorkspacePolicyXmlContent;

  /// Sets `xml_link`.
  const factory ApiManagementWorkspacePolicyXml.xmlLink(TfArg<String> xmlLink) =
      ApiManagementWorkspacePolicyXmlLink;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ApiManagementWorkspacePolicyXml.xmlContent] choice: sets `xml_content`.
final class ApiManagementWorkspacePolicyXmlContent
    extends ApiManagementWorkspacePolicyXml {
  const ApiManagementWorkspacePolicyXmlContent(this.xmlContent);

  final TfArg<String> xmlContent;

  @internal
  @override
  String get blockKey => 'xml_content';

  @internal
  @override
  Map<String, Object?> encode() => {'xml_content': xmlContent.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'xml_content': xmlContent};
}

/// The [ApiManagementWorkspacePolicyXml.xmlLink] choice: sets `xml_link`.
final class ApiManagementWorkspacePolicyXmlLink
    extends ApiManagementWorkspacePolicyXml {
  const ApiManagementWorkspacePolicyXmlLink(this.xmlLink);

  final TfArg<String> xmlLink;

  @internal
  @override
  String get blockKey => 'xml_link';

  @internal
  @override
  Map<String, Object?> encode() => {'xml_link': xmlLink.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'xml_link': xmlLink};
}

/// Factory wrapper for `azurerm_api_management_workspace_policy`.
final class AzurermApiManagementWorkspacePolicy extends Resource {
  static const String tfType = 'azurerm_api_management_workspace_policy';

  AzurermApiManagementWorkspacePolicy(
    super.localName, {
    required TfArg<String> apiManagementWorkspaceId,
    required ApiManagementWorkspacePolicyXml xml,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_workspace_id': apiManagementWorkspaceId,
           ...xml.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementWorkspacePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementWorkspacePolicy>`.
  RefTo<AzurermApiManagementWorkspacePolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_workspace_id` attribute.
  TfRef<String> get apiManagementWorkspaceId =>
      TfRef.attribute<String>(this, 'api_management_workspace_id');

  /// Reference to `xml_content` attribute.
  TfRef<String> get xmlContent => TfRef.attribute<String>(this, 'xml_content');

  /// Reference to `xml_link` attribute.
  TfRef<String> get xmlLink => TfRef.attribute<String>(this, 'xml_link');
}
