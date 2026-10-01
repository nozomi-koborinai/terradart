// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_address.dart' show GoogleComputeAddress;
import '../compute/google_compute_router.dart' show GoogleComputeRouter;
import '../compute/google_compute_router_nat.dart' show GoogleComputeRouterNat;

/// Sensitive field paths for `google_compute_router_nat_address`.
const Set<String> _googleComputeRouterNatAddressSensitive = <String>{};

/// Factory wrapper for `google_compute_router_nat_address`.
///
/// A resource used to set the list of IP addresses to be used in a NAT service
/// and manage the draining of destroyed IPs.
///
/// ~> **Note:** This resource is to be used alongside a
/// `google_compute_router_nat` resource, the router nat resource must have no
/// defined `nat_ips` or `drain_nat_ips` parameters, instead using the
/// `initial_nat_ips` parameter to set at least one IP for the creation of the
/// resource.
///
/// Extra NAT IPs (and optional drain IPs) for a
/// [GoogleComputeRouterNat] that uses `MANUAL_ONLY`. Set
/// [initialNatIps] on the NAT itself — do not also set [natIps] there
/// or Terraform will permadiff.
final class GoogleComputeRouterNatAddress extends Resource {
  static const String tfType = 'google_compute_router_nat_address';

  GoogleComputeRouterNatAddress(
    super.localName, {
    required RefTo<GoogleComputeRouter> router,
    required RefTo<GoogleComputeRouterNat> routerNat,
    required TfArg<List<RefTo<GoogleComputeAddress>>> natIps,
    TfArg<List<RefTo<GoogleComputeAddress>>>? drainNatIps,
    TfArg<String>? region,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'router': router.encodeAs('name'),
           'router_nat': routerNat.encodeAs('name'),
           'nat_ips': natIps.encodeAs('self_link'),
           'drain_nat_ips': ?drainNatIps?.encodeAs('self_link'),
           'region': ?region,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterNatAddressSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRouterNatAddress>`.
  RefTo<GoogleComputeRouterNatAddress> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `drain_nat_ips` attribute.
  TfRef<List<String>> get drainNatIps =>
      TfRef.attribute<List<String>>(this, 'drain_nat_ips');

  /// Reference to `nat_ips` attribute.
  TfRef<List<String>> get natIps =>
      TfRef.attribute<List<String>>(this, 'nat_ips');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `router` attribute.
  TfRef<String> get router => TfRef.attribute<String>(this, 'router');

  /// Reference to `router_nat` attribute.
  TfRef<String> get routerNat => TfRef.attribute<String>(this, 'router_nat');
}
