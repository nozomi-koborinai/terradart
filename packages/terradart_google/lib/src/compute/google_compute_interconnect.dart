// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_interconnect`.
const Set<String> _googleComputeInterconnectSensitive = <String>{};

/// Compute Interconnect enum for `interconnect_type`.
extension type const ComputeInterconnectType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeInterconnectType.variable(String name) : this._(TfArg.variable(name));
  ComputeInterconnectType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInterconnectType.arg(TfArg<String> arg) : this._(arg);

  static const dedicated = ComputeInterconnectType._(TfArgLiteral('DEDICATED'));
  static const partner = ComputeInterconnectType._(TfArgLiteral('PARTNER'));
  static const itPrivate = ComputeInterconnectType._(
    TfArgLiteral('IT_PRIVATE'),
  );

  static const List<ComputeInterconnectType> values = [
    dedicated,
    partner,
    itPrivate,
  ];
}

/// Compute Interconnect Link enum for `link_type`.
extension type const ComputeInterconnectLinkType._(TfArg<String> _)
    implements TfArg<String> {
  ComputeInterconnectLinkType.variable(String name)
    : this._(TfArg.variable(name));
  ComputeInterconnectLinkType.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInterconnectLinkType.arg(TfArg<String> arg) : this._(arg);

  static const linkTypeEthernet10gLr = ComputeInterconnectLinkType._(
    TfArgLiteral('LINK_TYPE_ETHERNET_10G_LR'),
  );
  static const linkTypeEthernet100gLr = ComputeInterconnectLinkType._(
    TfArgLiteral('LINK_TYPE_ETHERNET_100G_LR'),
  );
  static const linkTypeEthernet400gLr4 = ComputeInterconnectLinkType._(
    TfArgLiteral('LINK_TYPE_ETHERNET_400G_LR4'),
  );

  static const List<ComputeInterconnectLinkType> values = [
    linkTypeEthernet10gLr,
    linkTypeEthernet100gLr,
    linkTypeEthernet400gLr4,
  ];
}

/// Compute Interconnect Requested enum for `requested_features`.
extension type const ComputeInterconnectRequestedFeatures._(TfArg<String> _)
    implements TfArg<String> {
  ComputeInterconnectRequestedFeatures.variable(String name)
    : this._(TfArg.variable(name));
  ComputeInterconnectRequestedFeatures.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInterconnectRequestedFeatures.arg(TfArg<String> arg)
    : this._(arg);

  static const macsec = ComputeInterconnectRequestedFeatures._(
    TfArgLiteral('MACSEC'),
  );
  static const crossSiteNetwork = ComputeInterconnectRequestedFeatures._(
    TfArgLiteral('CROSS_SITE_NETWORK'),
  );
  static const ifMacsec = ComputeInterconnectRequestedFeatures._(
    TfArgLiteral('IF_MACSEC'),
  );
  static const ifL2Forwarding = ComputeInterconnectRequestedFeatures._(
    TfArgLiteral('IF_L2_FORWARDING'),
  );

  static const List<ComputeInterconnectRequestedFeatures> values = [
    macsec,
    crossSiteNetwork,
    ifMacsec,
    ifL2Forwarding,
  ];
}

/// Typed helper for the `application_aware_interconnect` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectApplicationAwareInterconnect {
  const ComputeInterconnectApplicationAwareInterconnect({
    this.profileDescription,
    this.bandwidthPercentagePolicy,
    this.shapeAveragePercentage,
    this.strictPriorityPolicy,
  });

  final TfArg<String>? profileDescription;

  final ComputeInterconnectBandwidthPercentagePolicy? bandwidthPercentagePolicy;

  final List<ComputeInterconnectShapeAveragePercentage>? shapeAveragePercentage;

  final ComputeInterconnectStrictPriorityPolicy? strictPriorityPolicy;

  @internal
  Map<String, Object?> encode() => {
    'profile_description': ?profileDescription?.toTfJson(),
    'bandwidth_percentage_policy': ?bandwidthPercentagePolicy?.encode(),
    if (shapeAveragePercentage != null)
      'shape_average_percentage': [
        for (final e in shapeAveragePercentage!) e.encode(),
      ],
    'strict_priority_policy': ?strictPriorityPolicy?.encode(),
  };
}

/// Typed helper for the `application_aware_interconnect.bandwidth_percentage_policy` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectBandwidthPercentagePolicy {
  const ComputeInterconnectBandwidthPercentagePolicy({
    this.bandwidthPercentage,
  });

  final List<ComputeInterconnectBandwidthPercentage>? bandwidthPercentage;

  @internal
  Map<String, Object?> encode() => {
    if (bandwidthPercentage != null)
      'bandwidth_percentage': [
        for (final e in bandwidthPercentage!) e.encode(),
      ],
  };
}

