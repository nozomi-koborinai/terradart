// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_management_project_security_health_analytics_custom_module`.
const Set<String>
_googleSccManagementProjectSecurityHealthAnalyticsCustomModuleSensitive =
    <String>{};

/// Scc Management Project Security Health Analytics Custom Module Enablement enum for `enablement_state`.
enum SccManagementProjectSecurityHealthAnalyticsCustomModuleEnablementState
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SccManagementProjectSecurityHealthAnalyticsCustomModuleEnablementState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `custom_config` block of
/// `google_scc_management_project_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig {
  const SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig({
    this.description,
    required this.recommendation,
    required this.severity,
    this.customOutput,
    required this.predicate,
    required this.resourceSelector,
  });

  final TfArg<String>? description;

  final TfArg<String> recommendation;

  final TfArg<
    SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigSeverity
  >
  severity;

  final SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput?
  customOutput;

  final SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicate
  predicate;

  final SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector
  resourceSelector;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    'recommendation': recommendation.toTfJson(),
    'severity': severity.toTfJson(),
    if (customOutput != null) 'custom_output': customOutput!.encode(),
    'predicate': predicate.encode(),
    'resource_selector': resourceSelector.encode(),
  };
}

/// `severity` — derived from the provider schema description.
enum SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigSeverity
    implements TerraformEnum {
  critical('CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW');

  const SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigSeverity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `custom_config.custom_output` block of
/// `google_scc_management_project_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput {
  const SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  final List<
    SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperties
  >?
  properties;

  Map<String, Object?> encode() => {
    if (properties != null)
      'properties': [for (final e in properties!) e.encode()],
  };
}

/// Typed helper for the `custom_config.custom_output.properties` block of
/// `google_scc_management_project_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperties {
  const SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperties({
    this.name,
    this.valueExpression,
  });

  final TfArg<String>? name;

  final SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertiesValueExpression?
  valueExpression;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (valueExpression != null) 'value_expression': valueExpression!.encode(),
  };
}

/// Typed helper for the `custom_config.custom_output.properties.value_expression` block of
/// `google_scc_management_project_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertiesValueExpression {
  const SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertiesValueExpression({
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
/// `google_scc_management_project_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicate {
  const SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigPredicate({
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
/// `google_scc_management_project_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector {
  const SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  final TfArg<List<Object?>> resourceTypes;

  Map<String, Object?> encode() => {'resource_types': resourceTypes.toTfJson()};
}

/// Factory wrapper for `google_scc_management_project_security_health_analytics_custom_module`.
///
/// Represents an instance of a Security Health Analytics custom module,
/// including its full module name, display name, enablement state, and last
/// updated time. You can create a custom module at the organization, folder, or
/// project level. Custom modules that you create at the organization or folder
/// level are inherited by the child folders and projects.
///
/// SCC Management project SHA custom module — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccManagementProjectSecurityHealthAnalyticsCustomModule
    extends Resource {
  static const String tfType =
      'google_scc_management_project_security_health_analytics_custom_module';

  GoogleSccManagementProjectSecurityHealthAnalyticsCustomModule({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<
      SccManagementProjectSecurityHealthAnalyticsCustomModuleEnablementState
    >?
    enablementState,
    TfArg<String>? location,
    TfArg<String>? project,
    SccManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig?
    customConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (enablementState != null) 'enablement_state': enablementState,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (customConfig != null)
             'custom_config': TfArg.literal(customConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccManagementProjectSecurityHealthAnalyticsCustomModuleSensitive;

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
