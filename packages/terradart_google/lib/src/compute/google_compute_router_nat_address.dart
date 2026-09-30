// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleComputeRouterNatAddress({
    required super.localName,
    required TfArg<String> router,
    required TfArg<String> routerNat,
    required TfArg<List<String>> natIps,
    TfArg<List<String>>? drainNatIps,
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
           'router': router,
           'router_nat': routerNat,
           'nat_ips': natIps,
           'drain_nat_ips': ?drainNatIps,
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
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `drain_nat_ips` attribute.
  TfRef<List<String>> get drainNatIpsRef =>
      TfRef.attribute<List<String>>(this, 'drain_nat_ips');

  /// Reference to `nat_ips` attribute.
  TfRef<List<String>> get natIpsRef =>
      TfRef.attribute<List<String>>(this, 'nat_ips');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `router` attribute.
  TfRef<String> get routerRef => TfRef.attribute<String>(this, 'router');

  /// Reference to `router_nat` attribute.
  TfRef<String> get routerNatRef => TfRef.attribute<String>(this, 'router_nat');
}
