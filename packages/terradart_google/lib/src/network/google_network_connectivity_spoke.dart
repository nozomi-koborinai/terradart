// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_network_connectivity_spoke`.
const Set<String> _googleNetworkConnectivitySpokeSensitive = <String>{};

/// Exactly one of `gateway`, `linked_interconnect_attachments`, `linked_producer_vpc_network`, `linked_router_appliance_instances`, `linked_vpc_network`, `linked_vpn_tunnels` on `google_network_connectivity_spoke`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.gateway(...)`.
sealed class NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeAttachment();

  /// Sets `gateway`.
  const factory NetworkConnectivitySpokeAttachment.gateway(
    NetworkConnectivitySpokeGateway gateway,
  ) = NetworkConnectivitySpokeAttachmentGateway;

  /// Sets `linked_interconnect_attachments`.
  const factory NetworkConnectivitySpokeAttachment.linkedInterconnectAttachments(
    NetworkConnectivitySpokeLinkedInterconnectAttachments
    linkedInterconnectAttachments,
  ) = NetworkConnectivitySpokeAttachmentLinkedInterconnectAttachments;

  /// Sets `linked_producer_vpc_network`.
  const factory NetworkConnectivitySpokeAttachment.linkedProducerVpcNetwork(
    NetworkConnectivitySpokeLinkedProducerVpcNetwork linkedProducerVpcNetwork,
  ) = NetworkConnectivitySpokeAttachmentLinkedProducerVpcNetwork;

  /// Sets `linked_router_appliance_instances`.
  const factory NetworkConnectivitySpokeAttachment.linkedRouterApplianceInstances(
    NetworkConnectivitySpokeLinkedRouterApplianceInstances
    linkedRouterApplianceInstances,
  ) = NetworkConnectivitySpokeAttachmentLinkedRouterApplianceInstances;

  /// Sets `linked_vpc_network`.
  const factory NetworkConnectivitySpokeAttachment.linkedVpcNetwork(
    NetworkConnectivitySpokeLinkedVpcNetwork linkedVpcNetwork,
  ) = NetworkConnectivitySpokeAttachmentLinkedVpcNetwork;

  /// Sets `linked_vpn_tunnels`.
  const factory NetworkConnectivitySpokeAttachment.linkedVpnTunnels(
    NetworkConnectivitySpokeLinkedVpnTunnels linkedVpnTunnels,
  ) = NetworkConnectivitySpokeAttachmentLinkedVpnTunnels;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NetworkConnectivitySpokeAttachment.gateway] choice: sets `gateway`.
final class NetworkConnectivitySpokeAttachmentGateway
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeAttachmentGateway(this.gateway);

  final NetworkConnectivitySpokeGateway gateway;

  @override
  String get blockKey => 'gateway';

  @override
  Map<String, Object?> encode() => {'gateway': gateway.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'gateway': TfArg.literal(gateway.encode()),
  };
}

/// The [NetworkConnectivitySpokeAttachment.linkedInterconnectAttachments] choice: sets `linked_interconnect_attachments`.
final class NetworkConnectivitySpokeAttachmentLinkedInterconnectAttachments
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeAttachmentLinkedInterconnectAttachments(
    this.linkedInterconnectAttachments,
  );

  final NetworkConnectivitySpokeLinkedInterconnectAttachments
  linkedInterconnectAttachments;

  @override
  String get blockKey => 'linked_interconnect_attachments';

  @override
  Map<String, Object?> encode() => {
    'linked_interconnect_attachments': linkedInterconnectAttachments.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'linked_interconnect_attachments': TfArg.literal(
      linkedInterconnectAttachments.encode(),
    ),
  };
}

/// The [NetworkConnectivitySpokeAttachment.linkedProducerVpcNetwork] choice: sets `linked_producer_vpc_network`.
final class NetworkConnectivitySpokeAttachmentLinkedProducerVpcNetwork
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeAttachmentLinkedProducerVpcNetwork(
    this.linkedProducerVpcNetwork,
  );

  final NetworkConnectivitySpokeLinkedProducerVpcNetwork
  linkedProducerVpcNetwork;

  @override
  String get blockKey => 'linked_producer_vpc_network';

  @override
  Map<String, Object?> encode() => {
    'linked_producer_vpc_network': linkedProducerVpcNetwork.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'linked_producer_vpc_network': TfArg.literal(
      linkedProducerVpcNetwork.encode(),
    ),
  };
}

/// The [NetworkConnectivitySpokeAttachment.linkedRouterApplianceInstances] choice: sets `linked_router_appliance_instances`.
final class NetworkConnectivitySpokeAttachmentLinkedRouterApplianceInstances
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeAttachmentLinkedRouterApplianceInstances(
    this.linkedRouterApplianceInstances,
  );

  final NetworkConnectivitySpokeLinkedRouterApplianceInstances
  linkedRouterApplianceInstances;

  @override
  String get blockKey => 'linked_router_appliance_instances';

  @override
  Map<String, Object?> encode() => {
    'linked_router_appliance_instances': linkedRouterApplianceInstances
        .encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'linked_router_appliance_instances': TfArg.literal(
      linkedRouterApplianceInstances.encode(),
    ),
  };
}

