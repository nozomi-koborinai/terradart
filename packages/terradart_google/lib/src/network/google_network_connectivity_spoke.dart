// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_spoke`.
const Set<String> _googleNetworkConnectivitySpokeSensitive = <String>{};

// ===========================================================================
// NetworkConnectivitySpokeAttachment — sealed (exactly one link / gateway)
// ===========================================================================

/// Exactly one spoke attachment kind (provider `conflicts` across linked_* /
/// `gateway` blocks).
sealed class NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeAttachment();

  /// argMap key for this variant.
  String get blockKey;

  /// Nested block payload (list-wrapped by the factory).
  Map<String, Object?> encode();
}

/// `linked_vpc_network` — attach a consumer VPC to the hub.
@immutable
final class NetworkConnectivitySpokeLinkedVpcNetwork
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeLinkedVpcNetwork({
    required this.uri,
    this.includeExportRanges,
    this.excludeExportRanges,
  });

  final TfArg<String> uri;
  final TfArg<List<String>>? includeExportRanges;
  final TfArg<List<String>>? excludeExportRanges;

  @override
  String get blockKey => 'linked_vpc_network';

  @override
  Map<String, Object?> encode() => {
    'uri': uri.toTfJson(),
    if (includeExportRanges != null)
      'include_export_ranges': includeExportRanges!.toTfJson(),
    if (excludeExportRanges != null)
      'exclude_export_ranges': excludeExportRanges!.toTfJson(),
  };
}

/// `linked_vpn_tunnels` — attach HA VPN tunnels.
@immutable
final class NetworkConnectivitySpokeLinkedVpnTunnels
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeLinkedVpnTunnels({
    required this.uris,
    required this.siteToSiteDataTransfer,
    this.includeExportRanges,
    this.excludeExportRanges,
    this.includeImportRanges,
    this.excludeImportRanges,
  });

  final TfArg<List<String>> uris;
  final TfArg<bool> siteToSiteDataTransfer;
  final TfArg<List<String>>? includeExportRanges;
  final TfArg<List<String>>? excludeExportRanges;
  final TfArg<List<String>>? includeImportRanges;
  final TfArg<List<String>>? excludeImportRanges;

  @override
  String get blockKey => 'linked_vpn_tunnels';

  @override
  Map<String, Object?> encode() => {
    'uris': uris.toTfJson(),
    'site_to_site_data_transfer': siteToSiteDataTransfer.toTfJson(),
    if (includeExportRanges != null)
      'include_export_ranges': includeExportRanges!.toTfJson(),
    if (excludeExportRanges != null)
      'exclude_export_ranges': excludeExportRanges!.toTfJson(),
    if (includeImportRanges != null)
      'include_import_ranges': includeImportRanges!.toTfJson(),
    if (excludeImportRanges != null)
      'exclude_import_ranges': excludeImportRanges!.toTfJson(),
  };
}

/// `linked_interconnect_attachments` — attach VLAN attachments.
@immutable
final class NetworkConnectivitySpokeLinkedInterconnectAttachments
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeLinkedInterconnectAttachments({
    required this.uris,
    required this.siteToSiteDataTransfer,
    this.includeExportRanges,
    this.excludeExportRanges,
    this.includeImportRanges,
    this.excludeImportRanges,
  });

  final TfArg<List<String>> uris;
  final TfArg<bool> siteToSiteDataTransfer;
  final TfArg<List<String>>? includeExportRanges;
  final TfArg<List<String>>? excludeExportRanges;
  final TfArg<List<String>>? includeImportRanges;
  final TfArg<List<String>>? excludeImportRanges;

  @override
  String get blockKey => 'linked_interconnect_attachments';

  @override
  Map<String, Object?> encode() => {
    'uris': uris.toTfJson(),
    'site_to_site_data_transfer': siteToSiteDataTransfer.toTfJson(),
    if (includeExportRanges != null)
      'include_export_ranges': includeExportRanges!.toTfJson(),
    if (excludeExportRanges != null)
      'exclude_export_ranges': excludeExportRanges!.toTfJson(),
    if (includeImportRanges != null)
      'include_import_ranges': includeImportRanges!.toTfJson(),
    if (excludeImportRanges != null)
      'exclude_import_ranges': excludeImportRanges!.toTfJson(),
  };
}

/// One router-appliance VM inside
/// [NetworkConnectivitySpokeLinkedRouterApplianceInstances].
@immutable
final class NetworkConnectivitySpokeRouterApplianceInstance {
  const NetworkConnectivitySpokeRouterApplianceInstance({
    required this.virtualMachine,
    required this.ipAddress,
  });

  final TfArg<String> virtualMachine;
  final TfArg<String> ipAddress;

  Map<String, Object?> encode() => {
    'virtual_machine': virtualMachine.toTfJson(),
    'ip_address': ipAddress.toTfJson(),
  };
}

