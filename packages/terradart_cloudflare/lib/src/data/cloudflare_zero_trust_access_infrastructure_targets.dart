// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_infrastructure_targets`.
const Set<String> _cloudflareZeroTrustAccessInfrastructureTargetsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_zero_trust_access_infrastructure_targets`.
final class DataCloudflareZeroTrustAccessInfrastructureTargets extends Data {
  static const String tfType =
      'cloudflare_zero_trust_access_infrastructure_targets';

  DataCloudflareZeroTrustAccessInfrastructureTargets({
    required super.localName,
    TfArg<String>? accountId,
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
    TfArg<List<String>>? targetIds,
    TfArg<String>? virtualNetworkId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (createdAfter != null) 'created_after': createdAfter,
           if (createdBefore != null) 'created_before': createdBefore,
           if (direction != null) 'direction': direction,
           if (hostname != null) 'hostname': hostname,
           if (hostnameContains != null) 'hostname_contains': hostnameContains,
           if (ipLike != null) 'ip_like': ipLike,
           if (ipV4 != null) 'ip_v4': ipV4,
           if (ipV6 != null) 'ip_v6': ipV6,
           if (ips != null) 'ips': ips,
           if (ipv4End != null) 'ipv4_end': ipv4End,
           if (ipv4Start != null) 'ipv4_start': ipv4Start,
           if (ipv6End != null) 'ipv6_end': ipv6End,
           if (ipv6Start != null) 'ipv6_start': ipv6Start,
           if (maxItems != null) 'max_items': maxItems,
           if (modifiedAfter != null) 'modified_after': modifiedAfter,
           if (modifiedBefore != null) 'modified_before': modifiedBefore,
           if (order != null) 'order': order,
           if (targetIds != null) 'target_ids': targetIds,
           if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessInfrastructureTargetsSensitive;
}
