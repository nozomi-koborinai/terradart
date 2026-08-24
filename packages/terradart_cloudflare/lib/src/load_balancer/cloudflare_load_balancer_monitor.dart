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
final class CloudflareLoadBalancerMonitor extends Resource {
  static const String tfType = 'cloudflare_load_balancer_monitor';

  CloudflareLoadBalancerMonitor({
    required super.localName,
    required TfArg<String> accountId,
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
    TfArg<String>? type,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (allowInsecure != null) 'allow_insecure': allowInsecure,
           if (consecutiveDown != null) 'consecutive_down': consecutiveDown,
           if (consecutiveUp != null) 'consecutive_up': consecutiveUp,
           if (description != null) 'description': description,
           if (expectedBody != null) 'expected_body': expectedBody,
           if (expectedCodes != null) 'expected_codes': expectedCodes,
           if (followRedirects != null) 'follow_redirects': followRedirects,
           if (header != null) 'header': header,
           if (interval != null) 'interval': interval,
           if (method != null) 'method': method,
           if (path != null) 'path': path,
           if (port != null) 'port': port,
           if (probeZone != null) 'probe_zone': probeZone,
           if (retries != null) 'retries': retries,
           if (timeout != null) 'timeout': timeout,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLoadBalancerMonitorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
