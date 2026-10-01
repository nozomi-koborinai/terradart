// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_management_organization_security_health_analytics_custom_module`.
const Set<String>
_googleSccManagementOrganizationSecurityHealthAnalyticsCustomModuleSensitive =
    <String>{};

/// Scc Management Organization Security Health Analytics Custom Module Enablement enum for `enablement_state`.
enum SccManagementOrganizationSecurityHealthAnalyticsCustomModuleEnablementState
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const SccManagementOrganizationSecurityHealthAnalyticsCustomModuleEnablementState(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `custom_config` block of
/// `google_scc_management_organization_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig {
  const SccManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig({
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
    SccManagementOrganizationSecurityHealthAnalyticsCustomModuleSeverity
  >
  severity;

  final SccManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomOutput?
  customOutput;

  final SccManagementOrganizationSecurityHealthAnalyticsCustomModulePredicate
  predicate;

  final SccManagementOrganizationSecurityHealthAnalyticsCustomModuleResourceSelector
  resourceSelector;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'recommendation': recommendation.toTfJson(),
    'severity': severity.toTfJson(),
    'custom_output': ?customOutput?.encode(),
    'predicate': predicate.encode(),
    'resource_selector': resourceSelector.encode(),
  };
}

/// `severity` — derived from the provider schema description.
enum SccManagementOrganizationSecurityHealthAnalyticsCustomModuleSeverity
    implements TerraformEnum {
  critical('CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW');

  const SccManagementOrganizationSecurityHealthAnalyticsCustomModuleSeverity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `custom_config.custom_output` block of
/// `google_scc_management_organization_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomOutput {
  const SccManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomOutput({
    this.properties,
  });

  final List<
    SccManagementOrganizationSecurityHealthAnalyticsCustomModuleProperties
  >?
  properties;

  Map<String, Object?> encode() => {
    if (properties != null)
      'properties': [for (final e in properties!) e.encode()],
  };
}

/// Typed helper for the `custom_config.custom_output.properties` block of
/// `google_scc_management_organization_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementOrganizationSecurityHealthAnalyticsCustomModuleProperties {
  const SccManagementOrganizationSecurityHealthAnalyticsCustomModuleProperties({
    this.name,
    this.valueExpression,
  });

  final TfArg<String>? name;

  final SccManagementOrganizationSecurityHealthAnalyticsCustomModuleValueExpression?
  valueExpression;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value_expression': ?valueExpression?.encode(),
  };
}

/// Typed helper for the `custom_config.custom_output.properties.value_expression` block of
/// `google_scc_management_organization_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementOrganizationSecurityHealthAnalyticsCustomModuleValueExpression {
  const SccManagementOrganizationSecurityHealthAnalyticsCustomModuleValueExpression({
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
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `custom_config.predicate` block of
/// `google_scc_management_organization_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementOrganizationSecurityHealthAnalyticsCustomModulePredicate {
  const SccManagementOrganizationSecurityHealthAnalyticsCustomModulePredicate({
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
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'location': ?location?.toTfJson(),
    'title': ?title?.toTfJson(),
  };
}

/// Typed helper for the `custom_config.resource_selector` block of
/// `google_scc_management_organization_security_health_analytics_custom_module` (derived from provider schema).
@immutable
final class SccManagementOrganizationSecurityHealthAnalyticsCustomModuleResourceSelector {
  const SccManagementOrganizationSecurityHealthAnalyticsCustomModuleResourceSelector({
    required this.resourceTypes,
  });

  final TfArg<List<String>> resourceTypes;

  Map<String, Object?> encode() => {'resource_types': resourceTypes.toTfJson()};
}

/// Factory wrapper for `google_scc_management_organization_security_health_analytics_custom_module`.
///
/// Represents an instance of a Security Health Analytics custom module,
/// including its full module name, display name, enablement state, and last
/// updated time. You can create a custom module at the organization, folder, or
/// project level. Custom modules that you create at the organization or folder
/// level are inherited by the child folders and projects.
///
/// SCC Management org SHA custom module — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleSccManagementOrganizationSecurityHealthAnalyticsCustomModule
    extends Resource {
  static const String tfType =
      'google_scc_management_organization_security_health_analytics_custom_module';

  GoogleSccManagementOrganizationSecurityHealthAnalyticsCustomModule({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<
      SccManagementOrganizationSecurityHealthAnalyticsCustomModuleEnablementState
    >?
    enablementState,
    TfArg<String>? location,
    required TfArg<String> organization,
    SccManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig?
    customConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'enablement_state': ?enablementState,
           'location': ?location,
           'organization': organization,
           if (customConfig != null)
             'custom_config': TfArg.literal(customConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccManagementOrganizationSecurityHealthAnalyticsCustomModuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccManagementOrganizationSecurityHealthAnalyticsCustomModule>`.
  RefTo<GoogleSccManagementOrganizationSecurityHealthAnalyticsCustomModule>
  get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ancestor_module` attribute.
  TfRef<String> get ancestorModule =>
      TfRef.attribute<String>(this, 'ancestor_module');

  /// Reference to `last_editor` attribute.
  TfRef<String> get lastEditor => TfRef.attribute<String>(this, 'last_editor');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `enablement_state` attribute.
  TfRef<String> get enablementState =>
      TfRef.attribute<String>(this, 'enablement_state');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');
}
