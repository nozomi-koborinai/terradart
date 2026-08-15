// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_lb_ip_ranges`.
const Set<String> _googleComputeLbIpRangesSensitive = <String>{};

/// Factory wrapper for `google_compute_lb_ip_ranges`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeLbIpRanges extends Data {
  static const String tfType = 'google_compute_lb_ip_ranges';

  DataGoogleComputeLbIpRanges({required super.localName})
    : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _googleComputeLbIpRangesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `http_ssl_tcp_internal` attribute.
  TfRef<List<String>> get httpSslTcpInternal =>
      TfRef.attribute<List<String>>(this, 'http_ssl_tcp_internal');

  /// Reference to `network` attribute.
  TfRef<List<String>> get network =>
      TfRef.attribute<List<String>>(this, 'network');
}
