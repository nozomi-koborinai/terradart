// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_observatory_scheduled_test`.
const Set<String> _cloudflareObservatoryScheduledTestSensitive = <String>{};

/// Factory wrapper for `cloudflare_observatory_scheduled_test`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class DataCloudflareObservatoryScheduledTest extends Data {
  static const String tfType = 'cloudflare_observatory_scheduled_test';

  DataCloudflareObservatoryScheduledTest({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> url,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'url': url,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareObservatoryScheduledTestSensitive;

  /// Reference to `frequency` attribute.
  TfRef<String> get frequency => TfRef.attribute<String>(this, 'frequency');
}
