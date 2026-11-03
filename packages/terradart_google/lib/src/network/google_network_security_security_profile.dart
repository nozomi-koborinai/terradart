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
  static const wildfireAnalysis = NetworkSecuritySecurityProfileType._(
    TfArgLiteral('WILDFIRE_ANALYSIS'),
  );

  static const List<NetworkSecuritySecurityProfileType> values = [
    threatPrevention,
    urlFiltering,
    customMirroring,
    customIntercept,
    wildfireAnalysis,
  ];
}

/// At most one of `threat_prevention_profile`, `url_filtering_profile`, `custom_mirroring_profile`, `custom_intercept_profile`, `wildfire_analysis_profile` on `google_network_security_security_profile`: the provider rejects
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

  /// Sets `wildfire_analysis_profile`.
  const factory NetworkSecuritySecurityProfileSettings.wildfireAnalysisProfile(
    NetworkSecuritySecurityProfileWildfireAnalysisProfile
    wildfireAnalysisProfile,
  ) = NetworkSecuritySecurityProfileSettingsWildfireAnalysisProfile;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
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

  @internal
  @override
  String get blockKey => 'threat_prevention_profile';

  @internal
  @override
  Map<String, Object?> encode() => {
    'threat_prevention_profile': threatPreventionProfile.encode(),
  };

  @internal
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

  @internal
  @override
  String get blockKey => 'url_filtering_profile';

  @internal
  @override
  Map<String, Object?> encode() => {
    'url_filtering_profile': urlFilteringProfile.encode(),
  };

  @internal
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

  @internal
  @override
  String get blockKey => 'custom_mirroring_profile';

  @internal
  @override
  Map<String, Object?> encode() => {
    'custom_mirroring_profile': customMirroringProfile.encode(),
  };

  @internal
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

  @internal
  @override
  String get blockKey => 'custom_intercept_profile';

  @internal
  @override
  Map<String, Object?> encode() => {
    'custom_intercept_profile': customInterceptProfile.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'custom_intercept_profile': TfArg.literal(customInterceptProfile.encode()),
  };
}

/// The [NetworkSecuritySecurityProfileSettings.wildfireAnalysisProfile] choice: sets `wildfire_analysis_profile`.
final class NetworkSecuritySecurityProfileSettingsWildfireAnalysisProfile
    extends NetworkSecuritySecurityProfileSettings {
  const NetworkSecuritySecurityProfileSettingsWildfireAnalysisProfile(
    this.wildfireAnalysisProfile,
  );

  final NetworkSecuritySecurityProfileWildfireAnalysisProfile
  wildfireAnalysisProfile;

  @internal
  @override
  String get blockKey => 'wildfire_analysis_profile';

  @internal
  @override
  Map<String, Object?> encode() => {
    'wildfire_analysis_profile': wildfireAnalysisProfile.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'wildfire_analysis_profile': TfArg.literal(
      wildfireAnalysisProfile.encode(),
    ),
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'filtering_action': filteringAction.toTfJson(),
    'priority': priority.toTfJson(),
    'urls': ?urls?.toTfJson(),
  };
}

/// `filtering_action` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileFilteringAction._(
  TfArg<String> _
)
    implements TfArg<String> {
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

/// Typed helper for the `wildfire_analysis_profile` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileWildfireAnalysisProfile {
  const NetworkSecuritySecurityProfileWildfireAnalysisProfile({
    this.wildfireRealtimeLookup,
    this.wildfireInlineCloudAnalysisRules,
    this.wildfireInlineMlOverrides,
    this.wildfireInlineMlSetting,
    this.wildfireOverrides,
    this.wildfireSubmissionRules,
    this.wildfireThreatOverrides,
  });

  final TfArg<bool>? wildfireRealtimeLookup;

  final List<NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRules>?
  wildfireInlineCloudAnalysisRules;

  final List<NetworkSecuritySecurityProfileWildfireInlineMlOverrides>?
  wildfireInlineMlOverrides;

  final NetworkSecuritySecurityProfileWildfireInlineMlSetting?
  wildfireInlineMlSetting;

  final List<NetworkSecuritySecurityProfileWildfireOverrides>?
  wildfireOverrides;

  final List<NetworkSecuritySecurityProfileWildfireSubmissionRules>?
  wildfireSubmissionRules;

  final List<NetworkSecuritySecurityProfileWildfireThreatOverrides>?
  wildfireThreatOverrides;

  @internal
  Map<String, Object?> encode() => {
    'wildfire_realtime_lookup': ?wildfireRealtimeLookup?.toTfJson(),
    if (wildfireInlineCloudAnalysisRules != null)
      'wildfire_inline_cloud_analysis_rules': [
        for (final e in wildfireInlineCloudAnalysisRules!) e.encode(),
      ],
    if (wildfireInlineMlOverrides != null)
      'wildfire_inline_ml_overrides': [
        for (final e in wildfireInlineMlOverrides!) e.encode(),
      ],
    'wildfire_inline_ml_setting': ?wildfireInlineMlSetting?.encode(),
    if (wildfireOverrides != null)
      'wildfire_overrides': [for (final e in wildfireOverrides!) e.encode()],
    if (wildfireSubmissionRules != null)
      'wildfire_submission_rules': [
        for (final e in wildfireSubmissionRules!) e.encode(),
      ],
    if (wildfireThreatOverrides != null)
      'wildfire_threat_overrides': [
        for (final e in wildfireThreatOverrides!) e.encode(),
      ],
  };
}

