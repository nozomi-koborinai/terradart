// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

/// Factory wrapper for `google_compute_router`.
///
/// Represents a Router resource.
final class GoogleComputeRouter extends Resource {
  static const String tfType = 'google_compute_router';

  GoogleComputeRouter({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? network,
    TfArg<String>? region,
    TfArg<String>? project,
    TfArg<String>? description,
    TfArg<bool>? encryptedInterconnectRouter,
    ComputeRouterBgp? bgp,
    TfArg<Map<String, dynamic>>? md5AuthenticationKeys,
    TfArg<Map<String, dynamic>>? params,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (network != null) 'network': network,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
           if (description != null) 'description': description,
           if (encryptedInterconnectRouter != null)
             'encrypted_interconnect_router': encryptedInterconnectRouter,
           if (bgp != null) 'bgp': TfArg.literal([bgp.encode()]),
           if (md5AuthenticationKeys != null)
             'md5_authentication_keys': md5AuthenticationKeys,
           if (params != null) 'params': params,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterSensitive;

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
