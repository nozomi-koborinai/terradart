// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_load_balancer_monitor`.
const Set<String> _cloudflareLoadBalancerMonitorSensitive = <String>{};

/// Load Balancer Monitor enum for `type`.
enum LoadBalancerMonitorType implements TerraformEnum {
  http('http'),
  https('https'),
  tcp('tcp'),
  udpIcmp('udp_icmp'),
  icmpPing('icmp_ping'),
  smtp('smtp');

  const LoadBalancerMonitorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_load_balancer_monitor`.
///
/// Accepted Permissions
///
/// - `Load Balancing: Monitors and Pools Read` - `Load Balancing: Monitors and
/// Pools Write`
final class CloudflareLoadBalancerMonitor extends Resource {
  static const String tfType = 'cloudflare_load_balancer_monitor';

  CloudflareLoadBalancerMonitor({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? allowInsecure,
    TfArg<num>? consecutiveDown,
    TfArg<num>? consecutiveUp,
    TfArg<String>? description,
    TfArg<String>? expectedBody,
    TfArg<String>? expectedCodes,
    TfArg<bool>? followRedirects,
    TfArg<Map<String, List<String>>>? header,
    TfArg<num>? interval,
    TfArg<String>? method,
    TfArg<String>? path,
    TfArg<num>? port,
    TfArg<String>? probeZone,
    TfArg<num>? retries,
    TfArg<num>? timeout,
    TfArg<LoadBalancerMonitorType>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'allow_insecure': ?allowInsecure,
           'consecutive_down': ?consecutiveDown,
           'consecutive_up': ?consecutiveUp,
           'description': ?description,
           'expected_body': ?expectedBody,
           'expected_codes': ?expectedCodes,
           'follow_redirects': ?followRedirects,
           'header': ?header,
           'interval': ?interval,
           'method': ?method,
           'path': ?path,
           'port': ?port,
           'probe_zone': ?probeZone,
           'retries': ?retries,
           'timeout': ?timeout,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancerMonitorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareLoadBalancerMonitor>`.
  RefTo<CloudflareLoadBalancerMonitor> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
