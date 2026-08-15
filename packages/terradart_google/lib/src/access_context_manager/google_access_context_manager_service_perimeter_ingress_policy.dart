// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_service_perimeter_ingress_policy`.
const Set<String>
_googleAccessContextManagerServicePerimeterIngressPolicySensitive = <String>{};

/// Typed helper for the `ingress_from` block of
/// `google_access_context_manager_service_perimeter_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterIngressPolicyIngressFrom {
  const AccessContextManagerServicePerimeterIngressPolicyIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  final TfArg<List<Object?>>? identities;

  final TfArg<
    AccessContextManagerServicePerimeterIngressPolicyIngressFromIdentityType
  >?
  identityType;

  final List<
    AccessContextManagerServicePerimeterIngressPolicyIngressFromSources
  >?
  sources;

  Map<String, Object?> encode() => {
    if (identities != null) 'identities': identities!.toTfJson(),
    if (identityType != null) 'identity_type': identityType!.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimeterIngressPolicyIngressFromIdentityType
    implements TerraformEnum {
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimeterIngressPolicyIngressFromIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ingress_from.sources` block of
/// `google_access_context_manager_service_perimeter_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterIngressPolicyIngressFromSources {
  const AccessContextManagerServicePerimeterIngressPolicyIngressFromSources({
    this.accessLevel,
    this.resource,
    this.pscEndpoint,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  final AccessContextManagerServicePerimeterIngressPolicyIngressFromSourcesPscEndpoint?
  pscEndpoint;

  Map<String, Object?> encode() => {
    if (accessLevel != null) 'access_level': accessLevel!.toTfJson(),
    if (resource != null) 'resource': resource!.toTfJson(),
    if (pscEndpoint != null) 'psc_endpoint': pscEndpoint!.encode(),
  };
}

/// Typed helper for the `ingress_from.sources.psc_endpoint` block of
/// `google_access_context_manager_service_perimeter_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterIngressPolicyIngressFromSourcesPscEndpoint {
  const AccessContextManagerServicePerimeterIngressPolicyIngressFromSourcesPscEndpoint({
    this.forwardingRule,
  });

  final TfArg<String>? forwardingRule;

  Map<String, Object?> encode() => {
    if (forwardingRule != null) 'forwarding_rule': forwardingRule!.toTfJson(),
  };
}

/// Typed helper for the `ingress_to` block of
/// `google_access_context_manager_service_perimeter_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterIngressPolicyIngressTo {
  const AccessContextManagerServicePerimeterIngressPolicyIngressTo({
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<Object?>>? resources;

  final TfArg<List<Object?>>? roles;

  final List<
    AccessContextManagerServicePerimeterIngressPolicyIngressToOperations
  >?
  operations;

  Map<String, Object?> encode() => {
    if (resources != null) 'resources': resources!.toTfJson(),
    if (roles != null) 'roles': roles!.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `ingress_to.operations` block of
/// `google_access_context_manager_service_perimeter_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterIngressPolicyIngressToOperations {
  const AccessContextManagerServicePerimeterIngressPolicyIngressToOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimeterIngressPolicyIngressToOperationsMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    if (serviceName != null) 'service_name': serviceName!.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `ingress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeter_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterIngressPolicyIngressToOperationsMethodSelectors {
  const AccessContextManagerServicePerimeterIngressPolicyIngressToOperationsMethodSelectors({
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

/// Factory wrapper for `google_access_context_manager_service_perimeter_ingress_policy`.
///
/// Manage a single IngressPolicy in the status (enforced) configuration for a
/// service perimeter. IngressPolicies match requests based on ingressFrom and
/// ingressTo stanzas. For an ingress policy to match, both the ingressFrom and
/// ingressTo stanzas must be matched. If an IngressPolicy matches a request,
/// the request is allowed through the perimeter boundary from outside the
/// perimeter. For example, access from the internet can be allowed either based
/// on an AccessLevel or, for traffic hosted on Google Cloud, the project of the
/// source network. For access from private networks, using the project of the
/// hosting network is required. Individual ingress policies can be limited by
/// restricting which services and/ or actions they match using the ingressTo
/// field.
///
/// ~> **Note:** If this resource is used alongside a
/// `google_access_context_manager_service_perimeter` resource, the service
/// perimeter resource must have a `lifecycle` block with `ignore_changes =
/// [status[0].ingress_policies]` so they don't fight over which ingress rules
/// should be in the policy.
///
/// ACM perimeter ingress policy — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleAccessContextManagerServicePerimeterIngressPolicy
    extends Resource {
  static const String tfType =
      'google_access_context_manager_service_perimeter_ingress_policy';

  GoogleAccessContextManagerServicePerimeterIngressPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> perimeter,
    TfArg<String>? title,
    AccessContextManagerServicePerimeterIngressPolicyIngressFrom? ingressFrom,
    AccessContextManagerServicePerimeterIngressPolicyIngressTo? ingressTo,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'perimeter': perimeter,
           if (title != null) 'title': title,
           if (ingressFrom != null)
             'ingress_from': TfArg.literal(ingressFrom.encode()),
           if (ingressTo != null)
             'ingress_to': TfArg.literal(ingressTo.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerServicePerimeterIngressPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
