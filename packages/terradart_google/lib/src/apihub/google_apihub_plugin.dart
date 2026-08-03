// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apihub_plugin`.
const Set<String> _googleApihubPluginSensitive = <String>{};

/// Typed helper for the `actions_config` block of
/// `google_apihub_plugin` (derived from provider schema).
@immutable
final class ApihubPluginActionsConfig {
  const ApihubPluginActionsConfig({
    required this.description,
    required this.displayName,
    required this.id,
    required this.triggerMode,
  });

  final TfArg<String> description;

  final TfArg<String> displayName;

  final TfArg<String> id;

  final TfArg<String> triggerMode;

  Map<String, Object?> encode() => {
    'description': description.toTfJson(),
    'display_name': displayName.toTfJson(),
    'id': id.toTfJson(),
    'trigger_mode': triggerMode.toTfJson(),
  };
}

/// Typed helper for the `config_template` block of
/// `google_apihub_plugin` (derived from provider schema).
@immutable
final class ApihubPluginConfigTemplate {
  const ApihubPluginConfigTemplate({
    this.additionalConfigTemplate,
    this.authConfigTemplate,
  });

  final List<ApihubPluginConfigTemplateAdditionalConfigTemplate>?
  additionalConfigTemplate;

  final ApihubPluginConfigTemplateAuthConfigTemplate? authConfigTemplate;

  Map<String, Object?> encode() => {
    if (additionalConfigTemplate != null)
      'additional_config_template': [
        for (final e in additionalConfigTemplate!) e.encode(),
      ],
    if (authConfigTemplate != null)
      'auth_config_template': authConfigTemplate!.encode(),
  };
}

/// Typed helper for the `config_template.additional_config_template` block of
/// `google_apihub_plugin` (derived from provider schema).
@immutable
final class ApihubPluginConfigTemplateAdditionalConfigTemplate {
  const ApihubPluginConfigTemplateAdditionalConfigTemplate({
    this.description,
    required this.id,
    this.required,
    this.validationRegex,
    required this.valueType,
    this.enumOptions,
    this.multiSelectOptions,
  });

  final TfArg<String>? description;

  final TfArg<String> id;

  final TfArg<bool>? required;

  final TfArg<String>? validationRegex;

  final TfArg<String> valueType;

  final List<ApihubPluginConfigTemplateAdditionalConfigTemplateEnumOptions>?
  enumOptions;

  final List<
    ApihubPluginConfigTemplateAdditionalConfigTemplateMultiSelectOptions
  >?
  multiSelectOptions;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'id': id.toTfJson(),
    if (required != null) 'required': required!.toTfJson(),
    if (validationRegex != null)
      'validation_regex': validationRegex!.toTfJson(),
    'value_type': valueType.toTfJson(),
    if (enumOptions != null)
      'enum_options': [for (final e in enumOptions!) e.encode()],
    if (multiSelectOptions != null)
      'multi_select_options': [for (final e in multiSelectOptions!) e.encode()],
  };
}

/// Typed helper for the `config_template.additional_config_template.enum_options` block of
/// `google_apihub_plugin` (derived from provider schema).
@immutable
final class ApihubPluginConfigTemplateAdditionalConfigTemplateEnumOptions {
  const ApihubPluginConfigTemplateAdditionalConfigTemplateEnumOptions({
    this.description,
    required this.displayName,
    required this.id,
  });

  final TfArg<String>? description;

  final TfArg<String> displayName;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'display_name': displayName.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `config_template.additional_config_template.multi_select_options` block of
/// `google_apihub_plugin` (derived from provider schema).
@immutable
final class ApihubPluginConfigTemplateAdditionalConfigTemplateMultiSelectOptions {
  const ApihubPluginConfigTemplateAdditionalConfigTemplateMultiSelectOptions({
    this.description,
    required this.displayName,
    required this.id,
  });

  final TfArg<String>? description;

