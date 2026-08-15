// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_monitoring_uptime_check_ips`.
const Set<String> _googleMonitoringUptimeCheckIpsSensitive = <String>{};

/// Factory wrapper for `google_monitoring_uptime_check_ips`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleMonitoringUptimeCheckIps extends Data {
  static const String tfType = 'google_monitoring_uptime_check_ips';

  DataGoogleMonitoringUptimeCheckIps({required super.localName})
    : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _googleMonitoringUptimeCheckIpsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `uptime_check_ips` attribute.
  TfRef<List<Map<String, Object?>>> get uptimeCheckIps =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'uptime_check_ips');
}
