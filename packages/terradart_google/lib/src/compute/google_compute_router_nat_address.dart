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
  }) : super(
         terraformType: tfType,
         argMap: {
           'router': router,
           'router_nat': routerNat,
           'nat_ips': natIps,
           if (drainNatIps != null) 'drain_nat_ips': drainNatIps,
           if (region != null) 'region': region,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeRouterNatAddressSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
