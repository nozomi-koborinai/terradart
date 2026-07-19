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

  final List<ApphubWorkloadAttributesBusinessOwners>? businessOwners;

  final ApphubWorkloadAttributesCriticality? criticality;

  final List<ApphubWorkloadAttributesDeveloperOwners>? developerOwners;

  final ApphubWorkloadAttributesEnvironment? environment;

  final List<ApphubWorkloadAttributesOperatorOwners>? operatorOwners;

  Map<String, Object?> encode() => {
    if (businessOwners != null)
      'business_owners': [for (final e in businessOwners!) e.encode()],
    if (criticality != null) 'criticality': criticality!.encode(),
    if (developerOwners != null)
      'developer_owners': [for (final e in developerOwners!) e.encode()],
    if (environment != null) 'environment': environment!.encode(),
    if (operatorOwners != null)
      'operator_owners': [for (final e in operatorOwners!) e.encode()],
  };
}

/// Typed helper for the `attributes.business_owners` block of
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadAttributesBusinessOwners {
  const ApphubWorkloadAttributesBusinessOwners({
    this.displayName,
    required this.email,
  });

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `attributes.criticality` block of
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadAttributesCriticality {
  const ApphubWorkloadAttributesCriticality({required this.type});

  final TfArg<ApphubWorkloadAttributesCriticalityType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum ApphubWorkloadAttributesCriticalityType implements TerraformEnum {
  missionCritical('MISSION_CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW');

  const ApphubWorkloadAttributesCriticalityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attributes.developer_owners` block of
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadAttributesDeveloperOwners {
  const ApphubWorkloadAttributesDeveloperOwners({
    this.displayName,
    required this.email,
  });

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `attributes.environment` block of
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadAttributesEnvironment {
  const ApphubWorkloadAttributesEnvironment({required this.type});

  final TfArg<ApphubWorkloadAttributesEnvironmentType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum ApphubWorkloadAttributesEnvironmentType implements TerraformEnum {
  production('PRODUCTION'),
  staging('STAGING'),
  test('TEST'),
  development('DEVELOPMENT');

  const ApphubWorkloadAttributesEnvironmentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attributes.operator_owners` block of
/// `google_apphub_workload` (derived from provider schema).
@immutable
final class ApphubWorkloadAttributesOperatorOwners {
  const ApphubWorkloadAttributesOperatorOwners({
    this.displayName,
    required this.email,
  });

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
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

  GoogleApphubWorkload({
    required super.localName,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'application_id': applicationId,
           'workload_id': workloadId,
           'discovered_workload': discoveredWorkload,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (attributes != null)
             'attributes': TfArg.literal(attributes.encode()),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApphubWorkloadSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
