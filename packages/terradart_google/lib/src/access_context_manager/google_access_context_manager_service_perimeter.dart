// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_service_perimeter`.
const Set<String> _googleAccessContextManagerServicePerimeterSensitive =
    <String>{};

/// Access Context Manager Service Perimeter enum for `perimeter_type`.
extension type const AccessContextManagerServicePerimeterType._(TfArg<String> _)
    implements TfArg<String> {
  AccessContextManagerServicePerimeterType.variable(String name)
    : this._(TfArg.variable(name));
  AccessContextManagerServicePerimeterType.expression(String template)
    : this._(TfArg.expression(template));
  const AccessContextManagerServicePerimeterType.arg(TfArg<String> arg)
    : this._(arg);

  static const perimeterTypeRegular =
      AccessContextManagerServicePerimeterType._(
        TfArgLiteral('PERIMETER_TYPE_REGULAR'),
      );
  static const perimeterTypeBridge = AccessContextManagerServicePerimeterType._(
    TfArgLiteral('PERIMETER_TYPE_BRIDGE'),
  );

  static const List<AccessContextManagerServicePerimeterType> values = [
    perimeterTypeRegular,
    perimeterTypeBridge,
  ];
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

  final TfArg<List<String>>? accessLevels;

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? restrictedServices;

  final List<AccessContextManagerServicePerimeterEgressPolicies>?
  egressPolicies;

  final List<AccessContextManagerServicePerimeterIngressPolicies>?
  ingressPolicies;

  final AccessContextManagerServicePerimeterVpcAccessibleServices?
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

/// Typed helper for the `spec.egress_policies` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterEgressPolicies {
  const AccessContextManagerServicePerimeterEgressPolicies({
    this.title,
    this.egressFrom,
    this.egressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimeterEgressFrom? egressFrom;

  final AccessContextManagerServicePerimeterEgressTo? egressTo;

  Map<String, Object?> encode() => {
    'title': ?title?.toTfJson(),
    'egress_from': ?egressFrom?.encode(),
    'egress_to': ?egressTo?.encode(),
  };
}

/// Typed helper for the `spec.egress_policies.egress_from` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterEgressFrom {
  const AccessContextManagerServicePerimeterEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  final TfArg<List<String>>? identities;

  final AccessContextManagerServicePerimeterIdentityType? identityType;

  final AccessContextManagerServicePerimeterSourceRestriction?
  sourceRestriction;

  final List<AccessContextManagerServicePerimeterSources>? sources;

  Map<String, Object?> encode() => {
    'identities': ?identities?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    'source_restriction': ?sourceRestriction?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// `identity_type` — derived from the provider schema description.
extension type const AccessContextManagerServicePerimeterIdentityType._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerServicePerimeterIdentityType.variable(String name)
    : this._(TfArg.variable(name));
  AccessContextManagerServicePerimeterIdentityType.expression(String template)
    : this._(TfArg.expression(template));
  const AccessContextManagerServicePerimeterIdentityType.arg(TfArg<String> arg)
    : this._(arg);

  static const identityTypeUnspecified =
      AccessContextManagerServicePerimeterIdentityType._(
        TfArgLiteral('IDENTITY_TYPE_UNSPECIFIED'),
      );
  static const anyIdentity = AccessContextManagerServicePerimeterIdentityType._(
    TfArgLiteral('ANY_IDENTITY'),
  );
  static const anyUserAccount =
      AccessContextManagerServicePerimeterIdentityType._(
        TfArgLiteral('ANY_USER_ACCOUNT'),
      );
  static const anyServiceAccount =
      AccessContextManagerServicePerimeterIdentityType._(
        TfArgLiteral('ANY_SERVICE_ACCOUNT'),
      );

  static const List<AccessContextManagerServicePerimeterIdentityType> values = [
    identityTypeUnspecified,
    anyIdentity,
    anyUserAccount,
    anyServiceAccount,
  ];
}

/// `source_restriction` — derived from the provider schema description.
extension type const AccessContextManagerServicePerimeterSourceRestriction._(
  TfArg<String> _
) implements TfArg<String> {
  AccessContextManagerServicePerimeterSourceRestriction.variable(String name)
    : this._(TfArg.variable(name));
  AccessContextManagerServicePerimeterSourceRestriction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const AccessContextManagerServicePerimeterSourceRestriction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const sourceRestrictionUnspecified =
      AccessContextManagerServicePerimeterSourceRestriction._(
        TfArgLiteral('SOURCE_RESTRICTION_UNSPECIFIED'),
      );
  static const sourceRestrictionEnabled =
      AccessContextManagerServicePerimeterSourceRestriction._(
        TfArgLiteral('SOURCE_RESTRICTION_ENABLED'),
      );
  static const sourceRestrictionDisabled =
      AccessContextManagerServicePerimeterSourceRestriction._(
        TfArgLiteral('SOURCE_RESTRICTION_DISABLED'),
      );

  static const List<AccessContextManagerServicePerimeterSourceRestriction>
  values = [
    sourceRestrictionUnspecified,
    sourceRestrictionEnabled,
    sourceRestrictionDisabled,
  ];
}

/// Typed helper for the `spec.egress_policies.egress_from.sources` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterSources {
  const AccessContextManagerServicePerimeterSources({
    this.accessLevel,
    this.resource,
    this.pscEndpoint,
  });

  final TfArg<String>? accessLevel;

  final TfArg<String>? resource;

  final AccessContextManagerServicePerimeterPscEndpoint? pscEndpoint;

  Map<String, Object?> encode() => {
    'access_level': ?accessLevel?.toTfJson(),
    'resource': ?resource?.toTfJson(),
    'psc_endpoint': ?pscEndpoint?.encode(),
  };
}

/// Typed helper for the `spec.egress_policies.egress_from.sources.psc_endpoint` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterPscEndpoint {
  const AccessContextManagerServicePerimeterPscEndpoint({this.forwardingRule});

  final TfArg<String>? forwardingRule;

  Map<String, Object?> encode() => {
    'forwarding_rule': ?forwardingRule?.toTfJson(),
  };
}

