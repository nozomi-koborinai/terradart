// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_security_profile`.
const Set<String> _googleNetworkSecuritySecurityProfileSensitive = <String>{};

/// Network Security Security Profile enum for `type`.
extension type const NetworkSecuritySecurityProfileType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileType.arg(TfArg<String> arg) : this._(arg);

  static const threatPrevention = NetworkSecuritySecurityProfileType._(
    TfArgLiteral('THREAT_PREVENTION'),
  );
  static const urlFiltering = NetworkSecuritySecurityProfileType._(
    TfArgLiteral('URL_FILTERING'),
  );
  static const customMirroring = NetworkSecuritySecurityProfileType._(
    TfArgLiteral('CUSTOM_MIRRORING'),
  );
  static const customIntercept = NetworkSecuritySecurityProfileType._(
    TfArgLiteral('CUSTOM_INTERCEPT'),
  );

  static const List<NetworkSecuritySecurityProfileType> values = [
    threatPrevention,
    urlFiltering,
    customMirroring,
    customIntercept,
  ];
}

/// At most one of `threat_prevention_profile`, `url_filtering_profile`, `custom_mirroring_profile`, `custom_intercept_profile` on `google_network_security_security_profile`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.threatPreventionProfile(...)`.
sealed class NetworkSecuritySecurityProfileSettings {
  const NetworkSecuritySecurityProfileSettings();

  /// Sets `threat_prevention_profile`.
  const factory NetworkSecuritySecurityProfileSettings.threatPreventionProfile(
    NetworkSecuritySecurityProfileThreatPreventionProfile
    threatPreventionProfile,
  ) = NetworkSecuritySecurityProfileSettingsThreatPreventionProfile;

  /// Sets `url_filtering_profile`.
  const factory NetworkSecuritySecurityProfileSettings.urlFilteringProfile(
    NetworkSecuritySecurityProfileUrlFilteringProfile urlFilteringProfile,
  ) = NetworkSecuritySecurityProfileSettingsUrlFilteringProfile;

  /// Sets `custom_mirroring_profile`.
  const factory NetworkSecuritySecurityProfileSettings.customMirroringProfile(
    NetworkSecuritySecurityProfileCustomMirroringProfile customMirroringProfile,
  ) = NetworkSecuritySecurityProfileSettingsCustomMirroringProfile;

  /// Sets `custom_intercept_profile`.
  const factory NetworkSecuritySecurityProfileSettings.customInterceptProfile(
    NetworkSecuritySecurityProfileCustomInterceptProfile customInterceptProfile,
  ) = NetworkSecuritySecurityProfileSettingsCustomInterceptProfile;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkSecuritySecurityProfileSettings.threatPreventionProfile] choice: sets `threat_prevention_profile`.
final class NetworkSecuritySecurityProfileSettingsThreatPreventionProfile
    extends NetworkSecuritySecurityProfileSettings {
  const NetworkSecuritySecurityProfileSettingsThreatPreventionProfile(
    this.threatPreventionProfile,
  );

  final NetworkSecuritySecurityProfileThreatPreventionProfile
  threatPreventionProfile;

  @override
  String get blockKey => 'threat_prevention_profile';

  @override
  Map<String, Object?> encode() => {
    'threat_prevention_profile': threatPreventionProfile.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'threat_prevention_profile': TfArg.literal(
      threatPreventionProfile.encode(),
    ),
  };
}

/// The [NetworkSecuritySecurityProfileSettings.urlFilteringProfile] choice: sets `url_filtering_profile`.
final class NetworkSecuritySecurityProfileSettingsUrlFilteringProfile
    extends NetworkSecuritySecurityProfileSettings {
  const NetworkSecuritySecurityProfileSettingsUrlFilteringProfile(
    this.urlFilteringProfile,
  );

  final NetworkSecuritySecurityProfileUrlFilteringProfile urlFilteringProfile;

  @override
  String get blockKey => 'url_filtering_profile';

  @override
  Map<String, Object?> encode() => {
    'url_filtering_profile': urlFilteringProfile.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'url_filtering_profile': TfArg.literal(urlFilteringProfile.encode()),
  };
}

/// The [NetworkSecuritySecurityProfileSettings.customMirroringProfile] choice: sets `custom_mirroring_profile`.
final class NetworkSecuritySecurityProfileSettingsCustomMirroringProfile
    extends NetworkSecuritySecurityProfileSettings {
  const NetworkSecuritySecurityProfileSettingsCustomMirroringProfile(
    this.customMirroringProfile,
  );

  final NetworkSecuritySecurityProfileCustomMirroringProfile
  customMirroringProfile;

  @override
  String get blockKey => 'custom_mirroring_profile';

  @override
  Map<String, Object?> encode() => {
    'custom_mirroring_profile': customMirroringProfile.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'custom_mirroring_profile': TfArg.literal(customMirroringProfile.encode()),
  };
}

