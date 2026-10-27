// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_product_policy`.
const Set<String> _azurermApiManagementProductPolicySensitive = <String>{};

/// At most one of `xml_content`, `xml_link` on `azurerm_api_management_product_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.xmlContent(...)`.
sealed class ApiManagementProductPolicyXml {
  const ApiManagementProductPolicyXml();

  /// Sets `xml_content`.
  const factory ApiManagementProductPolicyXml.xmlContent(
    TfArg<String> xmlContent,
  ) = ApiManagementProductPolicyXmlContent;

  /// Sets `xml_link`.
  const factory ApiManagementProductPolicyXml.xmlLink(TfArg<String> xmlLink) =
      ApiManagementProductPolicyXmlLink;

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

/// The [ApiManagementProductPolicyXml.xmlContent] choice: sets `xml_content`.
final class ApiManagementProductPolicyXmlContent
    extends ApiManagementProductPolicyXml {
  const ApiManagementProductPolicyXmlContent(this.xmlContent);

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

/// The [ApiManagementProductPolicyXml.xmlLink] choice: sets `xml_link`.
final class ApiManagementProductPolicyXmlLink
    extends ApiManagementProductPolicyXml {
  const ApiManagementProductPolicyXmlLink(this.xmlLink);

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

/// Factory wrapper for `azurerm_api_management_product_policy`.
final class AzurermApiManagementProductPolicy extends Resource {
  static const String tfType = 'azurerm_api_management_product_policy';

  AzurermApiManagementProductPolicy(
    super.localName, {
    required TfArg<String> apiManagementName,
    required TfArg<String> productId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    ApiManagementProductPolicyXml? xml,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           'product_id': productId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           ...?xml?.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementProductPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementProductPolicy>`.
  RefTo<AzurermApiManagementProductPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `product_id` attribute.
  TfRef<String> get productId => TfRef.attribute<String>(this, 'product_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `xml_content` attribute.
  TfRef<String> get xmlContent => TfRef.attribute<String>(this, 'xml_content');

  /// Reference to `xml_link` attribute.
  TfRef<String> get xmlLink => TfRef.attribute<String>(this, 'xml_link');
}
