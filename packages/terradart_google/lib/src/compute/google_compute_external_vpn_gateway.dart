// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
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

/// Typed helper for the `interface` block of
/// `google_compute_external_vpn_gateway` (derived from provider schema).
@immutable
final class ComputeExternalVpnGatewayInterface {
  const ComputeExternalVpnGatewayInterface({
    this.id,
    this.ipAddress,
    this.ipv6Address,
  });

  final TfArg<num>? id;

  final TfArg<String>? ipAddress;

  final TfArg<String>? ipv6Address;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'ip_address': ?ipAddress?.toTfJson(),
    'ipv6_address': ?ipv6Address?.toTfJson(),
  };
}

/// Typed helper for the `params` block of
/// `google_compute_external_vpn_gateway` (derived from provider schema).
@immutable
final class ComputeExternalVpnGatewayParams {
  const ComputeExternalVpnGatewayParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_external_vpn_gateway`.
///
/// Represents a VPN gateway managed outside of GCP.
final class GoogleComputeExternalVpnGateway extends Resource {
  static const String tfType = 'google_compute_external_vpn_gateway';

  GoogleComputeExternalVpnGateway(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? description,
    TfArg<ComputeExternalVpnGatewayRedundancyType>? redundancyType,
    TfArg<Map<String, String>>? labels,
    List<ComputeExternalVpnGatewayInterface>? interface,
    ComputeExternalVpnGatewayParams? params,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'description': ?description,
           'redundancy_type': ?redundancyType,
           'labels': ?labels,
           if (interface != null)
             'interface': TfArg.literal([
               for (final e in interface) e.encode(),
             ]),
           if (params != null) 'params': TfArg.literal(params.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeExternalVpnGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeExternalVpnGateway>`.
  RefTo<GoogleComputeExternalVpnGateway> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `redundancy_type` attribute.
  TfRef<String> get redundancyType =>
      TfRef.attribute<String>(this, 'redundancy_type');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
