// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_external_vpn_gateway`.
const Set<String> _googleComputeExternalVpnGatewaySensitive = <String>{};

/// Compute External Vpn Gateway Redundancy enum for `redundancy_type`.
enum ComputeExternalVpnGatewayRedundancyType implements TerraformEnum {
  fourIpsRedundancy('FOUR_IPS_REDUNDANCY'),
  singleIpInternallyRedundant('SINGLE_IP_INTERNALLY_REDUNDANT'),
  twoIpsRedundancy('TWO_IPS_REDUNDANCY');

  const ComputeExternalVpnGatewayRedundancyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_external_vpn_gateway`.
///
/// Represents a VPN gateway managed outside of GCP.
final class GoogleComputeExternalVpnGateway extends Resource {
  static const String tfType = 'google_compute_external_vpn_gateway';

  GoogleComputeExternalVpnGateway({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? description,
    TfArg<ComputeExternalVpnGatewayRedundancyType>? redundancyType,
    TfArg<Map<String, String>>? labels,
    TfArg<List<Map<String, dynamic>>>? interface,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (description != null) 'description': description,
           if (redundancyType != null) 'redundancy_type': redundancyType,
           if (labels != null) 'labels': labels,
           if (interface != null) 'interface': interface,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeExternalVpnGatewaySensitive;

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
