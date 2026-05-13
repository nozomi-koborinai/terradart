// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_compute_address.schema.dart'
    show $GoogleComputeAddress, googleComputeAddressSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleComputeAddressSchemaInstance implements $GoogleComputeAddress {
  const _GoogleComputeAddressSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// Phase 4.5.1: dartTypeOverrides re-enabled. Callers pass enum values
// directly; TfArg detects `.terraformValue` getter.

/// Address allocation scope: INTERNAL (VPC-private) or EXTERNAL (public IP).
enum AddressType {
  internal('INTERNAL'),
  external('EXTERNAL');

  const AddressType(this.terraformValue);
  final String terraformValue;
}

/// Network service tier. PREMIUM uses Google's premium global backbone;
/// STANDARD uses ISP-level routing (cheaper, regional).
enum NetworkTier {
  premium('PREMIUM'),
  standard('STANDARD');

  const NetworkTier(this.terraformValue);
  final String terraformValue;
}

/// IP protocol version for the address.
enum IpVersion {
  ipv4('IPV4'),
  ipv6('IPV6');

  const IpVersion(this.terraformValue);
  final String terraformValue;
}

/// IPv6 endpoint type. Used when [GoogleComputeAddress.ipVersion] is
/// `IpVersion.ipv6`.
enum Ipv6EndpointType {
  vm('VM'),
  netlb('NETLB');

  const Ipv6EndpointType(this.terraformValue);
  final String terraformValue;
}

/// Factory wrapper for `google_compute_address` (provider `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_address.`).
/// - `name`: GCP address resource name. Pass `TfArg.literal('lb-vip')` or
///   `TfArg.ref(otherAddr.nameRef)`.
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
///
/// Represents an IP address resource (regional or global). Use `addressType:
/// 'INTERNAL'` for VPC-internal addresses, `'EXTERNAL'` for public IPs.
final class GoogleComputeAddress extends Resource<$GoogleComputeAddress> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_address';

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
    TfArg<String>? network,
    TfArg<String>? subnetwork,
    TfArg<String>? ipCollection,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleComputeAddressSchemaInstance(),
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (addressType != null) 'address_type': addressType,
           if (address != null) 'address': address,
           if (prefixLength != null) 'prefix_length': prefixLength,
           if (purpose != null) 'purpose': purpose,
           if (networkTier != null) 'network_tier': networkTier,
           if (ipVersion != null) 'ip_version': ipVersion,
           if (ipv6EndpointType != null) 'ipv6_endpoint_type': ipv6EndpointType,
           if (network != null) 'network': network,
           if (subnetwork != null) 'subnetwork': subnetwork,
           if (ipCollection != null) 'ip_collection': ipCollection,
           if (labels != null) 'labels': labels,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleComputeAddressSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/regions/{region}/addresses/{name}` for regional
  /// addresses, or `.../global/addresses/{name}` for global).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address` attribute (the actual IP allocated by GCP,
  /// available after apply). Use this to pass the IP to downstream
  /// resources like load balancer forwarding rules.
  TfRef<String> get addressRef => TfRef.attribute<String>(this, 'address');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
