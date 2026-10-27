// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_resource_group_template_deployment`.
const Set<String> _azurermResourceGroupTemplateDeploymentSensitive = <String>{};

/// Resource Group Template Deployment Debug enum for `debug_level`.
extension type const ResourceGroupTemplateDeploymentDebugLevel._(
  TfArg<String> _
) implements TfArg<String> {
  ResourceGroupTemplateDeploymentDebugLevel.variable(String name)
    : this._(TfArg.variable(name));
  ResourceGroupTemplateDeploymentDebugLevel.expression(String template)
    : this._(TfArg.expression(template));
  const ResourceGroupTemplateDeploymentDebugLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const none = ResourceGroupTemplateDeploymentDebugLevel._(
    TfArgLiteral('none'),
  );
  static const requestcontent = ResourceGroupTemplateDeploymentDebugLevel._(
    TfArgLiteral('requestContent'),
  );
  static const responsecontent = ResourceGroupTemplateDeploymentDebugLevel._(
    TfArgLiteral('responseContent'),
  );
  static const requestcontentResponsecontent =
      ResourceGroupTemplateDeploymentDebugLevel._(
        TfArgLiteral('requestContent, responseContent'),
      );

  static const List<ResourceGroupTemplateDeploymentDebugLevel> values = [
    none,
    requestcontent,
    responsecontent,
    requestcontentResponsecontent,
  ];
}

/// Exactly one of `template_content`, `template_spec_version_id` on `azurerm_resource_group_template_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.templateContent(...)`.
sealed class ResourceGroupTemplateDeploymentTemplate {
  const ResourceGroupTemplateDeploymentTemplate();

  /// Sets `template_content`.
  const factory ResourceGroupTemplateDeploymentTemplate.templateContent(
    TfArg<String> templateContent,
  ) = ResourceGroupTemplateDeploymentTemplateContent;

  /// Sets `template_spec_version_id`.
  const factory ResourceGroupTemplateDeploymentTemplate.templateSpecVersionId(
    TfArg<String> templateSpecVersionId,
  ) = ResourceGroupTemplateDeploymentTemplateSpecVersionId;

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

/// The [ResourceGroupTemplateDeploymentTemplate.templateContent] choice: sets `template_content`.
final class ResourceGroupTemplateDeploymentTemplateContent
    extends ResourceGroupTemplateDeploymentTemplate {
  const ResourceGroupTemplateDeploymentTemplateContent(this.templateContent);

  final TfArg<String> templateContent;

  @internal
  @override
  String get blockKey => 'template_content';

  @internal
  @override
  Map<String, Object?> encode() => {
    'template_content': templateContent.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'template_content': templateContent,
  };
}

/// The [ResourceGroupTemplateDeploymentTemplate.templateSpecVersionId] choice: sets `template_spec_version_id`.
final class ResourceGroupTemplateDeploymentTemplateSpecVersionId
    extends ResourceGroupTemplateDeploymentTemplate {
  const ResourceGroupTemplateDeploymentTemplateSpecVersionId(
    this.templateSpecVersionId,
  );

  final TfArg<String> templateSpecVersionId;

  @internal
  @override
  String get blockKey => 'template_spec_version_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'template_spec_version_id': templateSpecVersionId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'template_spec_version_id': templateSpecVersionId,
  };
}

/// Factory wrapper for `azurerm_resource_group_template_deployment`.
final class AzurermResourceGroupTemplateDeployment extends Resource {
  static const String tfType = 'azurerm_resource_group_template_deployment';

  AzurermResourceGroupTemplateDeployment(
    super.localName, {
    ResourceGroupTemplateDeploymentDebugLevel? debugLevel,
    required TfArg<String> deploymentMode,
    required TfArg<String> name,
    TfArg<String>? parametersContent,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required ResourceGroupTemplateDeploymentTemplate template,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'debug_level': ?debugLevel,
           'deployment_mode': deploymentMode,
           'name': name,
           'parameters_content': ?parametersContent,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           ...template.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermResourceGroupTemplateDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourceGroupTemplateDeployment>`.
  RefTo<AzurermResourceGroupTemplateDeployment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `output_content` attribute.
  TfRef<String> get outputContent =>
      TfRef.attribute<String>(this, 'output_content');

  /// Reference to `debug_level` attribute.
  TfRef<String> get debugLevel => TfRef.attribute<String>(this, 'debug_level');

  /// Reference to `deployment_mode` attribute.
  TfRef<String> get deploymentMode =>
      TfRef.attribute<String>(this, 'deployment_mode');

  /// Reference to `parameters_content` attribute.
  TfRef<String> get parametersContent =>
      TfRef.attribute<String>(this, 'parameters_content');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `template_content` attribute.
  TfRef<String> get templateContent =>
      TfRef.attribute<String>(this, 'template_content');

  /// Reference to `template_spec_version_id` attribute.
  TfRef<String> get templateSpecVersionId =>
      TfRef.attribute<String>(this, 'template_spec_version_id');
}