/// Typed helper for the `application_aware_interconnect.bandwidth_percentage_policy.bandwidth_percentage` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectBandwidthPercentage {
  const ComputeInterconnectBandwidthPercentage({
    this.percentage,
    this.trafficClass,
  });

  final TfArg<num>? percentage;

  final ComputeInterconnectTrafficClass? trafficClass;

  @internal
  Map<String, Object?> encode() => {
    'percentage': ?percentage?.toTfJson(),
    'traffic_class': ?trafficClass?.toTfJson(),
  };
}

/// `traffic_class` — derived from the provider schema description.
extension type const ComputeInterconnectTrafficClass._(TfArg<String> _)
    implements TfArg<String> {
  ComputeInterconnectTrafficClass.variable(String name)
    : this._(TfArg.variable(name));
  ComputeInterconnectTrafficClass.expression(String template)
    : this._(TfArg.expression(template));
  const ComputeInterconnectTrafficClass.arg(TfArg<String> arg) : this._(arg);

  static const tcUnspecified = ComputeInterconnectTrafficClass._(
    TfArgLiteral('TC_UNSPECIFIED'),
  );
  static const tc1 = ComputeInterconnectTrafficClass._(TfArgLiteral('TC1'));
  static const tc2 = ComputeInterconnectTrafficClass._(TfArgLiteral('TC2'));
  static const tc3 = ComputeInterconnectTrafficClass._(TfArgLiteral('TC3'));
  static const tc4 = ComputeInterconnectTrafficClass._(TfArgLiteral('TC4'));
  static const tc5 = ComputeInterconnectTrafficClass._(TfArgLiteral('TC5'));
  static const tc6 = ComputeInterconnectTrafficClass._(TfArgLiteral('TC6'));

  static const List<ComputeInterconnectTrafficClass> values = [
    tcUnspecified,
    tc1,
    tc2,
    tc3,
    tc4,
    tc5,
    tc6,
  ];
}

/// Typed helper for the `application_aware_interconnect.shape_average_percentage` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectShapeAveragePercentage {
  const ComputeInterconnectShapeAveragePercentage({
    this.percentage,
    this.trafficClass,
  });

  final TfArg<num>? percentage;

  final ComputeInterconnectTrafficClass? trafficClass;

  @internal
  Map<String, Object?> encode() => {
    'percentage': ?percentage?.toTfJson(),
    'traffic_class': ?trafficClass?.toTfJson(),
  };
}

/// Typed helper for the `application_aware_interconnect.strict_priority_policy` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectStrictPriorityPolicy {
  const ComputeInterconnectStrictPriorityPolicy();

  @internal
  Map<String, Object?> encode() => {};
}

/// Typed helper for the `macsec` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectMacsec {
  const ComputeInterconnectMacsec({this.failOpen, required this.preSharedKeys});

  final TfArg<bool>? failOpen;

  final List<ComputeInterconnectPreSharedKeys> preSharedKeys;

  @internal
  Map<String, Object?> encode() => {
    'fail_open': ?failOpen?.toTfJson(),
    'pre_shared_keys': [for (final e in preSharedKeys) e.encode()],
  };
}

