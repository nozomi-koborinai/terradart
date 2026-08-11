// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
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

/// Factory wrapper for `google_network_connectivity_internal_range`.
///
/// Network Connectivity **internal range** — reserves or allocates a CIDR
/// inside a VPC for NCC / PSC / migration use.
///
/// Pass either [ipCidrRange] or [prefixLength] (auto-allocation).
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
