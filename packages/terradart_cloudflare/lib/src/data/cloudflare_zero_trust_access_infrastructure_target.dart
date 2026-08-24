// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_infrastructure_target`.
const Set<String> _cloudflareZeroTrustAccessInfrastructureTargetSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_access_infrastructure_target` (derived from provider schema).
@immutable
final class DataZeroTrustAccessInfrastructureTargetFilter {
  const DataZeroTrustAccessInfrastructureTargetFilter({
    this.createdAfter,
    this.createdBefore,
    this.direction,
    this.hostname,
    this.hostnameContains,
    this.ipLike,
    this.ipV4,
    this.ipV6,
    this.ips,
    this.ipv4End,
    this.ipv4Start,
    this.ipv6End,
    this.ipv6Start,
    this.modifiedAfter,
    this.modifiedBefore,
    this.order,
    this.targetIds,
    this.virtualNetworkId,
  });

  final TfArg<String>? createdAfter;

  final TfArg<String>? createdBefore;

  final TfArg<String>? direction;

  final TfArg<String>? hostname;

  final TfArg<String>? hostnameContains;

  final TfArg<String>? ipLike;

  final TfArg<String>? ipV4;

  final TfArg<String>? ipV6;

  final TfArg<List<Object?>>? ips;

  final TfArg<String>? ipv4End;

  final TfArg<String>? ipv4Start;

  final TfArg<String>? ipv6End;

  final TfArg<String>? ipv6Start;

  final TfArg<String>? modifiedAfter;

  final TfArg<String>? modifiedBefore;

  final TfArg<String>? order;

  final TfArg<List<Object?>>? targetIds;

  final TfArg<String>? virtualNetworkId;

  Map<String, Object?> encode() => {
    if (createdAfter != null) 'created_after': createdAfter!.toTfJson(),
    if (createdBefore != null) 'created_before': createdBefore!.toTfJson(),
    if (direction != null) 'direction': direction!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.toTfJson(),
    if (hostnameContains != null)
      'hostname_contains': hostnameContains!.toTfJson(),
    if (ipLike != null) 'ip_like': ipLike!.toTfJson(),
    if (ipV4 != null) 'ip_v4': ipV4!.toTfJson(),
    if (ipV6 != null) 'ip_v6': ipV6!.toTfJson(),
    if (ips != null) 'ips': ips!.toTfJson(),
    if (ipv4End != null) 'ipv4_end': ipv4End!.toTfJson(),
    if (ipv4Start != null) 'ipv4_start': ipv4Start!.toTfJson(),
    if (ipv6End != null) 'ipv6_end': ipv6End!.toTfJson(),
    if (ipv6Start != null) 'ipv6_start': ipv6Start!.toTfJson(),
    if (modifiedAfter != null) 'modified_after': modifiedAfter!.toTfJson(),
    if (modifiedBefore != null) 'modified_before': modifiedBefore!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (targetIds != null) 'target_ids': targetIds!.toTfJson(),
    if (virtualNetworkId != null)
      'virtual_network_id': virtualNetworkId!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_infrastructure_target`.
final class DataCloudflareZeroTrustAccessInfrastructureTarget extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_infrastructure_target';

  DataCloudflareZeroTrustAccessInfrastructureTarget({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? targetId,
    DataZeroTrustAccessInfrastructureTargetFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (targetId != null) 'target_id': targetId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessInfrastructureTargetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