/// Typed helper for the `macsec.pre_shared_keys` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectPreSharedKeys {
  const ComputeInterconnectPreSharedKeys({
    this.failOpen,
    required this.name,
    this.startTime,
  });

  final TfArg<bool>? failOpen;

  final TfArg<String> name;

  final TfArg<String>? startTime;

  @internal
  Map<String, Object?> encode() => {
    'fail_open': ?failOpen?.toTfJson(),
    'name': name.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_interconnect` (derived from provider schema).
@immutable
final class ComputeInterconnectParams {
  const ComputeInterconnectParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  @internal
  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_interconnect`.
///
/// Represents an Interconnect resource. The Interconnect resource is a
/// dedicated connection between Google's network and your on-premises network.
final class GoogleComputeInterconnect extends Resource {
  static const String tfType = 'google_compute_interconnect';

  GoogleComputeInterconnect(
    super.localName, {
    required TfArg<String> name,
    required ComputeInterconnectType interconnectType,
    required ComputeInterconnectLinkType linkType,
    required TfArg<String> location,
    required TfArg<num> requestedLinkCount,
    TfArg<String>? customerName,
    TfArg<String>? description,
    TfArg<bool>? adminEnabled,
    TfArg<bool>? macsecEnabled,
    TfArg<String>? nocContactEmail,
    TfArg<String>? remoteLocation,
    EnumList<ComputeInterconnectRequestedFeatures>? requestedFeatures,
    TfArg<Map<String, String>>? labels,
    ComputeInterconnectMacsec? macsec,
    ComputeInterconnectParams? params,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'interconnect_type': interconnectType,
           'link_type': linkType,
           'location': location,
           'requested_link_count': requestedLinkCount,
           'customer_name': ?customerName,
           'description': ?description,
           'admin_enabled': ?adminEnabled,
           'macsec_enabled': ?macsecEnabled,
           'noc_contact_email': ?nocContactEmail,
           'remote_location': ?remoteLocation,
           'requested_features': ?requestedFeatures,
           'labels': ?labels,
           if (macsec != null) 'macsec': TfArg.literal(macsec.encode()),
           if (params != null) 'params': TfArg.literal(params.encode()),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInterconnectSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInterconnect>`.
  RefTo<GoogleComputeInterconnect> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `available_features` attribute.
  TfRef<List<String>> get availableFeatures =>
      TfRef.attribute<List<String>>(this, 'available_features');

  /// Reference to `circuit_infos` attribute.
  TfRef<List<Map<String, Object?>>> get circuitInfos =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'circuit_infos');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_location` attribute.
  TfRef<String> get effectiveLocation =>
      TfRef.attribute<String>(this, 'effective_location');

  /// Reference to `expected_outages` attribute.
  TfRef<List<Map<String, Object?>>> get expectedOutages =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'expected_outages');

  /// Reference to `google_ip_address` attribute.
  TfRef<String> get googleIpAddress =>
      TfRef.attribute<String>(this, 'google_ip_address');

  /// Reference to `google_reference_id` attribute.
  TfRef<String> get googleReferenceId =>
      TfRef.attribute<String>(this, 'google_reference_id');

  /// Reference to `interconnect_attachments` attribute.
  TfRef<List<String>> get interconnectAttachments =>
      TfRef.attribute<List<String>>(this, 'interconnect_attachments');

  /// Reference to `interconnect_groups` attribute.
  TfRef<List<String>> get interconnectGroups =>
      TfRef.attribute<List<String>>(this, 'interconnect_groups');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `operational_status` attribute.
  TfRef<String> get operationalStatus =>
      TfRef.attribute<String>(this, 'operational_status');

  /// Reference to `peer_ip_address` attribute.
  TfRef<String> get peerIpAddress =>
      TfRef.attribute<String>(this, 'peer_ip_address');

  /// Reference to `provisioned_link_count` attribute.
  TfRef<num> get provisionedLinkCount =>
      TfRef.attribute<num>(this, 'provisioned_link_count');

  /// Reference to `satisfies_pzs` attribute.
  TfRef<bool> get satisfiesPzs => TfRef.attribute<bool>(this, 'satisfies_pzs');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `wire_groups` attribute.
  TfRef<List<String>> get wireGroups =>
      TfRef.attribute<List<String>>(this, 'wire_groups');

  /// Reference to `aai_enabled` attribute.
  TfRef<bool> get aaiEnabled => TfRef.attribute<bool>(this, 'aai_enabled');

  /// Reference to `admin_enabled` attribute.
  TfRef<bool> get adminEnabled => TfRef.attribute<bool>(this, 'admin_enabled');

  /// Reference to `customer_name` attribute.
  TfRef<String> get customerName =>
      TfRef.attribute<String>(this, 'customer_name');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `interconnect_type` attribute.
  TfRef<String> get interconnectType =>
      TfRef.attribute<String>(this, 'interconnect_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `link_type` attribute.
  TfRef<String> get linkType => TfRef.attribute<String>(this, 'link_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `macsec_enabled` attribute.
  TfRef<bool> get macsecEnabled =>
      TfRef.attribute<bool>(this, 'macsec_enabled');

  /// Reference to `noc_contact_email` attribute.
  TfRef<String> get nocContactEmail =>
      TfRef.attribute<String>(this, 'noc_contact_email');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `remote_location` attribute.
  TfRef<String> get remoteLocation =>
      TfRef.attribute<String>(this, 'remote_location');

  /// Reference to `requested_features` attribute.
  TfRef<List<String>> get requestedFeatures =>
      TfRef.attribute<List<String>>(this, 'requested_features');

  /// Reference to `requested_link_count` attribute.
  TfRef<num> get requestedLinkCount =>
      TfRef.attribute<num>(this, 'requested_link_count');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
