// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_load_balancer_monitor`.
const Set<String> _cloudflareLoadBalancerMonitorSensitive = <String>{};

/// Load Balancer Monitor enum for `type`.
extension type const LoadBalancerMonitorType._(TfArg<String> _)
    implements TfArg<String> {
  LoadBalancerMonitorType.variable(String name) : this._(TfArg.variable(name));
  LoadBalancerMonitorType.expression(String template)
    : this._(TfArg.expression(template));
  const LoadBalancerMonitorType.arg(TfArg<String> arg) : this._(arg);

  static const http = LoadBalancerMonitorType._(TfArgLiteral('http'));
  static const https = LoadBalancerMonitorType._(TfArgLiteral('https'));
  static const tcp = LoadBalancerMonitorType._(TfArgLiteral('tcp'));
  static const udpIcmp = LoadBalancerMonitorType._(TfArgLiteral('udp_icmp'));
  static const icmpPing = LoadBalancerMonitorType._(TfArgLiteral('icmp_ping'));
  static const smtp = LoadBalancerMonitorType._(TfArgLiteral('smtp'));

  static const List<LoadBalancerMonitorType> values = [
    http,
    https,
    tcp,
    udpIcmp,
    icmpPing,
    smtp,
  ];
}

/// Factory wrapper for `cloudflare_load_balancer_monitor`.
///
/// Accepted Permissions
///
/// - `Load Balancing: Monitors and Pools Read` - `Load Balancing: Monitors and
/// Pools Write`
final class CloudflareLoadBalancerMonitor extends Resource {
  static const String tfType = 'cloudflare_load_balancer_monitor';

  CloudflareLoadBalancerMonitor(
    super.localName, {
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
    LoadBalancerMonitorType? type,
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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `allow_insecure` attribute.
  TfRef<bool> get allowInsecure =>
      TfRef.attribute<bool>(this, 'allow_insecure');

  /// Reference to `consecutive_down` attribute.
  TfRef<num> get consecutiveDown =>
      TfRef.attribute<num>(this, 'consecutive_down');

  /// Reference to `consecutive_up` attribute.
  TfRef<num> get consecutiveUp => TfRef.attribute<num>(this, 'consecutive_up');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `expected_body` attribute.
  TfRef<String> get expectedBody =>
      TfRef.attribute<String>(this, 'expected_body');

  /// Reference to `expected_codes` attribute.
  TfRef<String> get expectedCodes =>
      TfRef.attribute<String>(this, 'expected_codes');

  /// Reference to `follow_redirects` attribute.
  TfRef<bool> get followRedirects =>
      TfRef.attribute<bool>(this, 'follow_redirects');

  /// Reference to `header` attribute.
  TfRef<Map<String, List<String>>> get header =>
      TfRef.attribute<Map<String, List<String>>>(this, 'header');

  /// Reference to `interval` attribute.
  TfRef<num> get interval => TfRef.attribute<num>(this, 'interval');

  /// Reference to `method` attribute.
  TfRef<String> get method => TfRef.attribute<String>(this, 'method');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `probe_zone` attribute.
  TfRef<String> get probeZone => TfRef.attribute<String>(this, 'probe_zone');

  /// Reference to `retries` attribute.
  TfRef<num> get retries => TfRef.attribute<num>(this, 'retries');

  /// Reference to `timeout` attribute.
  TfRef<num> get timeout => TfRef.attribute<num>(this, 'timeout');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
