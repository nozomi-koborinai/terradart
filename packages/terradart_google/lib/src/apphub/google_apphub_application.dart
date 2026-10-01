// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apphub_application`.
const Set<String> _googleApphubApplicationSensitive = <String>{};

/// Apphub Application enum for `state`.
enum ApphubApplicationState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  creating('CREATING'),
  active('ACTIVE'),
  deleting('DELETING');

  const ApphubApplicationState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attributes` block of
/// `google_apphub_application` (derived from provider schema).
@immutable
final class ApphubApplicationAttributes {
  const ApphubApplicationAttributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  final List<ApphubApplicationBusinessOwners>? businessOwners;

  final ApphubApplicationCriticality? criticality;

  final List<ApphubApplicationDeveloperOwners>? developerOwners;

  final ApphubApplicationEnvironment? environment;

  final List<ApphubApplicationOperatorOwners>? operatorOwners;

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
/// `google_apphub_application` (derived from provider schema).
@immutable
final class ApphubApplicationBusinessOwners {
  const ApphubApplicationBusinessOwners({
    this.displayName,
    required this.email,
  });

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `attributes.criticality` block of
/// `google_apphub_application` (derived from provider schema).
@immutable
final class ApphubApplicationCriticality {
  const ApphubApplicationCriticality({required this.type});

  final TfArg<ApphubApplicationCriticalityType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum ApphubApplicationCriticalityType implements TerraformEnum {
  missionCritical('MISSION_CRITICAL'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW');

  const ApphubApplicationCriticalityType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attributes.developer_owners` block of
/// `google_apphub_application` (derived from provider schema).
@immutable
final class ApphubApplicationDeveloperOwners {
  const ApphubApplicationDeveloperOwners({
    this.displayName,
    required this.email,
  });

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `attributes.environment` block of
/// `google_apphub_application` (derived from provider schema).
@immutable
final class ApphubApplicationEnvironment {
  const ApphubApplicationEnvironment({required this.type});

  final TfArg<ApphubApplicationEnvironmentType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum ApphubApplicationEnvironmentType implements TerraformEnum {
  production('PRODUCTION'),
  staging('STAGING'),
  test('TEST'),
  development('DEVELOPMENT');

  const ApphubApplicationEnvironmentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attributes.operator_owners` block of
/// `google_apphub_application` (derived from provider schema).
@immutable
final class ApphubApplicationOperatorOwners {
  const ApphubApplicationOperatorOwners({
    this.displayName,
    required this.email,
  });

  final TfArg<String>? displayName;

  final TfArg<String> email;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'email': email.toTfJson(),
  };
}

/// Typed helper for the `scope` block of
/// `google_apphub_application` (derived from provider schema).
@immutable
final class ApphubApplicationScope {
  const ApphubApplicationScope({required this.type});

  final TfArg<ApphubApplicationType> type;

  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
enum ApphubApplicationType implements TerraformEnum {
  regional('REGIONAL'),
  global('GLOBAL');

  const ApphubApplicationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_apphub_application`.
///
/// Application is a functional grouping of Services and Workloads that helps
/// achieve a desired end-to-end business functionality. Services and Workloads
/// are owned by the Application.
///
/// App Hub application — functional grouping of services and workloads.
///
/// Enable `apphub.googleapis.com` before apply. Set [scope] to `REGIONAL`
/// (match [location] to a region) or `GLOBAL` (use `location: global`).
///
/// Example:
/// ```dart
/// GoogleApphubApplication(
///   localName: 'orders',
///   location: TfArg.literal('us-central1'),
///   applicationId: TfArg.literal('terradart-orders'),
///   scope: ApphubApplicationScope(
///     type: TfArg.literal(ApphubApplicationType.regional),
///   ),
/// );
/// ```
final class GoogleApphubApplication extends Resource {
  static const String tfType = 'google_apphub_application';

  GoogleApphubApplication({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> applicationId,
    required ApphubApplicationScope scope,
    TfArg<String>? displayName,
    TfArg<String>? description,
    ApphubApplicationAttributes? attributes,
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
           'scope': TfArg.literal(scope.encode()),
           'display_name': ?displayName,
           'description': ?description,
           if (attributes != null)
             'attributes': TfArg.literal(attributes.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApphubApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApphubApplication>`.
  RefTo<GoogleApphubApplication> get ref => RefTo.of(this);

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

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
