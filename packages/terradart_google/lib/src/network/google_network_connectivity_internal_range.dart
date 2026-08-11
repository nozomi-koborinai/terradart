// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_internal_range`.
const Set<String> _googleNetworkConnectivityInternalRangeSensitive = <String>{};

/// `usage` for [GoogleNetworkConnectivityInternalRange].
enum NetworkConnectivityInternalRangeUsage implements TerraformEnum {
  forVpc('FOR_VPC'),
  externalToVpc('EXTERNAL_TO_VPC'),
  forMigration('FOR_MIGRATION');

  const NetworkConnectivityInternalRangeUsage(this.terraformValue);
  @override
  final String terraformValue;
}

/// `peering` for [GoogleNetworkConnectivityInternalRange].
enum NetworkConnectivityInternalRangePeering implements TerraformEnum {
  forSelf('FOR_SELF'),
  forPeer('FOR_PEER'),
  notShared('NOT_SHARED');

  const NetworkConnectivityInternalRangePeering(this.terraformValue);
  @override
  final String terraformValue;
}

/// `allocation_strategy` on [NetworkConnectivityInternalRangeAllocationOptions].
enum NetworkConnectivityInternalRangeAllocationStrategy
    implements TerraformEnum {
  random('RANDOM'),
  firstAvailable('FIRST_AVAILABLE'),
  randomFirstNAvailable('RANDOM_FIRST_N_AVAILABLE'),
  firstSmallestFitting('FIRST_SMALLEST_FITTING');

  const NetworkConnectivityInternalRangeAllocationStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Optional `allocation_options` when auto-allocating via [prefixLength].
@immutable
final class NetworkConnectivityInternalRangeAllocationOptions {
  const NetworkConnectivityInternalRangeAllocationOptions({
    this.allocationStrategy,
    this.firstAvailableRangesLookupSize,
  });

  final TfArg<NetworkConnectivityInternalRangeAllocationStrategy>?
  allocationStrategy;
  final TfArg<int>? firstAvailableRangesLookupSize;

  Map<String, Object?> encode() => {
    if (allocationStrategy != null)
      'allocation_strategy': allocationStrategy!.toTfJson(),
    if (firstAvailableRangesLookupSize != null)
      'first_available_ranges_lookup_size': firstAvailableRangesLookupSize!
          .toTfJson(),
  };
}

/// Factory wrapper for `google_network_connectivity_internal_range`.
///
/// Network Connectivity **internal range** — reserves or allocates a CIDR
/// inside a VPC for NCC / PSC / migration use.
///
/// Pass either [ipCidrRange] or [prefixLength] (auto-allocation).
/// When using [prefixLength], optionally set [allocationOptions].
///
/// Example:
/// ```dart
/// GoogleNetworkConnectivityInternalRange(
///   localName: 'reserved',
///   name: TfArg.literal('terradart-ir'),
///   network: TfArg.ref(vpc.id),
///   usage: TfArg.literal(NetworkConnectivityInternalRangeUsage.forVpc),
///   peering: TfArg.literal(NetworkConnectivityInternalRangePeering.forSelf),
///   ipCidrRange: TfArg.literal('10.9.0.0/24'),
/// );
/// ```
final class GoogleNetworkConnectivityInternalRange extends Resource {
  static const String tfType = 'google_network_connectivity_internal_range';

  GoogleNetworkConnectivityInternalRange({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> network,
    required TfArg<NetworkConnectivityInternalRangeUsage> usage,
    required TfArg<NetworkConnectivityInternalRangePeering> peering,
    TfArg<String>? ipCidrRange,
    TfArg<num>? prefixLength,
    NetworkConnectivityInternalRangeAllocationOptions? allocationOptions,
    TfArg<String>? description,
    TfArg<List<String>>? targetCidrRange,
    TfArg<List<String>>? overlaps,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'network': network,
           'usage': usage,
           'peering': peering,
           if (ipCidrRange != null) 'ip_cidr_range': ipCidrRange,
           if (prefixLength != null) 'prefix_length': prefixLength,
           if (allocationOptions != null)
             'allocation_options': TfArg.literal([allocationOptions.encode()]),
           if (description != null) 'description': description,
           if (targetCidrRange != null) 'target_cidr_range': targetCidrRange,
           if (overlaps != null) 'overlaps': overlaps,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityInternalRangeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `users` attribute.
  TfRef<List<String>> get users => TfRef.attribute<List<String>>(this, 'users');
}