/// Typed helper for the `spec.egress_policies.egress_to` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterEgressTo {
  const AccessContextManagerServicePerimeterEgressTo({
    this.externalResources,
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<String>>? externalResources;

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? roles;

  final List<AccessContextManagerServicePerimeterOperations>? operations;

  Map<String, Object?> encode() => {
    'external_resources': ?externalResources?.toTfJson(),
    'resources': ?resources?.toTfJson(),
    'roles': ?roles?.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `spec.egress_policies.egress_to.operations` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterOperations {
  const AccessContextManagerServicePerimeterOperations({
    this.serviceName,
    this.methodSelectors,
  });

  final TfArg<String>? serviceName;

  final List<AccessContextManagerServicePerimeterMethodSelectors>?
  methodSelectors;

  Map<String, Object?> encode() => {
    'service_name': ?serviceName?.toTfJson(),
    if (methodSelectors != null)
      'method_selectors': [for (final e in methodSelectors!) e.encode()],
  };
}

/// Typed helper for the `spec.egress_policies.egress_to.operations.method_selectors` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterMethodSelectors {
  const AccessContextManagerServicePerimeterMethodSelectors({
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

/// Typed helper for the `spec.ingress_policies` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterIngressPolicies {
  const AccessContextManagerServicePerimeterIngressPolicies({
    this.title,
    this.ingressFrom,
    this.ingressTo,
  });

  final TfArg<String>? title;

  final AccessContextManagerServicePerimeterIngressFrom? ingressFrom;

  final AccessContextManagerServicePerimeterIngressTo? ingressTo;

  Map<String, Object?> encode() => {
    'title': ?title?.toTfJson(),
    'ingress_from': ?ingressFrom?.encode(),
    'ingress_to': ?ingressTo?.encode(),
  };
}

/// Typed helper for the `spec.ingress_policies.ingress_from` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterIngressFrom {
  const AccessContextManagerServicePerimeterIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  final TfArg<List<String>>? identities;

  final AccessContextManagerServicePerimeterIdentityType? identityType;

  final List<AccessContextManagerServicePerimeterSources>? sources;

  Map<String, Object?> encode() => {
    'identities': ?identities?.toTfJson(),
    'identity_type': ?identityType?.toTfJson(),
    if (sources != null) 'sources': [for (final e in sources!) e.encode()],
  };
}

/// Typed helper for the `spec.ingress_policies.ingress_to` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterIngressTo {
  const AccessContextManagerServicePerimeterIngressTo({
    this.resources,
    this.roles,
    this.operations,
  });

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? roles;

  final List<AccessContextManagerServicePerimeterOperations>? operations;

  Map<String, Object?> encode() => {
    'resources': ?resources?.toTfJson(),
    'roles': ?roles?.toTfJson(),
    if (operations != null)
      'operations': [for (final e in operations!) e.encode()],
  };
}

/// Typed helper for the `spec.vpc_accessible_services` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterVpcAccessibleServices {
  const AccessContextManagerServicePerimeterVpcAccessibleServices({
    this.allowedServices,
    this.enableRestriction,
    this.servicePatternsEnforcementScopes,
    this.allowedServicePatterns,
  });

  final TfArg<List<String>>? allowedServices;

  final TfArg<bool>? enableRestriction;

  final TfArg<List<String>>? servicePatternsEnforcementScopes;

  final List<AccessContextManagerServicePerimeterAllowedServicePatterns>?
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

/// Typed helper for the `spec.vpc_accessible_services.allowed_service_patterns` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterAllowedServicePatterns {
  const AccessContextManagerServicePerimeterAllowedServicePatterns({
    this.pattern,
    this.service,
    this.modifiers,
  });

  final TfArg<String>? pattern;

  final TfArg<String>? service;

  final List<AccessContextManagerServicePerimeterModifiers>? modifiers;

  Map<String, Object?> encode() => {
    'pattern': ?pattern?.toTfJson(),
    'service': ?service?.toTfJson(),
    if (modifiers != null)
      'modifiers': [for (final e in modifiers!) e.encode()],
  };
}

/// Typed helper for the `spec.vpc_accessible_services.allowed_service_patterns.modifiers` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterModifiers {
  const AccessContextManagerServicePerimeterModifiers({this.addRequestHeader});

  final AccessContextManagerServicePerimeterAddRequestHeader? addRequestHeader;

  Map<String, Object?> encode() => {
    'add_request_header': ?addRequestHeader?.encode(),
  };
}