  final TfArg<String> displayName;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'display_name': displayName.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Typed helper for the `config_template.auth_config_template` block of
/// `google_apihub_plugin` (derived from provider schema).
@immutable
final class ApihubPluginConfigTemplateAuthConfigTemplate {
  const ApihubPluginConfigTemplateAuthConfigTemplate({
    required this.supportedAuthTypes,
    this.serviceAccount,
  });

  final TfArg<List<Object?>> supportedAuthTypes;

  final ApihubPluginConfigTemplateAuthConfigTemplateServiceAccount?
  serviceAccount;

  Map<String, Object?> encode() => {
    'supported_auth_types': supportedAuthTypes.toTfJson(),
    if (serviceAccount != null) 'service_account': serviceAccount!.encode(),
  };
}

/// Typed helper for the `config_template.auth_config_template.service_account` block of
/// `google_apihub_plugin` (derived from provider schema).
@immutable
final class ApihubPluginConfigTemplateAuthConfigTemplateServiceAccount {
  const ApihubPluginConfigTemplateAuthConfigTemplateServiceAccount({
    required this.serviceAccount,
  });

  final TfArg<String> serviceAccount;

  Map<String, Object?> encode() => {
    'service_account': serviceAccount.toTfJson(),
  };
}

/// Typed helper for the `documentation` block of
/// `google_apihub_plugin` (derived from provider schema).
@immutable
final class ApihubPluginDocumentation {
  const ApihubPluginDocumentation({this.externalUri});

  final TfArg<String>? externalUri;

  Map<String, Object?> encode() => {
    if (externalUri != null) 'external_uri': externalUri!.toTfJson(),
  };
}

/// Typed helper for the `hosting_service` block of
/// `google_apihub_plugin` (derived from provider schema).
@immutable
final class ApihubPluginHostingService {
  const ApihubPluginHostingService({this.serviceUri});

  final TfArg<String>? serviceUri;

  Map<String, Object?> encode() => {
    if (serviceUri != null) 'service_uri': serviceUri!.toTfJson(),
  };
}

/// Factory wrapper for `google_apihub_plugin`.
///
/// A plugin resource in the API hub.
///
/// API Hub **plugin** — defines a catalog plugin (actions, config
/// template, hosting service, documentation).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU after MCP
/// lookup (`list_services` API Hub → empty; Apigee `1C2D-8C78-EC58`
/// `list_skus` keyword Hub → 0). billing-behavior: plugin definition
/// metadata — no existence/hourly charge observed. Requires API Hub
/// host scaffolding ([GoogleApihubApiHubInstance] is never_apply);
/// not standalone-project applyable on `terradart-validate`. **Never**
/// wire into apply-smoke.
final class GoogleApihubPlugin extends Resource {
  static const String tfType = 'google_apihub_plugin';

  GoogleApihubPlugin({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> pluginId,
    required TfArg<String> displayName,
    TfArg<String>? description,
    TfArg<String>? pluginCategory,
    List<ApihubPluginActionsConfig>? actionsConfig,
    ApihubPluginConfigTemplate? configTemplate,
    ApihubPluginDocumentation? documentation,
    ApihubPluginHostingService? hostingService,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'plugin_id': pluginId,
           'display_name': displayName,
           if (description != null) 'description': description,
           if (pluginCategory != null) 'plugin_category': pluginCategory,
           if (actionsConfig != null)
             'actions_config': TfArg.literal([
               for (final e in actionsConfig) e.encode(),
             ]),
           if (configTemplate != null)
             'config_template': TfArg.literal(configTemplate.encode()),
           if (documentation != null)
             'documentation': TfArg.literal(documentation.encode()),
           if (hostingService != null)
             'hosting_service': TfArg.literal(hostingService.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApihubPluginSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `ownership_type` attribute.
  TfRef<String> get ownershipType =>
      TfRef.attribute<String>(this, 'ownership_type');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