/// The [NetworkSecuritySecurityProfileSettings.customInterceptProfile] choice: sets `custom_intercept_profile`.
final class NetworkSecuritySecurityProfileSettingsCustomInterceptProfile
    extends NetworkSecuritySecurityProfileSettings {
  const NetworkSecuritySecurityProfileSettingsCustomInterceptProfile(
    this.customInterceptProfile,
  );

  final NetworkSecuritySecurityProfileCustomInterceptProfile
  customInterceptProfile;

  @override
  String get blockKey => 'custom_intercept_profile';

  @override
  Map<String, Object?> encode() => {
    'custom_intercept_profile': customInterceptProfile.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'custom_intercept_profile': TfArg.literal(customInterceptProfile.encode()),
  };
}

/// Typed helper for the `custom_intercept_profile` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileCustomInterceptProfile {
  const NetworkSecuritySecurityProfileCustomInterceptProfile({
    required this.interceptEndpointGroup,
  });

  final TfArg<String> interceptEndpointGroup;

  Map<String, Object?> encode() => {
    'intercept_endpoint_group': interceptEndpointGroup.toTfJson(),
  };
}

/// Typed helper for the `custom_mirroring_profile` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileCustomMirroringProfile {
  const NetworkSecuritySecurityProfileCustomMirroringProfile({
    this.mirroringDeploymentGroups,
    required this.mirroringEndpointGroup,
  });

  final TfArg<List<String>>? mirroringDeploymentGroups;

  final TfArg<String> mirroringEndpointGroup;

  Map<String, Object?> encode() => {
    'mirroring_deployment_groups': ?mirroringDeploymentGroups?.toTfJson(),
    'mirroring_endpoint_group': mirroringEndpointGroup.toTfJson(),
  };
}

/// Typed helper for the `threat_prevention_profile` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileThreatPreventionProfile {
  const NetworkSecuritySecurityProfileThreatPreventionProfile({
    this.antivirusOverrides,
    this.severityOverrides,
    this.threatOverrides,
  });

  final List<NetworkSecuritySecurityProfileAntivirusOverrides>?
  antivirusOverrides;

  final List<NetworkSecuritySecurityProfileSeverityOverrides>?
  severityOverrides;

  final List<NetworkSecuritySecurityProfileThreatOverrides>? threatOverrides;

  Map<String, Object?> encode() => {
    if (antivirusOverrides != null)
      'antivirus_overrides': [for (final e in antivirusOverrides!) e.encode()],
    if (severityOverrides != null)
      'severity_overrides': [for (final e in severityOverrides!) e.encode()],
    if (threatOverrides != null)
      'threat_overrides': [for (final e in threatOverrides!) e.encode()],
  };
}

/// Typed helper for the `threat_prevention_profile.antivirus_overrides` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileAntivirusOverrides {
  const NetworkSecuritySecurityProfileAntivirusOverrides({
    required this.action,
    required this.protocol,
  });

  final NetworkSecuritySecurityProfileAction action;

  final NetworkSecuritySecurityProfileProtocol protocol;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileAction._(TfArg<String> _)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileAction.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileAction.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileAction.arg(TfArg<String> arg)
    : this._(arg);

  static const alert = NetworkSecuritySecurityProfileAction._(
    TfArgLiteral('ALERT'),
  );
  static const allow = NetworkSecuritySecurityProfileAction._(
    TfArgLiteral('ALLOW'),
  );
  static const defaultAction = NetworkSecuritySecurityProfileAction._(
    TfArgLiteral('DEFAULT_ACTION'),
  );
  static const deny = NetworkSecuritySecurityProfileAction._(
    TfArgLiteral('DENY'),
  );

  static const List<NetworkSecuritySecurityProfileAction> values = [
    alert,
    allow,
    defaultAction,
    deny,
  ];
}

/// `protocol` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileProtocol._(TfArg<String> _)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileProtocol.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileProtocol.arg(TfArg<String> arg)
    : this._(arg);

  static const smtp = NetworkSecuritySecurityProfileProtocol._(
    TfArgLiteral('SMTP'),
  );
  static const smb = NetworkSecuritySecurityProfileProtocol._(
    TfArgLiteral('SMB'),
  );
  static const pop3 = NetworkSecuritySecurityProfileProtocol._(
    TfArgLiteral('POP3'),
  );
  static const imap = NetworkSecuritySecurityProfileProtocol._(
    TfArgLiteral('IMAP'),
  );
  static const http2 = NetworkSecuritySecurityProfileProtocol._(
    TfArgLiteral('HTTP2'),
  );
  static const http = NetworkSecuritySecurityProfileProtocol._(
    TfArgLiteral('HTTP'),
  );
  static const ftp = NetworkSecuritySecurityProfileProtocol._(
    TfArgLiteral('FTP'),
  );

  static const List<NetworkSecuritySecurityProfileProtocol> values = [
    smtp,
    smb,
    pop3,
    imap,
    http2,
    http,
    ftp,
  ];
}

