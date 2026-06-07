// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_global_address`.
const Set<String> _googleComputeGlobalAddressSensitive = <String>{};

/// `address_type` for `google_compute_global_address`. Default `external`
/// (public IP). Use `internal` for in-VPC ranges (private-services
/// peering, internal load balancer VIPs).
enum GlobalAddressType implements TerraformEnum {
  external('EXTERNAL'),
  internal('INTERNAL');

  const GlobalAddressType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `purpose` for `google_compute_global_address`. Selects the role the
/// reserved range plays.
///
/// - [vpcPeering]: the private-services peering use case — reserves an
///   internal CIDR on the user's VPC that Google's producer services
///   (Cloud SQL private IP, Memorystore, etc) peer into via
///   [GoogleServiceNetworkingConnection].
/// - [privateServiceConnect]: PSC consumer endpoint backing a PSC
///   forwarding rule (Beta in MM, GA in the provider).
enum GlobalAddressPurpose implements TerraformEnum {
  vpcPeering('VPC_PEERING'),
  privateServiceConnect('PRIVATE_SERVICE_CONNECT');

  const GlobalAddressPurpose(this.terraformValue);
  @override
  final String terraformValue;
}

/// IP protocol version for the global address. Default `ipv4`.
enum GlobalAddressIpVersion implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6');

  const GlobalAddressIpVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_global_address`.
///
/// Represents a Global Address resource. Global addresses are used for HTTP(S)
/// load balancing.
///
/// Reserves a global (regionless) IP range. Two complementary use cases:
///
/// 1. **HTTP(S) LB VIP** — `addressType: GlobalAddressType.external`,
///    `purpose` unset. Allocates a single anycast IPv4 (or IPv6) routed
///    across Google's edge.
/// 2. **Private-services peering range** — `addressType: internal`,
///    `purpose: GlobalAddressPurpose.vpcPeering`, `network` pointing at a
///    [GoogleComputeNetwork]. Reserves an internal CIDR that
///    [GoogleServiceNetworkingConnection] peers with Google's service
///    producer VPC (Cloud SQL private IP, Memorystore, etc.).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_global_address.`).
/// - `name`: GCP-internal address resource name. Forces replacement when
///   changed.
///
/// Example (Cloud SQL private-IP peering range): see also
/// [GoogleServiceNetworkingConnection].
/// ```dart
/// final psaRange = GoogleComputeGlobalAddress(
///   localName: 'psa_range',
///   name: TfArg.literal('cloudsql-psa-range'),
///   addressType: TfArg.literal(GlobalAddressType.internal),
///   purpose: TfArg.literal(GlobalAddressPurpose.vpcPeering),
///   prefixLength: TfArg.literal(16),
///   network: TfArg.ref(vpc.selfLink),
/// );
/// ```
///
/// Example (external LB VIP):
/// ```dart
/// final lbVip = GoogleComputeGlobalAddress(
///   localName: 'lb_vip',
///   name: TfArg.literal('global-lb-vip'),
///   addressType: TfArg.literal(GlobalAddressType.external),
///   ipVersion: TfArg.literal(GlobalAddressIpVersion.ipv4),
/// );
/// ```
final class GoogleComputeGlobalAddress extends Resource {
  static const String tfType = 'google_compute_global_address';

  GoogleComputeGlobalAddress({
    required super.localName,
    required TfArg<String> name,
    TfArg<GlobalAddressType>? addressType,
    TfArg<GlobalAddressPurpose>? purpose,
    TfArg<GlobalAddressIpVersion>? ipVersion,
    TfArg<String>? address,
    TfArg<num>? prefixLength,
    TfArg<String>? network,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (addressType != null) 'address_type': addressType,
           if (purpose != null) 'purpose': purpose,
           if (ipVersion != null) 'ip_version': ipVersion,
           if (address != null) 'address': address,
           if (prefixLength != null) 'prefix_length': prefixLength,
           if (network != null) 'network': network,
           if (labels != null) 'labels': labels,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeGlobalAddressSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to the allocated `address` attribute (the actual IP or
  /// CIDR base GCP picks when [address] is omitted). Available after
  /// apply. Use this to pass the IP to downstream resources like load
  /// balancer forwarding rules.
  TfRef<String> get addressRef => TfRef.attribute<String>(this, 'address');
}
