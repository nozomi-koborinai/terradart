// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_ha_vpn_gateway`.
const Set<String> _googleComputeHaVpnGatewaySensitive = <String>{};

/// Factory wrapper for `google_compute_ha_vpn_gateway`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeHaVpnGateway extends Data {
  static const String tfType = 'google_compute_ha_vpn_gateway';

  DataGoogleComputeHaVpnGateway({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeHaVpnGatewaySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `gateway_ip_version` attribute.
  TfRef<String> get gatewayIpVersion =>
      TfRef.attribute<String>(this, 'gateway_ip_version');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `params` attribute.
  TfRef<List<Map<String, Object?>>> get params =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'params');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `stack_type` attribute.
  TfRef<String> get stackType => TfRef.attribute<String>(this, 'stack_type');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `vpn_interfaces` attribute.
  TfRef<List<Map<String, Object?>>> get vpnInterfaces =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vpn_interfaces');
}
