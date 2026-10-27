// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_subscription_template_deployment`.
const Set<String> _azurermSubscriptionTemplateDeploymentSensitive = <String>{};

/// Subscription Template Deployment Debug enum for `debug_level`.
extension type const SubscriptionTemplateDeploymentDebugLevel._(TfArg<String> _)
    implements TfArg<String> {
  SubscriptionTemplateDeploymentDebugLevel.variable(String name)
    : this._(TfArg.variable(name));
  SubscriptionTemplateDeploymentDebugLevel.expression(String template)
    : this._(TfArg.expression(template));
  const SubscriptionTemplateDeploymentDebugLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const none = SubscriptionTemplateDeploymentDebugLevel._(
    TfArgLiteral('none'),
  );
  static const requestcontent = SubscriptionTemplateDeploymentDebugLevel._(
    TfArgLiteral('requestContent'),
  );
  static const responsecontent = SubscriptionTemplateDeploymentDebugLevel._(
    TfArgLiteral('responseContent'),
  );
  static const requestcontentResponsecontent =
      SubscriptionTemplateDeploymentDebugLevel._(
        TfArgLiteral('requestContent, responseContent'),
      );

  static const List<SubscriptionTemplateDeploymentDebugLevel> values = [
    none,
    requestcontent,
    responsecontent,
    requestcontentResponsecontent,
  ];
}

/// Exactly one of `template_content`, `template_spec_version_id` on `azurerm_subscription_template_deployment`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.templateContent(...)`.
sealed class SubscriptionTemplateDeploymentTemplate {
  const SubscriptionTemplateDeploymentTemplate();

  /// Sets `template_content`.
  const factory SubscriptionTemplateDeploymentTemplate.templateContent(
    TfArg<String> templateContent,
  ) = SubscriptionTemplateDeploymentTemplateContent;

  /// Sets `template_spec_version_id`.
  const factory SubscriptionTemplateDeploymentTemplate.templateSpecVersionId(
    TfArg<String> templateSpecVersionId,
  ) = SubscriptionTemplateDeploymentTemplateSpecVersionId;

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

/// The [SubscriptionTemplateDeploymentTemplate.templateContent] choice: sets `template_content`.
final class SubscriptionTemplateDeploymentTemplateContent
    extends SubscriptionTemplateDeploymentTemplate {
  const SubscriptionTemplateDeploymentTemplateContent(this.templateContent);

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

/// The [SubscriptionTemplateDeploymentTemplate.templateSpecVersionId] choice: sets `template_spec_version_id`.
final class SubscriptionTemplateDeploymentTemplateSpecVersionId
    extends SubscriptionTemplateDeploymentTemplate {
  const SubscriptionTemplateDeploymentTemplateSpecVersionId(
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

/// Factory wrapper for `azurerm_subscription_template_deployment`.
final class AzurermSubscriptionTemplateDeployment extends Resource {
  static const String tfType = 'azurerm_subscription_template_deployment';

  AzurermSubscriptionTemplateDeployment(
    super.localName, {
    SubscriptionTemplateDeploymentDebugLevel? debugLevel,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? parametersContent,
    TfArg<Map<String, String>>? tags,
    required SubscriptionTemplateDeploymentTemplate template,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'debug_level': ?debugLevel,
           'location': location,
           'name': name,
           'parameters_content': ?parametersContent,
           'tags': ?tags,
           ...template.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSubscriptionTemplateDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSubscriptionTemplateDeployment>`.
  RefTo<AzurermSubscriptionTemplateDeployment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `output_content` attribute.
  TfRef<String> get outputContent =>
      TfRef.attribute<String>(this, 'output_content');

  /// Reference to `debug_level` attribute.
  TfRef<String> get debugLevel => TfRef.attribute<String>(this, 'debug_level');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parameters_content` attribute.
  TfRef<String> get parametersContent =>
      TfRef.attribute<String>(this, 'parameters_content');

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
