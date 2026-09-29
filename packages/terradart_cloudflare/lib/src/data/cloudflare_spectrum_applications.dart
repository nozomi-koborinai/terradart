// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_spectrum_applications`.
const Set<String> _cloudflareSpectrumApplicationsSensitive = <String>{};

/// Factory wrapper for `cloudflare_spectrum_applications`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflareSpectrumApplications extends Data {
  static const String tfType = 'cloudflare_spectrum_applications';

  DataCloudflareSpectrumApplications({
    required super.localName,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'zone_id': ?zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSpectrumApplicationsSensitive;
}