/// The [NetworkConnectivitySpokeAttachment.linkedVpcNetwork] choice: sets `linked_vpc_network`.
final class NetworkConnectivitySpokeAttachmentLinkedVpcNetwork
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeAttachmentLinkedVpcNetwork(
    this.linkedVpcNetwork,
  );

  final NetworkConnectivitySpokeLinkedVpcNetwork linkedVpcNetwork;

  @override
  String get blockKey => 'linked_vpc_network';

  @override
  Map<String, Object?> encode() => {
    'linked_vpc_network': linkedVpcNetwork.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'linked_vpc_network': TfArg.literal(linkedVpcNetwork.encode()),
  };
}

/// The [NetworkConnectivitySpokeAttachment.linkedVpnTunnels] choice: sets `linked_vpn_tunnels`.
final class NetworkConnectivitySpokeAttachmentLinkedVpnTunnels
    extends NetworkConnectivitySpokeAttachment {
  const NetworkConnectivitySpokeAttachmentLinkedVpnTunnels(
    this.linkedVpnTunnels,
  );

  final NetworkConnectivitySpokeLinkedVpnTunnels linkedVpnTunnels;

  @override
  String get blockKey => 'linked_vpn_tunnels';

  @override
  Map<String, Object?> encode() => {
    'linked_vpn_tunnels': linkedVpnTunnels.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'linked_vpn_tunnels': TfArg.literal(linkedVpnTunnels.encode()),
  };
}

/// Typed helper for the `gateway` block of
/// `google_network_connectivity_spoke` (derived from provider schema).
@immutable
final class NetworkConnectivitySpokeGateway {
  const NetworkConnectivitySpokeGateway({
    required this.capacity,
    required this.ipRangeReservations,
  });

  final TfArg<NetworkConnectivitySpokeGatewayCapacity> capacity;

  final List<NetworkConnectivitySpokeGatewayIpRangeReservations>
  ipRangeReservations;

  Map<String, Object?> encode() => {
    'capacity': capacity.toTfJson(),
    'ip_range_reservations': [for (final e in ipRangeReservations) e.encode()],
  };
}

/// `capacity` — derived from the provider schema description.
enum NetworkConnectivitySpokeGatewayCapacity implements TerraformEnum {
  capacity1Gbps('CAPACITY_1_GBPS'),
  capacity10Gbps('CAPACITY_10_GBPS'),
  capacity100Gbps('CAPACITY_100_GBPS');

  const NetworkConnectivitySpokeGatewayCapacity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `gateway.ip_range_reservations` block of
/// `google_network_connectivity_spoke` (derived from provider schema).
@immutable
final class NetworkConnectivitySpokeGatewayIpRangeReservations {
  const NetworkConnectivitySpokeGatewayIpRangeReservations({
    required this.ipRange,
  });

  final TfArg<String> ipRange;

  Map<String, Object?> encode() => {'ip_range': ipRange.toTfJson()};
}

/// Typed helper for the `linked_interconnect_attachments` block of
/// `google_network_connectivity_spoke` (derived from provider schema).
@immutable
final class NetworkConnectivitySpokeLinkedInterconnectAttachments {
  const NetworkConnectivitySpokeLinkedInterconnectAttachments({
    this.excludeExportRanges,
    this.excludeImportRanges,
    this.includeExportRanges,
    this.includeImportRanges,
    required this.siteToSiteDataTransfer,
    required this.uris,
  });

  final TfArg<List<Object?>>? excludeExportRanges;

  final TfArg<List<Object?>>? excludeImportRanges;

  final TfArg<List<Object?>>? includeExportRanges;

  final TfArg<List<Object?>>? includeImportRanges;

  final TfArg<bool> siteToSiteDataTransfer;

  final TfArg<List<Object?>> uris;

  Map<String, Object?> encode() => {
    'exclude_export_ranges': ?excludeExportRanges?.toTfJson(),
    'exclude_import_ranges': ?excludeImportRanges?.toTfJson(),
    'include_export_ranges': ?includeExportRanges?.toTfJson(),
    'include_import_ranges': ?includeImportRanges?.toTfJson(),
    'site_to_site_data_transfer': siteToSiteDataTransfer.toTfJson(),
    'uris': uris.toTfJson(),
  };
}

/// Typed helper for the `linked_producer_vpc_network` block of
/// `google_network_connectivity_spoke` (derived from provider schema).
@immutable
final class NetworkConnectivitySpokeLinkedProducerVpcNetwork {
  const NetworkConnectivitySpokeLinkedProducerVpcNetwork({
    this.excludeExportRanges,
    this.includeExportRanges,
    required this.network,
    required this.peering,
  });

  final TfArg<List<Object?>>? excludeExportRanges;

  final TfArg<List<Object?>>? includeExportRanges;

