// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apphub_workload`.
const Set<String> _googleApphubWorkloadSensitive = <String>{};

/// Typed helper for the `attributes` block of
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadAttributes {
  const ApphubWorkloadAttributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  final List<ApphubWorkloadBusinessOwners>? businessOwners;

  final ApphubWorkloadCriticality? criticality;

  final List<ApphubWorkloadDeveloperOwners>? developerOwners;

  final ApphubWorkloadEnvironment? environment;

  final List<ApphubWorkloadOperatorOwners>? operatorOwners;

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
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadBusinessOwners {
  const ApphubWorkloadBusinessOwners({this.displayName, required this.email});

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `attributes.criticality` block of
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadCriticality {
  const ApphubWorkloadCriticality({required this.type});

  final ApphubWorkloadCriticalityType type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const ApphubWorkloadCriticalityType._(TfArg<String> _)
    implements TfArg<String> {
  ApphubWorkloadCriticalityType.variable(String name)
    : this._(TfArg.variable(name));
  ApphubWorkloadCriticalityType.expression(String template)
    : this._(TfArg.expression(template));
  const ApphubWorkloadCriticalityType.arg(TfArg<String> arg) : this._(arg);

  static const missionCritical = ApphubWorkloadCriticalityType._(
    TfArgLiteral('MISSION_CRITICAL'),
  );
  static const high = ApphubWorkloadCriticalityType._(TfArgLiteral('HIGH'));
  static const medium = ApphubWorkloadCriticalityType._(TfArgLiteral('MEDIUM'));
  static const low = ApphubWorkloadCriticalityType._(TfArgLiteral('LOW'));

  static const List<ApphubWorkloadCriticalityType> values = [
    missionCritical,
    high,
    medium,
    low,
  ];
}

/// Typed helper for the `attributes.developer_owners` block of
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadDeveloperOwners {
  const ApphubWorkloadDeveloperOwners({this.displayName, required this.email});

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `attributes.environment` block of
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadEnvironment {
  const ApphubWorkloadEnvironment({required this.type});

  final ApphubWorkloadEnvironmentType type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const ApphubWorkloadEnvironmentType._(TfArg<String> _)
    implements TfArg<String> {
  ApphubWorkloadEnvironmentType.variable(String name)
    : this._(TfArg.variable(name));
  ApphubWorkloadEnvironmentType.expression(String template)
    : this._(TfArg.expression(template));
  const ApphubWorkloadEnvironmentType.arg(TfArg<String> arg) : this._(arg);

  static const production = ApphubWorkloadEnvironmentType._(
    TfArgLiteral('PRODUCTION'),
  );
  static const staging = ApphubWorkloadEnvironmentType._(
    TfArgLiteral('STAGING'),
  );
  static const test = ApphubWorkloadEnvironmentType._(TfArgLiteral('TEST'));
  static const development = ApphubWorkloadEnvironmentType._(
    TfArgLiteral('DEVELOPMENT'),
  );

  static const List<ApphubWorkloadEnvironmentType> values = [
    production,
    staging,
    test,
    development,
  ];
}

/// Typed helper for the `attributes.operator_owners` block of
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadOperatorOwners {
  const ApphubWorkloadOperatorOwners({this.displayName, required this.email});

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Factory wrapper for `google_apphub_workload`.
///
/// Workload represents a binary deployment (such as Managed Instance Groups
/// (MIGs), GKE deployments, etc.) that performs the smallest logical subset of
/// business functionality. It registers identified workload to the Application.
///
/// App Hub workload — registers a discovered workload under an application.
///
/// Requires a prior [GoogleApphubServiceProjectAttachment] and a
/// `google_apphub_discovered_workload` data source URI (not curated here).
final class GoogleApphubWorkload extends Resource {
  static const String tfType = 'google_apphub_workload';

  GoogleApphubWorkload(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> applicationId,
    required TfArg<String> workloadId,
    required TfArg<String> discoveredWorkload,
    TfArg<String>? displayName,
    TfArg<String>? description,
    ApphubWorkloadAttributes? attributes,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'application_id': applicationId,
           'workload_id': workloadId,
           'discovered_workload': discoveredWorkload,
           'display_name': ?displayName,
           'description': ?description,
           if (attributes != null)
             'attributes': TfArg.literal(attributes.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApphubWorkloadSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApphubWorkload>`.
  RefTo<GoogleApphubWorkload> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `workload_properties` attribute.
  TfRef<List<Map<String, Object?>>> get workloadProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'workload_properties');

  /// Reference to `workload_reference` attribute.
  TfRef<List<Map<String, Object?>>> get workloadReference =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'workload_reference');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `discovered_workload` attribute.
  TfRef<String> get discoveredWorkload =>
      TfRef.attribute<String>(this, 'discovered_workload');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `workload_id` attribute.
  TfRef<String> get workloadId => TfRef.attribute<String>(this, 'workload_id');
}
