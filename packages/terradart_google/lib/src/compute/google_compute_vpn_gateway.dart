// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_vpn_gateway`.
const Set<String> _googleComputeVpnGatewaySensitive = <String>{};

/// Factory wrapper for `google_compute_vpn_gateway`.
///
/// Represents a VPN gateway running in GCP. This virtual device is managed by
/// Google, but used only by you.
final class GoogleComputeVpnGateway extends Resource {
  static const String tfType = 'google_compute_vpn_gateway';

  GoogleComputeVpnGateway({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> network,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'network': network,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeVpnGatewaySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `gateway_id` attribute.
  TfRef<num> get gatewayId => TfRef.attribute<num>(this, 'gateway_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
