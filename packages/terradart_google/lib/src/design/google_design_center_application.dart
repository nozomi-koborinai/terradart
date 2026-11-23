// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_design_center_application`.
const Set<String> _googleDesignCenterApplicationSensitive = <String>{};

/// Typed helper for the `app_parameters` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationAppParameters {
  const DesignCenterApplicationAppParameters({required this.key, this.value});

  final TfArg<String> key;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `attributes` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationAttributes {
  const DesignCenterApplicationAttributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  final List<DesignCenterApplicationBusinessOwners>? businessOwners;

  final DesignCenterApplicationCriticality? criticality;

  final List<DesignCenterApplicationDeveloperOwners>? developerOwners;

  final DesignCenterApplicationEnvironment? environment;

  final List<DesignCenterApplicationOperatorOwners>? operatorOwners;

  @internal
  Map<String, Object?> encode() => {
    if (businessOwners != null)
      'business_owners': [for (final e in businessOwners!) e.encode()],
    'criticality': ?criticality?.encode(),
    if (developerOwners != null)
      'developer_owners': [for (final e in developerOwners!) e.encode()],
    'environment': ?environment?.encode(),
    if (operatorOwners != null)
      'operator_owners': [for (final e in operatorOwners!) e.encode()],
  };
}

/// Typed helper for the `attributes.business_owners` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationBusinessOwners {
  const DesignCenterApplicationBusinessOwners({
    this.displayName,
    required this.email,
  });

  final TfArg<String>? displayName;

  final TfArg<String> email;

  @internal
  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `attributes.criticality` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationCriticality {
  const DesignCenterApplicationCriticality({required this.type});

  final DesignCenterApplicationCriticalityType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const DesignCenterApplicationCriticalityType._(TfArg<String> _)
    implements TfArg<String> {
  DesignCenterApplicationCriticalityType.variable(String name)
    : this._(TfArg.variable(name));
  DesignCenterApplicationCriticalityType.expression(String template)
    : this._(TfArg.expression(template));
  const DesignCenterApplicationCriticalityType.arg(TfArg<String> arg)
    : this._(arg);

  static const missionCritical = DesignCenterApplicationCriticalityType._(
    TfArgLiteral('MISSION_CRITICAL'),
  );
  static const high = DesignCenterApplicationCriticalityType._(
    TfArgLiteral('HIGH'),
  );
  static const medium = DesignCenterApplicationCriticalityType._(
    TfArgLiteral('MEDIUM'),
  );
  static const low = DesignCenterApplicationCriticalityType._(
    TfArgLiteral('LOW'),
  );

  static const List<DesignCenterApplicationCriticalityType> values = [
    missionCritical,
    high,
    medium,
    low,
  ];
}

/// Typed helper for the `attributes.developer_owners` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationDeveloperOwners {
  const DesignCenterApplicationDeveloperOwners({
    this.displayName,
    required this.email,
  });

  final TfArg<String>? displayName;

  final TfArg<String> email;

  @internal
  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `attributes.environment` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationEnvironment {
  const DesignCenterApplicationEnvironment({required this.type});

  final DesignCenterApplicationEnvironmentType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const DesignCenterApplicationEnvironmentType._(TfArg<String> _)
    implements TfArg<String> {
  DesignCenterApplicationEnvironmentType.variable(String name)
    : this._(TfArg.variable(name));
  DesignCenterApplicationEnvironmentType.expression(String template)
    : this._(TfArg.expression(template));
  const DesignCenterApplicationEnvironmentType.arg(TfArg<String> arg)
    : this._(arg);

  static const production = DesignCenterApplicationEnvironmentType._(
    TfArgLiteral('PRODUCTION'),
  );
  static const staging = DesignCenterApplicationEnvironmentType._(
    TfArgLiteral('STAGING'),
  );
  static const test = DesignCenterApplicationEnvironmentType._(
    TfArgLiteral('TEST'),
  );
  static const development = DesignCenterApplicationEnvironmentType._(
    TfArgLiteral('DEVELOPMENT'),
  );

  static const List<DesignCenterApplicationEnvironmentType> values = [
    production,
    staging,
    test,
    development,
  ];
}

/// Typed helper for the `attributes.operator_owners` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationOperatorOwners {
  const DesignCenterApplicationOperatorOwners({
    this.displayName,
    required this.email,
  });

  final TfArg<String>? displayName;

  final TfArg<String> email;

  @internal
  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `component_parameters` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationComponentParameters {
  const DesignCenterApplicationComponentParameters({
    required this.component,
    this.parameters,
  });

  final TfArg<String> component;

  final List<DesignCenterApplicationParameters>? parameters;

  @internal
  Map<String, Object?> encode() => {
    'component': component.toTfJson(),
    if (parameters != null)
      'parameters': [for (final e in parameters!) e.encode()],
  };
}

/// Typed helper for the `component_parameters.parameters` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationParameters {
  const DesignCenterApplicationParameters({required this.key, this.value});

  final TfArg<String> key;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `composite_application_parameters` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationCompositeApplicationParameters {
  const DesignCenterApplicationCompositeApplicationParameters({
    this.serviceAccountMap,
  });

  final TfArg<Map<String, String>>? serviceAccountMap;

  @internal
  Map<String, Object?> encode() => {
    'service_account_map': ?serviceAccountMap?.toTfJson(),
  };
}

/// Typed helper for the `connection_configs` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationConnectionConfigs {
  const DesignCenterApplicationConnectionConfigs({
    required this.connectionUri,
    this.destinationComponentParameters,
    this.sourceComponentParameters,
  });

  final TfArg<String> connectionUri;

  final List<DesignCenterApplicationDestinationComponentParameters>?
  destinationComponentParameters;

  final List<DesignCenterApplicationSourceComponentParameters>?
  sourceComponentParameters;

  @internal
  Map<String, Object?> encode() => {
    'connection_uri': connectionUri.toTfJson(),
    if (destinationComponentParameters != null)
      'destination_component_parameters': [
        for (final e in destinationComponentParameters!) e.encode(),
      ],
    if (sourceComponentParameters != null)
      'source_component_parameters': [
        for (final e in sourceComponentParameters!) e.encode(),
      ],
  };
}

/// Typed helper for the `connection_configs.destination_component_parameters` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationDestinationComponentParameters {
  const DesignCenterApplicationDestinationComponentParameters({
    required this.key,
    this.value,
  });

  final TfArg<String> key;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `connection_configs.source_component_parameters` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationSourceComponentParameters {
  const DesignCenterApplicationSourceComponentParameters({
    required this.key,
    this.value,
  });

  final TfArg<String> key;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `deployment_target` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationDeploymentTarget {
  const DesignCenterApplicationDeploymentTarget({this.gkeDeploymentTarget});

  final DesignCenterApplicationGkeDeploymentTarget? gkeDeploymentTarget;

  @internal
  Map<String, Object?> encode() => {
    'gke_deployment_target': ?gkeDeploymentTarget?.encode(),
  };
}

/// Typed helper for the `deployment_target.gke_deployment_target` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationGkeDeploymentTarget {
  const DesignCenterApplicationGkeDeploymentTarget({
    required this.clusterSelfLink,
    required this.kubernetesServiceAccount,
    this.kubernetesServiceAccountCreation,
    required this.namespace,
  });

  final TfArg<String> clusterSelfLink;

  final TfArg<String> kubernetesServiceAccount;

  final TfArg<bool>? kubernetesServiceAccountCreation;

  final TfArg<String> namespace;

  @internal
  Map<String, Object?> encode() => {
    'cluster_self_link': clusterSelfLink.toTfJson(),
    'kubernetes_service_account': kubernetesServiceAccount.toTfJson(),
    'kubernetes_service_account_creation': ?kubernetesServiceAccountCreation
        ?.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Typed helper for the `roles_apis_config` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationRolesApisConfig {
  const DesignCenterApplicationRolesApisConfig({
    required this.projectId,
    this.apis,
    this.roles,
  });

  final TfArg<String> projectId;

  final List<DesignCenterApplicationApis>? apis;

  final List<DesignCenterApplicationRoles>? roles;

  @internal
  Map<String, Object?> encode() => {
    'project_id': projectId.toTfJson(),
    if (apis != null) 'apis': [for (final e in apis!) e.encode()],
    if (roles != null) 'roles': [for (final e in roles!) e.encode()],
  };
}

/// Typed helper for the `roles_apis_config.apis` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationApis {
  const DesignCenterApplicationApis({required this.api});

  final TfArg<String> api;

  @internal
  Map<String, Object?> encode() => {'api': api.toTfJson()};
}

/// Typed helper for the `roles_apis_config.roles` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationRoles {
  const DesignCenterApplicationRoles({required this.role});

  final TfArg<String> role;

  @internal
  Map<String, Object?> encode() => {'role': role.toTfJson()};
}

/// Typed helper for the `scope` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationScope {
  const DesignCenterApplicationScope({this.type});

  final DesignCenterApplicationType? type;

  @internal
  Map<String, Object?> encode() => {'type': ?type?.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const DesignCenterApplicationType._(TfArg<String> _)
    implements TfArg<String> {
  DesignCenterApplicationType.variable(String name)
    : this._(TfArg.variable(name));
  DesignCenterApplicationType.expression(String template)
    : this._(TfArg.expression(template));
  const DesignCenterApplicationType.arg(TfArg<String> arg) : this._(arg);

  static const regional = DesignCenterApplicationType._(
    TfArgLiteral('REGIONAL'),
  );
  static const global = DesignCenterApplicationType._(TfArgLiteral('GLOBAL'));
  static const multiRegional = DesignCenterApplicationType._(
    TfArgLiteral('MULTI_REGIONAL'),
  );

  static const List<DesignCenterApplicationType> values = [
    regional,
    global,
    multiRegional,
  ];
}

/// Typed helper for the `source` block of
/// `google_design_center_application` (derived from provider schema).
@immutable
final class DesignCenterApplicationSource {
  const DesignCenterApplicationSource({this.applicationTemplateRevision});

  final TfArg<String>? applicationTemplateRevision;

  @internal
  Map<String, Object?> encode() => {
    'application_template_revision': ?applicationTemplateRevision?.toTfJson(),
  };
}

/// Factory wrapper for `google_design_center_application`.
///
/// Application Design Center Application.
final class GoogleDesignCenterApplication extends Resource {
  static const String tfType = 'google_design_center_application';

  GoogleDesignCenterApplication(
    super.localName, {
    required TfArg<String> applicationId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? deploymentProject,
    TfArg<String>? deploymentRegion,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> location,
    TfArg<String>? project,
    RefTo<GoogleServiceAccount>? serviceAccount,
    required TfArg<String> space,
    List<DesignCenterApplicationAppParameters>? appParameters,
    DesignCenterApplicationAttributes? attributes,
    List<DesignCenterApplicationComponentParameters>? componentParameters,
    DesignCenterApplicationCompositeApplicationParameters?
    compositeApplicationParameters,
    List<DesignCenterApplicationConnectionConfigs>? connectionConfigs,
    DesignCenterApplicationDeploymentTarget? deploymentTarget,
    List<DesignCenterApplicationRolesApisConfig>? rolesApisConfig,
    required DesignCenterApplicationScope scope,
    required DesignCenterApplicationSource source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'deletion_policy': ?deletionPolicy,
           'deployment_project': ?deploymentProject,
           'deployment_region': ?deploymentRegion,
           'description': ?description,
           'display_name': ?displayName,
           'location': location,
           'project': ?project,
           'service_account': ?serviceAccount?.encodeAs('email'),
           'space': space,
           if (appParameters != null)
             'app_parameters': TfArg.literal([
               for (final e in appParameters) e.encode(),
             ]),
           if (attributes != null)
             'attributes': TfArg.literal(attributes.encode()),
           if (componentParameters != null)
             'component_parameters': TfArg.literal([
               for (final e in componentParameters) e.encode(),
             ]),
           if (compositeApplicationParameters != null)
             'composite_application_parameters': TfArg.literal(
               compositeApplicationParameters.encode(),
             ),
           if (connectionConfigs != null)
             'connection_configs': TfArg.literal([
               for (final e in connectionConfigs) e.encode(),
             ]),
           if (deploymentTarget != null)
             'deployment_target': TfArg.literal(deploymentTarget.encode()),
           if (rolesApisConfig != null)
             'roles_apis_config': TfArg.literal([
               for (final e in rolesApisConfig) e.encode(),
             ]),
           'scope': TfArg.literal(scope.encode()),
           'source': TfArg.literal(source.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDesignCenterApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDesignCenterApplication>`.
  RefTo<GoogleDesignCenterApplication> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `apphub_application` attribute.
  TfRef<String> get apphubApplication =>
      TfRef.attribute<String>(this, 'apphub_application');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deployment_metadata` attribute.
  TfRef<List<Map<String, Object?>>> get deploymentMetadata =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'deployment_metadata');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deployment_project` attribute.
  TfRef<String> get deploymentProject =>
      TfRef.attribute<String>(this, 'deployment_project');

  /// Reference to `deployment_region` attribute.
  TfRef<String> get deploymentRegion =>
      TfRef.attribute<String>(this, 'deployment_region');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `space` attribute.
  TfRef<String> get space => TfRef.attribute<String>(this, 'space');
}
