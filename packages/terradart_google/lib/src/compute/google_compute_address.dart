// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_address`.
const Set<String> _googleComputeAddressSensitive = <String>{};

// Phase 4.5.1: dartTypeOverrides re-enabled. Callers pass enum values
// directly; TfArg detects `.terraformValue` getter.

/// Address allocation scope: INTERNAL (VPC-private) or EXTERNAL (public IP).
enum AddressType implements TerraformEnum {
  internal('INTERNAL'),
  external('EXTERNAL');

  const AddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Network service tier. PREMIUM uses Google's premium global backbone;
/// STANDARD uses ISP-level routing (cheaper, regional).
enum NetworkTier implements TerraformEnum {
  premium('PREMIUM'),
  standard('STANDARD');

  const NetworkTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// IP protocol version for the address.
enum IpVersion implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const IpVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// IPv6 endpoint type. Used when [GoogleComputeAddress.ipVersion] is
/// `IpVersion.ipv6`.
enum Ipv6EndpointType implements TerraformEnum {
  vm('VM'),
  netlb('NETLB');

  const Ipv6EndpointType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_address`.
///
/// Represents an Address resource.
///
/// Each virtual machine instance has an ephemeral internal IP address and,
/// optionally, an external IP address. To communicate between instances on the
/// same network, you can use an instance's internal IP address. To communicate
/// with the Internet and instances outside of the same network, you must
/// specify the instance's external IP address.
///
/// Internal IP addresses are ephemeral and only belong to an instance for the
/// lifetime of the instance; if the instance is deleted and recreated, the
/// instance is assigned a new internal IP address, either by Compute Engine or
/// by you. External IP addresses can be either ephemeral or static.
///
/// Use `addressType: AddressType.internal` for VPC-private addresses,
/// `AddressType.external` for public IPs. Regional resources live under a
/// `region`; the global counterpart is [GoogleComputeGlobalAddress].
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_address.`).
/// - `name`: GCP address resource name.
///
/// Example:
/// ```dart
/// final lbVip = GoogleComputeAddress(
///   localName: 'lb_vip',
///   name: TfArg.literal('lb-vip-prod'),
///   region: TfArg.literal('asia-northeast1'),
///   addressType: TfArg.literal(AddressType.external),
///   networkTier: TfArg.literal(NetworkTier.premium),
/// );
/// ```
final class GoogleComputeAddress extends Resource {
  static const String tfType = 'google_compute_address';

  GoogleComputeAddress({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<AddressType>? addressType,
    TfArg<String>? address,
    TfArg<num>? prefixLength,
    TfArg<String>? purpose,
    TfArg<NetworkTier>? networkTier,
    TfArg<IpVersion>? ipVersion,
    TfArg<Ipv6EndpointType>? ipv6EndpointType,
    RefTo<GoogleComputeNetwork>? network,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
    TfArg<String>? ipCollection,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           'address_type': ?addressType,
           'address': ?address,
           'prefix_length': ?prefixLength,
           'purpose': ?purpose,
           'network_tier': ?networkTier,
           'ip_version': ?ipVersion,
           'ipv6_endpoint_type': ?ipv6EndpointType,
           'network': ?network?.encodeAs('id'),
           'subnetwork': ?subnetwork?.encodeAs('id'),
           'ip_collection': ?ipCollection,
           'labels': ?labels,
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeAddressSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeAddress>`.
  RefTo<GoogleComputeAddress> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_id` attribute.
  TfRef<String> get addressId => TfRef.attribute<String>(this, 'address_id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

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

  /// Reference to `users` attribute.
  TfRef<List<String>> get users => TfRef.attribute<List<String>>(this, 'users');

  /// Reference to `address_type` attribute.
  TfRef<String> get addressTypeRef =>
      TfRef.attribute<String>(this, 'address_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `ip_collection` attribute.
  TfRef<String> get ipCollectionRef =>
      TfRef.attribute<String>(this, 'ip_collection');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersionRef => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `ipv6_endpoint_type` attribute.
  TfRef<String> get ipv6EndpointTypeRef =>
      TfRef.attribute<String>(this, 'ipv6_endpoint_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `network` attribute.
  TfRef<String> get networkRef => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_tier` attribute.
  TfRef<String> get networkTierRef =>
      TfRef.attribute<String>(this, 'network_tier');

  /// Reference to `prefix_length` attribute.
  TfRef<num> get prefixLengthRef => TfRef.attribute<num>(this, 'prefix_length');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `purpose` attribute.
  TfRef<String> get purposeRef => TfRef.attribute<String>(this, 'purpose');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetworkRef =>
      TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `address` attribute (the actual IP allocated by GCP,
  /// available after apply). Use this to pass the IP to downstream
  /// resources like load balancer forwarding rules.
  TfRef<String> get addressRef => TfRef.attribute<String>(this, 'address');
}
