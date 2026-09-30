// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_infrastructure_targets`.
const Set<String> _cloudflareZeroTrustAccessInfrastructureTargetsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_infrastructure_targets`.
final class DataCloudflareZeroTrustAccessInfrastructureTargets extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_infrastructure_targets';

  DataCloudflareZeroTrustAccessInfrastructureTargets({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? createdAfter,
    TfArg<String>? createdBefore,
    TfArg<String>? direction,
    TfArg<String>? hostname,
    TfArg<String>? hostnameContains,
    TfArg<String>? ipLike,
    TfArg<String>? ipV4,
    TfArg<String>? ipV6,
    TfArg<List<String>>? ips,
    TfArg<String>? ipv4End,
    TfArg<String>? ipv4Start,
    TfArg<String>? ipv6End,
    TfArg<String>? ipv6Start,
    TfArg<num>? maxItems,
    TfArg<String>? modifiedAfter,
    TfArg<String>? modifiedBefore,
    TfArg<String>? order,
    TfArg<List<String>>? tag,
    TfArg<List<String>>? targetIds,
    TfArg<String>? virtualNetworkId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'created_after': ?createdAfter,
           'created_before': ?createdBefore,
           'direction': ?direction,
           'hostname': ?hostname,
           'hostname_contains': ?hostnameContains,
           'ip_like': ?ipLike,
           'ip_v4': ?ipV4,
           'ip_v6': ?ipV6,
           'ips': ?ips,
           'ipv4_end': ?ipv4End,
           'ipv4_start': ?ipv4Start,
           'ipv6_end': ?ipv6End,
           'ipv6_start': ?ipv6Start,
           'max_items': ?maxItems,
           'modified_after': ?modifiedAfter,
           'modified_before': ?modifiedBefore,
           'order': ?order,
           'tag': ?tag,
           'target_ids': ?targetIds,
           'virtual_network_id': ?virtualNetworkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessInfrastructureTargetsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `created_after` attribute.
  TfRef<String> get createdAfterRef =>
      TfRef.attribute<String>(this, 'created_after');

  /// Reference to `created_before` attribute.
  TfRef<String> get createdBeforeRef =>
      TfRef.attribute<String>(this, 'created_before');

  /// Reference to `direction` attribute.
  TfRef<String> get directionRef => TfRef.attribute<String>(this, 'direction');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostnameRef => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `hostname_contains` attribute.
  TfRef<String> get hostnameContainsRef =>
      TfRef.attribute<String>(this, 'hostname_contains');

  /// Reference to `ip_like` attribute.
  TfRef<String> get ipLikeRef => TfRef.attribute<String>(this, 'ip_like');

  /// Reference to `ip_v4` attribute.
  TfRef<String> get ipV4Ref => TfRef.attribute<String>(this, 'ip_v4');

  /// Reference to `ip_v6` attribute.
  TfRef<String> get ipV6Ref => TfRef.attribute<String>(this, 'ip_v6');

  /// Reference to `ips` attribute.
  TfRef<List<String>> get ipsRef => TfRef.attribute<List<String>>(this, 'ips');

  /// Reference to `ipv4_end` attribute.
  TfRef<String> get ipv4EndRef => TfRef.attribute<String>(this, 'ipv4_end');

  /// Reference to `ipv4_start` attribute.
  TfRef<String> get ipv4StartRef => TfRef.attribute<String>(this, 'ipv4_start');

  /// Reference to `ipv6_end` attribute.
  TfRef<String> get ipv6EndRef => TfRef.attribute<String>(this, 'ipv6_end');

  /// Reference to `ipv6_start` attribute.
  TfRef<String> get ipv6StartRef => TfRef.attribute<String>(this, 'ipv6_start');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `modified_after` attribute.
  TfRef<String> get modifiedAfterRef =>
      TfRef.attribute<String>(this, 'modified_after');

  /// Reference to `modified_before` attribute.
  TfRef<String> get modifiedBeforeRef =>
      TfRef.attribute<String>(this, 'modified_before');

  /// Reference to `order` attribute.
  TfRef<String> get orderRef => TfRef.attribute<String>(this, 'order');

  /// Reference to `tag` attribute.
  TfRef<List<String>> get tagRef => TfRef.attribute<List<String>>(this, 'tag');

  /// Reference to `target_ids` attribute.
  TfRef<List<String>> get targetIdsRef =>
      TfRef.attribute<List<String>>(this, 'target_ids');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkIdRef =>
      TfRef.attribute<String>(this, 'virtual_network_id');
}