  final RefTo<GoogleComputeNetwork> network;

  final TfArg<String> peering;

  Map<String, Object?> encode() => {
    'exclude_export_ranges': ?excludeExportRanges?.toTfJson(),
    'include_export_ranges': ?includeExportRanges?.toTfJson(),
    'network': network.encodeAs('id').toTfJson(),
    'peering': peering.toTfJson(),
  };
}

/// Typed helper for the `linked_router_appliance_instances` block of
/// `google_network_connectivity_spoke` (derived from provider schema).
@immutable
final class NetworkConnectivitySpokeLinkedRouterApplianceInstances {
  const NetworkConnectivitySpokeLinkedRouterApplianceInstances({
    this.excludeExportRanges,
    this.excludeImportRanges,
    this.includeExportRanges,
    this.includeImportRanges,
    required this.siteToSiteDataTransfer,
    required this.instances,
  });

  final TfArg<List<Object?>>? excludeExportRanges;

  final TfArg<List<Object?>>? excludeImportRanges;

  final TfArg<List<Object?>>? includeExportRanges;

  final TfArg<List<Object?>>? includeImportRanges;

  final TfArg<bool> siteToSiteDataTransfer;

  final List<NetworkConnectivitySpokeLinkedRouterApplianceInstancesInstances>
  instances;

  Map<String, Object?> encode() => {
    'exclude_export_ranges': ?excludeExportRanges?.toTfJson(),
    'exclude_import_ranges': ?excludeImportRanges?.toTfJson(),
    'include_export_ranges': ?includeExportRanges?.toTfJson(),
    'include_import_ranges': ?includeImportRanges?.toTfJson(),
    'site_to_site_data_transfer': siteToSiteDataTransfer.toTfJson(),
    'instances': [for (final e in instances) e.encode()],
  };
}

/// Typed helper for the `linked_router_appliance_instances.instances` block of
/// `google_network_connectivity_spoke` (derived from provider schema).
@immutable
final class NetworkConnectivitySpokeLinkedRouterApplianceInstancesInstances {
  const NetworkConnectivitySpokeLinkedRouterApplianceInstancesInstances({
    required this.ipAddress,
    required this.virtualMachine,
  });

  final TfArg<String> ipAddress;

  final TfArg<String> virtualMachine;

  Map<String, Object?> encode() => {
    'ip_address': ipAddress.toTfJson(),
    'virtual_machine': virtualMachine.toTfJson(),
  };
}

/// Typed helper for the `linked_vpc_network` block of
/// `google_network_connectivity_spoke` (derived from provider schema).
@immutable
final class NetworkConnectivitySpokeLinkedVpcNetwork {
  const NetworkConnectivitySpokeLinkedVpcNetwork({
    this.excludeExportRanges,
    this.includeExportRanges,
    required this.uri,
  });

  final TfArg<List<Object?>>? excludeExportRanges;

  final TfArg<List<Object?>>? includeExportRanges;

  final TfArg<String> uri;

  Map<String, Object?> encode() => {
    'exclude_export_ranges': ?excludeExportRanges?.toTfJson(),
    'include_export_ranges': ?includeExportRanges?.toTfJson(),
    'uri': uri.toTfJson(),
  };
}

/// Typed helper for the `linked_vpn_tunnels` block of
/// `google_network_connectivity_spoke` (derived from provider schema).
@immutable
final class NetworkConnectivitySpokeLinkedVpnTunnels {
  const NetworkConnectivitySpokeLinkedVpnTunnels({
    this.excludeExportRanges,
    this.excludeImportRanges,
    this.includeExportRanges,
    this.includeImportRanges,
    required this.siteToSiteDataTransfer,
    required this.uris,
  });

  final TfArg<List<Object?>>? excludeExportRanges;

  final TfArg<List<Object?>>? excludeImportRanges;

  final TfArg<List<Object?>>? includeExportRanges;

  final TfArg<List<Object?>>? includeImportRanges;

  final TfArg<bool> siteToSiteDataTransfer;

  final TfArg<List<Object?>> uris;

  Map<String, Object?> encode() => {
    'exclude_export_ranges': ?excludeExportRanges?.toTfJson(),
    'exclude_import_ranges': ?excludeImportRanges?.toTfJson(),
    'include_export_ranges': ?includeExportRanges?.toTfJson(),
    'include_import_ranges': ?includeImportRanges?.toTfJson(),
    'site_to_site_data_transfer': siteToSiteDataTransfer.toTfJson(),
    'uris': uris.toTfJson(),
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
///   name: .literal('vpc-spoke'),
///   location: .literal('global'),
///   hub: .ref(hub.id),
///   attachment: .linkedVpcNetwork(
///     NetworkConnectivitySpokeLinkedVpcNetwork(uri: .ref(vpc.id)),
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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'hub': hub,
           ...attachment.argMap,
           'group': ?group,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetworkConnectivitySpokeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkConnectivitySpoke>`.
  RefTo<GoogleNetworkConnectivitySpoke> get ref => RefTo.of(this);

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