/// Typed helper for the `wildfire_analysis_profile.wildfire_inline_cloud_analysis_rules` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRules {
  const NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRules({
    required this.action,
    required this.direction,
    required this.fileSelectionMode,
    this.customFileTypes,
  });

  final NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesAction
  action;

  final NetworkSecuritySecurityProfileDirection direction;

  final NetworkSecuritySecurityProfileFileSelectionMode fileSelectionMode;

  final NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesCustomFileTypes?
  customFileTypes;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'direction': direction.toTfJson(),
    'file_selection_mode': fileSelectionMode.toTfJson(),
    'custom_file_types': ?customFileTypes?.encode(),
  };
}

/// `action` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesAction._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allow =
      NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesAction._(
        TfArgLiteral('ALLOW'),
      );
  static const deny =
      NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesAction._(
        TfArgLiteral('DENY'),
      );
  static const alert =
      NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesAction._(
        TfArgLiteral('ALERT'),
      );

  static const List<
    NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesAction
  >
  values = [allow, deny, alert];
}

/// `direction` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileDirection._(TfArg<String> _)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileDirection.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileDirection.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const upload = NetworkSecuritySecurityProfileDirection._(
    TfArgLiteral('UPLOAD'),
  );
  static const download = NetworkSecuritySecurityProfileDirection._(
    TfArgLiteral('DOWNLOAD'),
  );
  static const both = NetworkSecuritySecurityProfileDirection._(
    TfArgLiteral('BOTH'),
  );

  static const List<NetworkSecuritySecurityProfileDirection> values = [
    upload,
    download,
    both,
  ];
}

/// `file_selection_mode` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileFileSelectionMode._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileFileSelectionMode.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileFileSelectionMode.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileFileSelectionMode.arg(TfArg<String> arg)
    : this._(arg);

  static const allFileTypes = NetworkSecuritySecurityProfileFileSelectionMode._(
    TfArgLiteral('ALL_FILE_TYPES'),
  );
  static const customFileTypes =
      NetworkSecuritySecurityProfileFileSelectionMode._(
        TfArgLiteral('CUSTOM_FILE_TYPES'),
      );

  static const List<NetworkSecuritySecurityProfileFileSelectionMode> values = [
    allFileTypes,
    customFileTypes,
  ];
}

/// Typed helper for the `wildfire_analysis_profile.wildfire_inline_cloud_analysis_rules.custom_file_types` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesCustomFileTypes {
  const NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesCustomFileTypes({
    required this.fileTypes,
  });

  final EnumList<
    NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesFileTypes
  >
  fileTypes;

  @internal
  Map<String, Object?> encode() => {'file_types': fileTypes.toTfJson()};
}

/// `file_types` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesFileTypes._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesFileTypes.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesFileTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesFileTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const pe =
      NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesFileTypes._(
        TfArgLiteral('PE'),
      );

  static const List<
    NetworkSecuritySecurityProfileWildfireInlineCloudAnalysisRulesFileTypes
  >
  values = [pe];
}

/// Typed helper for the `wildfire_analysis_profile.wildfire_inline_ml_overrides` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileWildfireInlineMlOverrides {
  const NetworkSecuritySecurityProfileWildfireInlineMlOverrides({
    required this.action,
    required this.protocol,
  });

  final NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction action;

  final NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol
  protocol;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const wildfireDefaultAction =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction._(
        TfArgLiteral('WILDFIRE_DEFAULT_ACTION'),
      );
  static const wildfireAllow =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction._(
        TfArgLiteral('WILDFIRE_ALLOW'),
      );
  static const wildfireAlert =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction._(
        TfArgLiteral('WILDFIRE_ALERT'),
      );
  static const wildfireDeny =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction._(
        TfArgLiteral('WILDFIRE_DENY'),
      );

  static const List<
    NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction
  >
  values = [wildfireDefaultAction, wildfireAllow, wildfireAlert, wildfireDeny];
}

