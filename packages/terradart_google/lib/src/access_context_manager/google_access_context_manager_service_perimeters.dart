// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_service_perimeters`.
const Set<String> _googleAccessContextManagerServicePerimetersSensitive =
    <String>{};

/// Typed helper for the `service_perimeters` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimeters {
  const AccessContextManagerServicePerimetersServicePerimeters({
    this.description,
    required this.name,
    this.perimeterType,
    required this.title,
    this.useExplicitDryRunSpec,
    this.spec,
    this.status,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final TfArg<
    AccessContextManagerServicePerimetersServicePerimetersPerimeterType
  >?
  perimeterType;

  final TfArg<String> title;

  final TfArg<bool>? useExplicitDryRunSpec;

  final AccessContextManagerServicePerimetersServicePerimetersSpec? spec;

  final AccessContextManagerServicePerimetersServicePerimetersStatus? status;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'perimeter_type': ?perimeterType?.toTfJson(),
    'title': title.toTfJson(),
    'use_explicit_dry_run_spec': ?useExplicitDryRunSpec?.toTfJson(),
    'spec': ?spec?.encode(),
    'status': ?status?.encode(),
  };
}

/// `perimeter_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimetersServicePerimetersPerimeterType
    implements TerraformEnum {
  perimeterTypeRegular('PERIMETER_TYPE_REGULAR'),
  perimeterTypeBridge('PERIMETER_TYPE_BRIDGE');

  const AccessContextManagerServicePerimetersServicePerimetersPerimeterType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `service_perimeters.spec` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpec {
  const AccessContextManagerServicePerimetersServicePerimetersSpec({
    this.accessLevels,
    this.resources,
    this.restrictedServices,
    this.egressPolicies,
    this.ingressPolicies,
    this.vpcAccessibleServices,
  });

  final TfArg<List<String>>? accessLevels;

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? restrictedServices;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersSpecEgressPolicies
  >?
  egressPolicies;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersSpecIngressPolicies
  >?
  ingressPolicies;

  final AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServices?
  vpcAccessibleServices;

  Map<String, Object?> encode() => {
    'access_levels': ?accessLevels?.toTfJson(),
    'resources': ?resources?.toTfJson(),
    'restricted_services': ?restrictedServices?.toTfJson(),
    if (egressPolicies != null)
      'egress_policies': [for (final e in egressPolicies!) e.encode()],
    if (ingressPolicies != null)
      'ingress_policies': [for (final e in ingressPolicies!) e.encode()],
    'vpc_accessible_services': ?vpcAccessibleServices?.encode(),
  };
}

/// Typed helper for the `service_perimeters.spec.egress_policies` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecEgressPolicies {
  const AccessContextManagerServicePerimetersServicePerimetersSpecEgressPolicies({
    this.title,
    this.egressFrom,
    this.egressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFrom?
  egressFrom;

  final AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressTo?
  egressTo;

  Map<String, Object?> encode() => {
    'title': ?title?.toTfJson(),
    'egress_from': ?egressFrom?.encode(),
    'egress_to': ?egressTo?.encode(),
  };
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_from` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFrom {
  const AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  final TfArg<List<String>>? identities;

  final TfArg<
    AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromIdentityType
  >?
  identityType;

  final TfArg<
    AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromSourceRestriction
  >?
  sourceRestriction;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromSources
  >?
  sources;

  Map<String, Object?> encode() => {
    'identities': ?identities?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    'source_restriction': ?sourceRestriction?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromIdentityType
    implements TerraformEnum {
  identityTypeUnspecified('IDENTITY_TYPE_UNSPECIFIED'),
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `source_restriction` — derived from the provider schema description.
enum AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromSourceRestriction
    implements TerraformEnum {
  sourceRestrictionUnspecified('SOURCE_RESTRICTION_UNSPECIFIED'),
  sourceRestrictionEnabled('SOURCE_RESTRICTION_ENABLED'),
  sourceRestrictionDisabled('SOURCE_RESTRICTION_DISABLED');

  const AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromSourceRestriction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_from.sources` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromSources {
  const AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromSources({
    this.accessLevel,
    this.resource,
    this.pscEndpoint,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  final AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromSourcesPscEndpoint?
  pscEndpoint;

  Map<String, Object?> encode() => {
    'access_level': ?accessLevel?.toTfJson(),
    'resource': ?resource?.toTfJson(),
    'psc_endpoint': ?pscEndpoint?.encode(),
  };
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_from.sources.psc_endpoint` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromSourcesPscEndpoint {
  const AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressFromSourcesPscEndpoint({
    this.forwardingRule,
  });

  final TfArg<String>? forwardingRule;

  Map<String, Object?> encode() => {
    'forwarding_rule': ?forwardingRule?.toTfJson(),
  };
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_to` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressTo {
  const AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressTo({
    this.externalResources,
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<String>>? externalResources;

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? roles;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressToOperations
  >?
  operations;

  Map<String, Object?> encode() => {
    'external_resources': ?externalResources?.toTfJson(),
    'resources': ?resources?.toTfJson(),
    'roles': ?roles?.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_to.operations` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressToOperations {
  const AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressToOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressToOperationsMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressToOperationsMethodSelectors {
  const AccessContextManagerServicePerimetersServicePerimetersSpecEgressPoliciesEgressToOperationsMethodSelectors({
    this.method,
    this.permission,
  });

  final TfArg<String>? method;

  final TfArg<String>? permission;

  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    'permission': ?permission?.toTfJson(),
  };
}

/// Typed helper for the `service_perimeters.spec.ingress_policies` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecIngressPolicies {
  const AccessContextManagerServicePerimetersServicePerimetersSpecIngressPolicies({
    this.title,
    this.ingressFrom,
    this.ingressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFrom?
  ingressFrom;

  final AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressTo?
  ingressTo;

  Map<String, Object?> encode() => {
    'title': ?title?.toTfJson(),
    'ingress_from': ?ingressFrom?.encode(),
    'ingress_to': ?ingressTo?.encode(),
  };
}

/// Typed helper for the `service_perimeters.spec.ingress_policies.ingress_from` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFrom {
  const AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  final TfArg<List<String>>? identities;

  final TfArg<
    AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFromIdentityType
  >?
  identityType;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFromSources
  >?
  sources;

  Map<String, Object?> encode() => {
    'identities': ?identities?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFromIdentityType
    implements TerraformEnum {
  identityTypeUnspecified('IDENTITY_TYPE_UNSPECIFIED'),
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFromIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `service_perimeters.spec.ingress_policies.ingress_from.sources` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFromSources {
  const AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFromSources({
    this.accessLevel,
    this.resource,
    this.pscEndpoint,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  final AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFromSourcesPscEndpoint?
  pscEndpoint;

  Map<String, Object?> encode() => {
    'access_level': ?accessLevel?.toTfJson(),
    'resource': ?resource?.toTfJson(),
    'psc_endpoint': ?pscEndpoint?.encode(),
  };
}

/// Typed helper for the `service_perimeters.spec.ingress_policies.ingress_from.sources.psc_endpoint` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFromSourcesPscEndpoint {
  const AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressFromSourcesPscEndpoint({
    this.forwardingRule,
  });

  final TfArg<String>? forwardingRule;

  Map<String, Object?> encode() => {
    'forwarding_rule': ?forwardingRule?.toTfJson(),
  };
}

/// Typed helper for the `service_perimeters.spec.ingress_policies.ingress_to` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressTo {
  const AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressTo({
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? roles;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressToOperations
  >?
  operations;

  Map<String, Object?> encode() => {
    'resources': ?resources?.toTfJson(),
    'roles': ?roles?.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.spec.ingress_policies.ingress_to.operations` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressToOperations {
  const AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressToOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressToOperationsMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.spec.ingress_policies.ingress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressToOperationsMethodSelectors {
  const AccessContextManagerServicePerimetersServicePerimetersSpecIngressPoliciesIngressToOperationsMethodSelectors({
    this.method,
    this.permission,
  });

  final TfArg<String>? method;

  final TfArg<String>? permission;

  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    'permission': ?permission?.toTfJson(),
  };
}

/// Typed helper for the `service_perimeters.spec.vpc_accessible_services` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServices {
  const AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
    this.servicePatternsEnforcementScopes,
    this.allowedServicePatterns,
  });

  final TfArg<List<String>>? allowedServices;

  final TfArg<bool>? enableRestriction;

  final TfArg<List<String>>? servicePatternsEnforcementScopes;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServicesAllowedServicePatterns
  >?
  allowedServicePatterns;

  Map<String, Object?> encode() => {
    'allowed_services': ?allowedServices?.toTfJson(),
    'enable_restriction': ?enableRestriction?.toTfJson(),
    'service_patterns_enforcement_scopes': ?servicePatternsEnforcementScopes
        ?.toTfJson(),
    if (allowedServicePatterns != null)
      'allowed_service_patterns': [
        for (final e in allowedServicePatterns!) e.encode(),
      ],
  };
}

/// Typed helper for the `service_perimeters.spec.vpc_accessible_services.allowed_service_patterns` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServicesAllowedServicePatterns {
  const AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServicesAllowedServicePatterns({
    this.pattern,
    this.service,
    this.modifiers,
  });

  final TfArg<String>? pattern;

  final TfArg<String>? service;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServicesAllowedServicePatternsModifiers
  >?
  modifiers;

  Map<String, Object?> encode() => {
    'pattern': ?pattern?.toTfJson(),
    'service': ?service?.toTfJson(),
    if (modifiers != null)
      'modifiers': [for (final e in modifiers!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.spec.vpc_accessible_services.allowed_service_patterns.modifiers` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServicesAllowedServicePatternsModifiers {
  const AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServicesAllowedServicePatternsModifiers({
    this.addRequestHeader,
  });

  final AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServicesAllowedServicePatternsModifiersAddRequestHeader?
  addRequestHeader;

  Map<String, Object?> encode() => {
    'add_request_header': ?addRequestHeader?.encode(),
  };
}

/// Typed helper for the `service_perimeters.spec.vpc_accessible_services.allowed_service_patterns.modifiers.add_request_header` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServicesAllowedServicePatternsModifiersAddRequestHeader {
  const AccessContextManagerServicePerimetersServicePerimetersSpecVpcAccessibleServicesAllowedServicePatternsModifiersAddRequestHeader({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `service_perimeters.status` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatus {
  const AccessContextManagerServicePerimetersServicePerimetersStatus({
    this.accessLevels,
    this.resources,
    this.restrictedServices,
    this.egressPolicies,
    this.ingressPolicies,
    this.vpcAccessibleServices,
  });

  final TfArg<List<String>>? accessLevels;

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? restrictedServices;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersStatusEgressPolicies
  >?
  egressPolicies;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersStatusIngressPolicies
  >?
  ingressPolicies;

  final AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServices?
  vpcAccessibleServices;

  Map<String, Object?> encode() => {
    'access_levels': ?accessLevels?.toTfJson(),
    'resources': ?resources?.toTfJson(),
    'restricted_services': ?restrictedServices?.toTfJson(),
    if (egressPolicies != null)
      'egress_policies': [for (final e in egressPolicies!) e.encode()],
    if (ingressPolicies != null)
      'ingress_policies': [for (final e in ingressPolicies!) e.encode()],
    'vpc_accessible_services': ?vpcAccessibleServices?.encode(),
  };
}

/// Typed helper for the `service_perimeters.status.egress_policies` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusEgressPolicies {
  const AccessContextManagerServicePerimetersServicePerimetersStatusEgressPolicies({
    this.title,
    this.egressFrom,
    this.egressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFrom?
  egressFrom;

  final AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressTo?
  egressTo;

  Map<String, Object?> encode() => {
    'title': ?title?.toTfJson(),
    'egress_from': ?egressFrom?.encode(),
    'egress_to': ?egressTo?.encode(),
  };
}

/// Typed helper for the `service_perimeters.status.egress_policies.egress_from` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFrom {
  const AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  final TfArg<List<String>>? identities;

  final TfArg<
    AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromIdentityType
  >?
  identityType;

  final TfArg<
    AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromSourceRestriction
  >?
  sourceRestriction;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromSources
  >?
  sources;

  Map<String, Object?> encode() => {
    'identities': ?identities?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    'source_restriction': ?sourceRestriction?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromIdentityType
    implements TerraformEnum {
  identityTypeUnspecified('IDENTITY_TYPE_UNSPECIFIED'),
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `source_restriction` — derived from the provider schema description.
enum AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromSourceRestriction
    implements TerraformEnum {
  sourceRestrictionUnspecified('SOURCE_RESTRICTION_UNSPECIFIED'),
  sourceRestrictionEnabled('SOURCE_RESTRICTION_ENABLED'),
  sourceRestrictionDisabled('SOURCE_RESTRICTION_DISABLED');

  const AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromSourceRestriction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `service_perimeters.status.egress_policies.egress_from.sources` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromSources {
  const AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromSources({
    this.accessLevel,
    this.resource,
    this.pscEndpoint,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  final AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromSourcesPscEndpoint?
  pscEndpoint;

  Map<String, Object?> encode() => {
    'access_level': ?accessLevel?.toTfJson(),
    'resource': ?resource?.toTfJson(),
    'psc_endpoint': ?pscEndpoint?.encode(),
  };
}

/// Typed helper for the `service_perimeters.status.egress_policies.egress_from.sources.psc_endpoint` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromSourcesPscEndpoint {
  const AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressFromSourcesPscEndpoint({
    this.forwardingRule,
  });

  final TfArg<String>? forwardingRule;

  Map<String, Object?> encode() => {
    'forwarding_rule': ?forwardingRule?.toTfJson(),
  };
}

/// Typed helper for the `service_perimeters.status.egress_policies.egress_to` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressTo {
  const AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressTo({
    this.externalResources,
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<String>>? externalResources;

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? roles;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressToOperations
  >?
  operations;

  Map<String, Object?> encode() => {
    'external_resources': ?externalResources?.toTfJson(),
    'resources': ?resources?.toTfJson(),
    'roles': ?roles?.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.status.egress_policies.egress_to.operations` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressToOperations {
  const AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressToOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressToOperationsMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.status.egress_policies.egress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressToOperationsMethodSelectors {
  const AccessContextManagerServicePerimetersServicePerimetersStatusEgressPoliciesEgressToOperationsMethodSelectors({
    this.method,
    this.permission,
  });

  final TfArg<String>? method;

  final TfArg<String>? permission;

  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    'permission': ?permission?.toTfJson(),
  };
}

/// Typed helper for the `service_perimeters.status.ingress_policies` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusIngressPolicies {
  const AccessContextManagerServicePerimetersServicePerimetersStatusIngressPolicies({
    this.title,
    this.ingressFrom,
    this.ingressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFrom?
  ingressFrom;

  final AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressTo?
  ingressTo;

  Map<String, Object?> encode() => {
    'title': ?title?.toTfJson(),
    'ingress_from': ?ingressFrom?.encode(),
    'ingress_to': ?ingressTo?.encode(),
  };
}

/// Typed helper for the `service_perimeters.status.ingress_policies.ingress_from` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFrom {
  const AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  final TfArg<List<String>>? identities;

  final TfArg<
    AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFromIdentityType
  >?
  identityType;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFromSources
  >?
  sources;

  Map<String, Object?> encode() => {
    'identities': ?identities?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFromIdentityType
    implements TerraformEnum {
  identityTypeUnspecified('IDENTITY_TYPE_UNSPECIFIED'),
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFromIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `service_perimeters.status.ingress_policies.ingress_from.sources` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFromSources {
  const AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFromSources({
    this.accessLevel,
    this.resource,
    this.pscEndpoint,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  final AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFromSourcesPscEndpoint?
  pscEndpoint;

  Map<String, Object?> encode() => {
    'access_level': ?accessLevel?.toTfJson(),
    'resource': ?resource?.toTfJson(),
    'psc_endpoint': ?pscEndpoint?.encode(),
  };
}

/// Typed helper for the `service_perimeters.status.ingress_policies.ingress_from.sources.psc_endpoint` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFromSourcesPscEndpoint {
  const AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressFromSourcesPscEndpoint({
    this.forwardingRule,
  });

  final TfArg<String>? forwardingRule;

  Map<String, Object?> encode() => {
    'forwarding_rule': ?forwardingRule?.toTfJson(),
  };
}

/// Typed helper for the `service_perimeters.status.ingress_policies.ingress_to` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressTo {
  const AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressTo({
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? roles;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressToOperations
  >?
  operations;

  Map<String, Object?> encode() => {
    'resources': ?resources?.toTfJson(),
    'roles': ?roles?.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.status.ingress_policies.ingress_to.operations` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressToOperations {
  const AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressToOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressToOperationsMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.status.ingress_policies.ingress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressToOperationsMethodSelectors {
  const AccessContextManagerServicePerimetersServicePerimetersStatusIngressPoliciesIngressToOperationsMethodSelectors({
    this.method,
    this.permission,
  });

  final TfArg<String>? method;

  final TfArg<String>? permission;

  Map<String, Object?> encode() => {
    'method': ?method?.toTfJson(),
    'permission': ?permission?.toTfJson(),
  };
}

/// Typed helper for the `service_perimeters.status.vpc_accessible_services` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServices {
  const AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
    this.servicePatternsEnforcementScopes,
    this.allowedServicePatterns,
  });

  final TfArg<List<String>>? allowedServices;

  final TfArg<bool>? enableRestriction;

  final TfArg<List<String>>? servicePatternsEnforcementScopes;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServicesAllowedServicePatterns
  >?
  allowedServicePatterns;

  Map<String, Object?> encode() => {
    'allowed_services': ?allowedServices?.toTfJson(),
    'enable_restriction': ?enableRestriction?.toTfJson(),
    'service_patterns_enforcement_scopes': ?servicePatternsEnforcementScopes
        ?.toTfJson(),
    if (allowedServicePatterns != null)
      'allowed_service_patterns': [
        for (final e in allowedServicePatterns!) e.encode(),
      ],
  };
}

/// Typed helper for the `service_perimeters.status.vpc_accessible_services.allowed_service_patterns` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServicesAllowedServicePatterns {
  const AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServicesAllowedServicePatterns({
    this.pattern,
    this.service,
    this.modifiers,
  });

  final TfArg<String>? pattern;

  final TfArg<String>? service;

  final List<
    AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServicesAllowedServicePatternsModifiers
  >?
  modifiers;

  Map<String, Object?> encode() => {
    'pattern': ?pattern?.toTfJson(),
    'service': ?service?.toTfJson(),
    if (modifiers != null)
      'modifiers': [for (final e in modifiers!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.status.vpc_accessible_services.allowed_service_patterns.modifiers` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServicesAllowedServicePatternsModifiers {
  const AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServicesAllowedServicePatternsModifiers({
    this.addRequestHeader,
  });

  final AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServicesAllowedServicePatternsModifiersAddRequestHeader?
  addRequestHeader;

  Map<String, Object?> encode() => {
    'add_request_header': ?addRequestHeader?.encode(),
  };
}

/// Typed helper for the `service_perimeters.status.vpc_accessible_services.allowed_service_patterns.modifiers.add_request_header` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServicesAllowedServicePatternsModifiersAddRequestHeader {
  const AccessContextManagerServicePerimetersServicePerimetersStatusVpcAccessibleServicesAllowedServicePatternsModifiersAddRequestHeader({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `google_access_context_manager_service_perimeters`.
///
/// Replace all existing Service Perimeters in an Access Policy with the Service
/// Perimeters provided. This is done atomically. This is a bulk edit of all
/// Service Perimeters and may override existing Service Perimeters created by
/// `google_access_context_manager_service_perimeter`, thus causing a permadiff
/// if used alongside `google_access_context_manager_service_perimeter` on the
/// same parent.
///
/// ACM service perimeters (bulk replace) — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleAccessContextManagerServicePerimeters extends Resource {
  static const String tfType =
      'google_access_context_manager_service_perimeters';

  GoogleAccessContextManagerServicePerimeters({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> parent,
    List<AccessContextManagerServicePerimetersServicePerimeters>?
    servicePerimeters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'parent': parent,
           if (servicePerimeters != null)
             'service_perimeters': TfArg.literal([
               for (final e in servicePerimeters) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerServicePerimetersSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerServicePerimeters>`.
  RefTo<GoogleAccessContextManagerServicePerimeters> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
