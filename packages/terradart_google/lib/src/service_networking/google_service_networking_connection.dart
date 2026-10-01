// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_service_networking_connection`.
const Set<String> _googleServiceNetworkingConnectionSensitive = <String>{};

/// Factory wrapper for `google_service_networking_connection`.
///
/// Creates a private services peering connection between the user's VPC
/// network and one of Google's service producer VPCs. This is the
/// "private connectivity" hop required for managed services (Cloud SQL
/// private IP, Memorystore private IP, AlloyDB, etc) to be reachable
/// only from inside the consumer VPC.
///
/// The pipeline is a three-resource chain:
///
/// 1. [GoogleComputeNetwork] — the consumer VPC.
/// 2. [GoogleComputeGlobalAddress] with `purpose: vpcPeering` —
///    pre-reserves an internal CIDR on that VPC for Google's services
///    to peer into.
/// 3. [GoogleServiceNetworkingConnection] (this resource) — peers
///    Google's `servicenetworking.googleapis.com` producer VPC into the
///    consumer VPC against the reserved range(s).
///
/// Once apply succeeds, downstream resources like
/// [GoogleSqlDatabaseInstance] can set
/// `settings.ip_configuration.private_network` to the same network and
/// receive a private-only IP allocated from the reserved range.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_service_networking_connection.`).
/// - `network`: a [GoogleComputeNetwork] (`vpc.ref`, which emits its
///   full `id` path). The provider rejects short network names here.
/// - `service`: the producer service ID. The only documented value at
///   the time of writing is `'servicenetworking.googleapis.com'`; passed
///   as a plain string so callers can target other producer services
///   should Google introduce them.
/// - `reservedPeeringRanges`: one or more `name` values from
///   [GoogleComputeGlobalAddress] resources with
///   `purpose: vpcPeering`. The provider rejects full self_links here —
///   pass `psaRange.name`.
///
/// Example (full Cloud SQL private-IP chain — see also the
/// `cloud_sql_quickstart` example):
/// ```dart
/// final psaPeering = GoogleServiceNetworkingConnection(
///   'psa',
///   network: vpc.ref,
///   service: TfArg.literal('servicenetworking.googleapis.com'),
///   reservedPeeringRanges: TfArg.literal([
///     '\${google_compute_global_address.psa_range.name}',
///   ]),
/// );
/// ```
final class GoogleServiceNetworkingConnection extends Resource {
  static const String tfType = 'google_service_networking_connection';

  GoogleServiceNetworkingConnection(
    super.localName, {
    required RefTo<GoogleComputeNetwork> network,
    required TfArg<String> service,
    required TfArg<List<String>> reservedPeeringRanges,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? updateOnCreationFail,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network': network.encodeAs('id'),
           'service': service,
           'reserved_peering_ranges': reservedPeeringRanges,
           'deletion_policy': ?deletionPolicy,
           'update_on_creation_fail': ?updateOnCreationFail,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceNetworkingConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleServiceNetworkingConnection>`.
  RefTo<GoogleServiceNetworkingConnection> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `peering` attribute.
  TfRef<String> get peering => TfRef.attribute<String>(this, 'peering');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `reserved_peering_ranges` attribute.
  TfRef<List<String>> get reservedPeeringRanges =>
      TfRef.attribute<List<String>>(this, 'reserved_peering_ranges');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');

  /// Reference to `update_on_creation_fail` attribute.
  TfRef<bool> get updateOnCreationFail =>
      TfRef.attribute<bool>(this, 'update_on_creation_fail');
}
