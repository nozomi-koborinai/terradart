// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_policy`.
const Set<String> _azurermApiManagementPolicySensitive = <String>{};

/// Exactly one of `xml_content`, `xml_link` on `azurerm_api_management_policy`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.xmlContent(...)`.
sealed class ApiManagementPolicyXml {
  const ApiManagementPolicyXml();

  /// Sets `xml_content`.
  const factory ApiManagementPolicyXml.xmlContent(TfArg<String> xmlContent) =
      ApiManagementPolicyXmlContent;

  /// Sets `xml_link`.
  const factory ApiManagementPolicyXml.xmlLink(TfArg<String> xmlLink) =
      ApiManagementPolicyXmlLink;

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

/// The [ApiManagementPolicyXml.xmlContent] choice: sets `xml_content`.
final class ApiManagementPolicyXmlContent extends ApiManagementPolicyXml {
  const ApiManagementPolicyXmlContent(this.xmlContent);

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

/// The [ApiManagementPolicyXml.xmlLink] choice: sets `xml_link`.
final class ApiManagementPolicyXmlLink extends ApiManagementPolicyXml {
  const ApiManagementPolicyXmlLink(this.xmlLink);

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

/// Factory wrapper for `azurerm_api_management_policy`.
final class AzurermApiManagementPolicy extends Resource {
  static const String tfType = 'azurerm_api_management_policy';

  AzurermApiManagementPolicy(
    super.localName, {
    required TfArg<String> apiManagementId,
    required ApiManagementPolicyXml xml,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'api_management_id': apiManagementId, ...xml.argMap},
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementPolicy>`.
  RefTo<AzurermApiManagementPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `api_management_id` attribute.
  TfRef<String> get apiManagementId =>
      TfRef.attribute<String>(this, 'api_management_id');

  /// Reference to `xml_content` attribute.
  TfRef<String> get xmlContent => TfRef.attribute<String>(this, 'xml_content');

  /// Reference to `xml_link` attribute.
  TfRef<String> get xmlLink => TfRef.attribute<String>(this, 'xml_link');
}
