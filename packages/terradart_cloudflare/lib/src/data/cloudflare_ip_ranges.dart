// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ip_ranges`.
const Set<String> _cloudflareIpRangesSensitive = <String>{};

/// Factory wrapper for `cloudflare_ip_ranges`.
final class DataCloudflareIpRanges extends Data {
  static const String tfType = 'cloudflare_ip_ranges';

  DataCloudflareIpRanges({required super.localName, TfArg<String>? networks})
    : super(
        terraformType: tfType,
        argMap: {if (networks != null) 'networks': networks},
      );

  @override
  Set<String> get sensitiveFields => _cloudflareIpRangesSensitive;

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `ipv4_cidrs` attribute.
  TfRef<List<String>> get ipv4Cidrs =>
      TfRef.attribute<List<String>>(this, 'ipv4_cidrs');

  /// Reference to `ipv6_cidrs` attribute.
  TfRef<List<String>> get ipv6Cidrs =>
      TfRef.attribute<List<String>>(this, 'ipv6_cidrs');

  /// Reference to `jdcloud_cidrs` attribute.
  TfRef<List<String>> get jdcloudCidrs =>
      TfRef.attribute<List<String>>(this, 'jdcloud_cidrs');
}
