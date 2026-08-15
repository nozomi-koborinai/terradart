// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_management_folder_security_health_analytics_custom_module`.
const Set<String>
_googleSccManagementFolderSecurityHealthAnalyticsCustomModuleSensitive =
    <String>{};

/// Typed helper for the `custom_config` block of
/// `google_scc_management_folder_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig {
  const SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig({
    this.description,
    this.recommendation,
    this.severity,
    this.customOutput,
    this.predicate,
    this.resourceSelector,
  });

  final TfArg<String>? description;

  final TfArg<String>? recommendation;

  final TfArg<
    SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigSeverity
  >?
  severity;

  final SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput?
  customOutput;

  final SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicate?
  predicate;

  final SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector?
  resourceSelector;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (recommendation != null) 'recommendation': recommendation!.toTfJson(),
    if (severity != null) 'severity': severity!.toTfJson(),
    if (customOutput != null) 'custom_output': customOutput!.encode(),
    if (predicate != null) 'predicate': predicate!.encode(),
    if (resourceSelector != null)
      'resource_selector': resourceSelector!.encode(),
  };
}

/// `severity` — derived from the provider schema description.
enum SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigSeverity
    implements TerraformEnum {
  critical('CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW');

  const SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigSeverity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `custom_config.custom_output` block of
/// `google_scc_management_folder_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput {
  const SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  final List<
    SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperties
  >?
  properties;

  Map<String, Object?> encode() => {
    if (properties != null)
      'properties': [for (final e in properties!) e.encode()],
  };
}

/// Typed helper for the `custom_config.custom_output.properties` block of
/// `google_scc_management_folder_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperties {
  const SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperties({
    this.name,
    this.valueExpression,
  });

  final TfArg<String>? name;

  final SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertiesValueExpression?
  valueExpression;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (valueExpression != null) 'value_expression': valueExpression!.encode(),
  };
}

/// Typed helper for the `custom_config.custom_output.properties.value_expression` block of
/// `google_scc_management_folder_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertiesValueExpression {
  const SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertiesValueExpression({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `custom_config.predicate` block of
/// `google_scc_management_folder_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicate {
  const SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigPredicate({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String>? location;

  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'expression': expression.toTfJson(),
    if (location != null) 'location': location!.toTfJson(),
    if (title != null) 'title': title!.toTfJson(),
  };
}

/// Typed helper for the `custom_config.resource_selector` block of
/// `google_scc_management_folder_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector {
  const SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  final TfArg<List<Object?>> resourceTypes;

  Map<String, Object?> encode() => {'resource_types': resourceTypes.toTfJson()};
}

/// Factory wrapper for `google_scc_management_folder_security_health_analytics_custom_module`.
///
/// Represents an instance of a Security Health Analytics custom module,
/// including its full module name, display name, enablement state, and last
/// updated time. You can create a custom module at the organization, folder, or
/// project level. Custom modules that you create at the organization or folder
/// level are inherited by the child folders and projects.
///
/// SCC Management folder SHA custom module — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccManagementFolderSecurityHealthAnalyticsCustomModule
    extends Resource {
  static const String tfType =
      'google_scc_management_folder_security_health_analytics_custom_module';

  GoogleSccManagementFolderSecurityHealthAnalyticsCustomModule({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<String>? enablementState,
    required TfArg<String> folder,
    TfArg<String>? location,
    SccManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig?
    customConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (enablementState != null) 'enablement_state': enablementState,
           'folder': folder,
           if (location != null) 'location': location,
           if (customConfig != null)
             'custom_config': TfArg.literal(customConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccManagementFolderSecurityHealthAnalyticsCustomModuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ancestor_module` attribute.
  TfRef<String> get ancestorModule =>
      TfRef.attribute<String>(this, 'ancestor_module');

  /// Reference to `last_editor` attribute.
  TfRef<String> get lastEditor => TfRef.attribute<String>(this, 'last_editor');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
