// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_security_profile`.
const Set<String> _googleNetworkSecuritySecurityProfileSensitive = <String>{};

/// Network Security Security Profile enum for `type`.
enum NetworkSecuritySecurityProfileType implements TerraformEnum {
  threatPrevention('THREAT_PREVENTION'),
  urlFiltering('URL_FILTERING'),
  customMirroring('CUSTOM_MIRRORING'),
  customIntercept('CUSTOM_INTERCEPT');

  const NetworkSecuritySecurityProfileType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<List<Object?>>? mirroringDeploymentGroups;

  final TfArg<String> mirroringEndpointGroup;

  Map<String, Object?> encode() => {
    if (mirroringDeploymentGroups != null)
      'mirroring_deployment_groups': mirroringDeploymentGroups!.toTfJson(),
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

  final List<
    NetworkSecuritySecurityProfileThreatPreventionProfileAntivirusOverrides
  >?
  antivirusOverrides;

  final List<
    NetworkSecuritySecurityProfileThreatPreventionProfileSeverityOverrides
  >?
  severityOverrides;

  final List<
    NetworkSecuritySecurityProfileThreatPreventionProfileThreatOverrides
  >?
  threatOverrides;

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
final class NetworkSecuritySecurityProfileThreatPreventionProfileAntivirusOverrides {
  const NetworkSecuritySecurityProfileThreatPreventionProfileAntivirusOverrides({
    required this.action,
    required this.protocol,
  });

  final TfArg<
    NetworkSecuritySecurityProfileThreatPreventionProfileAntivirusOverridesAction
  >
  action;

  final TfArg<
    NetworkSecuritySecurityProfileThreatPreventionProfileAntivirusOverridesProtocol
  >
  protocol;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'protocol': protocol.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum NetworkSecuritySecurityProfileThreatPreventionProfileAntivirusOverridesAction
    implements TerraformEnum {
  alert('ALERT'),
  allow('ALLOW'),
  defaultAction('DEFAULT_ACTION'),
  deny('DENY');

  const NetworkSecuritySecurityProfileThreatPreventionProfileAntivirusOverridesAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `protocol` — derived from the provider schema description.
enum NetworkSecuritySecurityProfileThreatPreventionProfileAntivirusOverridesProtocol
    implements TerraformEnum {
  smtp('SMTP'),
  smb('SMB'),
  pop3('POP3'),
  imap('IMAP'),
  http2('HTTP2'),
  http('HTTP'),
  ftp('FTP');

  const NetworkSecuritySecurityProfileThreatPreventionProfileAntivirusOverridesProtocol(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `threat_prevention_profile.severity_overrides` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileThreatPreventionProfileSeverityOverrides {
  const NetworkSecuritySecurityProfileThreatPreventionProfileSeverityOverrides({
    required this.action,
    required this.severity,
  });

  final TfArg<
    NetworkSecuritySecurityProfileThreatPreventionProfileSeverityOverridesAction
  >
  action;

  final TfArg<
    NetworkSecuritySecurityProfileThreatPreventionProfileSeverityOverridesSeverity
  >
  severity;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'severity': severity.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum NetworkSecuritySecurityProfileThreatPreventionProfileSeverityOverridesAction
    implements TerraformEnum {
  alert('ALERT'),
  allow('ALLOW'),
  defaultAction('DEFAULT_ACTION'),
  deny('DENY');

  const NetworkSecuritySecurityProfileThreatPreventionProfileSeverityOverridesAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `severity` — derived from the provider schema description.
enum NetworkSecuritySecurityProfileThreatPreventionProfileSeverityOverridesSeverity
    implements TerraformEnum {
  critical('CRITICAL'),
  high('HIGH'),
  informational('INFORMATIONAL'),
  low('LOW'),
  medium('MEDIUM');

  const NetworkSecuritySecurityProfileThreatPreventionProfileSeverityOverridesSeverity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `threat_prevention_profile.threat_overrides` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileThreatPreventionProfileThreatOverrides {
  const NetworkSecuritySecurityProfileThreatPreventionProfileThreatOverrides({
    required this.action,
    required this.threatId,
  });

  final TfArg<
    NetworkSecuritySecurityProfileThreatPreventionProfileThreatOverridesAction
  >
  action;

  final TfArg<String> threatId;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'threat_id': threatId.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum NetworkSecuritySecurityProfileThreatPreventionProfileThreatOverridesAction
    implements TerraformEnum {
  alert('ALERT'),
  allow('ALLOW'),
  defaultAction('DEFAULT_ACTION'),
  deny('DENY');

  const NetworkSecuritySecurityProfileThreatPreventionProfileThreatOverridesAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `url_filtering_profile` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileUrlFilteringProfile {
  const NetworkSecuritySecurityProfileUrlFilteringProfile({this.urlFilters});

  final List<NetworkSecuritySecurityProfileUrlFilteringProfileUrlFilters>?
  urlFilters;

  Map<String, Object?> encode() => {
    if (urlFilters != null)
      'url_filters': [for (final e in urlFilters!) e.encode()],
  };
}

/// Typed helper for the `url_filtering_profile.url_filters` block of
/// `google_network_security_security_profile` (derived from provider schema).
@immutable
final class NetworkSecuritySecurityProfileUrlFilteringProfileUrlFilters {
  const NetworkSecuritySecurityProfileUrlFilteringProfileUrlFilters({
    required this.filteringAction,
    required this.priority,
    this.urls,
  });

  final TfArg<
    NetworkSecuritySecurityProfileUrlFilteringProfileUrlFiltersFilteringAction
  >
  filteringAction;

  final TfArg<num> priority;

  final TfArg<List<Object?>>? urls;

  Map<String, Object?> encode() => {
    'filtering_action': filteringAction.toTfJson(),
    'priority': priority.toTfJson(),
    if (urls != null) 'urls': urls!.toTfJson(),
  };
}

/// `filtering_action` — derived from the provider schema description.
enum NetworkSecuritySecurityProfileUrlFilteringProfileUrlFiltersFilteringAction
    implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const NetworkSecuritySecurityProfileUrlFilteringProfileUrlFiltersFilteringAction(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  GoogleNetworkSecuritySecurityProfile({
    required super.localName,
    required TfArg<String> name,
    required TfArg<NetworkSecuritySecurityProfileType> type,
    TfArg<String>? location,
    TfArg<String>? parent,
    TfArg<String>? description,
    NetworkSecuritySecurityProfileThreatPreventionProfile?
    threatPreventionProfile,
    NetworkSecuritySecurityProfileUrlFilteringProfile? urlFilteringProfile,
    NetworkSecuritySecurityProfileCustomInterceptProfile?
    customInterceptProfile,
    NetworkSecuritySecurityProfileCustomMirroringProfile?
    customMirroringProfile,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'type': type,
           if (location != null) 'location': location,
           if (parent != null) 'parent': parent,
           if (description != null) 'description': description,
           if (threatPreventionProfile != null)
             'threat_prevention_profile': TfArg.literal(
               threatPreventionProfile.encode(),
             ),
           if (urlFilteringProfile != null)
             'url_filtering_profile': TfArg.literal(
               urlFilteringProfile.encode(),
             ),
           if (customInterceptProfile != null)
             'custom_intercept_profile': TfArg.literal(
               customInterceptProfile.encode(),
             ),
           if (customMirroringProfile != null)
             'custom_mirroring_profile': TfArg.literal(
               customMirroringProfile.encode(),
             ),
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecuritySecurityProfileSensitive;

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLinkRef => TfRef.attribute<String>(this, 'self_link');
}
