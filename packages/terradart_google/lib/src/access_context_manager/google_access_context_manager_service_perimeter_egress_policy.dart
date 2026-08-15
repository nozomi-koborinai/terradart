// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_service_perimeter_egress_policy`.
const Set<String>
_googleAccessContextManagerServicePerimeterEgressPolicySensitive = <String>{};

/// Typed helper for the `egress_from` block of
/// `google_access_context_manager_service_perimeter_egress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterEgressPolicyEgressFrom {
  const AccessContextManagerServicePerimeterEgressPolicyEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  final TfArg<List<Object?>>? identities;

  final TfArg<
    AccessContextManagerServicePerimeterEgressPolicyEgressFromIdentityType
  >?
  identityType;

  final TfArg<
    AccessContextManagerServicePerimeterEgressPolicyEgressFromSourceRestriction
  >?
  sourceRestriction;

  final List<AccessContextManagerServicePerimeterEgressPolicyEgressFromSources>?
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
enum AccessContextManagerServicePerimeterEgressPolicyEgressFromIdentityType
    implements TerraformEnum {
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimeterEgressPolicyEgressFromIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `source_restriction` — derived from the provider schema description.
enum AccessContextManagerServicePerimeterEgressPolicyEgressFromSourceRestriction
    implements TerraformEnum {
  sourceRestrictionUnspecified('SOURCE_RESTRICTION_UNSPECIFIED'),
  sourceRestrictionEnabled('SOURCE_RESTRICTION_ENABLED'),
  sourceRestrictionDisabled('SOURCE_RESTRICTION_DISABLED');

  const AccessContextManagerServicePerimeterEgressPolicyEgressFromSourceRestriction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `egress_from.sources` block of
/// `google_access_context_manager_service_perimeter_egress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterEgressPolicyEgressFromSources {
  const AccessContextManagerServicePerimeterEgressPolicyEgressFromSources({
    this.accessLevel,
    this.resource,
    this.pscEndpoint,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  final AccessContextManagerServicePerimeterEgressPolicyEgressFromSourcesPscEndpoint?
  pscEndpoint;

  Map<String, Object?> encode() => {
    if (accessLevel != null) 'access_level': accessLevel!.toTfJson(),
    if (resource != null) 'resource': resource!.toTfJson(),
    if (pscEndpoint != null) 'psc_endpoint': pscEndpoint!.encode(),
  };
}

/// Typed helper for the `egress_from.sources.psc_endpoint` block of
/// `google_access_context_manager_service_perimeter_egress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterEgressPolicyEgressFromSourcesPscEndpoint {
  const AccessContextManagerServicePerimeterEgressPolicyEgressFromSourcesPscEndpoint({
    this.forwardingRule,
  });

  final TfArg<String>? forwardingRule;

  Map<String, Object?> encode() => {
    if (forwardingRule != null) 'forwarding_rule': forwardingRule!.toTfJson(),
  };
}

/// Typed helper for the `egress_to` block of
/// `google_access_context_manager_service_perimeter_egress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterEgressPolicyEgressTo {
  const AccessContextManagerServicePerimeterEgressPolicyEgressTo({
    this.externalResources,
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<Object?>>? externalResources;

  final TfArg<List<Object?>>? resources;

  final TfArg<List<Object?>>? roles;

  final List<
    AccessContextManagerServicePerimeterEgressPolicyEgressToOperations
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

/// Typed helper for the `egress_to.operations` block of
/// `google_access_context_manager_service_perimeter_egress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterEgressPolicyEgressToOperations {
  const AccessContextManagerServicePerimeterEgressPolicyEgressToOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimeterEgressPolicyEgressToOperationsMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `egress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeter_egress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterEgressPolicyEgressToOperationsMethodSelectors {
  const AccessContextManagerServicePerimeterEgressPolicyEgressToOperationsMethodSelectors({
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

/// Factory wrapper for `google_access_context_manager_service_perimeter_egress_policy`.
///
/// Manage a single EgressPolicy in the status (enforced) configuration for a
/// service perimeter. EgressPolicies match requests based on egressFrom and
/// egressTo stanzas. For an EgressPolicy to match, both egressFrom and egressTo
/// stanzas must be matched. If an EgressPolicy matches a request, the request
/// is allowed to span the ServicePerimeter boundary. For example, an
/// EgressPolicy can be used to allow VMs on networks within the
/// ServicePerimeter to access a defined set of projects outside the perimeter
/// in certain contexts (e.g. to read data from a Cloud Storage bucket or query
/// against a BigQuery dataset).
///
/// ~> **Note:** If this resource is used alongside a
/// `google_access_context_manager_service_perimeter` resource, the service
/// perimeter resource must have a `lifecycle` block with `ignore_changes =
/// [status[0].egress_policies]` so they don't fight over which egress rules
/// should be in the policy.
///
/// ACM perimeter egress policy — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleAccessContextManagerServicePerimeterEgressPolicy
    extends Resource {
  static const String tfType =
      'google_access_context_manager_service_perimeter_egress_policy';

  GoogleAccessContextManagerServicePerimeterEgressPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> perimeter,
    TfArg<String>? title,
    AccessContextManagerServicePerimeterEgressPolicyEgressFrom? egressFrom,
    AccessContextManagerServicePerimeterEgressPolicyEgressTo? egressTo,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'perimeter': perimeter,
           if (title != null) 'title': title,
           if (egressFrom != null)
             'egress_from': TfArg.literal(egressFrom.encode()),
           if (egressTo != null) 'egress_to': TfArg.literal(egressTo.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerServicePerimeterEgressPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
