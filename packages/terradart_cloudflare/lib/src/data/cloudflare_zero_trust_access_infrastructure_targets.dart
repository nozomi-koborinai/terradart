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
}