/// Typed helper for the `spec.vpc_accessible_services.allowed_service_patterns.modifiers.add_request_header` block of
/// `google_access_context_manager_service_perimeter` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class AccessContextManagerServicePerimeterAddRequestHeader {
  const AccessContextManagerServicePerimeterAddRequestHeader({
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

  final TfArg<List<String>>? accessLevels;

  final TfArg<List<String>>? resources;

  final TfArg<List<String>>? restrictedServices;

  final List<AccessContextManagerServicePerimeterEgressPolicies>?
  egressPolicies;

  final List<AccessContextManagerServicePerimeterIngressPolicies>?
  ingressPolicies;

  final AccessContextManagerServicePerimeterVpcAccessibleServices?
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

  GoogleAccessContextManagerServicePerimeter(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> title,
    TfArg<String>? description,
    AccessContextManagerServicePerimeterType? perimeterType,
    TfArg<bool>? useExplicitDryRunSpec,
    AccessContextManagerServicePerimeterSpec? spec,
    AccessContextManagerServicePerimeterStatus? status,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent': parent,
           'title': title,
           'description': ?description,
           'perimeter_type': ?perimeterType,
           'use_explicit_dry_run_spec': ?useExplicitDryRunSpec,
           if (spec != null) 'spec': TfArg.literal(spec.encode()),
           if (status != null) 'status': TfArg.literal(status.encode()),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerServicePerimeterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerServicePerimeter>`.
  RefTo<GoogleAccessContextManagerServicePerimeter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `perimeter_type` attribute.
  TfRef<String> get perimeterType =>
      TfRef.attribute<String>(this, 'perimeter_type');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `use_explicit_dry_run_spec` attribute.
  TfRef<bool> get useExplicitDryRunSpec =>
      TfRef.attribute<bool>(this, 'use_explicit_dry_run_spec');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