/// `protocol` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const wildfireSmtp =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol._(
        TfArgLiteral('WILDFIRE_SMTP'),
      );
  static const wildfireSmb =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol._(
        TfArgLiteral('WILDFIRE_SMB'),
      );
  static const wildfirePop3 =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol._(
        TfArgLiteral('WILDFIRE_POP3'),
      );
  static const wildfireImap =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol._(
        TfArgLiteral('WILDFIRE_IMAP'),
      );
  static const wildfireHttp2 =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol._(
        TfArgLiteral('WILDFIRE_HTTP2'),
      );
  static const wildfireHttp =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol._(
        TfArgLiteral('WILDFIRE_HTTP'),
      );
  static const wildfireFtp =
      NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol._(
        TfArgLiteral('WILDFIRE_FTP'),
      );

  static const List<
    NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol
  >
  values = [
    wildfireSmtp,
    wildfireSmb,
    wildfirePop3,
    wildfireImap,
    wildfireHttp2,
    wildfireHttp,
    wildfireFtp,
  ];
}

/// Typed helper for the `wildfire_analysis_profile.wildfire_inline_ml_setting` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileWildfireInlineMlSetting {
  const NetworkSecuritySecurityProfileWildfireInlineMlSetting({
    this.fileExceptions,
    this.inlineMlConfigs,
  });

  final List<NetworkSecuritySecurityProfileFileExceptions>? fileExceptions;

  final List<NetworkSecuritySecurityProfileInlineMlConfigs>? inlineMlConfigs;

  @internal
  Map<String, Object?> encode() => {
    if (fileExceptions != null)
      'file_exceptions': [for (final e in fileExceptions!) e.encode()],
    if (inlineMlConfigs != null)
      'inline_ml_configs': [for (final e in inlineMlConfigs!) e.encode()],
  };
}

/// Typed helper for the `wildfire_analysis_profile.wildfire_inline_ml_setting.file_exceptions` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileFileExceptions {
  const NetworkSecuritySecurityProfileFileExceptions({
    this.filename,
    required this.partialHash,
  });

  final TfArg<String>? filename;

  final TfArg<String> partialHash;

  @internal
  Map<String, Object?> encode() => {
    'filename': ?filename?.toTfJson(),
    'partial_hash': partialHash.toTfJson(),
  };
}

/// Typed helper for the `wildfire_analysis_profile.wildfire_inline_ml_setting.inline_ml_configs` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileInlineMlConfigs {
  const NetworkSecuritySecurityProfileInlineMlConfigs({
    required this.action,
    required this.fileType,
  });

  final NetworkSecuritySecurityProfileInlineMlConfigsAction action;

  final NetworkSecuritySecurityProfileFileType fileType;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'file_type': fileType.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileInlineMlConfigsAction._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileInlineMlConfigsAction.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileInlineMlConfigsAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileInlineMlConfigsAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const disable = NetworkSecuritySecurityProfileInlineMlConfigsAction._(
    TfArgLiteral('DISABLE'),
  );
  static const alert = NetworkSecuritySecurityProfileInlineMlConfigsAction._(
    TfArgLiteral('ALERT'),
  );
  static const enable = NetworkSecuritySecurityProfileInlineMlConfigsAction._(
    TfArgLiteral('ENABLE'),
  );

  static const List<NetworkSecuritySecurityProfileInlineMlConfigsAction>
  values = [disable, alert, enable];
}

/// `file_type` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileFileType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileFileType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileFileType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileFileType.arg(TfArg<String> arg)
    : this._(arg);

  static const windowsExecutable = NetworkSecuritySecurityProfileFileType._(
    TfArgLiteral('WINDOWS_EXECUTABLE'),
  );
  static const powershellScript1 = NetworkSecuritySecurityProfileFileType._(
    TfArgLiteral('POWERSHELL_SCRIPT1'),
  );
  static const powershellScript2 = NetworkSecuritySecurityProfileFileType._(
    TfArgLiteral('POWERSHELL_SCRIPT2'),
  );
  static const elf = NetworkSecuritySecurityProfileFileType._(
    TfArgLiteral('ELF'),
  );
  static const msOffice = NetworkSecuritySecurityProfileFileType._(
    TfArgLiteral('MS_OFFICE'),
  );
  static const shell = NetworkSecuritySecurityProfileFileType._(
    TfArgLiteral('SHELL'),
  );
  static const ooxml = NetworkSecuritySecurityProfileFileType._(
    TfArgLiteral('OOXML'),
  );
  static const macho = NetworkSecuritySecurityProfileFileType._(
    TfArgLiteral('MACHO'),
  );

  static const List<NetworkSecuritySecurityProfileFileType> values = [
    windowsExecutable,
    powershellScript1,
    powershellScript2,
    elf,
    msOffice,
    shell,
    ooxml,
    macho,
  ];
}

