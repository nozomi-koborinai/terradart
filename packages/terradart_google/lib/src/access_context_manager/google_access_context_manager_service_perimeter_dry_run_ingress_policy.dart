// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../access_context_manager/google_access_context_manager_service_perimeter.dart'
    show GoogleAccessContextManagerServicePerimeter;

/// Sensitive field paths for `google_access_context_manager_service_perimeter_dry_run_ingress_policy`.
const Set<String>
_googleAccessContextManagerServicePerimeterDryRunIngressPolicySensitive =
    <String>{};

/// Typed helper for the `ingress_from` block of
/// `google_access_context_manager_service_perimeter_dry_run_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterDryRunIngressPolicyIngressFrom {
  const AccessContextManagerServicePerimeterDryRunIngressPolicyIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  final TfArg<List<String>>? identities;

  final TfArg<
    AccessContextManagerServicePerimeterDryRunIngressPolicyIdentityType
  >?
  identityType;

  final List<AccessContextManagerServicePerimeterDryRunIngressPolicySources>?
  sources;

  Map<String, Object?> encode() => {
    'identities': ?identities?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
enum AccessContextManagerServicePerimeterDryRunIngressPolicyIdentityType
    implements TerraformEnum {
  anyIdentity('ANY_IDENTITY'),
  anyUserAccount('ANY_USER_ACCOUNT'),
  anyServiceAccount('ANY_SERVICE_ACCOUNT');

  const AccessContextManagerServicePerimeterDryRunIngressPolicyIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `ingress_from.sources` block of
/// `google_access_context_manager_service_perimeter_dry_run_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterDryRunIngressPolicySources {
  const AccessContextManagerServicePerimeterDryRunIngressPolicySources({
    this.accessLevel,
    this.resource,
    this.pscEndpoint,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  final AccessContextManagerServicePerimeterDryRunIngressPolicyPscEndpoint?
  pscEndpoint;

  Map<String, Object?> encode() => {
    'access_level': ?accessLevel?.toTfJson(),
    'resource': ?resource?.toTfJson(),
    'psc_endpoint': ?pscEndpoint?.encode(),
  };
}

/// Typed helper for the `ingress_from.sources.psc_endpoint` block of
/// `google_access_context_manager_service_perimeter_dry_run_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterDryRunIngressPolicyPscEndpoint {
  const AccessContextManagerServicePerimeterDryRunIngressPolicyPscEndpoint({
    this.forwardingRule,
  });

  final TfArg<String>? forwardingRule;

  Map<String, Object?> encode() => {
    'forwarding_rule': ?forwardingRule?.toTfJson(),
  };
}

/// Typed helper for the `ingress_to` block of
/// `google_access_context_manager_service_perimeter_dry_run_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterDryRunIngressPolicyIngressTo {
  const AccessContextManagerServicePerimeterDryRunIngressPolicyIngressTo({
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? roles;

  final List<AccessContextManagerServicePerimeterDryRunIngressPolicyOperations>?
  operations;

  Map<String, Object?> encode() => {
    'resources': ?resources?.toTfJson(),
    'roles': ?roles?.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `ingress_to.operations` block of
/// `google_access_context_manager_service_perimeter_dry_run_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterDryRunIngressPolicyOperations {
  const AccessContextManagerServicePerimeterDryRunIngressPolicyOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<
    AccessContextManagerServicePerimeterDryRunIngressPolicyMethodSelectors
  >?
  methodSelectors;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `ingress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeter_dry_run_ingress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterDryRunIngressPolicyMethodSelectors {
  const AccessContextManagerServicePerimeterDryRunIngressPolicyMethodSelectors({
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

/// Factory wrapper for `google_access_context_manager_service_perimeter_dry_run_ingress_policy`.
///
/// Manage a single IngressPolicy in the spec (dry-run) configuration for a
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
/// [spec[0].ingress_policies]` so they don't fight over which ingress rules
/// should be in the policy.
///
/// ACM dry-run perimeter ingress policy — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleAccessContextManagerServicePerimeterDryRunIngressPolicy
    extends Resource {
  static const String tfType =
      'google_access_context_manager_service_perimeter_dry_run_ingress_policy';

  GoogleAccessContextManagerServicePerimeterDryRunIngressPolicy({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required RefTo<GoogleAccessContextManagerServicePerimeter> perimeter,
    TfArg<String>? title,
    AccessContextManagerServicePerimeterDryRunIngressPolicyIngressFrom?
    ingressFrom,
    AccessContextManagerServicePerimeterDryRunIngressPolicyIngressTo? ingressTo,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'perimeter': perimeter.encodeAs('name'),
           'title': ?title,
           if (ingressFrom != null)
             'ingress_from': TfArg.literal(ingressFrom.encode()),
           if (ingressTo != null)
             'ingress_to': TfArg.literal(ingressTo.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerServicePerimeterDryRunIngressPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerServicePerimeterDryRunIngressPolicy>`.
  RefTo<GoogleAccessContextManagerServicePerimeterDryRunIngressPolicy>
  get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `perimeter` attribute.
  TfRef<String> get perimeterRef => TfRef.attribute<String>(this, 'perimeter');

  /// Reference to `title` attribute.
  TfRef<String> get titleRef => TfRef.attribute<String>(this, 'title');
}
