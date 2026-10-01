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
final class AccessContextManagerServicePerimeters {
  const AccessContextManagerServicePerimeters({
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

  final TfArg<AccessContextManagerServicePerimetersPerimeterType>?
  perimeterType;

  final TfArg<String> title;

  final TfArg<bool>? useExplicitDryRunSpec;

  final AccessContextManagerServicePerimetersSpec? spec;

  final AccessContextManagerServicePerimetersStatus? status;

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
enum AccessContextManagerServicePerimetersPerimeterType
    implements TerraformEnum {
  perimeterTypeRegular('PERIMETER_TYPE_REGULAR'),
  perimeterTypeBridge('PERIMETER_TYPE_BRIDGE');

  const AccessContextManagerServicePerimetersPerimeterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `service_perimeters.spec` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimetersSpec {
  const AccessContextManagerServicePerimetersSpec({
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

  final List<AccessContextManagerServicePerimetersEgressPolicies>?
  egressPolicies;

  final List<AccessContextManagerServicePerimetersIngressPolicies>?
  ingressPolicies;

  final AccessContextManagerServicePerimetersVpcAccessibleServices?
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
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersEgressPolicies {
  const AccessContextManagerServicePerimetersEgressPolicies({
    this.title,
    this.egressFrom,
    this.egressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimetersEgressFrom? egressFrom;

  final AccessContextManagerServicePerimetersEgressTo? egressTo;

  Map<String, Object?> encode() => {
    'title': ?title?.toTfJson(),
    'egress_from': ?egressFrom?.encode(),
    'egress_to': ?egressTo?.encode(),
  };
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_from` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersEgressFrom {
  const AccessContextManagerServicePerimetersEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  final TfArg<List<String>>? identities;

  final TfArg<AccessContextManagerServicePerimetersIdentityType>? identityType;

  final TfArg<AccessContextManagerServicePerimetersSourceRestriction>?
  sourceRestriction;

  final List<AccessContextManagerServicePerimetersSources>? sources;

  Map<String, Object?> encode() => {
    'identities': ?identities?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    'source_restriction': ?sourceRestriction?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimetersIdentityType
    implements TerraformEnum {
  identityTypeUnspecified('IDENTITY_TYPE_UNSPECIFIED'),
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimetersIdentityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `source_restriction` — derived from the provider schema description.
enum AccessContextManagerServicePerimetersSourceRestriction
    implements TerraformEnum {
  sourceRestrictionUnspecified('SOURCE_RESTRICTION_UNSPECIFIED'),
  sourceRestrictionEnabled('SOURCE_RESTRICTION_ENABLED'),
  sourceRestrictionDisabled('SOURCE_RESTRICTION_DISABLED');

  const AccessContextManagerServicePerimetersSourceRestriction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_from.sources` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersSources {
  const AccessContextManagerServicePerimetersSources({
    this.accessLevel,
    this.resource,
    this.pscEndpoint,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  final AccessContextManagerServicePerimetersPscEndpoint? pscEndpoint;

  Map<String, Object?> encode() => {
    'access_level': ?accessLevel?.toTfJson(),
    'resource': ?resource?.toTfJson(),
    'psc_endpoint': ?pscEndpoint?.encode(),
  };
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_from.sources.psc_endpoint` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersPscEndpoint {
  const AccessContextManagerServicePerimetersPscEndpoint({this.forwardingRule});

  final TfArg<String>? forwardingRule;

  Map<String, Object?> encode() => {
    'forwarding_rule': ?forwardingRule?.toTfJson(),
  };
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_to` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersEgressTo {
  const AccessContextManagerServicePerimetersEgressTo({
    this.externalResources,
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<String>>? externalResources;

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? roles;

  final List<AccessContextManagerServicePerimetersOperations>? operations;

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
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersOperations {
  const AccessContextManagerServicePerimetersOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<AccessContextManagerServicePerimetersMethodSelectors>?
  methodSelectors;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.spec.egress_policies.egress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersMethodSelectors {
  const AccessContextManagerServicePerimetersMethodSelectors({
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
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersIngressPolicies {
  const AccessContextManagerServicePerimetersIngressPolicies({
    this.title,
    this.ingressFrom,
    this.ingressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimetersIngressFrom? ingressFrom;

  final AccessContextManagerServicePerimetersIngressTo? ingressTo;

  Map<String, Object?> encode() => {
    'title': ?title?.toTfJson(),
    'ingress_from': ?ingressFrom?.encode(),
    'ingress_to': ?ingressTo?.encode(),
  };
}

/// Typed helper for the `service_perimeters.spec.ingress_policies.ingress_from` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersIngressFrom {
  const AccessContextManagerServicePerimetersIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  final TfArg<List<String>>? identities;

  final TfArg<AccessContextManagerServicePerimetersIdentityType>? identityType;

  final List<AccessContextManagerServicePerimetersSources>? sources;

  Map<String, Object?> encode() => {
    'identities': ?identities?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.spec.ingress_policies.ingress_to` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersIngressTo {
  const AccessContextManagerServicePerimetersIngressTo({
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? roles;

  final List<AccessContextManagerServicePerimetersOperations>? operations;

  Map<String, Object?> encode() => {
    'resources': ?resources?.toTfJson(),
    'roles': ?roles?.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.spec.vpc_accessible_services` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersVpcAccessibleServices {
  const AccessContextManagerServicePerimetersVpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
    this.servicePatternsEnforcementScopes,
    this.allowedServicePatterns,
  });

  final TfArg<List<String>>? allowedServices;

  final TfArg<bool>? enableRestriction;

  final TfArg<List<String>>? servicePatternsEnforcementScopes;

  final List<AccessContextManagerServicePerimetersAllowedServicePatterns>?
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
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersAllowedServicePatterns {
  const AccessContextManagerServicePerimetersAllowedServicePatterns({
    this.pattern,
    this.service,
    this.modifiers,
  });

  final TfArg<String>? pattern;

  final TfArg<String>? service;

  final List<AccessContextManagerServicePerimetersModifiers>? modifiers;

  Map<String, Object?> encode() => {
    'pattern': ?pattern?.toTfJson(),
    'service': ?service?.toTfJson(),
    if (modifiers != null)
      'modifiers': [for (final e in modifiers!) e.encode()],
  };
}

/// Typed helper for the `service_perimeters.spec.vpc_accessible_services.allowed_service_patterns.modifiers` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersModifiers {
  const AccessContextManagerServicePerimetersModifiers({this.addRequestHeader});

  final AccessContextManagerServicePerimetersAddRequestHeader? addRequestHeader;

  Map<String, Object?> encode() => {
    'add_request_header': ?addRequestHeader?.encode(),
  };
}

/// Typed helper for the `service_perimeters.spec.vpc_accessible_services.allowed_service_patterns.modifiers.add_request_header` block of
/// `google_access_context_manager_service_perimeters` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimetersAddRequestHeader {
  const AccessContextManagerServicePerimetersAddRequestHeader({
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
final class AccessContextManagerServicePerimetersStatus {
  const AccessContextManagerServicePerimetersStatus({
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

  final List<AccessContextManagerServicePerimetersEgressPolicies>?
  egressPolicies;

  final List<AccessContextManagerServicePerimetersIngressPolicies>?
  ingressPolicies;

  final AccessContextManagerServicePerimetersVpcAccessibleServices?
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

  GoogleAccessContextManagerServicePerimeters(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> parent,
    List<AccessContextManagerServicePerimeters>? servicePerimeters,
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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
