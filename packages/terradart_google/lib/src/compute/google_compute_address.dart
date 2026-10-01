// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_compute_address`.
const Set<String> _googleComputeAddressSensitive = <String>{};

// Phase 4.5.1: dartTypeOverrides re-enabled. Callers pass enum values
// directly; TfArg detects `.toTfJson()` getter.

/// Address allocation scope: INTERNAL (VPC-private) or EXTERNAL (public IP).
extension type const AddressType._(TfArg<String> _) implements TfArg<String> {
  AddressType.variable(String name) : this._(TfArg.variable(name));
  AddressType.expression(String template) : this._(TfArg.expression(template));
  const AddressType.arg(TfArg<String> arg) : this._(arg);

  static const internal = AddressType._(TfArgLiteral('INTERNAL'));
  static const external = AddressType._(TfArgLiteral('EXTERNAL'));

  static const List<AddressType> values = [internal, external];
}

/// Network service tier. PREMIUM uses Google's premium global backbone;
/// STANDARD uses ISP-level routing (cheaper, regional).
extension type const NetworkTier._(TfArg<String> _) implements TfArg<String> {
  NetworkTier.variable(String name) : this._(TfArg.variable(name));
  NetworkTier.expression(String template) : this._(TfArg.expression(template));
  const NetworkTier.arg(TfArg<String> arg) : this._(arg);

  static const premium = NetworkTier._(TfArgLiteral('PREMIUM'));
  static const standard = NetworkTier._(TfArgLiteral('STANDARD'));

  static const List<NetworkTier> values = [premium, standard];
}

/// IP protocol version for the address.
extension type const IpVersion._(TfArg<String> _) implements TfArg<String> {
  IpVersion.variable(String name) : this._(TfArg.variable(name));
  IpVersion.expression(String template) : this._(TfArg.expression(template));
  const IpVersion.arg(TfArg<String> arg) : this._(arg);

  static const ipv4 = IpVersion._(TfArgLiteral('IPV4'));
  static const ipv6 = IpVersion._(TfArgLiteral('IPV6'));

  static const List<IpVersion> values = [ipv4, ipv6];
}

/// IPv6 endpoint type. Used when [GoogleComputeAddress.ipVersion] is
/// `IpVersion.ipv6`.
extension type const Ipv6EndpointType._(TfArg<String> _)
    implements TfArg<String> {
  Ipv6EndpointType.variable(String name) : this._(TfArg.variable(name));
  Ipv6EndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const Ipv6EndpointType.arg(TfArg<String> arg) : this._(arg);

  static const vm = Ipv6EndpointType._(TfArgLiteral('VM'));
  static const netlb = Ipv6EndpointType._(TfArgLiteral('NETLB'));

  static const List<Ipv6EndpointType> values = [vm, netlb];
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
///   'lb_vip',
///   name: TfArg.literal('lb-vip-prod'),
///   region: TfArg.literal('asia-northeast1'),
///   addressType: AddressType.external,
///   networkTier: NetworkTier.premium,
/// );
/// ```
final class GoogleComputeAddress extends Resource {
  static const String tfType = 'google_compute_address';

  GoogleComputeAddress(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    AddressType? addressType,
    TfArg<String>? address,
    TfArg<num>? prefixLength,
    TfArg<String>? purpose,
    NetworkTier? networkTier,
    IpVersion? ipVersion,
    Ipv6EndpointType? ipv6EndpointType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `address_type` attribute.
  TfRef<String> get addressType =>
      TfRef.attribute<String>(this, 'address_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ip_collection` attribute.
  TfRef<String> get ipCollection =>
      TfRef.attribute<String>(this, 'ip_collection');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `ipv6_endpoint_type` attribute.
  TfRef<String> get ipv6EndpointType =>
      TfRef.attribute<String>(this, 'ipv6_endpoint_type');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `network_tier` attribute.
  TfRef<String> get networkTier =>
      TfRef.attribute<String>(this, 'network_tier');

  /// Reference to `prefix_length` attribute.
  TfRef<num> get prefixLength => TfRef.attribute<num>(this, 'prefix_length');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `purpose` attribute.
  TfRef<String> get purpose => TfRef.attribute<String>(this, 'purpose');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');
}
