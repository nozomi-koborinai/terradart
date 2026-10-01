// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

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

/// Typed helper for the `migration` block of
/// `google_network_connectivity_internal_range` (derived from provider schema).
@immutable
final class NetworkConnectivityInternalRangeMigration {
  const NetworkConnectivityInternalRangeMigration({
    required this.source,
    required this.target,
  });

  final TfArg<String> source;

  final TfArg<String> target;

  Map<String, Object?> encode() => {
    'source': source.toTfJson(),
    'target': target.toTfJson(),
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
///   network: vpc.ref,
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
    required RefTo<GoogleComputeNetwork> network,
    required TfArg<NetworkConnectivityInternalRangeUsage> usage,
    required TfArg<NetworkConnectivityInternalRangePeering> peering,
    TfArg<String>? ipCidrRange,
    TfArg<num>? prefixLength,
    NetworkConnectivityInternalRangeAllocationOptions? allocationOptions,
    TfArg<String>? description,
    TfArg<List<String>>? targetCidrRange,
    TfArg<List<String>>? overlaps,
    TfArg<Map<String, String>>? labels,
    NetworkConnectivityInternalRangeMigration? migration,
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
           'usage': usage,
           'peering': peering,
           'ip_cidr_range': ?ipCidrRange,
           'prefix_length': ?prefixLength,
           if (allocationOptions != null)
             'allocation_options': TfArg.literal([allocationOptions.encode()]),
           'description': ?description,
           'target_cidr_range': ?targetCidrRange,
           'overlaps': ?overlaps,
           'labels': ?labels,
           if (migration != null)
             'migration': TfArg.literal(migration.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityInternalRangeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkConnectivityInternalRange>`.
  RefTo<GoogleNetworkConnectivityInternalRange> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `exclude_cidr_ranges` attribute.
  TfRef<List<String>> get excludeCidrRanges =>
      TfRef.attribute<List<String>>(this, 'exclude_cidr_ranges');

  /// Reference to `immutable` attribute.
  TfRef<bool> get immutable => TfRef.attribute<bool>(this, 'immutable');

  /// Reference to `ip_cidr_range` attribute.
  TfRef<String> get ipCidrRange =>
      TfRef.attribute<String>(this, 'ip_cidr_range');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `overlaps` attribute.
  TfRef<List<String>> get overlaps =>
      TfRef.attribute<List<String>>(this, 'overlaps');

  /// Reference to `peering` attribute.
  TfRef<String> get peering => TfRef.attribute<String>(this, 'peering');

  /// Reference to `prefix_length` attribute.
  TfRef<num> get prefixLength => TfRef.attribute<num>(this, 'prefix_length');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `target_cidr_range` attribute.
  TfRef<List<String>> get targetCidrRange =>
      TfRef.attribute<List<String>>(this, 'target_cidr_range');

  /// Reference to `usage` attribute.
  TfRef<String> get usage => TfRef.attribute<String>(this, 'usage');
}
