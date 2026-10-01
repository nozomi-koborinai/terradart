// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../access_context_manager/google_access_context_manager_service_perimeter.dart'
    show GoogleAccessContextManagerServicePerimeter;

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

  final TfArg<List<String>>? identities;

  final AccessContextManagerServicePerimeterEgressPolicyIdentityType?
  identityType;

  final AccessContextManagerServicePerimeterEgressPolicySourceRestriction?
  sourceRestriction;

  final List<AccessContextManagerServicePerimeterEgressPolicySources>? sources;

  Map<String, Object?> encode() => {
    'identities': ?identities?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    'source_restriction': ?sourceRestriction?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
extension type const AccessContextManagerServicePerimeterEgressPolicyIdentityType._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerServicePerimeterEgressPolicyIdentityType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AccessContextManagerServicePerimeterEgressPolicyIdentityType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AccessContextManagerServicePerimeterEgressPolicyIdentityType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const anyIdentity =
      AccessContextManagerServicePerimeterEgressPolicyIdentityType._(
        TfArgLiteral('ANY_IDENTITY'),
      );
  static const anyUserAccount =
      AccessContextManagerServicePerimeterEgressPolicyIdentityType._(
        TfArgLiteral('ANY_USER_ACCOUNT'),
      );
  static const anyServiceAccount =
      AccessContextManagerServicePerimeterEgressPolicyIdentityType._(
        TfArgLiteral('ANY_SERVICE_ACCOUNT'),
      );

  static const List<
    AccessContextManagerServicePerimeterEgressPolicyIdentityType
  >
  values = [anyIdentity, anyUserAccount, anyServiceAccount];
}

/// `source_restriction` — derived from the provider schema description.
extension type const AccessContextManagerServicePerimeterEgressPolicySourceRestriction._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerServicePerimeterEgressPolicySourceRestriction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  AccessContextManagerServicePerimeterEgressPolicySourceRestriction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AccessContextManagerServicePerimeterEgressPolicySourceRestriction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const sourceRestrictionUnspecified =
      AccessContextManagerServicePerimeterEgressPolicySourceRestriction._(
        TfArgLiteral('SOURCE_RESTRICTION_UNSPECIFIED'),
      );
  static const sourceRestrictionEnabled =
      AccessContextManagerServicePerimeterEgressPolicySourceRestriction._(
        TfArgLiteral('SOURCE_RESTRICTION_ENABLED'),
      );
  static const sourceRestrictionDisabled =
      AccessContextManagerServicePerimeterEgressPolicySourceRestriction._(
        TfArgLiteral('SOURCE_RESTRICTION_DISABLED'),
      );

  static const List<
    AccessContextManagerServicePerimeterEgressPolicySourceRestriction
  >
  values = [
    sourceRestrictionUnspecified,
    sourceRestrictionEnabled,
    sourceRestrictionDisabled,
  ];
}

/// Typed helper for the `egress_from.sources` block of
/// `google_access_context_manager_service_perimeter_egress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterEgressPolicySources {
  const AccessContextManagerServicePerimeterEgressPolicySources({
    this.accessLevel,
    this.resource,
    this.pscEndpoint,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  final AccessContextManagerServicePerimeterEgressPolicyPscEndpoint?
  pscEndpoint;

  Map<String, Object?> encode() => {
    'access_level': ?accessLevel?.toTfJson(),
    'resource': ?resource?.toTfJson(),
    'psc_endpoint': ?pscEndpoint?.encode(),
  };
}

/// Typed helper for the `egress_from.sources.psc_endpoint` block of
/// `google_access_context_manager_service_perimeter_egress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterEgressPolicyPscEndpoint {
  const AccessContextManagerServicePerimeterEgressPolicyPscEndpoint({
    this.forwardingRule,
  });

  final TfArg<String>? forwardingRule;

  Map<String, Object?> encode() => {
    'forwarding_rule': ?forwardingRule?.toTfJson(),
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

  final TfArg<List<String>>? externalResources;

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? roles;

  final List<AccessContextManagerServicePerimeterEgressPolicyOperations>?
  operations;

  Map<String, Object?> encode() => {
    'external_resources': ?externalResources?.toTfJson(),
    'resources': ?resources?.toTfJson(),
    'roles': ?roles?.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `egress_to.operations` block of
/// `google_access_context_manager_service_perimeter_egress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterEgressPolicyOperations {
  const AccessContextManagerServicePerimeterEgressPolicyOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<AccessContextManagerServicePerimeterEgressPolicyMethodSelectors>?
  methodSelectors;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `egress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeter_egress_policy` (derived from provider schema).
@immutable
final class AccessContextManagerServicePerimeterEgressPolicyMethodSelectors {
  const AccessContextManagerServicePerimeterEgressPolicyMethodSelectors({
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

  GoogleAccessContextManagerServicePerimeterEgressPolicy(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required RefTo<GoogleAccessContextManagerServicePerimeter> perimeter,
    TfArg<String>? title,
    AccessContextManagerServicePerimeterEgressPolicyEgressFrom? egressFrom,
    AccessContextManagerServicePerimeterEgressPolicyEgressTo? egressTo,
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
           if (egressFrom != null)
             'egress_from': TfArg.literal(egressFrom.encode()),
           if (egressTo != null) 'egress_to': TfArg.literal(egressTo.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerServicePerimeterEgressPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerServicePerimeterEgressPolicy>`.
  RefTo<GoogleAccessContextManagerServicePerimeterEgressPolicy> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_policy_id` attribute.
  TfRef<String> get accessPolicyId =>
      TfRef.attribute<String>(this, 'access_policy_id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `perimeter` attribute.
  TfRef<String> get perimeter => TfRef.attribute<String>(this, 'perimeter');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');
}