/// Typed helper for the `threat_prevention_profile.severity_overrides` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileSeverityOverrides {
  const NetworkSecuritySecurityProfileSeverityOverrides({
    required this.action,
    required this.severity,
  });

  final NetworkSecuritySecurityProfileAction action;

  final NetworkSecuritySecurityProfileSeverity severity;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'severity': severity.toTfJson(),
  };
}

/// `severity` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileSeverity._(TfArg<String> _)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileSeverity.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileSeverity.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileSeverity.arg(TfArg<String> arg)
    : this._(arg);

  static const critical = NetworkSecuritySecurityProfileSeverity._(
    TfArgLiteral('CRITICAL'),
  );
  static const high = NetworkSecuritySecurityProfileSeverity._(
    TfArgLiteral('HIGH'),
  );
  static const informational = NetworkSecuritySecurityProfileSeverity._(
    TfArgLiteral('INFORMATIONAL'),
  );
  static const low = NetworkSecuritySecurityProfileSeverity._(
    TfArgLiteral('LOW'),
  );
  static const medium = NetworkSecuritySecurityProfileSeverity._(
    TfArgLiteral('MEDIUM'),
  );

  static const List<NetworkSecuritySecurityProfileSeverity> values = [
    critical,
    high,
    informational,
    low,
    medium,
  ];
}

/// Typed helper for the `threat_prevention_profile.threat_overrides` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileThreatOverrides {
  const NetworkSecuritySecurityProfileThreatOverrides({
    required this.action,
    required this.threatId,
  });

  final NetworkSecuritySecurityProfileAction action;

  final TfArg<String> threatId;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'threat_id': threatId.toTfJson(),
  };
}

/// Typed helper for the `url_filtering_profile` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileUrlFilteringProfile {
  const NetworkSecuritySecurityProfileUrlFilteringProfile({this.urlFilters});

  final List<NetworkSecuritySecurityProfileUrlFilters>? urlFilters;

  Map<String, Object?> encode() => {
    if (urlFilters != null)
      'url_filters': [for (final e in urlFilters!) e.encode()],
  };
}

/// Typed helper for the `url_filtering_profile.url_filters` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileUrlFilters {
  const NetworkSecuritySecurityProfileUrlFilters({
    required this.filteringAction,
    required this.priority,
    this.urls,
  });

  final NetworkSecuritySecurityProfileFilteringAction filteringAction;

  final TfArg<num> priority;

  final TfArg<List<String>>? urls;

  Map<String, Object?> encode() => {
    'filtering_action': filteringAction.toTfJson(),
    'priority': priority.toTfJson(),
    'urls': ?urls?.toTfJson(),
  };
}

/// `filtering_action` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileFilteringAction._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkSecuritySecurityProfileFilteringAction.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileFilteringAction.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileFilteringAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = NetworkSecuritySecurityProfileFilteringAction._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = NetworkSecuritySecurityProfileFilteringAction._(
    TfArgLiteral('DENY'),
  );

  static const List<NetworkSecuritySecurityProfileFilteringAction> values = [
    allow,
    deny,
  ];
}

/// Factory wrapper for `google_network_security_security_profile`.
///
/// A security profile defines the behavior associated to a profile type.
///
/// Network Security **security profile** — threat-prevention / URL-filter /
/// custom intercept or mirroring profile attached via a security profile
/// group to Cloud NGFW Enterprise (or out-of-band integrations).
///
/// **Cost / apply:** gcp-cost: Network Security `E749-01A2-AE1F` Cloud NGFW
/// Enterprise Endpoint Uptime SKU `B778-1457-4A22` **$1.75/h** (plus Cloud
/// NGFW Enterprise Data Processing `994B-C7B9-C1F7` **$0.0193/GiBy** when
/// traffic is inspected). billing-behavior: profiles configure NGFW / out-of-
/// band inspection paths; a working stack implies expensive endpoint uptime
/// (and data processing). Org-scoped parents are common. Debt-only —
/// **Never** wire into apply-smoke.
///
/// Enable `networksecurity.googleapis.com` before apply. [type] selects the
/// profile kind (`THREAT_PREVENTION`, `URL_FILTERING`, …).
final class GoogleNetworkSecuritySecurityProfile extends Resource {
  static const String tfType = 'google_network_security_security_profile';

  GoogleNetworkSecuritySecurityProfile(
    super.localName, {
    required TfArg<String> name,
    required NetworkSecuritySecurityProfileType type,
    TfArg<String>? location,
    TfArg<String>? parent,
    TfArg<String>? description,
    NetworkSecuritySecurityProfileSettings? settings,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'type': type,
           'location': ?location,
           'parent': ?parent,
           'description': ?description,
           ...?settings?.argMap,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecuritySecurityProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecuritySecurityProfile>`.
  RefTo<GoogleNetworkSecuritySecurityProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
