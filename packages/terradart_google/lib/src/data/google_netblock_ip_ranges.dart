// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netblock_ip_ranges`.
const Set<String> _googleNetblockIpRangesSensitive = <String>{};

/// Factory wrapper for `google_netblock_ip_ranges`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleNetblockIpRanges extends Data {
  static const String tfType = 'google_netblock_ip_ranges';

  DataGoogleNetblockIpRanges({
    required super.localName,
    TfArg<String>? rangeType,
  }) : super(
         terraformType: tfType,
         argMap: {if (rangeType != null) 'range_type': rangeType},
       );

  @override
  Set<String> get sensitiveFields => _googleNetblockIpRangesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr_blocks` attribute.
  TfRef<List<String>> get cidrBlocks =>
      TfRef.attribute<List<String>>(this, 'cidr_blocks');

  /// Reference to `cidr_blocks_ipv4` attribute.
  TfRef<List<String>> get cidrBlocksIpv4 =>
      TfRef.attribute<List<String>>(this, 'cidr_blocks_ipv4');

  /// Reference to `cidr_blocks_ipv6` attribute.
  TfRef<List<String>> get cidrBlocksIpv6 =>
      TfRef.attribute<List<String>>(this, 'cidr_blocks_ipv6');
}
