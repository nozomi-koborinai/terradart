// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_interconnect_attachment.dart'
    show GoogleComputeInterconnectAttachment;
import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_compute_ha_vpn_gateway`.
const Set<String> _googleComputeHaVpnGatewaySensitive = <String>{};

/// Compute Ha Vpn Gateway Ip enum for `gateway_ip_version`.
enum ComputeHaVpnGatewayIpVersion implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const ComputeHaVpnGatewayIpVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Ha Vpn Gateway Stack enum for `stack_type`.
enum ComputeHaVpnGatewayStackType implements TerraformEnum {
  ipv4Only('IPV4_ONLY'),
  ipv4Ipv6('IPV4_IPV6'),
  ipv6Only('IPV6_ONLY');

  const ComputeHaVpnGatewayStackType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `params` block of
/// `google_compute_ha_vpn_gateway` (derived from provider schema).
@immutable
final class ComputeHaVpnGatewayParams {
  const ComputeHaVpnGatewayParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Typed helper for the `vpn_interfaces` block of
/// `google_compute_ha_vpn_gateway` (derived from provider schema).
@immutable
final class ComputeHaVpnGatewayVpnInterfaces {
  const ComputeHaVpnGatewayVpnInterfaces({
    this.id,
    this.interconnectAttachment,
  });

  final TfArg<num>? id;

  final RefTo<GoogleComputeInterconnectAttachment>? interconnectAttachment;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'interconnect_attachment': ?interconnectAttachment
        ?.encodeAs('self_link')
        .toTfJson(),
  };
}

/// Factory wrapper for `google_compute_ha_vpn_gateway`.
///
/// Represents a VPN gateway running in GCP. This virtual device is managed by
/// Google, but used only by you. This type of VPN Gateway allows for the
/// creation of VPN solutions with higher availability than classic Target VPN
/// Gateways.
final class GoogleComputeHaVpnGateway extends Resource {
  static const String tfType = 'google_compute_ha_vpn_gateway';

  GoogleComputeHaVpnGateway(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleComputeNetwork> network,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<ComputeHaVpnGatewayIpVersion>? gatewayIpVersion,
    TfArg<ComputeHaVpnGatewayStackType>? stackType,
    TfArg<Map<String, String>>? labels,
    ComputeHaVpnGatewayParams? params,
    List<ComputeHaVpnGatewayVpnInterfaces>? vpnInterfaces,
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
           'network': network.encodeAs('id'),
           'region': ?region,
           'description': ?description,
           'gateway_ip_version': ?gatewayIpVersion,
           'stack_type': ?stackType,
           'labels': ?labels,
           if (params != null) 'params': TfArg.literal(params.encode()),
           if (vpnInterfaces != null)
             'vpn_interfaces': TfArg.literal([
               for (final e in vpnInterfaces) e.encode(),
             ]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeHaVpnGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeHaVpnGateway>`.
  RefTo<GoogleComputeHaVpnGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `gateway_ip_version` attribute.
  TfRef<String> get gatewayIpVersion =>
      TfRef.attribute<String>(this, 'gateway_ip_version');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `stack_type` attribute.
  TfRef<String> get stackType => TfRef.attribute<String>(this, 'stack_type');
}
