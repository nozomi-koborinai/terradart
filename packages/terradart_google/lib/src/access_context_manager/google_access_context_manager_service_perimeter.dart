// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_service_perimeter`.
const Set<String> _googleAccessContextManagerServicePerimeterSensitive =
    <String>{};

/// Access Context Manager Service Perimeter Perimeter enum for `perimeter_type`.
enum AccessContextManagerServicePerimeterPerimeterType
    implements TerraformEnum {
  perimeterTypeRegular('PERIMETER_TYPE_REGULAR'),
  perimeterTypeBridge('PERIMETER_TYPE_BRIDGE');

  const AccessContextManagerServicePerimeterPerimeterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spec` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpec {
  const AccessContextManagerServicePerimeterSpec({
    this.accessLevels,
    this.resources,
    this.restrictedServices,
    this.egressPolicies,
    this.ingressPolicies,
    this.vpcAccessibleServices,
  });

  final TfArg<List<Object?>>? accessLevels;

  final TfArg<List<Object?>>? resources;

  final TfArg<List<Object?>>? restrictedServices;

  final List<AccessContextManagerServicePerimeterSpecEgressPolicies>?
  egressPolicies;

  final List<AccessContextManagerServicePerimeterSpecIngressPolicies>?
  ingressPolicies;

  final AccessContextManagerServicePerimeterSpecVpcAccessibleServices?
  vpcAccessibleServices;

  Map<String, Object?> encode() => {
    if (accessLevels != null) 'access_levels': accessLevels!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
    if (restrictedServices != null)
      'restricted_services': restrictedServices!.toTfJson(),
    if (egressPolicies != null)
      'egress_policies': [for (final e in egressPolicies!) e.encode()],
    if (ingressPolicies != null)
      'ingress_policies': [for (final e in ingressPolicies!) e.encode()],
    if (vpcAccessibleServices != null)
      'vpc_accessible_services': vpcAccessibleServices!.encode(),
  };
}

/// Typed helper for the `spec.egress_policies` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecEgressPolicies {
  const AccessContextManagerServicePerimeterSpecEgressPolicies({
    this.title,
    this.egressFrom,
    this.egressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFrom?
  egressFrom;

  final AccessContextManagerServicePerimeterSpecEgressPoliciesEgressTo?
  egressTo;

  Map<String, Object?> encode() => {
    if (title != null) 'title': title!.toTfJson(),
    if (egressFrom != null) 'egress_from': egressFrom!.encode(),
    if (egressTo != null) 'egress_to': egressTo!.encode(),
  };
}

/// Typed helper for the `spec.egress_policies.egress_from` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFrom {
  const AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  final TfArg<List<Object?>>? identities;

  final TfArg<
    AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFromIdentityType
  >?
  identityType;

  final TfArg<
    AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFromSourceRestriction
  >?
  sourceRestriction;

  final List<
    AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFromSources
  >?
  sources;

  Map<String, Object?> encode() => {
    if (identities != null) 'identities': identities!.toTfJson(),
    if (identityType != null) 'identity_type': identityType!.toTfJson(),
    if (sourceRestriction != null)
      'source_restriction': sourceRestriction!.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFromIdentityType
    implements TerraformEnum {
  identityTypeUnspecified('IDENTITY_TYPE_UNSPECIFIED'),
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFromIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `source_restriction` — derived from the provider schema description.
enum AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFromSourceRestriction
    implements TerraformEnum {
  sourceRestrictionUnspecified('SOURCE_RESTRICTION_UNSPECIFIED'),
  sourceRestrictionEnabled('SOURCE_RESTRICTION_ENABLED'),
  sourceRestrictionDisabled('SOURCE_RESTRICTION_DISABLED');

  const AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFromSourceRestriction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `spec.egress_policies.egress_from.sources` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFromSources {
  const AccessContextManagerServicePerimeterSpecEgressPoliciesEgressFromSources({
    this.accessLevel,
    this.resource,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  Map<String, Object?> encode() => {
    if (accessLevel != null) 'access_level': accessLevel!.toTfJson(),
    if (resource != null) 'resource': resource!.toTfJson(),
  };
}

/// Typed helper for the `spec.egress_policies.egress_to` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecEgressPoliciesEgressTo {
  const AccessContextManagerServicePerimeterSpecEgressPoliciesEgressTo({
    this.externalResources,
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<Object?>>? externalResources;

  final TfArg<List<Object?>>? resources;

  final TfArg<List<Object?>>? roles;

  final List<
    AccessContextManagerServicePerimeterSpecEgressPoliciesEgressToOperations
  >?
  operations;

  Map<String, Object?> encode() => {
    if (externalResources != null)
      'external_resources': externalResources!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
    if (roles != null) 'roles': roles!.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `spec.egress_policies.egress_to.operations` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecEgressPoliciesEgressToOperations {
  const AccessContextManagerServicePerimeterSpecEgressPoliciesEgressToOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimeterSpecEgressPoliciesEgressToOperationsMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `spec.egress_policies.egress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecEgressPoliciesEgressToOperationsMethodSelectors {
  const AccessContextManagerServicePerimeterSpecEgressPoliciesEgressToOperationsMethodSelectors({
    this.method,
    this.permission,
  });

  final TfArg<String>? method;

  final TfArg<String>? permission;

  Map<String, Object?> encode() => {
    if (method != null) 'method': method!.toTfJson(),
    if (permission != null) 'permission': permission!.toTfJson(),
  };
}

/// Typed helper for the `spec.ingress_policies` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecIngressPolicies {
  const AccessContextManagerServicePerimeterSpecIngressPolicies({
    this.title,
    this.ingressFrom,
    this.ingressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimeterSpecIngressPoliciesIngressFrom?
  ingressFrom;

  final AccessContextManagerServicePerimeterSpecIngressPoliciesIngressTo?
  ingressTo;

  Map<String, Object?> encode() => {
    if (title != null) 'title': title!.toTfJson(),
    if (ingressFrom != null) 'ingress_from': ingressFrom!.encode(),
    if (ingressTo != null) 'ingress_to': ingressTo!.encode(),
  };
}

/// Typed helper for the `spec.ingress_policies.ingress_from` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecIngressPoliciesIngressFrom {
  const AccessContextManagerServicePerimeterSpecIngressPoliciesIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  final TfArg<List<Object?>>? identities;

  final TfArg<
    AccessContextManagerServicePerimeterSpecIngressPoliciesIngressFromIdentityType
  >?
  identityType;

  final List<
    AccessContextManagerServicePerimeterSpecIngressPoliciesIngressFromSources
  >?
  sources;

  Map<String, Object?> encode() => {
    if (identities != null) 'identities': identities!.toTfJson(),
    if (identityType != null) 'identity_type': identityType!.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimeterSpecIngressPoliciesIngressFromIdentityType
    implements TerraformEnum {
  identityTypeUnspecified('IDENTITY_TYPE_UNSPECIFIED'),
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimeterSpecIngressPoliciesIngressFromIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `spec.ingress_policies.ingress_from.sources` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecIngressPoliciesIngressFromSources {
  const AccessContextManagerServicePerimeterSpecIngressPoliciesIngressFromSources({
    this.accessLevel,
    this.resource,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  Map<String, Object?> encode() => {
    if (accessLevel != null) 'access_level': accessLevel!.toTfJson(),
    if (resource != null) 'resource': resource!.toTfJson(),
  };
}

/// Typed helper for the `spec.ingress_policies.ingress_to` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecIngressPoliciesIngressTo {
  const AccessContextManagerServicePerimeterSpecIngressPoliciesIngressTo({
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<Object?>>? resources;

  final TfArg<List<Object?>>? roles;

  final List<
    AccessContextManagerServicePerimeterSpecIngressPoliciesIngressToOperations
  >?
  operations;

  Map<String, Object?> encode() => {
    if (resources != null) 'resources': resources!.toTfJson(),
    if (roles != null) 'roles': roles!.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `spec.ingress_policies.ingress_to.operations` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecIngressPoliciesIngressToOperations {
  const AccessContextManagerServicePerimeterSpecIngressPoliciesIngressToOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimeterSpecIngressPoliciesIngressToOperationsMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `spec.ingress_policies.ingress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecIngressPoliciesIngressToOperationsMethodSelectors {
  const AccessContextManagerServicePerimeterSpecIngressPoliciesIngressToOperationsMethodSelectors({
    this.method,
    this.permission,
  });

  final TfArg<String>? method;

  final TfArg<String>? permission;

  Map<String, Object?> encode() => {
    if (method != null) 'method': method!.toTfJson(),
    if (permission != null) 'permission': permission!.toTfJson(),
  };
}

/// Typed helper for the `spec.vpc_accessible_services` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterSpecVpcAccessibleServices {
  const AccessContextManagerServicePerimeterSpecVpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
  });

  final TfArg<List<Object?>>? allowedServices;

  final TfArg<bool>? enableRestriction;

  Map<String, Object?> encode() => {
    if (allowedServices != null)
      'allowed_services': allowedServices!.toTfJson(),
    if (enableRestriction != null)
      'enable_restriction': enableRestriction!.toTfJson(),
  };
}

/// Typed helper for the `status` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatus {
  const AccessContextManagerServicePerimeterStatus({
    this.accessLevels,
    this.resources,
    this.restrictedServices,
    this.egressPolicies,
    this.ingressPolicies,
    this.vpcAccessibleServices,
  });

  final TfArg<List<Object?>>? accessLevels;

  final TfArg<List<Object?>>? resources;

  final TfArg<List<Object?>>? restrictedServices;

  final List<AccessContextManagerServicePerimeterStatusEgressPolicies>?
  egressPolicies;

  final List<AccessContextManagerServicePerimeterStatusIngressPolicies>?
  ingressPolicies;

  final AccessContextManagerServicePerimeterStatusVpcAccessibleServices?
  vpcAccessibleServices;

  Map<String, Object?> encode() => {
    if (accessLevels != null) 'access_levels': accessLevels!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
    if (restrictedServices != null)
      'restricted_services': restrictedServices!.toTfJson(),
    if (egressPolicies != null)
      'egress_policies': [for (final e in egressPolicies!) e.encode()],
    if (ingressPolicies != null)
      'ingress_policies': [for (final e in ingressPolicies!) e.encode()],
    if (vpcAccessibleServices != null)
      'vpc_accessible_services': vpcAccessibleServices!.encode(),
  };
}

/// Typed helper for the `status.egress_policies` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusEgressPolicies {
  const AccessContextManagerServicePerimeterStatusEgressPolicies({
    this.title,
    this.egressFrom,
    this.egressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFrom?
  egressFrom;

  final AccessContextManagerServicePerimeterStatusEgressPoliciesEgressTo?
  egressTo;

  Map<String, Object?> encode() => {
    if (title != null) 'title': title!.toTfJson(),
    if (egressFrom != null) 'egress_from': egressFrom!.encode(),
    if (egressTo != null) 'egress_to': egressTo!.encode(),
  };
}

/// Typed helper for the `status.egress_policies.egress_from` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFrom {
  const AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  final TfArg<List<Object?>>? identities;

  final TfArg<
    AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFromIdentityType
  >?
  identityType;

  final TfArg<
    AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFromSourceRestriction
  >?
  sourceRestriction;

  final List<
    AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFromSources
  >?
  sources;

  Map<String, Object?> encode() => {
    if (identities != null) 'identities': identities!.toTfJson(),
    if (identityType != null) 'identity_type': identityType!.toTfJson(),
    if (sourceRestriction != null)
      'source_restriction': sourceRestriction!.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFromIdentityType
    implements TerraformEnum {
  identityTypeUnspecified('IDENTITY_TYPE_UNSPECIFIED'),
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFromIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `source_restriction` — derived from the provider schema description.
enum AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFromSourceRestriction
    implements TerraformEnum {
  sourceRestrictionUnspecified('SOURCE_RESTRICTION_UNSPECIFIED'),
  sourceRestrictionEnabled('SOURCE_RESTRICTION_ENABLED'),
  sourceRestrictionDisabled('SOURCE_RESTRICTION_DISABLED');

  const AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFromSourceRestriction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `status.egress_policies.egress_from.sources` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFromSources {
  const AccessContextManagerServicePerimeterStatusEgressPoliciesEgressFromSources({
    this.accessLevel,
    this.resource,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  Map<String, Object?> encode() => {
    if (accessLevel != null) 'access_level': accessLevel!.toTfJson(),
    if (resource != null) 'resource': resource!.toTfJson(),
  };
}

/// Typed helper for the `status.egress_policies.egress_to` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusEgressPoliciesEgressTo {
  const AccessContextManagerServicePerimeterStatusEgressPoliciesEgressTo({
    this.externalResources,
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<Object?>>? externalResources;

  final TfArg<List<Object?>>? resources;

  final TfArg<List<Object?>>? roles;

  final List<
    AccessContextManagerServicePerimeterStatusEgressPoliciesEgressToOperations
  >?
  operations;

  Map<String, Object?> encode() => {
    if (externalResources != null)
      'external_resources': externalResources!.toTfJson(),
    if (resources != null) 'resources': resources!.toTfJson(),
    if (roles != null) 'roles': roles!.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `status.egress_policies.egress_to.operations` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusEgressPoliciesEgressToOperations {
  const AccessContextManagerServicePerimeterStatusEgressPoliciesEgressToOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimeterStatusEgressPoliciesEgressToOperationsMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `status.egress_policies.egress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusEgressPoliciesEgressToOperationsMethodSelectors {
  const AccessContextManagerServicePerimeterStatusEgressPoliciesEgressToOperationsMethodSelectors({
    this.method,
    this.permission,
  });

  final TfArg<String>? method;

  final TfArg<String>? permission;

  Map<String, Object?> encode() => {
    if (method != null) 'method': method!.toTfJson(),
    if (permission != null) 'permission': permission!.toTfJson(),
  };
}

/// Typed helper for the `status.ingress_policies` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusIngressPolicies {
  const AccessContextManagerServicePerimeterStatusIngressPolicies({
    this.title,
    this.ingressFrom,
    this.ingressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimeterStatusIngressPoliciesIngressFrom?
  ingressFrom;

  final AccessContextManagerServicePerimeterStatusIngressPoliciesIngressTo?
  ingressTo;

  Map<String, Object?> encode() => {
    if (title != null) 'title': title!.toTfJson(),
    if (ingressFrom != null) 'ingress_from': ingressFrom!.encode(),
    if (ingressTo != null) 'ingress_to': ingressTo!.encode(),
  };
}

/// Typed helper for the `status.ingress_policies.ingress_from` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusIngressPoliciesIngressFrom {
  const AccessContextManagerServicePerimeterStatusIngressPoliciesIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  final TfArg<List<Object?>>? identities;

  final TfArg<
    AccessContextManagerServicePerimeterStatusIngressPoliciesIngressFromIdentityType
  >?
  identityType;

  final List<
    AccessContextManagerServicePerimeterStatusIngressPoliciesIngressFromSources
  >?
  sources;

  Map<String, Object?> encode() => {
    if (identities != null) 'identities': identities!.toTfJson(),
    if (identityType != null) 'identity_type': identityType!.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimeterStatusIngressPoliciesIngressFromIdentityType
    implements TerraformEnum {
  identityTypeUnspecified('IDENTITY_TYPE_UNSPECIFIED'),
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimeterStatusIngressPoliciesIngressFromIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `status.ingress_policies.ingress_from.sources` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusIngressPoliciesIngressFromSources {
  const AccessContextManagerServicePerimeterStatusIngressPoliciesIngressFromSources({
    this.accessLevel,
    this.resource,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  Map<String, Object?> encode() => {
    if (accessLevel != null) 'access_level': accessLevel!.toTfJson(),
    if (resource != null) 'resource': resource!.toTfJson(),
  };
}

/// Typed helper for the `status.ingress_policies.ingress_to` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusIngressPoliciesIngressTo {
  const AccessContextManagerServicePerimeterStatusIngressPoliciesIngressTo({
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<Object?>>? resources;

  final TfArg<List<Object?>>? roles;

  final List<
    AccessContextManagerServicePerimeterStatusIngressPoliciesIngressToOperations
  >?
  operations;

  Map<String, Object?> encode() => {
    if (resources != null) 'resources': resources!.toTfJson(),
    if (roles != null) 'roles': roles!.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `status.ingress_policies.ingress_to.operations` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusIngressPoliciesIngressToOperations {
  const AccessContextManagerServicePerimeterStatusIngressPoliciesIngressToOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimeterStatusIngressPoliciesIngressToOperationsMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `status.ingress_policies.ingress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusIngressPoliciesIngressToOperationsMethodSelectors {
  const AccessContextManagerServicePerimeterStatusIngressPoliciesIngressToOperationsMethodSelectors({
    this.method,
    this.permission,
  });

  final TfArg<String>? method;

  final TfArg<String>? permission;

  Map<String, Object?> encode() => {
    if (method != null) 'method': method!.toTfJson(),
    if (permission != null) 'permission': permission!.toTfJson(),
  };
}

/// Typed helper for the `status.vpc_accessible_services` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterStatusVpcAccessibleServices {
  const AccessContextManagerServicePerimeterStatusVpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
  });

  final TfArg<List<Object?>>? allowedServices;

  final TfArg<bool>? enableRestriction;

  Map<String, Object?> encode() => {
    if (allowedServices != null)
      'allowed_services': allowedServices!.toTfJson(),
    if (enableRestriction != null)
      'enable_restriction': enableRestriction!.toTfJson(),
  };
}

/// Factory wrapper for `google_access_context_manager_service_perimeter`.
///
/// ServicePerimeter describes a set of GCP resources which can freely import
/// and export data amongst themselves, but not export outside of the
/// ServicePerimeter. If a request with a source within this ServicePerimeter
/// has a target outside of the ServicePerimeter, the request will be blocked.
/// Otherwise the request is allowed. There are two types of Service Perimeter -
/// Regular and Bridge. Regular Service Perimeters cannot overlap, a single GCP
/// project can only belong to a single regular Service Perimeter. Service
/// Perimeter Bridges can contain only GCP projects as members, a single GCP
/// project may belong to multiple Service Perimeter Bridges.
final class GoogleAccessContextManagerServicePerimeter extends Resource {
  static const String tfType =
      'google_access_context_manager_service_perimeter';

  GoogleAccessContextManagerServicePerimeter({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> title,
    TfArg<String>? description,
    TfArg<AccessContextManagerServicePerimeterPerimeterType>? perimeterType,
    TfArg<bool>? useExplicitDryRunSpec,
    AccessContextManagerServicePerimeterSpec? spec,
    AccessContextManagerServicePerimeterStatus? status,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent': parent,
           'title': title,
           if (description != null) 'description': description,
           if (perimeterType != null) 'perimeter_type': perimeterType,
           if (useExplicitDryRunSpec != null)
             'use_explicit_dry_run_spec': useExplicitDryRunSpec,
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
           if (status != null) 'status': TfArg.literal(status.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerServicePerimeterSensitive;

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
