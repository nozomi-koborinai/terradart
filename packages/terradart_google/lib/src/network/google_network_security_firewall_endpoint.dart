// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_firewall_endpoint`.
const Set<String> _googleNetworkSecurityFirewallEndpointSensitive = <String>{};

/// Typed helper for the `endpoint_settings` block of
/// `google_network_security_firewall_endpoint` (derived from provider schema).
@immutable
final class NetworkSecurityFirewallEndpointSettings {
  const NetworkSecurityFirewallEndpointSettings({
    this.contentCloudRegion,
    this.httpPartialResponseBlocked,
    this.jumboFramesEnabled,
  });

  final NetworkSecurityFirewallEndpointContentCloudRegion? contentCloudRegion;

  final TfArg<bool>? httpPartialResponseBlocked;

  final TfArg<bool>? jumboFramesEnabled;

  @internal
  Map<String, Object?> encode() => {
    'content_cloud_region': ?contentCloudRegion?.toTfJson(),
    'http_partial_response_blocked': ?httpPartialResponseBlocked?.toTfJson(),
    'jumbo_frames_enabled': ?jumboFramesEnabled?.toTfJson(),
  };
}

/// `content_cloud_region` — derived from the provider schema description.
extension type const NetworkSecurityFirewallEndpointContentCloudRegion._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecurityFirewallEndpointContentCloudRegion.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityFirewallEndpointContentCloudRegion.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityFirewallEndpointContentCloudRegion.arg(TfArg<String> arg)
    : this._(arg);

  static const usCentral = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('US_CENTRAL'),
  );
  static const apac = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('APAC'),
  );
  static const india = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('INDIA'),
  );
  static const uk = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('UK'),
  );
  static const france = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('FRANCE'),
  );
  static const japan = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('JAPAN'),
  );
  static const australia = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('AUSTRALIA'),
  );
  static const canada = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('CANADA'),
  );
  static const switzerland =
      NetworkSecurityFirewallEndpointContentCloudRegion._(
        TfArgLiteral('SWITZERLAND'),
      );
  static const netherlands =
      NetworkSecurityFirewallEndpointContentCloudRegion._(
        TfArgLiteral('NETHERLANDS'),
      );
  static const indonesia = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('INDONESIA'),
  );
  static const qatar = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('QATAR'),
  );
  static const taiwan = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('TAIWAN'),
  );
  static const poland = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('POLAND'),
  );
  static const southKorea = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('SOUTH_KOREA'),
  );
  static const saudiArabia =
      NetworkSecurityFirewallEndpointContentCloudRegion._(
        TfArgLiteral('SAUDI_ARABIA'),
      );
  static const italy = NetworkSecurityFirewallEndpointContentCloudRegion._(
    TfArgLiteral('ITALY'),
  );

  static const List<NetworkSecurityFirewallEndpointContentCloudRegion> values =
      [
        usCentral,
        apac,
        india,
        uk,
        france,
        japan,
        australia,
        canada,
        switzerland,
        netherlands,
        indonesia,
        qatar,
        taiwan,
        poland,
        southKorea,
        saudiArabia,
        italy,
      ];
}

/// Typed helper for the `wildfire_settings` block of
/// `google_network_security_firewall_endpoint` (derived from provider schema).
@immutable
final class NetworkSecurityFirewallEndpointWildfireSettings {
  const NetworkSecurityFirewallEndpointWildfireSettings({
    this.enabled,
    this.wildfireRealtimeLookupDuration,
    this.wildfireRealtimeLookupTimeoutAction,
    this.wildfireRegion,
    this.wildfireInlineCloudAnalysisSettings,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? wildfireRealtimeLookupDuration;

  final NetworkSecurityFirewallEndpointWildfireRealtimeLookupTimeoutAction?
  wildfireRealtimeLookupTimeoutAction;

  final NetworkSecurityFirewallEndpointWildfireRegion? wildfireRegion;

  final NetworkSecurityFirewallEndpointWildfireInlineCloudAnalysisSettings?
  wildfireInlineCloudAnalysisSettings;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'wildfire_realtime_lookup_duration': ?wildfireRealtimeLookupDuration
        ?.toTfJson(),
    'wildfire_realtime_lookup_timeout_action':
        ?wildfireRealtimeLookupTimeoutAction?.toTfJson(),
    'wildfire_region': ?wildfireRegion?.toTfJson(),
    'wildfire_inline_cloud_analysis_settings':
        ?wildfireInlineCloudAnalysisSettings?.encode(),
  };
}

/// `wildfire_realtime_lookup_timeout_action` — derived from the provider schema description.
extension type const NetworkSecurityFirewallEndpointWildfireRealtimeLookupTimeoutAction._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecurityFirewallEndpointWildfireRealtimeLookupTimeoutAction.variable(
    String name,
  ) : this._(TfArg.variable(name));
  NetworkSecurityFirewallEndpointWildfireRealtimeLookupTimeoutAction.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkSecurityFirewallEndpointWildfireRealtimeLookupTimeoutAction.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const allow =
      NetworkSecurityFirewallEndpointWildfireRealtimeLookupTimeoutAction._(
        TfArgLiteral('ALLOW'),
      );
  static const deny =
      NetworkSecurityFirewallEndpointWildfireRealtimeLookupTimeoutAction._(
        TfArgLiteral('DENY'),
      );

  static const List<
    NetworkSecurityFirewallEndpointWildfireRealtimeLookupTimeoutAction
  >
  values = [allow, deny];
}

