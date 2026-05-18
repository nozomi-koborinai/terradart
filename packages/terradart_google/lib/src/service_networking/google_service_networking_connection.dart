// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_networking_connection`.
const Set<String> _googleServiceNetworkingConnectionSensitive = <String>{};

/// Factory wrapper for `google_service_networking_connection` (provider
/// `hashicorp/google ~> 7.0`).
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
/// - `network`: full self_link of a [GoogleComputeNetwork]
///   (`TfArg.ref(vpc.selfLink)`). The provider rejects short network
///   names here.
/// - `service`: the producer service ID. The only documented value at
///   the time of writing is `'servicenetworking.googleapis.com'`; passed
///   as a plain string so callers can target other producer services
///   should Google introduce them.
/// - `reservedPeeringRanges`: one or more `name` values from
///   [GoogleComputeGlobalAddress] resources with
///   `purpose: vpcPeering`. The provider rejects full self_links here —
///   pass `TfArg.ref(psaRange.nameRef)`.
///
/// Example (full Cloud SQL private-IP chain — see also the
/// `cloud_sql_quickstart` example):
/// ```dart
/// final psaPeering = GoogleServiceNetworkingConnection(
///   localName: 'psa',
///   network: TfArg.ref(vpc.selfLink),
///   service: TfArg.literal('servicenetworking.googleapis.com'),
///   reservedPeeringRanges: TfArg.literal([
///     '\${google_compute_global_address.psa_range.name}',
///   ]),
/// );
/// ```
///
/// Composition pattern: extends
/// `Resource<$GoogleServiceNetworkingConnection>` for runtime behavior.
final class GoogleServiceNetworkingConnection extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_service_networking_connection';

  GoogleServiceNetworkingConnection({
    required super.localName,
    required TfArg<String> network,
    required TfArg<String> service,
    required TfArg<List<String>> reservedPeeringRanges,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? updateOnCreationFail,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'network': network,
           'service': service,
           'reserved_peering_ranges': reservedPeeringRanges,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (updateOnCreationFail != null)
             'update_on_creation_fail': updateOnCreationFail,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleServiceNetworkingConnectionSensitive;

  /// Reference to `id` attribute. The provider's `id` is composed from
  /// the network + service pair; useful only as an opaque handle.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to the computed `peering` attribute — the name of the
  /// underlying VPC peering connection between the consumer and
  /// producer networks. Visible in the `gcloud compute networks
  /// peerings list` output.
  TfRef<String> get peering => TfRef.attribute<String>(this, 'peering');
}
