// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apphub_service`.
const Set<String> _googleApphubServiceSensitive = <String>{};

/// Typed helper for the `attributes` block of
/// `google_apphub_service` (derived from provider schema).
@immutable
final class ApphubServiceAttributes {
  const ApphubServiceAttributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  final List<ApphubServiceBusinessOwners>? businessOwners;

  final ApphubServiceCriticality? criticality;

  final List<ApphubServiceDeveloperOwners>? developerOwners;

  final ApphubServiceEnvironment? environment;

  final List<ApphubServiceOperatorOwners>? operatorOwners;

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
/// `google_apphub_service` (derived from provider schema).
@immutable
final class ApphubServiceBusinessOwners {
  const ApphubServiceBusinessOwners({this.displayName, required this.email});

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `attributes.criticality` block of
/// `google_apphub_service` (derived from provider schema).
@immutable
final class ApphubServiceCriticality {
  const ApphubServiceCriticality({required this.type});

  final TfArg<ApphubServiceCriticalityType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum ApphubServiceCriticalityType implements TerraformEnum {
  missionCritical('MISSION_CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW');

  const ApphubServiceCriticalityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attributes.developer_owners` block of
/// `google_apphub_service` (derived from provider schema).
@immutable
final class ApphubServiceDeveloperOwners {
  const ApphubServiceDeveloperOwners({this.displayName, required this.email});

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `attributes.environment` block of
/// `google_apphub_service` (derived from provider schema).
@immutable
final class ApphubServiceEnvironment {
  const ApphubServiceEnvironment({required this.type});

  final TfArg<ApphubServiceEnvironmentType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum ApphubServiceEnvironmentType implements TerraformEnum {
  production('PRODUCTION'),
  staging('STAGING'),
  test('TEST'),
  development('DEVELOPMENT');

  const ApphubServiceEnvironmentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attributes.operator_owners` block of
/// `google_apphub_service` (derived from provider schema).
@immutable
final class ApphubServiceOperatorOwners {
  const ApphubServiceOperatorOwners({this.displayName, required this.email});

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Factory wrapper for `google_apphub_service`.
///
/// Service is a network/api interface that exposes some functionality to
/// clients for consumption over the network. Service typically has one or more
/// Workloads behind it. It registers identified service to the Application.
///
/// App Hub service — registers a discovered service under an application.
///
/// Requires a prior [GoogleApphubServiceProjectAttachment] and a
/// `google_apphub_discovered_service` data source URI (not curated here).
final class GoogleApphubService extends Resource {
  static const String tfType = 'google_apphub_service';

  GoogleApphubService(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> applicationId,
    required TfArg<String> serviceId,
    required TfArg<String> discoveredService,
    TfArg<String>? displayName,
    TfArg<String>? description,
    ApphubServiceAttributes? attributes,
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
           'service_id': serviceId,
           'discovered_service': discoveredService,
           'display_name': ?displayName,
           'description': ?description,
           if (attributes != null)
             'attributes': TfArg.literal(attributes.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApphubServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApphubService>`.
  RefTo<GoogleApphubService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `service_properties` attribute.
  TfRef<List<Map<String, Object?>>> get serviceProperties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_properties');

  /// Reference to `service_reference` attribute.
  TfRef<List<Map<String, Object?>>> get serviceReference =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_reference');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `discovered_service` attribute.
  TfRef<String> get discoveredService =>
      TfRef.attribute<String>(this, 'discovered_service');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');
}