/// `linked_router_appliance_instances` — attach router appliance VMs.
@immutable
final class NetworkConnectivitySpokeLinkedRouterApplianceInstances
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeLinkedRouterApplianceInstances({
    required this.instances,
    required this.siteToSiteDataTransfer,
    this.includeExportRanges,
    this.excludeExportRanges,
    this.includeImportRanges,
    this.excludeImportRanges,
  });

  final List<NetworkConnectivitySpokeRouterApplianceInstance> instances;
  final TfArg<bool> siteToSiteDataTransfer;
  final TfArg<List<String>>? includeExportRanges;
  final TfArg<List<String>>? excludeExportRanges;
  final TfArg<List<String>>? includeImportRanges;
  final TfArg<List<String>>? excludeImportRanges;

  @override
  String get blockKey => 'linked_router_appliance_instances';

  @override
  Map<String, Object?> encode() => {
    'instances': [for (final i in instances) i.encode()],
    'site_to_site_data_transfer': siteToSiteDataTransfer.toTfJson(),
    if (includeExportRanges != null)
      'include_export_ranges': includeExportRanges!.toTfJson(),
    if (excludeExportRanges != null)
      'exclude_export_ranges': excludeExportRanges!.toTfJson(),
    if (includeImportRanges != null)
      'include_import_ranges': includeImportRanges!.toTfJson(),
    if (excludeImportRanges != null)
      'exclude_import_ranges': excludeImportRanges!.toTfJson(),
  };
}

/// `linked_producer_vpc_network` — attach a producer VPC via peering.
@immutable
final class NetworkConnectivitySpokeLinkedProducerVpcNetwork
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeLinkedProducerVpcNetwork({
    required this.network,
    required this.peering,
    this.includeExportRanges,
    this.excludeExportRanges,
  });

  final TfArg<String> network;
  final TfArg<String> peering;
  final TfArg<List<String>>? includeExportRanges;
  final TfArg<List<String>>? excludeExportRanges;

  @override
  String get blockKey => 'linked_producer_vpc_network';

  @override
  Map<String, Object?> encode() => {
    'network': network.toTfJson(),
    'peering': peering.toTfJson(),
    if (includeExportRanges != null)
      'include_export_ranges': includeExportRanges!.toTfJson(),
    if (excludeExportRanges != null)
      'exclude_export_ranges': excludeExportRanges!.toTfJson(),
  };
}

/// Capacity for an NCC gateway spoke.
enum NetworkConnectivitySpokeGatewayCapacity implements TerraformEnum {
  capacity1Gbps('CAPACITY_1_GBPS'),
  capacity10Gbps('CAPACITY_10_GBPS'),
  capacity100Gbps('CAPACITY_100_GBPS');

  const NetworkConnectivitySpokeGatewayCapacity(this.terraformValue);
  @override
  final String terraformValue;
}

/// One `/23` reservation inside [NetworkConnectivitySpokeGateway].
@immutable
final class NetworkConnectivitySpokeGatewayIpRangeReservation {
  const NetworkConnectivitySpokeGatewayIpRangeReservation({
    required this.ipRange,
  });

  final TfArg<String> ipRange;

  Map<String, Object?> encode() => {'ip_range': ipRange.toTfJson()};
}

/// `gateway` — NCC gateway spoke (capacity-billed; never apply-smoke).
@immutable
final class NetworkConnectivitySpokeGateway
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeGateway({
    required this.capacity,
    required this.ipRangeReservations,
  });

  final TfArg<NetworkConnectivitySpokeGatewayCapacity> capacity;
  final List<NetworkConnectivitySpokeGatewayIpRangeReservation>
  ipRangeReservations;

  @override
  String get blockKey => 'gateway';

  @override
  Map<String, Object?> encode() => {
    'capacity': capacity.toTfJson(),
    'ip_range_reservations': [for (final r in ipRangeReservations) r.encode()],
  };
}

/// Factory wrapper for `google_network_connectivity_spoke`.
///
/// The NetworkConnectivity Spoke resource
///
/// Network Connectivity Center **spoke** attached to a
/// [GoogleNetworkConnectivityHub]. Provide exactly one [attachment]
/// variant (VPC, VPN tunnels, interconnect, router appliance, producer VPC,
/// or NCC gateway).
///
/// Example (VPC spoke):
/// ```dart
/// GoogleNetworkConnectivitySpoke(
///   localName: 'vpc_spoke',
///   name: TfArg.literal('vpc-spoke'),
///   location: TfArg.literal('global'),
///   hub: TfArg.ref(hub.id),
///   attachment: NetworkConnectivitySpokeLinkedVpcNetwork(
///     uri: TfArg.ref(vpc.id),
///   ),
/// );
/// ```
final class GoogleNetworkConnectivitySpoke extends Resource {
  static const String tfType = 'google_network_connectivity_spoke';

  GoogleNetworkConnectivitySpoke({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> hub,
    required NetworkConnectivitySpokeAttachment attachment,
    TfArg<String>? group,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'hub': hub,
           attachment.blockKey: TfArg.literal([attachment.encode()]),
           if (group != null) 'group': group,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkConnectivitySpokeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `reasons` attribute.
  TfRef<List<Map<String, Object?>>> get reasons =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'reasons');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
