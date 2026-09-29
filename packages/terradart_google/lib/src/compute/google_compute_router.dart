// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_compute_router`.
const Set<String> _googleComputeRouterSensitive = <String>{};

/// `bgp.advertise_mode` — which BGP prefix advertisement mode the router
/// uses. Default (when unset) is [ComputeRouterBgpAdvertiseMode.defaultMode].
enum ComputeRouterBgpAdvertiseMode implements TerraformEnum {
  defaultMode('DEFAULT'),
  custom('CUSTOM');

  const ComputeRouterBgpAdvertiseMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `bgp` block — local BGP session parameters for a Cloud Router.
@immutable
class ComputeRouterBgp {
  const ComputeRouterBgp({
    this.advertiseMode,
    this.advertisedGroups,
    this.asn,
    this.identifierRange,
    this.keepaliveInterval,
  });

  /// Advertisement mode. [ComputeRouterBgpAdvertiseMode.custom] requires
  /// [advertisedGroups].
  final ComputeRouterBgpAdvertiseMode? advertiseMode;

  /// Prefix groups to advertise when [advertiseMode] is
  /// [ComputeRouterBgpAdvertiseMode.custom].
  final List<String>? advertisedGroups;

  /// Local BGP ASN (RFC6996 private range).
  final TfArg<int>? asn;

  /// Link-local IPv4 range for valid BGP identifiers on this router.
  final TfArg<String>? identifierRange;

  /// Seconds between BGP keepalive messages (hold time is 3× this value).
  final TfArg<int>? keepaliveInterval;

  Map<String, Object?> encode() => {
    if (advertiseMode != null) 'advertise_mode': advertiseMode!.terraformValue,
    if (advertisedGroups != null) 'advertised_groups': advertisedGroups,
    if (asn != null) 'asn': asn!.toTfJson(),
    if (identifierRange != null)
      'identifier_range': identifierRange!.toTfJson(),
    if (keepaliveInterval != null)
      'keepalive_interval': keepaliveInterval!.toTfJson(),
  };
}

/// At most one of `network`, `ncc_gateway` on `google_compute_router`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.network(...)`.
sealed class ComputeRouterNetwork {
  const ComputeRouterNetwork();

  /// Sets `network`.
  const factory ComputeRouterNetwork.network(
    RefTo<GoogleComputeNetwork> network,
  ) = ComputeRouterNetworkChoice;

  /// Sets `ncc_gateway`.
  const factory ComputeRouterNetwork.nccGateway(TfArg<String> nccGateway) =
      ComputeRouterNetworkNccGateway;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeRouterNetwork.network] choice: sets `network`.
final class ComputeRouterNetworkChoice extends ComputeRouterNetwork {
  const ComputeRouterNetworkChoice(this.network);

  final RefTo<GoogleComputeNetwork> network;

  @override
  String get blockKey => 'network';

  @override
  Map<String, Object?> encode() => {
    'network': network.encodeAs('id').toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {'network': network.encodeAs('id')};
}

/// The [ComputeRouterNetwork.nccGateway] choice: sets `ncc_gateway`.
final class ComputeRouterNetworkNccGateway extends ComputeRouterNetwork {
  const ComputeRouterNetworkNccGateway(this.nccGateway);

  final TfArg<String> nccGateway;

  @override
  String get blockKey => 'ncc_gateway';

  @override
  Map<String, Object?> encode() => {'ncc_gateway': nccGateway.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'ncc_gateway': nccGateway};
}

/// Factory wrapper for `google_compute_router`.
///
/// Represents a Router resource.
final class GoogleComputeRouter extends Resource {
  static const String tfType = 'google_compute_router';

  GoogleComputeRouter({
    required super.localName,
    required TfArg<String> name,
    ComputeRouterNetwork? network,
    TfArg<String>? region,
    TfArg<String>? project,
    TfArg<String>? description,
    TfArg<bool>? encryptedInterconnectRouter,
    ComputeRouterBgp? bgp,
    TfArg<Map<String, dynamic>>? md5AuthenticationKeys,
    TfArg<Map<String, dynamic>>? params,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           ...?network?.argMap,
           'region': ?region,
           'project': ?project,
           'description': ?description,
           'encrypted_interconnect_router': ?encryptedInterconnectRouter,
           if (bgp != null) 'bgp': TfArg.literal([bgp.encode()]),
           'md5_authentication_keys': ?md5AuthenticationKeys,
           'params': ?params,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRouter>`.
  RefTo<GoogleComputeRouter> get ref => RefTo.of(this);

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
