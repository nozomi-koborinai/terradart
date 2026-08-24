// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_load_balancer_monitor`.
const Set<String> _cloudflareLoadBalancerMonitorSensitive = <String>{};

/// Factory wrapper for `cloudflare_load_balancer_monitor`.
///
/// Accepted Permissions
///
/// - `Load Balancing: Monitors and Pools Read` - `Load Balancing: Monitors and
/// Pools Write`
final class DataCloudflareLoadBalancerMonitor extends Data {
  static const String tfType = 'cloudflare_load_balancer_monitor';

  DataCloudflareLoadBalancerMonitor({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> monitorId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'monitor_id': monitorId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancerMonitorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allow_insecure` attribute.
  TfRef<bool> get allowInsecure =>
      TfRef.attribute<bool>(this, 'allow_insecure');

  /// Reference to `consecutive_down` attribute.
  TfRef<num> get consecutiveDown =>
      TfRef.attribute<num>(this, 'consecutive_down');

  /// Reference to `consecutive_up` attribute.
  TfRef<num> get consecutiveUp => TfRef.attribute<num>(this, 'consecutive_up');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

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

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

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
