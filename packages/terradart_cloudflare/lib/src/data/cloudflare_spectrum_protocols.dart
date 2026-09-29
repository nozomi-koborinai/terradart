// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_spectrum_protocols`.
const Set<String> _cloudflareSpectrumProtocolsSensitive = <String>{};

/// Factory wrapper for `cloudflare_spectrum_protocols`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflareSpectrumProtocols extends Data {
  static const String tfType = 'cloudflare_spectrum_protocols';

  DataCloudflareSpectrumProtocols({
    required super.localName,
    TfArg<num>? maxItems,
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'max_items': ?maxItems, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSpectrumProtocolsSensitive;
}