/// Typed helper for the `wildfire_analysis_profile.wildfire_overrides` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileWildfireOverrides {
  const NetworkSecuritySecurityProfileWildfireOverrides({
    required this.action,
    required this.protocol,
  });

  final NetworkSecuritySecurityProfileWildfireInlineMlOverridesAction action;

  final NetworkSecuritySecurityProfileWildfireInlineMlOverridesProtocol
  protocol;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// Typed helper for the `wildfire_analysis_profile.wildfire_submission_rules` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileWildfireSubmissionRules {
  const NetworkSecuritySecurityProfileWildfireSubmissionRules({
    required this.direction,
    required this.fileSelectionMode,
    this.customFileTypes,
  });

  final NetworkSecuritySecurityProfileDirection direction;

  final NetworkSecuritySecurityProfileFileSelectionMode fileSelectionMode;

  final NetworkSecuritySecurityProfileWildfireSubmissionRulesCustomFileTypes?
  customFileTypes;

  @internal
  Map<String, Object?> encode() => {
    'direction': direction.toTfJson(),
    'file_selection_mode': fileSelectionMode.toTfJson(),
    'custom_file_types': ?customFileTypes?.encode(),
  };
}

/// Typed helper for the `wildfire_analysis_profile.wildfire_submission_rules.custom_file_types` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileWildfireSubmissionRulesCustomFileTypes {
  const NetworkSecuritySecurityProfileWildfireSubmissionRulesCustomFileTypes({
    required this.fileTypes,
  });

  final EnumList<NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes>
  fileTypes;

  @internal
  Map<String, Object?> encode() => {'file_types': fileTypes.toTfJson()};
}

/// `file_types` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const apk =
      NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
        TfArgLiteral('APK'),
      );
  static const archive =
      NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
        TfArgLiteral('ARCHIVE'),
      );
  static const emailLink =
      NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
        TfArgLiteral('EMAIL_LINK'),
      );
  static const flash =
      NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
        TfArgLiteral('FLASH'),
      );
  static const jar =
      NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
        TfArgLiteral('JAR'),
      );
  static const linux =
      NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
        TfArgLiteral('LINUX'),
      );
  static const msOffice =
      NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
        TfArgLiteral('MS_OFFICE'),
      );
  static const pdf =
      NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
        TfArgLiteral('PDF'),
      );
  static const pe =
      NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
        TfArgLiteral('PE'),
      );
  static const script =
      NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes._(
        TfArgLiteral('SCRIPT'),
      );

  static const List<
    NetworkSecuritySecurityProfileWildfireSubmissionRulesFileTypes
  >
  values = [
    apk,
    archive,
    emailLink,
    flash,
    jar,
    linux,
    msOffice,
    pdf,
    pe,
    script,
  ];
}

/// Typed helper for the `wildfire_analysis_profile.wildfire_threat_overrides` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileWildfireThreatOverrides {
  const NetworkSecuritySecurityProfileWildfireThreatOverrides({
    required this.action,
    required this.threatId,
  });

  final NetworkSecuritySecurityProfileWildfireThreatOverridesAction action;

  final TfArg<String> threatId;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'threat_id': threatId.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const NetworkSecuritySecurityProfileWildfireThreatOverridesAction._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecuritySecurityProfileWildfireThreatOverridesAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkSecuritySecurityProfileWildfireThreatOverridesAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkSecuritySecurityProfileWildfireThreatOverridesAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const wildfireDefaultAction =
      NetworkSecuritySecurityProfileWildfireThreatOverridesAction._(
        TfArgLiteral('WILDFIRE_DEFAULT_ACTION'),
      );
  static const wildfireAllow =
      NetworkSecuritySecurityProfileWildfireThreatOverridesAction._(
        TfArgLiteral('WILDFIRE_ALLOW'),
      );

  static const List<NetworkSecuritySecurityProfileWildfireThreatOverridesAction>
  values = [wildfireDefaultAction, wildfireAllow];
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