/// `wildfire_region` — derived from the provider schema description.
extension type const NetworkSecurityFirewallEndpointWildfireRegion._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecurityFirewallEndpointWildfireRegion.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityFirewallEndpointWildfireRegion.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityFirewallEndpointWildfireRegion.arg(TfArg<String> arg)
    : this._(arg);

  static const canada = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('CANADA'),
  );
  static const unitedStates = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('UNITED_STATES'),
  );
  static const japan = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('JAPAN'),
  );
  static const singapore = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('SINGAPORE'),
  );
  static const unitedKingdom = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('UNITED_KINGDOM'),
  );
  static const australia = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('AUSTRALIA'),
  );
  static const germany = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('GERMANY'),
  );
  static const india = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('INDIA'),
  );
  static const switzerland = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('SWITZERLAND'),
  );
  static const poland = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('POLAND'),
  );
  static const indonesia = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('INDONESIA'),
  );
  static const taiwan = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('TAIWAN'),
  );
  static const france = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('FRANCE'),
  );
  static const qatar = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('QATAR'),
  );
  static const southKorea = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('SOUTH_KOREA'),
  );
  static const israel = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('ISRAEL'),
  );
  static const saudiArabia = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('SAUDI_ARABIA'),
  );
  static const spain = NetworkSecurityFirewallEndpointWildfireRegion._(
    TfArgLiteral('SPAIN'),
  );

  static const List<NetworkSecurityFirewallEndpointWildfireRegion> values = [
    canada,
    unitedStates,
    japan,
    singapore,
    unitedKingdom,
    australia,
    germany,
    india,
    switzerland,
    poland,
    indonesia,
    taiwan,
    france,
    qatar,
    southKorea,
    israel,
    saudiArabia,
    spain,
  ];
}

/// Typed helper for the `wildfire_settings.wildfire_inline_cloud_analysis_settings` block of
/// `google_network_security_firewall_endpoint` (derived from provider schema).
@immutable
final class NetworkSecurityFirewallEndpointWildfireInlineCloudAnalysisSettings {
  const NetworkSecurityFirewallEndpointWildfireInlineCloudAnalysisSettings({
    this.maxAnalysisDuration,
    this.submissionTimeoutLoggingDisabled,
    this.timeoutAction,
  });

  final TfArg<String>? maxAnalysisDuration;

  final TfArg<bool>? submissionTimeoutLoggingDisabled;

  final NetworkSecurityFirewallEndpointTimeoutAction? timeoutAction;

  @internal
  Map<String, Object?> encode() => {
    'max_analysis_duration': ?maxAnalysisDuration?.toTfJson(),
    'submission_timeout_logging_disabled': ?submissionTimeoutLoggingDisabled
        ?.toTfJson(),
    'timeout_action': ?timeoutAction?.toTfJson(),
  };
}

/// `timeout_action` — derived from the provider schema description.
extension type const NetworkSecurityFirewallEndpointTimeoutAction._(
  TfArg<String> _
)
    implements TfArg<String> {
  NetworkSecurityFirewallEndpointTimeoutAction.variable(String name)
    : this._(TfArg.variable(name));
  NetworkSecurityFirewallEndpointTimeoutAction.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkSecurityFirewallEndpointTimeoutAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = NetworkSecurityFirewallEndpointTimeoutAction._(
    TfArgLiteral('ALLOW'),
  );
  static const deny = NetworkSecurityFirewallEndpointTimeoutAction._(
    TfArgLiteral('DENY'),
  );

  static const List<NetworkSecurityFirewallEndpointTimeoutAction> values = [
    allow,
    deny,
  ];
}

/// Factory wrapper for `google_network_security_firewall_endpoint`.
///
/// A Firewall endpoint is a Cloud Firewall resource that enables layer 7
/// advanced protection capabilities, such as intrusion prevention, in your
/// network.
///
/// Network Security **Cloud NGFW firewall endpoint** — zonal L7 advanced
/// protection appliance (intrusion prevention) for VPC traffic.
///
/// **Cost / apply:** gcp-cost: Network Security `E749-01A2-AE1F` Cloud NGFW
/// Enterprise Endpoint Uptime SKU `B778-1457-4A22` **$1.75/h** (plus Cloud
/// NGFW Enterprise Data Processing `994B-C7B9-C1F7` **$0.0193/GiBy** when
/// traffic is inspected). billing-behavior: endpoint uptime bills while the
/// endpoint exists; destroy stops endpoint-hour charges. [parent] is
/// typically `organizations/{organization_id}` (project parent also
/// accepted); org-scoped endpoints are not applyable on standalone
/// `terradart-validate`. Too expensive for apply-smoke even once — debt-only.
/// **Never** wire into apply-smoke.
///
/// Enable `networksecurity.googleapis.com` before apply. Organization-scoped
/// creates also need [billingProjectId] (+ provider `user_project_override`).
final class GoogleNetworkSecurityFirewallEndpoint extends Resource {
  static const String tfType = 'google_network_security_firewall_endpoint';

  GoogleNetworkSecurityFirewallEndpoint(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> parent,
    TfArg<String>? billingProjectId,
    NetworkSecurityFirewallEndpointSettings? endpointSettings,
    NetworkSecurityFirewallEndpointWildfireSettings? wildfireSettings,
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
           'location': location,
           'parent': parent,
           'billing_project_id': ?billingProjectId,
           if (endpointSettings != null)
             'endpoint_settings': TfArg.literal(endpointSettings.encode()),
           if (wildfireSettings != null)
             'wildfire_settings': TfArg.literal(wildfireSettings.encode()),
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityFirewallEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityFirewallEndpoint>`.
  RefTo<GoogleNetworkSecurityFirewallEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associated_networks` attribute.
  TfRef<List<String>> get associatedNetworks =>
      TfRef.attribute<List<String>>(this, 'associated_networks');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `billing_project_id` attribute.
  TfRef<String> get billingProjectId =>
      TfRef.attribute<String>(this, 'billing_project_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
