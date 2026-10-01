// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_access_infrastructure_target.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    this.tag,
    this.targetIds,
    this.virtualNetworkId,
  });

  final TfArg<String>? createdAfter;

  final TfArg<String>? createdBefore;

  final TfArg<DataZeroTrustAccessInfrastructureTargetDirection>? direction;

  final TfArg<String>? hostname;

  final TfArg<String>? hostnameContains;

  final TfArg<String>? ipLike;

  final TfArg<String>? ipV4;

  final TfArg<String>? ipV6;

  final TfArg<List<String>>? ips;

  final TfArg<String>? ipv4End;

  final TfArg<String>? ipv4Start;

  final TfArg<String>? ipv6End;

  final TfArg<String>? ipv6Start;

  final TfArg<String>? modifiedAfter;

  final TfArg<String>? modifiedBefore;

  final TfArg<DataZeroTrustAccessInfrastructureTargetOrder>? order;

  final TfArg<List<String>>? tag;

  final TfArg<List<String>>? targetIds;

  final TfArg<String>? virtualNetworkId;

  Map<String, Object?> encode() => {
    'created_after': ?createdAfter?.toTfJson(),
    'created_before': ?createdBefore?.toTfJson(),
    'direction': ?direction?.toTfJson(),
    'hostname': ?hostname?.toTfJson(),
    'hostname_contains': ?hostnameContains?.toTfJson(),
    'ip_like': ?ipLike?.toTfJson(),
    'ip_v4': ?ipV4?.toTfJson(),
    'ip_v6': ?ipV6?.toTfJson(),
    'ips': ?ips?.toTfJson(),
    'ipv4_end': ?ipv4End?.toTfJson(),
    'ipv4_start': ?ipv4Start?.toTfJson(),
    'ipv6_end': ?ipv6End?.toTfJson(),
    'ipv6_start': ?ipv6Start?.toTfJson(),
    'modified_after': ?modifiedAfter?.toTfJson(),
    'modified_before': ?modifiedBefore?.toTfJson(),
    'order': ?order?.toTfJson(),
    'tag': ?tag?.toTfJson(),
    'target_ids': ?targetIds?.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataZeroTrustAccessInfrastructureTargetDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataZeroTrustAccessInfrastructureTargetDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order` — derived from the provider schema description.
enum DataZeroTrustAccessInfrastructureTargetOrder implements TerraformEnum {
  hostname('hostname'),
  createdAt('created_at');

  const DataZeroTrustAccessInfrastructureTargetOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_access_infrastructure_target`.
final class DataCloudflareZeroTrustAccessInfrastructureTarget extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_infrastructure_target';

  DataCloudflareZeroTrustAccessInfrastructureTarget(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? targetId,
    DataZeroTrustAccessInfrastructureTargetFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'target_id': ?targetId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessInfrastructureTargetSensitive;

  /// A reference to the `cloudflare_zero_trust_access_infrastructure_target` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustAccessInfrastructureTarget>`.
  RefTo<CloudflareZeroTrustAccessInfrastructureTarget> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `target_id` attribute.
  TfRef<String> get targetId => TfRef.attribute<String>(this, 'target_id');
}
