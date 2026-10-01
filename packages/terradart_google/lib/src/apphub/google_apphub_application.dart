// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apphub_application`.
const Set<String> _googleApphubApplicationSensitive = <String>{};

/// Apphub Application enum for `state`.
extension type const ApphubApplicationState._(TfArg<String> _)
    implements TfArg<String> {
  ApphubApplicationState.variable(String name) : this._(TfArg.variable(name));
  ApphubApplicationState.expression(String template)
    : this._(TfArg.expression(template));
  const ApphubApplicationState.arg(TfArg<String> arg) : this._(arg);

  static const stateUnspecified = ApphubApplicationState._(
    TfArgLiteral('STATE_UNSPECIFIED'),
  );
  static const creating = ApphubApplicationState._(TfArgLiteral('CREATING'));
  static const active = ApphubApplicationState._(TfArgLiteral('ACTIVE'));
  static const deleting = ApphubApplicationState._(TfArgLiteral('DELETING'));

  static const List<ApphubApplicationState> values = [
    stateUnspecified,
    creating,
    active,
    deleting,
  ];
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
/// `google_apphub_application` (derived from provider schema).
@immutable
final class ApphubApplicationBusinessOwners {
  const ApphubApplicationBusinessOwners({
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
/// `google_apphub_application` (derived from provider schema).
@immutable
final class ApphubApplicationCriticality {
  const ApphubApplicationCriticality({required this.type});

  final ApphubApplicationCriticalityType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const ApphubApplicationCriticalityType._(TfArg<String> _)
    implements TfArg<String> {
  ApphubApplicationCriticalityType.variable(String name)
    : this._(TfArg.variable(name));
  ApphubApplicationCriticalityType.expression(String template)
    : this._(TfArg.expression(template));
  const ApphubApplicationCriticalityType.arg(TfArg<String> arg) : this._(arg);

  static const missionCritical = ApphubApplicationCriticalityType._(
    TfArgLiteral('MISSION_CRITICAL'),
  );
  static const high = ApphubApplicationCriticalityType._(TfArgLiteral('HIGH'));
  static const medium = ApphubApplicationCriticalityType._(
    TfArgLiteral('MEDIUM'),
  );
  static const low = ApphubApplicationCriticalityType._(TfArgLiteral('LOW'));

  static const List<ApphubApplicationCriticalityType> values = [
    missionCritical,
    high,
    medium,
    low,
  ];
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

  @internal
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

  final ApphubApplicationEnvironmentType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const ApphubApplicationEnvironmentType._(TfArg<String> _)
    implements TfArg<String> {
  ApphubApplicationEnvironmentType.variable(String name)
    : this._(TfArg.variable(name));
  ApphubApplicationEnvironmentType.expression(String template)
    : this._(TfArg.expression(template));
  const ApphubApplicationEnvironmentType.arg(TfArg<String> arg) : this._(arg);

  static const production = ApphubApplicationEnvironmentType._(
    TfArgLiteral('PRODUCTION'),
  );
  static const staging = ApphubApplicationEnvironmentType._(
    TfArgLiteral('STAGING'),
  );
  static const test = ApphubApplicationEnvironmentType._(TfArgLiteral('TEST'));
  static const development = ApphubApplicationEnvironmentType._(
    TfArgLiteral('DEVELOPMENT'),
  );

  static const List<ApphubApplicationEnvironmentType> values = [
    production,
    staging,
    test,
    development,
  ];
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

  @internal
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

  final ApphubApplicationType type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// `type` — derived from the provider schema description.
extension type const ApphubApplicationType._(TfArg<String> _)
    implements TfArg<String> {
  ApphubApplicationType.variable(String name) : this._(TfArg.variable(name));
  ApphubApplicationType.expression(String template)
    : this._(TfArg.expression(template));
  const ApphubApplicationType.arg(TfArg<String> arg) : this._(arg);

  static const regional = ApphubApplicationType._(TfArgLiteral('REGIONAL'));
  static const global = ApphubApplicationType._(TfArgLiteral('GLOBAL'));

  static const List<ApphubApplicationType> values = [regional, global];
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
///   'orders',
///   location: TfArg.literal('us-central1'),
///   applicationId: TfArg.literal('terradart-orders'),
///   scope: ApphubApplicationScope(
///     type: ApphubApplicationType.regional,
///   ),
/// );
/// ```
final class GoogleApphubApplication extends Resource {
  static const String tfType = 'google_apphub_application';

  GoogleApphubApplication(
    super.localName, {
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
